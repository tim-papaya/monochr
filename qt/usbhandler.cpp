#include "usbhandler.h"
#include "QDebug"
#include "reader.h"
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

bool UsbHandler::setSyncFIFO(unsigned long inBuffer, unsigned long outBuffer, char* desc)
{
    // SET DEVICE
    ftStatus = FT_ListDevices(&numDevs, NULL, FT_LIST_NUMBER_ONLY);

    if (ftStatus == FT_OK) {
        qDebug() << "NumDev: " << numDevs;

        ftStatus = FT_OpenEx(desc, FT_OPEN_BY_DESCRIPTION, &ftHandle);
       }

    //ftStatus = FT_Open(, &ftHandle);

    else
    {
        qDebug() << "Can`t open device.";
        return false;
    }

    if (!(ftStatus == FT_OK))
        qDebug() << "Something with device.";

    UCHAR BitMode;


    ftStatus = FT_GetBitMode(ftHandle, &BitMode);
    QByteArray bitmodeExa(BitMode, 1);
    if (ftStatus == FT_OK)

        qDebug() << "BitMode: "<< QString( QByteArray::fromHex(bitmodeExa))  << hex  <<BitMode;
    else
        qDebug() << "Can`t read bit mode.";


    // SET WORKING MODE OF DEVICE
    // 0x00 - reset
    // 0x40 - sync FIFO

    UCHAR mask(0xff);

    qDebug() << "mask : " << hex << mask;

    ftStatus = FT_SetBitMode(ftHandle, mask, 0x07);
    Sleep(10);

    if (!(ftStatus == FT_OK))
        qDebug() << "Can`t set bit mode.";


    ftStatus = FT_GetBitMode(ftHandle, &BitMode);
    if (ftStatus == FT_OK)

        qDebug() << "BitMode: "<< QString( QByteArray::fromHex(bitmodeExa))  << hex  <<BitMode;
    else
        qDebug() << "Can`t read bit mode.";


    ftStatus = FT_SetBitMode(ftHandle, mask, FT_BITMODE_SYNC_FIFO);

    ftStatus = FT_GetBitMode(ftHandle, &BitMode);
    if (ftStatus == FT_OK)
        qDebug() << "BitMode: " << hex << BitMode;
    else
       qDebug() << "Can`t read bit mode.";
    // SET SIZE OF RECEIVING, TRANSMITTING BUFFER
    if (ftStatus == FT_OK)
    {
        ftStatus = FT_SetUSBParameters(ftHandle, inBuffer, outBuffer);
        ftStatus = FT_SetFlowControl(ftHandle, FT_FLOW_RTS_CTS, 0x10, 0x13);
    }
    else
    {
        qDebug() << "Can`t set bufferSize.";
        return false;
    }
    if (!(ftStatus == FT_OK))
        qDebug() << "Can`t set BUFFER.";
    return true;
}
bool UsbHandler::readData(char *rxBuffer, int &readed)
{
    DWORD rxBytes;
    DWORD txBytes;

    DWORD eventDWORD;

    DWORD bytesReceived;


    FT_GetStatus(ftHandle, &rxBytes, &txBytes, &eventDWORD);

    readed = static_cast<int>(rxBytes);
    qDebug() << "Bytes received:" << readed;

    qDebug() << "Bytes is transmitted:" << static_cast<int>(txBytes);


    if (rxBytes > 0)
    {
        ftStatus = FT_Read(ftHandle,
                           rxBuffer,
                           rxBytes,
                           &bytesReceived);
        if (ftStatus == FT_OK) {
            qDebug() << "First ten chars : ";
            for (int i = 0; i < 10; i++) {
                qDebug() << rxBuffer[i] << ":" << static_cast<uchar>(rxBuffer[i]);
            }
        }
        else
            qDebug() << "error: can`t read bytes.\n";

    }
    else
        return false;
    qDebug() << "usbhandler::readData";
    return true;
}

bool UsbHandler::writeData(char *wrBuffer, int &writed)
{
    DWORD bytesWritten;

    qDebug() << "Write buffer:";
    for (int i = 0; i < sizeof (wrBuffer); i++)
        qDebug() << i << ':' << wrBuffer[i];
    ftStatus = FT_Write(ftHandle, wrBuffer, sizeof(wrBuffer), &bytesWritten);
    if (ftStatus == FT_OK) {
        writed = static_cast<int>(bytesWritten);
        qDebug() << "Bytes is written:" << writed;
    }
    else {
        qDebug() << "error: can`t write bytes.\n";
    }
}

bool UsbHandler::closeHandle()
{
    FT_Close(ftHandle);
}
