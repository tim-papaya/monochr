#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QThread>
#include <QGraphicsScene>
#include "reader.h"
#include <usbhandler.h>
#include "chart/view.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    QThread *usbThread;
    Reader *usbReader;

public slots:
    void on_showDevicesBtn_clicked();

    void on_readBtn_clicked();

    void on_initBtn_clicked();

    void on_pushButton_clicked();

    void read();

private slots:
    void on_readBtn_2_clicked();

    void on_writeBtn_clicked();

private:
    View *currentView;
    Ui::MainWindow *ui;
    UsbHandler usb;
    QGraphicsScene scene;
};
#endif // MAINWINDOW_H
