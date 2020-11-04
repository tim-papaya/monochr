#include "reader.h"
#include <QDebug>
#include <QFile>
#include <QTextStream>
#include <QtEndian>
#include <QDate>
#include <QTime>

Reader::Reader(UsbHandler *usb, QGraphicsScene *scene)
  : usb(usb), scene(scene)
{

}

int Reader::convert(const char ch1, const char ch2)
{
    ushort numb = ch1;
    numb <<= 8;
    return  numb + ch2;
//        char ch[2];
//        ch[1] = ch1; // MSByte
//        ch[0] = ch2; // LSByte
//        return *(ushort*)ch;

}

QList<QVector<ushort>> Reader::split(QVector<ushort> &ubuffer)
{

    int pos_start, pos_end, seq_count = 0;
    bool is_line = false;

    QList<QVector<ushort>> list;

    for(int i = 0; i < ubuffer.size(); i++)
    {
        if (ubuffer[i] == start_seq[seq_count])
        {
           seq_count++;

           if (seq_count == seq_size)
           {
               if (!is_line)
               {
                   pos_start = i + 1;
                   is_line = true;
                   seq_count = 0;
               }
               else
               {
                  pos_end = i - 2;
                  QVector<ushort> line;

                  for (int j = pos_start; j < pos_end; j++){
                      line.push_back(ubuffer[j]);
                      if(j<=3){
                          qDebug()<< static_cast<char>(ubuffer[j]);
                      }
                  }


                  list.push_back(line);
                  seq_count = 0;
                  is_line = false;
               }
           }
        }
        else
            seq_count = 0;
    }
    if (list.size() == 0)
       list.push_back(ubuffer);
    return list;
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
            qDebug() << "Buffer is empty!";

            // DELETE THIS BEFORE USE!!!!
//            QString str = " S R T2135 S R T1612 S R T12345 S R T456 S R T";
//            QStringList lines;
//            lines = str.split(startSequence);
//            qDebug() << lines;
//            setResult(lines);
            // DELETE THIS BEFORE USE!!!!

            break;
        }
        QVector<ushort> ubuffer;
        for (int i = 0; i < readed; i+=2)
            ubuffer.push_back(convert(buffer[i], buffer[i+1]));

//        QString path = "C:\\TIM\\Project\\monochr\\logs\\";
//        QString time = QString::number(QTime::currentTime().hour()) + "_" +
//                       QString::number(QTime::currentTime().minute()) + "_" +
//                       QString::number(QTime::currentTime().second());
//        path += "out_raw_" + QDate::currentDate().toString() + "_" + time + ".txt";

//        QFile fileOut(path);
//        if (!fileOut.open(QIODevice::WriteOnly))
//           qDebug() << "error: file to write raw data from ccd don`t open";

//        QTextStream stream(&fileOut);

//        Qt::bin(stream);
//        for (ushort temp : ubuffer)
//            stream << temp << "\n";
//        fileOut.close();

        QList<QVector<ushort>> lines = split(ubuffer);

        qDebug() << "Lines readed:" << lines.size();

        setResult(lines);
    }
}
