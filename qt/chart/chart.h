/****************************************************************************
**
** Copyright (C) 2016 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Charts module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/

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

void updateChart(QChart  *data_chart,
                 QList<QVector<ushort>> lines,
                 Borders borders,
                 double  wl_atCenter);

int findDarkSignal(QVector<ushort> line);

WlBorders findWlBorders(double wl_center);

#endif
