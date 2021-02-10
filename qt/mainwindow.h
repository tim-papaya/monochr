#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QThread>
#include <QGraphicsScene>
#include <QtCharts/QChartView>

#include "usb/usbreader.h"
#include "usb/usbhandler.h"
#include "chart/chart.h"
#include "solar_sdk/m150handler.h"

QT_BEGIN_NAMESPACE
namespace Ui { class MainWindow; }
QT_END_NAMESPACE

class MainWindow : public QMainWindow
{
    Q_OBJECT
public:
    QThread   *usbThread = nullptr;
    QThread   *m150Thread = nullptr;
    UsbReader *usbReader = nullptr;

public:
    MainWindow(QWidget *parent = nullptr);
   ~MainWindow();

    void updateM150Info();

signals:
    void read_from_usb();

    void m150ReadWL();
    void m150ReadGrating();
    void m150ReadSlit();
    void m150ReadFilter();

public slots:
    void read();

private slots:
    void on_showDevicesBtn_clicked();

    void on_readBtn_clicked();

    void on_initBtn_clicked();

    void on_pushButton_clicked();

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

    QString const  FIFO_DEVICE_DESC = "FT2232H MiniModule A";

    int const LINE_SIZE = 2048;
    int const LINES_IN_BUFFER = 15;

    int const INDEX_OF_LIVE_TAB = 0;
    int const INDEX_OF_RECORD_TAB = 1;

    int const NUM_LINES_VISIBLE =  5;
    int const DEVICE_NOT_FOUND  = -1;

    bool m150busy = false;

    QString deviseDesc;
    QString prevPath;

    bool isM150Inited = false;

    QChartView *currentView = nullptr;
    QChartView *recordView  = nullptr;

    Ui::MainWindow *ui;

    UsbHandler   usb;
    M150Handler *m150 = nullptr;

    bool just_started = true;

private:
    QStringList* getDeviseList(QString info);

    void startUsbThread();

    void startM150Thread();

    void readLive();

    void readRecord();
};
#endif // MAINWINDOW_H
