#ifndef READER_H
#define READER_H

#include <QObject>
#include <QGraphicsScene>
#include <QElapsedTimer>

#include <usbhandler.h>

class Reader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QList<QVector<ushort>> result READ result WRITE setResult NOTIFY resultChanged)
    Q_PROPERTY(qint64 waitTime READ waitTime WRITE setWaitTime NOTIFY waitTimeChanged)
public:
    ushort start_seq[3] = {0x3, 0x7F, 0xFFC1};
    ushort end_seq[3] = {0x5C, 0xFF80, 0x0F3E};
    const int seq_size = 3;
    const int LINE_SIZE = 2048;
    const int SEQ_NOT_FOUND = -1;

    Reader(UsbHandler *usb);
    Reader();


    QList<QVector<ushort>> result() const
    {
        return m_result;
    }

    qint64 waitTime() const
    {
        return m_waitTime;
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

    void setWaitTime(qint64 waitTime)
    {
        if (m_waitTime == waitTime)
            return;

        m_waitTime = waitTime;
        emit waitTimeChanged(m_waitTime);
    }

signals:
    void ready();
    void finished();

    void resultChanged(QList<QVector<ushort>> result);

    void waitTimeChanged(qint64 waitTime);

private:
    QElapsedTimer  displayTime;
    bool m_running;
    UsbHandler *usb;
    QList<QVector<ushort>> m_result;

    int static convert(char const ch1, char const ch2);

    QList<QVector<ushort>> split(QVector<ushort> &ubuffer);

    int findSeq(QVector<ushort> &vec, int start_from, ushort *seq, int seq_size);
    qint64 m_waitTime;
};

#endif // READER_H
