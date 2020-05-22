#include "reader.h"
#include <QDebug>
Reader::Reader(UsbHandler *usb, QGraphicsScene *scene, QObject* parent)
  : QObject(parent), usb(usb), scene(scene)
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

        usb->readData(buffer);

        QString *str = new QString;

        for (int i = 0; i < size_buffer; i++) {
            str += buffer[i];
            str += ' ';
        }

        QPen redPen(Qt::red);

        for (int i = 0; i < size_buffer; i++) {
            scene->addLine(i, static_cast<uchar>(buffer[i]), i, static_cast<uchar>(buffer[i]), redPen);
        }
        emit ready(str);
    }
}
