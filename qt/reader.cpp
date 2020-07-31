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
            qDebug() << "Buffer is empty!";

        QString *str = new QString;

        for (int i = 0; i < size_buffer; i++) {
            str += buffer[i];
            str += ' ';
        }
        setResult(*str);
        emit ready();
    }
}
