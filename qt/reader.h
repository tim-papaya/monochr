#ifndef READER_H
#define READER_H

#include <QObject>
#include <QGraphicsScene>

#include <usbhandler.h>

class Reader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QStringList result READ result WRITE setResult NOTIFY resultChanged)

public:
    Reader(UsbHandler *usb, QGraphicsScene *scene);

    QStringList result() const
    {
        return m_result;
    }
    short static convert(QChar const ch1, QChar const ch2);

public slots:
    void stop();
    void readUsb();

    void setResult(QStringList result)
    {
        if (m_result == result)
            return;

        m_result = result;
        emit resultChanged(m_result);
    }

signals:
    void ready();
    void finished();
    void resultChanged(QStringList result);

private:
    QString startSequence = " S R T";
    bool m_running;
    UsbHandler *usb;
    QGraphicsScene *scene;
    QStringList m_result;
};

#endif // READER_H
