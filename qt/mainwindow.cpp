#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "usbhandler.h"
#include "reader.h"

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
    usbThread = new QThread();
    scene.setSceneRect(0,0,ui->graphicsView->width(),ui->graphicsView->height());

    Reader *reader = new Reader(&usb, &scene, this);

    connect(reader, SIGNAL(ready(QString*)), this, SLOT(read(QString*)));
    connect(usbThread, SIGNAL(started()), reader, SLOT(readUsb()));
    connect(reader, SIGNAL(finished()), usbThread, SLOT(terminate()));

    usbThread->start();
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

void MainWindow::read(QString* result)
{
    ui->graphicsView->setScene(&scene);
    //ui->textBrowser->setPlainText(*result);
    //delete result;
    usbThread->sleep(5);
    qDebug() << "HERE";
}
