#ifndef CHART_H
#define CHART_H

#include <QtCharts/QChartView>
#include <QtCharts>

struct Borders
{
    int     Ylow;
    int     Yhigh;
    int     Xlow;
    int     Xhigh;
    Borders (int Ylow, int Yhigh, int Xlow, int Xhigh)
    {
        this->Ylow  = Ylow;
        this->Yhigh = Yhigh;
        this->Xlow  = Xlow;
        this->Xhigh = Xhigh;
    }
};

struct WlBorders
{
    static constexpr float K_WL = 0.137;

    double wl_low;
    double wl_high;
    double wl_center;

    WlBorders()
    {
        this->wl_low = 0;
        this->wl_high = 0;
        this->wl_center = 0;
    }
    WlBorders(double wl_low, double wl_high, double wl_center)
    {
        this->wl_low = wl_low;
        this->wl_high = wl_high;
        this->wl_center = wl_center;
    }

    WlBorders(double wl_center, int line_size)
    {
        this->wl_low = wl_center - line_size / 2 * WlBorders::K_WL;
        this->wl_high = wl_center + line_size / 2 * WlBorders::K_WL;
    }
};

QChart* createChart();

void resetChart(QChart* data_chart);

void setBorders(QChart* data_chart, Borders borders);

void addLine(QChart* data_chart,
             QVector<ushort> &line,
             double  wl_atCenter);

int findDarkSignal(QVector<ushort> line);

WlBorders findWlBorders(double wl_center);

#endif
