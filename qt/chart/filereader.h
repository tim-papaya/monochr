#ifndef FILEREADER_H
#define FILEREADER_H

#include <QString>
#include <QList>
#include <QVector>

struct PointInfo
{
    QVector<ushort> *data;
    QString *info;

    double wl_high;
    double wl_low;

    double time_step;

    PointInfo(QVector<ushort> *data, QString *info);

    ~PointInfo()
    {
        delete  data;
        delete  info;
    }
};

class FileReader
{
public:
                  FileReader(QString path);

    QStringList*  readDirs();

    int           countPoints(QString dirName);

    PointInfo*    getPoint(QString dirName, int pointNum);

private:
     QString const FILE_FORMAT = ".sdf";

     QString path;
};



#endif // FILEREADER_H
