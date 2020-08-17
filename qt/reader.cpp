#include "reader.h"
#include <QDebug>
Reader::Reader(UsbHandler *usb, QGraphicsScene *scene)
  : usb(usb), scene(scene)
{

}

int Reader::convert(const QChar ch1, const QChar ch2)
{
        char ch[2];
        ch[1] = ch1.unicode(); // MSByte
        ch[0] = ch2.unicode(); // LSByte
        return *(ushort*)ch;
}

//QList<QVector<ushort> > Reader::split(QVector<ushort> &ubuffer)
//{
//    int pos_start, pos_end, seq_count = 0;
//    for(int i = 0; i < ubuffer.size(); i++)
//        if (ubuffer[i] == start_seq[seq_count])
//        {
//            seq_count++;
//            if (seq_count == 1)
//                pos_end = i - 1;
//            if (seq_count == seq_size)
//            {

//            }
//        {
//        else
//            seq_count = 0;
//}

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
        for(int i = 0; i < size_buffer; i++)
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

//        QList<QVector<ushort>> lines = split(ubuffer);
        QList<QVector<ushort>> lines;
        lines.push_back(ubuffer);
        qDebug() << "Lines readed:" << lines.size();
        setResult(lines);
    }
}
