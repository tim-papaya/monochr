#include "m150handler.h"

#include <QDebug>

#include "solar_sdk/solarls_sdk.h"

M150Handler::M150Handler()
{

}

void M150Handler::init(char* log_path, char* config_path)
{
    if (!sls_SetLogging(SDKLOGLEVEL_DEBUG, log_path))
    {
        qDebug() << "error m150: can`t set logs";
        return;
    }
    if (!sls_Init(config_path))
    {
        qDebug() << "error m150: can`t init the m150";
        return;
    }

    int instrumentCount = 0;
    if (!sls_GetInstrumentCount(&instrumentCount))
    {
        qDebug() << "error m150: can`t get instruments count";
        return;
    }
    if (instrumentCount == 0)
    {
        qDebug() << "error m150: can`t find any instrument";
        return;
    }

    for (int i = 0; i < instrumentCount; i++)
    {
        char instrumentName[100];

        if (!sls_GetInstrumentName(i, instrumentName, sizeof(instrumentName)))
             return;

        qDebug("%d: %s \r\n", i, instrumentName);

        QString instrName(instrumentName);

        if (instrName == M150_NAME)
        {
            instr_numb = i;
            break;
        }
    }

    if (instr_numb == INSTR_NOT_FOUND)
    {
        qDebug() << "error m150: can`t find M150";
        return;
    }
}

void M150Handler::setSlit(int width)
{
    if (width < 0)
    {
        qDebug() << "error m150: wrong width slit number";
        return;
    }
    if (!sls_SetSlitWidth(instr_numb, SLIT_NUM, width, NOT_RESET))
    {
        qDebug() << "error m150: can`t set width slit";
        return;
    }
}

void M150Handler::setWL(double wl)
{
    if (wl < 0)
    {
        qDebug() << "error m150: wrong wl slit number";
        return;
    }
    if (!sls_SetWl(instr_numb, wl))
    {
        qDebug() << "error m150: can`t set WaveLenght";
        return;
    }
}

void M150Handler::setGrating(QString gratingName)
{
    int grating = findGratingNum(gratingName);

    if (!sls_SetActiveGrating(instr_numb, grating))
    {
        qDebug() << "error m150: can`t set grating";
        return;
    }
}

void M150Handler::setFilter(QString filterName)
{
    int filter_num = findFilterNum(filterName);

    if (!sls_SetFilterStateIdx(instr_numb, FILTER_WHEEL, filter_num, NOT_RESET))
    {
        qDebug() << "error m150: can`t set grating";
        return;
    }
}
int M150Handler::findGratingNum(double gr_maxWL)
{
    int gr_count;

    if (!sls_GetGratingCount(instr_numb, &gr_count))
    {
        qDebug() << "error m150: can`t find grating count";
        return GRATING_NOT_FOUND;
    }

    int grooves;
    double minWl;
    double maxWl;
    double blazeAngle;

    for (int i = 0; i < gr_count; i++)
    {
        if (!sls_GetGratingPrm(instr_numb, i, &grooves, &minWl, &maxWl, &blazeAngle))
        {
            qDebug() << "error m150: can`t find grating with maxWL";
            return GRATING_NOT_FOUND;
        }

        if (gr_maxWL == maxWl)
            return i;
    }

    return GRATING_NOT_FOUND;
}

QString M150Handler::findGratingName(int gr_num)
{
    int groves;
    double minWL, maxWL, blazeAngle;

    if (!sls_GetGratingPrm(instr_numb, gr_num, &groves, &minWL, &maxWL, &blazeAngle))
    {
        qDebug() << "error m150: can`t find grating";
        return "";
    }
    return QString(QString::number(minWL) + "-" + QString::number(maxWL) +
                   " (" + QString::number(groves) + "gr)");
}

int M150Handler::findFilterNum(QString filter_name)
{
    if (filter_name == FILTER0)
    {
        return 0;
    }
    else if (filter_name == FILTER1)
    {
        return 1;
    }
    else if (filter_name == FILTER2)
    {
        return 2;
    }
    else if (filter_name == FILTER3)
    {
        return 3;
    }
    else if (filter_name == FILTER4)
    {
        return 4;
    }
    else if (filter_name == FILTER5)
    {
        return 5;
    }
}

QString M150Handler::findFilterName(int filter_num)
{
    switch (filter_num)
    {
        case 0:
            return QString(FILTER0);
        case 1:
            return QString(FILTER1);
        case 2:
            return QString(FILTER2);
        case 3:
            return QString(FILTER3);
        case 4:
            return QString(FILTER4);
        case 5:
            return QString(FILTER5);
    }
}

void M150Handler::getInfo(double& wl, QString& grating, double& slitWidth, QString& filter)
{

    if (!sls_GetWl(instr_numb, &wl))
    {
        qDebug() << "error m150: can`t get WL";
        return;
    }

    int gr_index;

    if (!sls_GetActiveGrating(instr_numb, &gr_index))
    {
        qDebug() << "error m150: can`t get Grating";
        return;
    }
    grating = findGratingName(gr_index);


    if (!sls_GetSlitWidth(instr_numb, SLIT_NUM, &slitWidth))
    {
        qDebug() << "error m150: can`t get Slit width";
        return;
    }

    int filter_num = findFilterNum(filter);

    if (!sls_GetFilterStateIdx(instr_numb, FILTER_WHEEL, &filter_num))
    {
        qDebug() << "error m150: can`t get Filter name";
        return;
    }
    filter = findFilterName(filter_num);
}

int M150Handler::findGratingNum(QString grating)
{
    int gr_num = GRATING_NOT_FOUND;

    if (grating == GRATING700)
    {
        gr_num = findGratingNum(700);
    }
    else if (grating == GRATING2000)
    {
        gr_num = findGratingNum(2000);
    }
    else if (grating == GRATING11000)
    {
        gr_num = findGratingNum(11000);
    }

    if (gr_num == GRATING_NOT_FOUND)
    {
        qDebug() << "error m150: can`t find grating with QString";
        return GRATING_NOT_FOUND;
    }

    return gr_num;
}
