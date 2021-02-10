#ifndef M150HANDLER_H
#define M150HANDLER_H

#include <QString>
#include <QObject>

class M150Handler : public QObject
{
    Q_OBJECT

    Q_PROPERTY(double wl READ wl WRITE setWl NOTIFY wlChanged)
    Q_PROPERTY(QString grating READ grating WRITE setGrating NOTIFY gratingChanged)
    Q_PROPERTY(QString filter READ filter WRITE setFilter NOTIFY filterChanged)
    Q_PROPERTY(int slit READ slit WRITE setSlit NOTIFY slitChanged)

public:

    M150Handler();

    void init();

    void getInfo();

    double wl() const
    {
        return m_wl;
    }

    QString grating() const
    {
        return m_grating;
    }

    QString filter() const
    {
        return m_filter;
    }

    int slit() const
    {
        return m_slit;
    }

public slots:
    void setWl(double wl);

    void setSlit(int width);

    void setGrating(QString gratingName);

    void setFilter(QString filterName);

signals:
    void wlChanged(double wl);

    void gratingChanged(QString grating);

    void filterChanged(QString filter);

    void slitChanged(int slit);

private:
    char  *M150_LOG_PATH = (char*)    "c:\\TIM\\Project\\monochr\\logs\\m150\\m150.log";
    char  *M150_CONFIG_PATH = (char*) "c:\\TIM\\Project\\monochr\\qt\\solar_sdk\\";

    char const *M150_NAME = "M150 i-III";

    int  const INSTR_NOT_FOUND = -1;
    int  const GRATING_NOT_FOUND = -1;

    int  const SLIT_NUM = 0;

    bool const RESET = true;
    bool const NOT_RESET = false;

    char const *GRATING700 = "0-700nm (1800 gr)";
    char const *GRATING2000 = "0-2000nm (600 gr)";
    char const *GRATING11000 = "0-11000nm (100 gr)";

    char const *FILTER0 = "no filter";
    char const *FILTER1 = "350-560 nm";
    char const *FILTER2 = "560-700 nm";
    char const *FILTER3 = "700-1120 nm";
    char const *FILTER4 = "1120-1380 nm";
    char const *FILTER5 = "1380-1920 nm";

    int const FILTER_WHEEL = 0;

    int instr_numb = INSTR_NOT_FOUND;

    int findGratingNum(QString grating);

    int findGratingNum(double gr_maxWL);

    QString findGratingName(int gr_num);

    int findFilterNum(QString filter_name);

    QString findFilterName(int filter_num);

    double m_wl;
    QString m_grating;
    QString m_filter;
    int m_slit;
};

#endif // M150HANDLER_H
