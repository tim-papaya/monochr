#ifndef FILEREADER_H
#define FILEREADER_H

#include <QString>
#include <QList>
#include <QVector>

class FileReader
{
public:
    FileReader(QString path);

    QStringList*  readDirs();

    int              countPoints(QString dirName);

    QVector<ushort>* getPoint(QString dirName, int pointNum);

private:
    QString path;
};

#endif // FILEREADER_H
