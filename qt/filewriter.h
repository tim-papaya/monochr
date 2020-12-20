#ifndef FILEWRITER_H
#define FILEWRITER_H

#include <QString>
#include <QVector>
#include <QTextStream>

class FileWriter
{
public:
    const double TIME_BETWEEN_LINES = 0.5;

         FileWriter(QString dirName);

         FileWriter(QString dirName, QString path);

    void writeBuffer(QVector<ushort> &ubuffer, double wlStart, double wlEnd, int fileNum);

    void writeLine(QVector<ushort> &line, double wlStart, double wlEnd, int fileNum);

    void writeLines(QList<QVector<ushort>> &lines, double wlStart, double wlEnd, int fileNum);

    QString getDate();

    QString getTime();


private:
    QString path = "C:\\TIM\\Project\\monochr\\logs\\";

    QTextStream& writeLineInfo(QTextStream &stream, double wlStart, double wlEnd);

    void setFileName(int fileNum);
};


#endif // FILEHANDLER_H
