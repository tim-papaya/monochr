#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "usbhandler.h"
#include "chart/chart.h"
#include "filereader.h"

#include <QtCharts/QtCharts>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    qDebug() << "creating recordView";
    recordView = new QChartView(createChart());
    recordView->setRenderHint(QPainter::Antialiasing);
    ui->recordChartLayout->addWidget(recordView);

    qDebug() << "creating QChartView";
    currentView = new QChartView(createChart());
    currentView->setRenderHint(QPainter::Antialiasing);
    ui->chartLayout->addWidget(currentView);

    readRecord();
}

MainWindow::~MainWindow()
{
   usbReader->stop();
   delete ui;
   delete m150;
}

void MainWindow::updateM150Info()
{
    double wl;
    QString grating;
    double slitWidth;
    QString filter;

    m150->getInfo(wl, grating, slitWidth, filter);

    ui->m150WL_ReadtLine->setText(QString::number(wl));
    ui->m150Grating_ReadLine->setText(grating);
    ui->m150Slit_ReadLine->setText(QString::number(slitWidth));
    ui->m150Filter_ReadLine->setText(filter);

    usbReader->setWlinfo(WlBorders(wl, LINE_SIZE));
}


void MainWindow::on_showDevicesBtn_clicked()
{
    QString info;

    ui->deviceNumbText->display(usb.showDevices(&info));

    QStringList *devices = getDeviseList(info);

    if (devices->empty())
        return;

    ui->deviceList->clear();
    ui->deviceList->addItems(*devices);

    ui->infoList->setPlainText(info);

    int index_fifo = devices->indexOf(FIFO_DEVICE_DESC, 0);

    if (index_fifo != DEVICE_NOT_FOUND)
    {
        deviseDesc = devices->at(index_fifo);
    }

    delete devices;
}

void MainWindow::on_readBtn_clicked()
{
    if (ui->fileWriteCheckBox->checkState() == Qt::Checked)
        usbReader->setisWriteFile(true);
    else
        usbReader->setisWriteFile(false);

    emit(read_from_usb());
}

void MainWindow::on_initBtn_clicked()
{

    qDebug() << "device :" << deviseDesc;
    QByteArray qb = deviseDesc.toUtf8();
    char* desc = qb.data();

    usb.setSyncFIFO(SIZE_RD_BUFFER, desc);

    usbThread = new QThread();
    usbReader = new Reader(&usb, SIZE_RD_BUFFER);

    connect(usbReader, SIGNAL(resultChanged(QList<QVector<ushort>>)), this, SLOT(read()));
    connect(usbReader, SIGNAL(finished()), usbThread, SLOT(quit()));
    connect(this, SIGNAL(read_from_usb()), usbReader, SLOT(readUsb()));

    usbReader->moveToThread(usbThread);

    usbReader->setFilesPath(ui->pathWriteLine->text());

    usbThread->start();
}

void MainWindow::on_pushButton_clicked()
{
    usbReader->stop();
    usb.closeHandle();
}

void MainWindow::read()
{
    // Plot update here
    int indexTabSelected = ui->chartsTabWidget->currentIndex();

    if (indexTabSelected == INDEX_OF_LIVE_TAB)
        readLive();
}

void MainWindow::on_m150WL_Btn_clicked()
{
    m150->setWL(ui->m150WL_SetLine->text().toDouble());
    updateM150Info();
}

void MainWindow::on_m150Grating_Btn_clicked()
{
    m150->setGrating(ui->m150Grating_SetCombo->currentText());
    updateM150Info();
}

void MainWindow::on_m150Slit_Btn_clicked()
{
    m150->setSlit(ui->m150Slit_SetLine->text().toInt());
    updateM150Info();

}

void MainWindow::on_m150Filter_Btn_clicked()
{
    m150->setFilter(ui->m150Filter_SetCombo->currentText());
    updateM150Info();
}

void MainWindow::on_m150InitBtn_clicked()
{
    m150 = new M150Handler();
    m150->init(M150_LOG_PATH,M150_CONFIG_PATH);
    updateM150Info();

    isM150Inited = true;
}

QStringList* MainWindow::getDeviseList(QString info)
{
    QStringList* listDev = new QStringList();

    QTextStream infoStream(&info);

    QString desc;

    while (!infoStream.atEnd())
    {
        infoStream >> desc;

        if (desc == "Description=")
        {
            QString str;

            desc = "";
            QTextStream descStream(&desc);

            infoStream >> str;
            descStream << str;
            infoStream >> str;

            while(str != "ftHandle=")
            {
                descStream << " " << str;
                infoStream >> str;
            }

            infoStream >> str;
            listDev->push_back(desc);
        }
    }
    return listDev;
}

