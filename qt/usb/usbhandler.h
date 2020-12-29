#ifndef USBHANDLER_H
#define USBHANDLER_H

#include <QString>

#include "usb/ftd2xx.h"

class UsbHandler
{
public:
         UsbHandler();

    int  showDevices(QString* info);

    bool setSyncFIFO(char* desc);

    bool readData(char **rxBuffer, int &readed);

    bool writeData(char *wrBuffer, int &writed);

    bool closeHandle();

private:
    int   const  SIZE_RD_BUFFER = 65536;
    DWORD const  BUFFER_FULL = 0;
    char  const  LATENCY_TIMER = static_cast<char>(255);

    DWORD numDevs;

    FT_STATUS ftStatus;
    FT_HANDLE ftHandle;
};


#endif // USBHANDLER_H
