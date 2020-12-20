#include "reader.h"
#include "filewriter.h"

#include <QDebug>
#include <QFile>
#include <QTextStream>

Reader::Reader(UsbHandler *usb, int size_rdbuf)
  : usb(usb), size_buffer_rd(size_rdbuf)
{
    qRegisterMetaType<QList<QVector<ushort>>>();
    displayTime.start();
    setWaitTime(100);
}

ushort Reader::convert(const char ch1, const char ch2)
{

    ushort numb = static_cast<ushort>(ch1);
    numb <<= 8;
    numb += static_cast<ushort>(ch2) & 0x00FF;
    return  numb;
//    char ch[2];
//    ch[1] = ch1; // MSByte
//    ch[0] = ch2; // LSByte
//    return *(ushort*)ch;
}

QList<QVector<ushort>> Reader::split(QVector<ushort> &ubuffer, int start_pos)
{
    QList<QVector<ushort>> list;
    int i = start_pos;
    int start_line = start_pos;
    int end_line = start_pos;

    while (i < ubuffer.size())
    {
        i = findSeq(ubuffer, i, start_seq, SEQ_SIZE);
        if (i == SEQ_NOT_FOUND)
            break;
        start_line = i + 3; // skip start sequence

        i = findSeq(ubuffer, i, end_seq, SEQ_SIZE);
        if (i == SEQ_NOT_FOUND)
            break;
        end_line = i; // set pos before end sequence

//        if (end_line - start_line > LINE_SIZE)
//            continue;

        QVector<ushort> line;
        for (int j = start_line; j < end_line; j++)
            line.push_back(ubuffer[j]);
        list.push_back(line);
    }

    return list;
}


int Reader::findSeq(QVector<ushort> &vec, int start_from, ushort* seq, int seq_size)
{
    int count = 0;
    for (int i = start_from; i < vec.size(); i++) {
        if (vec[i] == seq[count])
            count++;
        else
            count = 0;
        if (count == seq_size)
            return i - 2;
    }
    return -1;
}

void Reader::stop()
{
    qDebug() << "Thread Stopped";
    m_running = false;
    emit finished();
}

void Reader::readUsb()
{
    qDebug() << "Thread Started";

    m_running = true;

    char* buffer = nullptr;

    while (m_running)
    {

        int readed = 0;

        if (!usb->readData(&buffer, readed))
            continue;

        QVector<ushort> ubuffer;
        for (int i = 0; i < readed; i+=2)
            ubuffer.push_back(convert(buffer[i], buffer[i+1]));

        delete[] buffer;

        QList<QVector<ushort>> lines = split(ubuffer, 0);

        if (lines.size() == 0)
        {
            qDebug() << "Size of eror line " << readed;
        }

        if (isWriteFile() && lines.size() != 0)
        {
            if (displayTime.elapsed() >= waitTime())
            {
                FileWriter *writer = new FileWriter("ddata");
                writer->writeLines(lines, wlinfo().wl_low, wlinfo().wl_high, 0);

                displayTime.restart();
            }
        }
        if (!isWriteFile() && displayTime.elapsed() >= waitTime())
        {
            setResult(lines);
            displayTime.restart();
        }
    }
}

