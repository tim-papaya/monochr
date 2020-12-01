#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QThread>
#include <QGraphicsScene>
#include <QtCharts/QChartView>

#include "reader.h"
#include <usbhandler.h>
#include "chart/chart.h"

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

signals:
    void read_from_usb();

public slots:
    void on_showDevicesBtn_clicked();

    void on_readBtn_clicked();

    void on_initBtn_clicked();

    void on_pushButton_clicked();

    void read();

private slots:

    void on_writeBtn_clicked();

    void on_checkBox_stateChanged(int arg1);

    void on_m150WL_Btn_clicked();

    void on_m150Grating_Btn_clicked();

    void on_m150Slit_Btn_clicked();

    void on_m150Filter_Btn_clicked();

    void on_m150InitBtn_clicked();

private:
    int size_rdbuf ;

    QChartView *currentView;

    Ui::MainWindow *ui;

    UsbHandler usb;

    QGraphicsScene scene;
};
#endif // MAINWINDOW_H
