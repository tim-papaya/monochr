#include "reader.h"
#include <QDebug>
Reader::Reader(UsbHandler *usb, QGraphicsScene *scene)
  : usb(usb), scene(scene)
{

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
            m_running = false;

            // DELETE THIS BEFORE USE!!!!
            QString str = "SRT2135SRT1612SRT12345SRT456SRT";
            QStringList lines;
            lines = str.split(startSequence);;

            for (int i = 0; i < lines.size(); i++)
                if (lines[i].isEmpty())
                    lines.removeAt(i);

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

        setResult(lines);
    }
}
