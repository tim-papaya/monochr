#ifndef USBHANDLER_H
#define USBHANDLER_H

#include <QString>

#include "usb/ftd2xx.h"

class UsbHandler
{
public:

    UsbHandler();

    int showDevices(QString* info);

    bool setSyncFIFO(unsigned long inBuffer, char* desc);

    bool readData(char *rxBuffer, int &readed);

    bool writeData(char *wrBuffer, int &writed);

    bool closeHandle();


private:

    const int latency_timer = 2;

    DWORD numDevs;

    FT_STATUS ftStatus;

    FT_HANDLE ftHandle;
};


#endif // USBHANDLER_H
