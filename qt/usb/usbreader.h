#ifndef USBREADER_H
#define USBREADER_H

#include <QObject>
#include <QGraphicsScene>
#include <QElapsedTimer>

#include <usbhandler.h>
#include "chart/chart.h"

typedef QList<QVector<ushort>> lines_t;


class UsbReader : public QObject
{
    Q_OBJECT
    Q_PROPERTY(lines_t* result READ result WRITE setResult NOTIFY resultChanged)
    Q_PROPERTY(qint64 waitTime READ waitTime WRITE setWaitTime NOTIFY waitTimeChanged)
    Q_PROPERTY(bool isWriteFile READ isWriteFile WRITE setIsWriteFile NOTIFY isWriteFileChanged)
    Q_PROPERTY(WlBorders wlinfo READ wlinfo WRITE setWlinfo NOTIFY wlinfoChanged)
    Q_PROPERTY(QString filesPath READ filesPath WRITE setFilesPath NOTIFY filesPathChanged)
    Q_PROPERTY(qint64 timeStep READ timeStep WRITE setTimeStep NOTIFY timeStepChanged)

public:
    ushort start_seq[3] = {0x0003, 0x007F, 0x00C1};
    ushort end_seq[3] = {0x005C, 0x0080, 0x0F3E};

    const int SEQ_SIZE = 3;
    const int LINE_SIZE = 2048;
    const int SEQ_NOT_FOUND = -1;

public:
    UsbReader(UsbHandler *usb);

    lines_t* result() const
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

    WlBorders wlinfo() const
    {
        return m_wlinfo;
    }

    QString filesPath() const
    {
        return m_filesPath;
    }

    qint64 timeStep() const
    {
        return m_timeStep;
    }

public slots:
    void stop();

    void readUsb();

    void setResult(lines_t *result)
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


    void setWlinfo(WlBorders wlinfo)
    {
        m_wlinfo = wlinfo;
        emit wlinfoChanged(m_wlinfo);
    }


    void setFilesPath(QString filesPath)
    {
        if (m_filesPath == filesPath)
            return;

        m_filesPath = filesPath;
        emit filesPathChanged(m_filesPath);
    }

    void setTimeStep(qint64 timeStep)
    {
        if (m_timeStep == timeStep)
            return;

        m_timeStep = timeStep;
        emit timeStepChanged(m_timeStep);
    }

signals:

    void ready();

    void finished();

    void resultChanged(lines_t *result);

    void waitTimeChanged(qint64 waitTime);

    void isWriteFileChanged(bool isWriteFile);

    void wlinfoChanged(WlBorders wlinfo);

    void filesPathChanged(QString filesPath);

    void timeStepChanged(double timeStep);

private:
    UsbHandler *usb;

    QElapsedTimer  displayTimer;
    qint64   const DISPLAY_WAIT_TIME = 300;

    QElapsedTimer  fileTimer;
    qint64         m_waitTime;

    QElapsedTimer  timeStepTimer;

    bool      m_running;
    bool      m_isWriteFile;

    WlBorders m_wlinfo;

    QString   m_filesPath;

    lines_t  *m_result;

    double    m_timeStep;

    bool    startedWrite = false;
    QString fileDir;
    quint64 filesCount = 0;



private:
    ushort   convert(char const ch1, char const ch2);

    lines_t* split(QVector<ushort> &ubuffer, int start_pos);

    int      findSeq(QVector<ushort> &vec, int start_from, ushort *seq, int seq_size);

    void     writeData(lines_t *lines);

};

#endif // USBREADER_H
