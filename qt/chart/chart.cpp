#include "chart.h"
#include <QtCharts/QChart>
#include <QtCharts/QLineSeries>

#include <QDebug>
#include <QQueue>


void resetChart(QChart* data_chart)
{
    data_chart->removeAllSeries();
}

void setBorders(QChart* data_chart, Borders borders)
{
    data_chart->createDefaultAxes();

    data_chart->axisX()->setRange(borders.Xlow, borders.Xhigh);
    data_chart->axisY()->setRange(borders.Ylow, borders.Yhigh);
}

void addLine(QChart* data_chart, QVector<ushort> &line, double  wl_atCenter)
{
    qDebug() << "Updating line of QChart";

    QLineSeries *series = new QLineSeries;


    WlBorders wl_info = WlBorders(wl_atCenter, line.size());

    int dark_signal = findDarkSignal(&line);

    for (int i = 0; i < line.size(); i++)
        series->append(wl_info.wl_low + WlBorders::K_WL * i, dark_signal - static_cast<int>(line[i]));

    data_chart->addSeries(series);
    QPen pen = series->pen();
    pen.setWidth(1);
    qDebug() << "Line, data number:" << line.size();
}

int findDarkSignal(QVector<ushort> *line)
{
    ushort max = line->at(0);

    for (int i = 1; i < line->size(); i++)
    {
        if (line->at(i) > max)
        {
            max = line->at(i);
        }
    }
    return static_cast<int>(max);
}

QChart* createChart()
{
    QChart *dataChart = new QChart();

    //dataChart->setMinimumSize(640, 480);
    dataChart->setTitle("Lines");
//    dataChart->legend()->hide();

    // create lines for chart
}

void addLine(QChart *data_chart, PointInfo *pointInfo)
{
    qDebug() << "Updating line of QChart";

    QLineSeries *series = new QLineSeries;

    int dark_signal = findDarkSignal(pointInfo->data);

    for (int i = 0; i < pointInfo->data->size(); i++)
    {
        int value = dark_signal - static_cast<int>(pointInfo->data->at(i));
        double pos = pointInfo->wl_low + WlBorders::K_WL * i;

        series->append(pos, value);
    }
    data_chart->addSeries(series);

    qDebug() << "Line, data number:" << pointInfo->data->size();
}
