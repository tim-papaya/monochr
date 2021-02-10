#include "filereader.h"
#include "QDir"
#include "QFile"
#include <QDebug>
#include <QTextStream>

FileReader::FileReader(QString path)
{
    this->path = path;

    QDir dirPath(this->path);
    dirPath.mkpath(path);
}

QStringList *FileReader::readDirs()
{
    QDir dir(path);
    dir.setFilter(QDir::Dirs | QDir::NoDot | QDir::NoDotDot);
    return new QStringList(dir.entryList());
}

int FileReader::countPoints(QString dirName)
{
    QDir dir(path + "\\" + dirName);
    dir.setFilter(QDir::Files | QDir::NoDot | QDir::NoDotDot);

    QStringList filters = dir.nameFiltersFromString("*" + FILE_FORMAT);

    dir.setNameFilters(filters);

    QStringList filesList = dir.entryList();


    return filesList.count();
}

PointInfo* FileReader::getPoint(QString dirName, int pointNum)
{
    QDir dir(path + "\\" + dirName);
    dir.setFilter(QDir::Files | QDir::NoDot | QDir::NoDotDot);

    QStringList filters = dir.nameFiltersFromString(QString::number(pointNum) + FILE_FORMAT);

    dir.setNameFilters(filters);

    QStringList filesList = dir.entryList();

    if (filesList.count() == 0)
    {
        qDebug() << "error: can`t find files to read";
        return nullptr;
    }

//    qDebug() << "Files to read finded:" << filesList.count();

    QFile file(dir.path() + "\\" + filesList[0]);

    if (!file.open(QFile::ReadOnly))
    {
        qDebug() << "error: can`t open file to read lines";
        return nullptr;
    }

    QString *info = new QString(file.readLine());
    QString firstLine = file.readLine();

    QTextStream lineStream(&firstLine);

    QString *time = new QString();

    lineStream >> *time >> *time >> *time;

    QVector<ushort>* vec = new QVector<ushort>();

    ushort pix;

    while(!lineStream.atEnd())
    {
        lineStream >> pix;
        vec->push_back(pix);
    }

    return new PointInfo(vec, info);
}

PointInfo::PointInfo(QVector<ushort> *data, QString *info)
    : data(data), info(info)
{
    QTextStream infoStream(info);

    QString buf;

    infoStream >> buf >> buf >> buf;
    infoStream >> buf >> time_step;
    infoStream >> buf >> wl_low >> buf >> wl_high;
}
