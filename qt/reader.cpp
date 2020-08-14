#include "reader.h"
#include <QDebug>
Reader::Reader(UsbHandler *usb, QGraphicsScene *scene)
  : usb(usb), scene(scene)
{

}

short Reader::convert(const QChar ch1, const QChar ch2)
{
        char ch[2];
        ch[1] = ch1.unicode();
        ch[0] = ch2.unicode();
        return *(short*)ch;
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
        for(int i = 0; i < size_buffer; i++)
              buffer[i] = 0;

        if (!usb->readData(buffer))
        {
            // exit from the while but dont stop the thread,
            // will continue reading if readUsb() called
            qDebug() << "Buffer is empty!";

            // DELETE THIS BEFORE USE!!!!
            QString str = " S R T2135 S R T1612 S R T12345 S R T456 S R T";
            QStringList lines;
            lines = str.split(startSequence);


            qDebug() << lines;
            setResult(lines);
            // DELETE THIS BEFORE USE!!!!

            break;
        }
        QString *str = new QString;

        for (int i = 0; i < size_buffer; i++) {
            str += buffer[i];
            str += ' ';
        }
        QStringList lines = str->split(startSequence);
        qDebug() << "Lines readed:" << lines.size();
        setResult(lines);
    }
}
