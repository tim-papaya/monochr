#ifndef READER_H
#define READER_H

#include <QObject>

#include <usbhandler.h>
#include <QGraphicsScene>


class Reader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString result READ result WRITE setResult NOTIFY resultChanged)




public:
    Reader(UsbHandler *usb, QGraphicsScene *scene);
    QString result() const
    {
        return m_result;
    }

public slots:
    void stop();
    void readUsb();
    void setResult(QString result)
    {
        if (m_result == result)
            return;

        m_result = result;
        emit resultChanged(m_result);
    }

signals:
    void ready();
    void finished();
    void resultChanged(QString result);

private:
    bool m_running;
    UsbHandler *usb;
    QGraphicsScene *scene;
    QString m_result;
};

#endif // READER_H
