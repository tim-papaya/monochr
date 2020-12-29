#ifndef FILEWRITER_H
#define FILEWRITER_H

#include "chart/chart.h"

#include <QString>
#include <QVector>
#include <QTextStream>

class FileWriter
{
public:
         FileWriter(QString dirName, QString path);

    void writeBuffer(QVector<ushort> &ubuffer, double wlStart, double wlEnd, int fileNum);

    void writeLine(QVector<ushort> &line, double wlStart, double wlEnd, int fileNum);

    void writeLines(QList<QVector<ushort>> &lines, WlBorders wlinfo, double timeStep, int fileNum);

    void writeErrorLine(QVector<ushort> &ubuffer);

    static QString getDate();

    static QString getTime();

    static QString getTimeLine();

private:
          QString path;

    const QString FILE_FORMAT = ".sdf";
    const QString ERROR_LOG_FORMAT = ".txt";

    QTextStream& writeLineInfo(QTextStream &stream, double wlStart, double wlEnd, double timeStep);

    void         setFileName(QString name, QString fileFormat);
    void         setFileName(int fileNum);
};


#endif // FILEHANDLER_H
