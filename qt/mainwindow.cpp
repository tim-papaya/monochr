#include "mainwindow.h"
#include "ui_mainwindow.h"
#include "usbhandler.h"

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
    connect(&usbThread, )
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

void MainWindow::read()
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
    QGraphicsScene *scene = new QGraphicsScene();
    QPen redPen(Qt::red);

    scene->setSceneRect(0,0,ui->graphicsView->width(),ui->graphicsView->height());

    int uns_numb = 0;
    int dbl_numb = 0;
    int all_numb = 0;

    for (int i = 0; i < size_buffer; i++) {
        if (static_cast<unsigned>(buffer[i]) < 0 )
            uns_numb++;
        if (static_cast<qreal>(buffer[i]) < 0 )
            dbl_numb++;
        if (static_cast<qreal>(static_cast<unsigned>(buffer[i])) < 0 )
            all_numb++;
    }
    qDebug() << "unsigned :" << uns_numb << "double :" << dbl_numb << "all :" << all_numb;
    for (int i = 0; i < size_buffer; i++) {
        scene->addLine(i, static_cast<uchar>(buffer[i]), i, static_cast<uchar>(buffer[i]), redPen);
    }
    ui->graphicsView->setScene(scene);
    ui->textBrowser->setPlainText(str);
}