void MainWindow::readLive()
{
    QElapsedTimer update_time;
    update_time.start();

    QList<QVector<ushort>> list = usbReader->result();

    if (list.size() == 0)
    {
        qDebug() << "lines read ERROR";
        return;
    }

    resetChart(currentView->chart());

    double wl_atCenter;

    if (!isM150Inited)
        wl_atCenter = ui->Wl_atCenter_lineEdit->text().toDouble();
    else
        wl_atCenter = ui->m150WL_ReadtLine->text().toDouble();

    addLine(currentView->chart(),
            list[0],
            wl_atCenter);

    Borders borders(ui->rangeY_low->text().toInt(),
                    ui->rangeY_high->text().toInt(),
                    ui->rangeX_low->text().toInt(),
                    ui->rangeX_high->text().toInt());

    setBorders(currentView->chart(), borders);
    double timeStep = usbReader->timeStep();
    timeStep /= LINES_IN_BUFFER;
    ui->realTimeStepLineEdit->setText(QString::number(timeStep));

    qDebug() << "lines:" << list.size();
    qDebug("Plot updated, takes %u ms", update_time.elapsed());
}

void MainWindow::readRecord()
{
    FileReader fileReader(ui->pathWriteLine->text());

    if (prevPath != ui->pathWriteLine->text())
    {
        prevPath = ui->pathWriteLine->text();
        ui->dirNamesCBox->clear();

        QStringList *dirNames = fileReader.readDirs();

        for (QString name : *dirNames)
            ui->dirNamesCBox->addItem(name);
        delete dirNames;
    }

    QString currentDir = ui->dirNamesCBox->currentText();

    int countPoints = fileReader.countPoints(currentDir);
    int currentPos = ui->posLineEdit->text().toInt();

    ui->posMaxLineEdit->setText(QString::number(countPoints));

    resetChart(recordView->chart());


    int step = ui->posStepLineEdit->text().toInt();

    if (step < 1)
        step = 1;

    for (int i = currentPos;    i < countPoints &&
                                i < currentPos + NUM_LINES_VISIBLE * step;
         i+= step)
    {
        PointInfo* pointInfo = fileReader.getPoint(currentDir, i);

        addLine(recordView->chart(), pointInfo);

        double timeStep = pointInfo->time_step * ui->posStepLineEdit->text().toDouble();
        ui->timeStepLineEdit->setText(QString::number(timeStep));

        ui->infoLineEdit->setText(*pointInfo->info);

        delete pointInfo;
    }

    if (countPoints > 0)
    {
        Borders borders(ui->rangeY_low->text().toInt(),
                        ui->rangeY_high->text().toInt(),
                        ui->rangeX_low->text().toInt(),
                        ui->rangeX_high->text().toInt());

        setBorders(recordView->chart(), borders);
    }

}

void MainWindow::on_wrTimeWriteBtn_clicked()
{
    int wrTime = ui->wrTimeWriteLine->text().toInt();
    usbReader->setWaitTime(wrTime);
}

void MainWindow::on_fileWriteCheckBox_stateChanged(int arg1)
{
    if (arg1 == Qt::Checked)
        usbReader->setisWriteFile(true);
    else
        usbReader->setisWriteFile(false);
}

void MainWindow::on_cmdWriteBtn_clicked()
{
    char* wrBuffer = ui->writeLine->text().toUtf8().data();
//  char wrBuffer[] = "11111111";
    int written;
    usb.writeData(wrBuffer, written);
}
void MainWindow::on_posLeft_clicked()
{
    int step = ui->posStepLineEdit->text().toInt();
    if (!step)
        step = 1;

    int pos = ui->posLineEdit->text().toInt();
    QString newPos = QString::number(pos - step);

    ui->posLineEdit->setText(newPos);

    readRecord();
}

void MainWindow::on_posRight_clicked()
{
    int step = ui->posStepLineEdit->text().toInt();
    if (!step)
        step = 1;

    int pos = ui->posLineEdit->text().toInt();
    QString newPos = QString::number(pos + step);

    ui->posLineEdit->setText(newPos);

    readRecord();
}

void MainWindow::on_pathWriteLine_editingFinished()
{
    if (usbReader != nullptr)
        usbReader->setFilesPath(ui->pathWriteLine->text());
    readRecord();
}

void MainWindow::on_dirNamesCBox_currentTextChanged(const QString &arg1)
{

    // that is bad, but working
    if (just_started)
    {
        just_started = false;
        return;
    }
    readRecord();
}

void MainWindow::on_posStepLineEdit_editingFinished()
{
    readRecord();
}

void MainWindow::on_posLineEdit_editingFinished()
{
    readRecord();
}

void MainWindow::on_rangeX_low_editingFinished()
{
    readRecord();
}



void MainWindow::on_rangeX_high_editingFinished()
{
    readRecord();
}

void MainWindow::on_rangeY_high_editingFinished()
{
    readRecord();
}

void MainWindow::on_rangeY_low_editingFinished()
{
    readRecord();
}

void MainWindow::on_expWriteBtn_clicked()
{
//    QString str = "expt";
//    unsigned time = ui->expWriteLine->text().toUInt();

//    void *time_ptr = &time;

//    char *char_ptr = (char*) time_ptr;

//    for (int i = 0;i < 4;i++)
//        str += char_ptr[i];

//    char* wrBuffer = str.d;
//    int written;
//    usb.writeData(wrBuffer, written);
}
