#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QThread>
#include <QGraphicsScene>
#include <QtCharts/QChartView>

#include "reader.h"
#include "usbhandler.h"
#include "chart/chart.h"
#include "m150handler.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    MainWindow(QWidget *parent = nullptr);
    ~MainWindow();

    QThread *usbThread = nullptr;
    Reader *usbReader = nullptr;

    void updateM150Info();

signals:
    void read_from_usb();

public slots:
    void on_showDevicesBtn_clicked();

    void on_readBtn_clicked();

    void on_initBtn_clicked();

    void on_pushButton_clicked();

    void read();

private slots:

    void on_m150WL_Btn_clicked();

    void on_m150Grating_Btn_clicked();

    void on_m150Slit_Btn_clicked();

    void on_m150Filter_Btn_clicked();

    void on_m150InitBtn_clicked();

    void on_wrTimeWriteBtn_clicked();

    void on_fileWriteCheckBox_stateChanged(int arg1);

    void on_cmdWriteBtn_clicked();

    void on_posLeft_clicked();

    void on_posRight_clicked();

    void on_pathWriteLine_editingFinished();

    void on_dirNamesCBox_currentTextChanged(const QString &arg1);

    void on_posStepLineEdit_editingFinished();

    void on_posLineEdit_editingFinished();

    void on_rangeX_low_editingFinished();

    void on_rangeX_high_editingFinished();

    void on_rangeY_high_editingFinished();

    void on_rangeY_low_editingFinished();

    void on_expWriteBtn_clicked();

private:

    char* M150_LOG_PATH = "c:\\TIM\\Project\\monochr\\logs\\m150\\m150.log";
    char* M150_CONFIG_PATH = "c:\\TIM\\Project\\monochr\\qt\\solar_sdk\\";

    const QString FIFO_DEVICE_DESC = "FT2232H MiniModule A";
    const int LINE_SIZE = 2048;
    const int LINES_IN_BUFFER = 15;

    const int INDEX_OF_LIVE_TAB = 0;
    const int INDEX_OF_RECORD_TAB = 1;

    const int NUM_LINES_VISIBLE = 5;
    const int DEVICE_NOT_FOUND  = -1;

    QString deviseDesc;

    int SIZE_RD_BUFFER = 65536;

    bool isM150Inited = false;

    QChartView *currentView = nullptr;

    QChartView *recordView = nullptr;

    Ui::MainWindow *ui;

    UsbHandler usb;

    M150Handler *m150;

    QGraphicsScene scene;

    bool just_started = true;

    QStringList* getDeviseList(QString info);

    QString prevPath;

    void readLive();

    void readRecord();

};
#endif // MAINWINDOW_H
