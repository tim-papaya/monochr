#ifndef USBHANDLER_H
#define USBHANDLER_H


#include <QDebug>

#include "usb/ftd2xx.h"


class UsbHandler {
public:
    UsbHandler();

    int showDevices(QString* info);
    bool setSyncFIFO(unsigned long inBuffer, unsigned long outBuffer, char* desc);
    bool readData(char *rxBuffer, int &readed);
    bool closeHandle();

private:
    DWORD numDevs;
    FT_STATUS ftStatus;
    FT_HANDLE ftHandle;
};


#endif // USBHANDLER_H
