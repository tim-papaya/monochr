#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "usbhandler.h"

#include "solar_sdk/solarls_sdk.h"

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
}


void MainWindow::on_showDevicesBtn_clicked()
{
    QString info;

    ui->deviceNumbText->display(usb.showDevices(&info));

    QTextStream deviceList(&info);
    QString desc;
    QStringList listDev;

    while (!deviceList.atEnd()) {
        deviceList >> desc;
        if (desc == "Description=") {
            QString str;

            desc = "";
            QTextStream stream(&desc);

            deviceList >> str;
            stream << str;
            deviceList >> str;

            while(str != "ftHandle=") {
                stream << " " << str;
                deviceList >> str;
            }

            deviceList >> str;
            listDev.push_back(desc);
        }
    }
    ui->deviceList->clear();
    ui->deviceList->addItems(listDev);

    ui->infoList->setPlainText(info);
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

    QString str = ui->deviceList->currentText();

    qDebug() << "device :" << str;
    QByteArray qb = str.toUtf8();
    char* desc = qb.data();

    size_rdbuf = ui->buferSizeEdit->text().toInt();

    usb.setSyncFIFO(size_rdbuf, desc);

    usbThread = new QThread();
    usbReader = new Reader(&usb, size_rdbuf);

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
    updateChart(currentView->chart(), list,ui->rangeY_low->text().toInt(),ui->rangeY_high->text().toInt());

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

}

void MainWindow::on_m150Grating_Btn_clicked()
{

}

void MainWindow::on_m150Slit_Btn_clicked()
{

}

void MainWindow::on_m150Filter_Btn_clicked()
{

}

void MainWindow::on_m150InitBtn_clicked()
{
//    if (!sls_SetLogging(SDKLOGLEVEL_DEBUG, "c:\\temp\\example.log"))
//        return;
    if (!sls_Init("c:\\TIM\\Project\\monochr\\qt\\solar_sdk\\"))
    {
        qDebug() << "error m150: can`t init the m150";
        return;
    }

    int instrumentCount = 0;
    if (!sls_GetInstrumentCount(&instrumentCount))
    {
        qDebug() << "error m150: can`t find m150";
        return;
    }
    if (instrumentCount == 0)
    {
        qDebug() << "error m150: can`t find m150";
        return;
    }

    for (int i = 0; i < instrumentCount; i++)
    {
        char instrumentName[100];
        if (!sls_GetInstrumentName(i, instrumentName, sizeof(instrumentName)))
             return;

        char instrumentSerial[100];
        if (!sls_GetInstrumentSerial(i, instrumentSerial, sizeof(instrumentSerial)))
            return;

        qDebug("%d: %s %s\r\n", i, instrumentName, instrumentSerial);
    }
}
