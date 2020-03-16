#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "usbhandler.h"
#include "usbthread.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);
//    QObject::connect(&usbThread, &QThread::started,&usbObj, &UsbThread::Procces );
//    QObject::connect(&usbObj, &UsbThread::finished, &usbThread, &QThread::terminate);
//    usbObj.moveToThread(usbThread);


}

MainWindow::~MainWindow()
{
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
    ui->deviceList->addItems(listDev);

    ui->infoList->setPlainText(info);
}

void MainWindow::on_readBtn_clicked()
{
    constexpr int size_buffer = 65536;

    char buffer [size_buffer];

    for(int i = 0; i < size_buffer; i++)
          buffer[i] = 0;

    usb.readData(buffer);

    QString str;

    for (int i = 0; i < size_buffer; i++) {
        str += buffer[i];
        str += ' ';
    }
    ui->textBrowser->setPlainText(str);
}

void MainWindow::on_initBtn_clicked()
{
    constexpr int size_buffer = 65536;
    QString str = ui->deviceList->currentText();

    qDebug() << "device :" << str;
    QByteArray qb = str.toUtf8();
    char* desc = qb.data();

    usb.setSyncFIFO(size_buffer, size_buffer, desc);
}

void MainWindow::on_pushButton_clicked()
{
    usb.closeHandle();
}
