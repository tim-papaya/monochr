#include "reader.h"
#include <QDebug>
#include <QFile>
#include <QTextStream>
#include <QtEndian>
#include <QDate>

Reader::Reader(UsbHandler *usb)
  : usb(usb)
{
    qRegisterMetaType<QList<QVector<ushort>>>();
    displayTime.start();
    setWaitTime(300);
}

ushort Reader::convert(const char ch1, const char ch2)
{
//     qDebug()<<"-----";
//    ushort numb = ch1;
//    qDebug()<<Qt::bin<<numb ;
//    qDebug()<<"ch1"<<Qt::bin<<numb ;
//    ushort numb1=ch2;

//    numb <<= 8;
//    numb1 = numb1 & 0x00FF;

//    qDebug()<<Qt::bin<<numb ;

//    numb += numb1;
//     qDebug()<<"ch2"<<Qt::bin<<numb1 ;
//    qDebug()<<Qt::bin<<numb;
//    return  numb;
        char ch[2];
        ch[1] = ch1; // MSByte
        ch[0] = ch2; // LSByte
        return *(ushort*)ch;
}

QList<QVector<ushort>> Reader::split(QVector<ushort> &ubuffer)
{
//    qDebug() << "Starting to split lines";
    QList<QVector<ushort>> list;
    int i = 0, start_line = 0, end_line = 0;

    while (i < ubuffer.size())
    {
        i = findSeq(ubuffer, i, start_seq, seq_size);
        if (i == SEQ_NOT_FOUND)
            break;
        start_line = i + 3; // skip start sequence
//        qDebug() << "start seq" << i;
//        qDebug() << "start line" << start_line;

        i = findSeq(ubuffer, i, end_seq, seq_size);
        if (i == SEQ_NOT_FOUND)
            break;
        end_line = i; // set pos before end sequence
//        qDebug() << "end seq" << i;
//        qDebug() << "end line" << end_line;

        if (end_line - start_line > LINE_SIZE)
            continue;

        QVector<ushort> line;
        for (int j = start_line; j < end_line; j++)
            line.push_back(ubuffer[j]);
        list.push_back(line);
    }

    if (list.size() == 0)
       list.push_back(ubuffer);

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

    constexpr int size_buffer = 65536;

    char buffer [size_buffer];

    while (m_running)
    {
        for (int i = 0; i < size_buffer; i++)
              buffer[i] = 0;
        int readed = 0;
        if (!usb->readData(buffer, readed))
        {
            // exit from the while but dont stop the thread,
            // will continue reading if readUsb() called
//            qDebug() << "Buffer is empty!";


            // DELETE THIS BEFORE USE!!!!
//            QFile fileIn("C:\\TIM\\Project\\monochr\\logs\\in.txt");
//            if (!fileIn.open(QIODevice::ReadOnly))
//               qDebug() << "error: file to write raw data from ccd don`t open";

//            QTextStream stream(&fileIn);
//            QVector<ushort> ubuffer;
//            int temp;
//            while(!stream.atEnd())
//            {
//                stream >> temp;
//                ubuffer.push_back(temp);
//            }

//            QList<QVector<ushort>> lines = split(ubuffer);

//            qDebug() << "buffer size" << ubuffer.size();
//            for (ushort numb : ubuffer)
//                qDebug() << numb;
//            qDebug() << "Lines readed:" << lines.size();

//            setResult(lines);
            // DELETE THIS BEFORE USE!!!!

            continue;
        }
        QVector<ushort> ubuffer;
        for (int i = 0; i < readed; i+=2)
            ubuffer.push_back(convert(buffer[i], buffer[i+1]));

        QString path = "C:\\TIM\\Project\\monochr\\logs\\";
        QString time = QString::number(QTime::currentTime().hour()) + "_" +
                       QString::number(QTime::currentTime().minute()) + "_" +
                       QString::number(QTime::currentTime().second());
        path += "out_raw_" + QDate::currentDate().toString() + "_" + time + ".txt";

        QFile fileOut(path);
        if (!fileOut.open(QIODevice::WriteOnly))
           qDebug() << "error: file to write raw data from ccd don`t open";

        QTextStream stream(&fileOut);

        Qt::bin(stream);
        for (ushort temp : ubuffer)
            stream << temp << "\n";
        fileOut.close();

        QList<QVector<ushort>> lines = split(ubuffer);

//        qDebug() << "Lines readed:" << lines.size();

        if (displayTime.elapsed() >= waitTime())
        {
            setResult(lines);
            displayTime.restart();
        }
    }
}
