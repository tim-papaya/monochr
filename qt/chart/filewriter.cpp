#include "filewriter.h"

#include <QDate>
#include <QTextStream>
#include <QFile>
#include <QDebug>
#include <QDir>


FileWriter::FileWriter(QString dirName, QString path)
{
    this->path = path + "\\" + dirName + "\\";
}

//void FileWriter::writeBuffer(QVector<ushort> &ubuffer, double wlStart, double wlEnd, int fileNum)
//{
//    setFileName(fileNum);

//    QFile fileOut(path);

//    if (!fileOut.open(QIODevice::WriteOnly))
//       qDebug() << "error: file to write raw data from ccd don`t open";

//    QTextStream stream(&fileOut);

//    writeLineInfo(stream, wlStart, wlEnd);

//    for (ushort temp : ubuffer)
//        stream << temp << "\n";

//    fileOut.close();
//}

//void FileWriter::writeLine(QVector<ushort> &line, double wlStart, double wlEnd, int fileNum)
//{
//    setFileName(fileNum);

//    QFile fileOut(path);

//    if (!fileOut.open(QIODevice::WriteOnly))
//       qDebug() << "error: file to write raw data from ccd don`t open";

//    QTextStream stream(&fileOut);

//    writeLineInfo(stream, wlStart, wlEnd);

//    for (ushort temp : line)
//        stream << temp << "\t";

//    fileOut.close();
//}

void FileWriter::writeLines(QList<QVector<ushort>> &lines, WlBorders wlinfo, double timeStep, int fileNum)
{
    setFileName(fileNum);

    QFile fileOut(path);

    if (!fileOut.open(QIODevice::WriteOnly))
       qDebug() << "error: file to write raw data from ccd don`t open";

    QTextStream stream(&fileOut);

    writeLineInfo(stream, wlinfo.wl_low, wlinfo.wl_high, timeStep);

    QList<QVector<ushort>>::iterator line;

    double startTime_ms = static_cast<double>(QTime::currentTime().msec());

    for (line = lines.begin(); line != lines.end(); ++line)
    {
        stream << "time (ms):\t" <<  QStringLiteral("%1").arg(startTime_ms, 4, 'f', 1) << "\t";
        startTime_ms += timeStep;

        for (ushort temp : *line)
            stream << temp << "\t";
        stream << "\n";
    }
    fileOut.close();
}

void FileWriter::writeErrorLine(QVector<ushort> &ubuffer)
{
    setFileName(getDate() + " " + getTimeLine(),ERROR_LOG_FORMAT);

        QFile fileOut(path);

        if (!fileOut.open(QIODevice::WriteOnly))
           qDebug() << "error: file to write raw data from ccd don`t open";

        QTextStream stream(&fileOut);

        for (ushort temp : ubuffer)
            stream << temp << "\n";

        fileOut.close();
}

QString FileWriter::getDate()
{
    QString date = QString::number(QDate::currentDate().day()) + "_" +
                   QString::number(QDate::currentDate().month()) + "_" +
                   QString::number(QDate::currentDate().year());
    return  date;
}

QString FileWriter::getTime()
{
    QString time = "h\t" +
                   QString::number(QTime::currentTime().hour()) + "\t" + "m\t" +
                   QString::number(QTime::currentTime().minute()) + "\t" + "s\t" +
                   QString::number(QTime::currentTime().second()) + "\t" + "ms\t" +
                   QString::number(QTime::currentTime().msec());
    return  time;
}
QString FileWriter::getTimeLine()
{
    QString time = "h" +
                   QString::number(QTime::currentTime().hour()) + "_" + "m" +
                   QString::number(QTime::currentTime().minute()) + "_" + "s" +
                   QString::number(QTime::currentTime().second()) + "_" + "ms" +
                   QString::number(QTime::currentTime().msec());
    return  time;
}
void FileWriter::setFileName(int fileNum)
{
    QDir dirPath(path);
    dirPath.mkpath(path);

    path += QString::number(fileNum) + FILE_FORMAT;
}

void FileWriter::setFileName(QString name, QString fileFormat)
{
    QDir dirPath(path);
    dirPath.mkpath(path);

    path += name + fileFormat;
}

QTextStream &FileWriter::writeLineInfo(QTextStream &stream, double wlStart, double wlEnd, double timeStep)
{
    stream << "date\t" << getDate() << " " << getTimeLine() << "\t";
    stream << "time_step\t" << timeStep << "\t";
    stream << "wl_range\t" << wlStart << " - " << wlEnd << "\n";
    return stream;
}
