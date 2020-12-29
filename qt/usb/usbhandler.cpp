#include "usbhandler.h"
#include "QDebug"
#include "usbreader.h"
UsbHandler::UsbHandler() : numDevs(0) ,
                           ftStatus(FT_CreateDeviceInfoList(&numDevs))
{
}

int UsbHandler::showDevices(QString* info)
{
    DWORD numDevs;

    // create the device information list
    ftStatus = FT_CreateDeviceInfoList(&numDevs);

    if (ftStatus == FT_OK)
       qDebug() << "NumDev: " << numDevs;

    FT_DEVICE_LIST_INFO_NODE *devInfo;

    if (numDevs > 0) {
        // allocate storage for list based on numDevs

        QTextStream stream(info);

        devInfo = (FT_DEVICE_LIST_INFO_NODE*)malloc(sizeof(FT_DEVICE_LIST_INFO_NODE)*numDevs);
        // get the device information list
        ftStatus = FT_GetDeviceInfoList(devInfo,&numDevs);
        if (ftStatus == FT_OK) {
            for (int i = 0; i < numDevs; i++) {
                stream << "Dev " << i << "\n"
                 << "Flags= " << devInfo[i].Flags << "\n"
                 << "Type= "<< devInfo[i].Type << "\n"
                 << "ID= "<< devInfo[i].ID << "\n"
                 << "LocId= "<<devInfo[i].LocId << "\n"
                 << "SerialNumber= " << devInfo[i].SerialNumber << "\n"
                 << "Description= " << devInfo[i].Description << "\n"
                 << "ftHandle= " << devInfo[i].ftHandle << "\n"
                 << "-------------" << "\n";

            }
        }
    }
    return numDevs;
}

bool UsbHandler::setSyncFIFO(char* desc)
{
    // SET DEVICE
    ftStatus = FT_ListDevices(&numDevs, NULL, FT_LIST_NUMBER_ONLY);

    if (ftStatus != FT_OK)
    {
        qDebug() << "Can`t open device.";
        return false;
    }

    qDebug() << "NumDev: " << numDevs;

    ftStatus = FT_OpenEx(desc, FT_OPEN_BY_DESCRIPTION, &ftHandle);

    if (!(ftStatus == FT_OK))
    {
        qDebug() << "Something with device.";
        return false;
    }

    UCHAR bitMode;

    UCHAR mask = 0xff;

    ftStatus = FT_SetBitMode(ftHandle, mask, FT_BITMODE_SYNC_FIFO);

    ftStatus = FT_GetBitMode(ftHandle, &bitMode);

    if (ftStatus != FT_OK)
    {
       qDebug() << "Can`t read bit mode.";
       return false;
    }

    qDebug() << "BitMode: " << Qt::hex << bitMode;

    ftStatus = FT_SetLatencyTimer(ftHandle, LATENCY_TIMER);


    PUCHAR l_timer;

    FT_GetLatencyTimer(ftHandle, l_timer);

    qDebug() << "Latency timer: " << static_cast<int>(*l_timer);

    if (ftStatus != FT_OK)
    {
        qDebug() << "Can`t set timer.";
        return false;
    }

    ftStatus = FT_SetUSBParameters(ftHandle, SIZE_RD_BUFFER, SIZE_RD_BUFFER);

    if (ftStatus != FT_OK)
    {
        qDebug() << "Can`t set bufferSize.";
        return false;
    }

    FT_SetFlowControl(ftHandle, FT_FLOW_RTS_CTS, 0x0, 0x0);

    if (ftStatus != FT_OK)
    {
        qDebug() << "Can`t set flow control.";
        return false;
    }

    return true;
}
bool UsbHandler::readData(char **rxBuffer, int &readed)
{
    DWORD rxBytes;
    DWORD txBytes;

    DWORD eventDWORD;

    DWORD bytesReceived;

    FT_GetStatus(ftHandle, &rxBytes, &txBytes, &eventDWORD);

    readed = static_cast<int>(rxBytes);
//    qDebug() << "Bytes received:" << readed;

//    qDebug() << "Bytes is transmitted:" << static_cast<int>(txBytes);

    if (rxBytes < 65536)
        return false;

    *rxBuffer = new char[rxBytes];

    ftStatus = FT_Read(ftHandle, *rxBuffer, rxBytes, &bytesReceived);
    return true;
}

bool UsbHandler::writeData(char *wrBuffer, int &writed)
{
    DWORD bytesWritten;

    qDebug() << "Write buffer:";
    for (uint i = 0; i < sizeof (wrBuffer); i++)
        qDebug() << i << ':' << wrBuffer[i];
    ftStatus = FT_Write(ftHandle, wrBuffer, sizeof(wrBuffer), &bytesWritten);
    if (ftStatus == FT_OK) {
        writed = static_cast<int>(bytesWritten);
        qDebug() << "Bytes is written:" << writed;
    }
    else {
        qDebug() << "error: can`t write bytes.\n";
    }
    return true;
}

bool UsbHandler::closeHandle()
{
    FT_Close(ftHandle);
    return true;
}

