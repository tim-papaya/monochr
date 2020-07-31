#ifndef READER_H
#define READER_H

#include <QObject>

#include <usbhandler.h>
#include <QGraphicsScene>

class Reader : public QObject
{
    Q_OBJECT
public:
    Reader(UsbHandler *usb, QGraphicsScene *scene);
public slots:
    void stop();
    void readUsb();
signals:
    void ready(QString* result);
    void finished();
private:
    bool m_running;
    UsbHandler *usb;
    QGraphicsScene *scene;
};

#endif // READER_H
