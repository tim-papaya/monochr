/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.12.4
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QApplication>
#include <QtWidgets/QComboBox>
#include <QtWidgets/QGraphicsView>
#include <QtWidgets/QLCDNumber>
#include <QtWidgets/QLabel>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QStatusBar>
#include <QtWidgets/QTextBrowser>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QWidget *centralwidget;
    QLCDNumber *deviceNumbText;
    QPushButton *showDevicesBtn;
    QPushButton *quitBtn;
    QPushButton *readBtn;
    QTextBrowser *textBrowser;
    QTextBrowser *infoList;
    QPushButton *initBtn;
    QLabel *label;
    QPushButton *pushButton;
    QComboBox *deviceList;
    QGraphicsView *graphicsView;
    QLabel *plot_name;
    QMenuBar *menubar;
    QStatusBar *statusbar;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QString::fromUtf8("MainWindow"));
        MainWindow->resize(1403, 711);
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QString::fromUtf8("centralwidget"));
        deviceNumbText = new QLCDNumber(centralwidget);
        deviceNumbText->setObjectName(QString::fromUtf8("deviceNumbText"));
        deviceNumbText->setGeometry(QRect(60, 80, 131, 61));
        deviceNumbText->setLayoutDirection(Qt::LeftToRight);
        showDevicesBtn = new QPushButton(centralwidget);
        showDevicesBtn->setObjectName(QString::fromUtf8("showDevicesBtn"));
        showDevicesBtn->setGeometry(QRect(250, 90, 101, 41));
        quitBtn = new QPushButton(centralwidget);
        quitBtn->setObjectName(QString::fromUtf8("quitBtn"));
        quitBtn->setGeometry(QRect(270, 320, 61, 31));
        readBtn = new QPushButton(centralwidget);
        readBtn->setObjectName(QString::fromUtf8("readBtn"));
        readBtn->setGeometry(QRect(250, 240, 101, 41));
        textBrowser = new QTextBrowser(centralwidget);
        textBrowser->setObjectName(QString::fromUtf8("textBrowser"));
        textBrowser->setGeometry(QRect(380, 20, 231, 351));
        infoList = new QTextBrowser(centralwidget);
        infoList->setObjectName(QString::fromUtf8("infoList"));
        infoList->setGeometry(QRect(20, 150, 201, 191));
        initBtn = new QPushButton(centralwidget);
        initBtn->setObjectName(QString::fromUtf8("initBtn"));
        initBtn->setGeometry(QRect(250, 190, 101, 41));
        label = new QLabel(centralwidget);
        label->setObjectName(QString::fromUtf8("label"));
        label->setGeometry(QRect(256, 140, 91, 20));
        pushButton = new QPushButton(centralwidget);
        pushButton->setObjectName(QString::fromUtf8("pushButton"));
        pushButton->setGeometry(QRect(250, 290, 101, 23));
        deviceList = new QComboBox(centralwidget);
        deviceList->setObjectName(QString::fromUtf8("deviceList"));
        deviceList->setGeometry(QRect(250, 160, 101, 22));
        graphicsView = new QGraphicsView(centralwidget);
        graphicsView->setObjectName(QString::fromUtf8("graphicsView"));
        graphicsView->setGeometry(QRect(620, 50, 761, 611));
        plot_name = new QLabel(centralwidget);
        plot_name->setObjectName(QString::fromUtf8("plot_name"));
        plot_name->setGeometry(QRect(740, 10, 81, 31));
        QFont font;
        font.setPointSize(24);
        plot_name->setFont(font);
        plot_name->setMargin(0);
        plot_name->setIndent(-1);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QString::fromUtf8("menubar"));
        menubar->setGeometry(QRect(0, 0, 1403, 22));
        MainWindow->setMenuBar(menubar);
        statusbar = new QStatusBar(MainWindow);
        statusbar->setObjectName(QString::fromUtf8("statusbar"));
        MainWindow->setStatusBar(statusbar);

        retranslateUi(MainWindow);
        QObject::connect(quitBtn, SIGNAL(clicked()), MainWindow, SLOT(close()));

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "MainWindow", nullptr));
        showDevicesBtn->setText(QApplication::translate("MainWindow", "Show Devices", nullptr));
        quitBtn->setText(QApplication::translate("MainWindow", "quit", nullptr));
        readBtn->setText(QApplication::translate("MainWindow", "Read", nullptr));
        initBtn->setText(QApplication::translate("MainWindow", "Init FIFO", nullptr));
        label->setText(QApplication::translate("MainWindow", "Device Description", nullptr));
        pushButton->setText(QApplication::translate("MainWindow", "Close", nullptr));
        plot_name->setText(QApplication::translate("MainWindow", "PLOT", nullptr));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
