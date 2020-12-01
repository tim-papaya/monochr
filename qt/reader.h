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
    Q_PROPERTY(bool isWriteFile READ isWriteFile WRITE setIsWriteFile NOTIFY isWriteFileChanged)

public:

    ushort start_seq[3] = {0x0003, 0x007F, 0x00C1};
    ushort end_seq[3] = {0x005C, 0x0080, 0x0F3E};


    const int SEQ_SIZE = 3;
    const int LINE_SIZE = 2048;
    const int SEQ_NOT_FOUND = -1;

    Reader(UsbHandler *usb, int size_rdbuf);

    QList<QVector<ushort>> result() const
    {
        return m_result;
    }

    qint64 waitTime() const
    {
        return m_waitTime;
    }

    bool isWriteFile() const
    {
        return m_isWriteFile;
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

    void setisWriteFile(bool isWriteFile)
    {
        if (m_isWriteFile == isWriteFile)
            return;

        m_isWriteFile = isWriteFile;
        emit isWriteFileChanged(m_isWriteFile);
    }

    void setIsWriteFile(bool isWriteFile)
    {
        if (m_isWriteFile == isWriteFile)
            return;

        m_isWriteFile = isWriteFile;
        emit isWriteFileChanged(m_isWriteFile);
    }


signals:

    void ready();

    void finished();

    void resultChanged(QList<QVector<ushort>> result);

    void waitTimeChanged(qint64 waitTime);

    void isWriteFileChanged(bool isWriteFile);

private:

    QElapsedTimer  displayTime;

    bool m_running;

    qint64 m_waitTime;

    bool m_isWriteFile;

    UsbHandler *usb;

    const int size_buffer_rd;

    QList<QVector<ushort>> m_result;

    ushort convert(char const ch1, char const ch2);

    QList<QVector<ushort>> split(QVector<ushort> &ubuffer, int start_pos);

    int findSeq(QVector<ushort> &vec, int start_from, ushort *seq, int seq_size);
};

#endif // READER_H
