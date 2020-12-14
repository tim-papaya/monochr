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

#include "chart.h"
#include <QtCharts/QChart>
#include <QtCharts/QLineSeries>


#include <QDebug>
#include "reader.h"

void updateChart(QChart* data_chart, QList<QVector<ushort> > lines, bool m150Init, int Ylow, int Yhigh, int Xlow, int Xhigh)
{
    const float K_WL = 0.146;
    const int DARK_SIGNAL = 3730;


    qDebug() << "Updating QChart";

    data_chart->removeAllSeries();

    QLineSeries *series = new QLineSeries;

    if (m150Init)
    {
        // !!!!!!!!!!!!!!!!
        // Need rework Here
        // !!!!!!!!!!!!!!!!
//        float border_low = wl_const - line_size / 2 * k_wl;
//        float border_high = wl_const + line_size / 2* k_wl;

        for (int i = 0; i < lines[0].size(); i++)
            series->append(i, static_cast<int>(lines[0][i]));
    }
    else
    {
        for (int i = 0; i < lines[0].size(); i++)
            series->append(i, static_cast<int>(lines[0][i]));
    }

    data_chart->addSeries(series);

    qDebug() << "Line, data number:" << lines[0].size();

    data_chart->createDefaultAxes();

    data_chart->axisX()->setRange(Xlow, Xhigh);
    data_chart->axisY()->setRange(Ylow, Yhigh);

}


QChart* createChart()
{
    QChart *dataChart = new QChart();


    //dataChart->setMinimumSize(640, 480);
    dataChart->setTitle("Lines");
    //dataChart->legend()->hide();

    // create lines for chart

}
