#include "mainwindow.h"
#include "usbreader.h"
#include <QApplication>
#include <QRegularExpression>

int main(int argc, char *argv[])
{

    QApplication a(argc, argv);
    MainWindow w;
    w.show();


//    Reader readers();
//    QVector<ushort> buf = {};

//    QList<QVector<ushort>> list = readers().split(buf);
//    qDebug() << list.size() << list;
    return a.exec();
}
