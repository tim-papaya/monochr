#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "usbhandler.h"



#include <QtCharts/QtCharts>


MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

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
}


void MainWindow::on_showDevicesBtn_clicked()
{
    QString info;

    ui->deviceNumbText->display(usb.showDevices(&info));

    QStringList *devices = getDeviseList(info);

    int index_fifo = devices->indexOf(FIFO_DEVICE_DESC, 0);

    deviseDesc = devices->at(index_fifo);

    ui->deviceList->clear();
    ui->deviceList->addItems(*devices);

    ui->infoList->setPlainText(info);

    delete devices;
}

void MainWindow::on_readBtn_clicked()
{
    if (ui->checkBox->checkState() == Qt::Checked)
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
    QElapsedTimer update_time;
    update_time.start();


    if (currentView == nullptr) {

        currentView = new QChartView(createChart());
        currentView->setRenderHint(QPainter::Antialiasing);
        qDebug() << "creating QChartView";
        ui->chartLayout->addWidget(currentView);

    }
    QList<QVector<ushort>> list = usbReader->result();
    if (list.size() == 0)
    {
        qDebug() << "lines read ERROR";
        return;
    }
    updateChart(currentView->chart(),
                list,
                isM150Inited,
                ui->rangeY_low->text().toInt(),
                ui->rangeY_high->text().toInt(),
                ui->rangeX_low->text().toInt(),
                ui->rangeX_high->text().toInt());

    qDebug() << "lines:" << list.size();
    qDebug("Plot updated, takes %u ms", update_time.elapsed());
}

void MainWindow::on_writeBtn_clicked()
{
    char* wrBuffer = ui->writeLine->text().toUtf8().data();
//  char wrBuffer[] = "11111111";
    int written;
    usb.writeData(wrBuffer, written);
}

void MainWindow::on_checkBox_stateChanged(int arg1)
{
    if (arg1 == Qt::Checked)
        usbReader->setisWriteFile(true);
    else
        usbReader->setisWriteFile(false);

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






