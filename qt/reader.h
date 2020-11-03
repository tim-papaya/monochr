#ifndef READER_H
#define READER_H

#include <QObject>
#include <QGraphicsScene>

#include <usbhandler.h>

class Reader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QList<QVector<ushort>> result READ result WRITE setResult NOTIFY resultChanged)

public:
    Reader(UsbHandler *usb, QGraphicsScene *scene);

    const ushort start_seq[3] = {0x0003, 0x007F, 0x0AC1};
    const int seq_size = 3;
    int static convert(char const ch1, char const ch2);

    QList<QVector<ushort>> split(QVector<ushort> &ubuffer);

    QList<QVector<ushort>> result() const
    {
        return m_result;
    }

public slots:
    void stop();
    void readUsb();


    void setResult(QList<QVector<ushort>> result)
    {
        if (m_result == result)
            return;

        m_result = result;
        emit resultChanged(m_result);
    }

signals:
    void ready();
    void finished();

    void resultChanged(QList<QVector<ushort>> result);

private:
    bool m_running;
    UsbHandler *usb;
    QGraphicsScene *scene;

    QList<QVector<ushort>> m_result;
};

#endif // READER_H
