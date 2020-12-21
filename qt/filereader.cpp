#include "filereader.h"
#include "QDir"
#include "QFile"
#include <QDebug>
#include <QTextStream>

FileReader::FileReader(QString path)
{
    this->path = path;
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

    return dir.count();
}

QVector<ushort> *FileReader::getPoint(QString dirName, int pointNum)
{
    QDir dir(path + "\\" + dirName);
    dir.setFilter(QDir::Files | QDir::NoDot | QDir::NoDotDot);

    QStringList fileName = dir.nameFiltersFromString(QString::number(pointNum) + ".txt");

    if (fileName.count() == 0)
    {
        qDebug() << "error: can`t find files to read";
        return new QVector<ushort>();
    }

    qDebug() << "Files to read finded:" << fileName.count();

    QFile file(dir.path() + "\\" + fileName[0]);

    if (!file.open(QFile::ReadOnly))
    {
        qDebug() << "error: can`t open file to read lines";
        return new QVector<ushort>();
    }

    QString info = file.readLine();
    QString firstLine = file.readLine();

    QTextStream lineStream(&firstLine);
    QString time;
    lineStream >> time >> time >> time;

    QVector<ushort>* vec = new QVector<ushort>();

    ushort pix;

    while(!lineStream.atEnd())
    {
        lineStream >> pix;
        vec->push_back(pix);
    }
    return vec;
}
