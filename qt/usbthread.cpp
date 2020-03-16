#include "usbthread.h"

UsbThread::UsbThread(QObject *parent) : QObject(parent), m_stillRuning(false)
{

}

void UsbThread::Procces()
{
    while(m_stillRuning==true){

    }

    emit finished();
}
