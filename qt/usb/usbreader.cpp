#include "usbreader.h"
#include "chart/filewriter.h"

#include <QDebug>
#include <QFile>
#include <QTextStream>

UsbReader::UsbReader(UsbHandler *usb)
  : usb(usb)
{
    qRegisterMetaType<lines_t>();

    displayTimer.start();
    timeStepTimer.start();

    setWaitTime(100);
}

ushort UsbReader::convert(const char ch1, const char ch2)
{
    ushort numb = static_cast<ushort>(ch1);
    numb <<= 8;
    numb += static_cast<ushort>(ch2) & 0x00FF;
    return  numb;
//    char ch[2];
//    ch[1] = ch1; // MSByte
//    ch[0] = ch2; // LSByte
//    return *(ushort*)ch;
}

lines_t* UsbReader::split(QVector<ushort> &ubuffer, int start_pos)
{
    lines_t *list = new lines_t();
    int i = start_pos;
    int start_line = start_pos;
    int end_line = start_pos;

    while (i < ubuffer.size())
    {
        i = findSeq(ubuffer, i, start_seq, SEQ_SIZE);
        if (i == SEQ_NOT_FOUND)
            break;
        start_line = i + 3; // skip start sequence

        i = findSeq(ubuffer, i, end_seq, SEQ_SIZE);
        if (i == SEQ_NOT_FOUND)
            break;
        end_line = i; // set pos before end sequence

//        if (end_line - start_line > LINE_SIZE)
//            continue;

        QVector<ushort> line;
        for (int j = start_line; j < end_line; j++)
            line.push_back(ubuffer[j]);
        list->push_back(line);
    }

    return list;
}


int UsbReader::findSeq(QVector<ushort> &vec, int start_from, ushort* seq, int seq_size)
{
    int count = 0;
    for (int i = start_from; i < vec.size(); i++) {
        if (vec[i] == seq[count])
            count++;
        else
            count = 0;
        if (count == seq_size)
            return i - 2;
    }
    return -1;
}

void UsbReader::writeData(lines_t *lines)
{
    if (!startedWrite)
    {
        fileDir = FileWriter::getDate() + "_"
                + FileWriter::getTimeLine();
        startedWrite = true;
        filesCount = 0;
    }
    double timeStepDbl = timeStep();
    timeStepDbl /= lines->size();

    FileWriter *writer = new FileWriter(fileDir, filesPath());
    writer->writeLines(*lines, wlinfo(), timeStepDbl, filesCount);
    filesCount++;
}

void UsbReader::stop()
{
    qDebug() << "Thread Stopped";
    m_running = false;
    emit finished();
}

void UsbReader::readUsb()
{
    qDebug() << "Thread Started";

    m_running = true;

    while (m_running)
    {
        char* buffer = nullptr;
        int readed = 0;

        if (!usb->readData(&buffer, readed))
            continue;

        setTimeStep(timeStepTimer.elapsed());
        timeStepTimer.restart();

        QVector<ushort> ubuffer;
        for (int i = 0; i < readed; i+=2)
            ubuffer.push_back(convert(buffer[i], buffer[i+1]));

        delete[] buffer;

        lines_t *lines = split(ubuffer, 0);

        if (lines->size() == 0)
        {
            qDebug() << "Size of error line " << readed;
            FileWriter *writer = new FileWriter("error_log", filesPath());

            writer->writeErrorLine(ubuffer);

            m_running = false;
            return;
        }

        if (isWriteFile())
            writeData(lines);
        else
            startedWrite = false;

        if (displayTimer.elapsed() >= DISPLAY_WAIT_TIME)
        {
            setResult(lines);
            displayTimer.restart();
        }
    }

}

