#ifndef M150HANDLER_H
#define M150HANDLER_H

#include <QString>

class M150Handler
{

public:

    M150Handler();

    void init(char* log_path, char* config_path);

    void setSlit(int width);

    void setWL(double wl);

    void setGrating(QString gratingName);

    void setFilter(QString filterName);

    void getInfo(double& wl, QString& grating, double& slitWidth, QString& filter);

private:

    const char* M150_NAME = "M150 i-III";

    const int INSTR_NOT_FOUND = -1;
    const int GRATING_NOT_FOUND = -1;

    const int SLIT_NUM = 0;

    const bool RESET = true;
    const bool NOT_RESET = false;

    const char* GRATING700 = "0-700nm (1800 gr)";
    const char* GRATING2000 = "0-2000nm (600 gr)";
    const char* GRATING11000 = "0-11000nm (100 gr)";

    const char* FILTER0 = "no filter";
    const char* FILTER1 = "350-560 nm";
    const char* FILTER2 = "560-700 nm";
    const char* FILTER3 = "700-1120 nm";
    const char* FILTER4 = "1120-1380 nm";
    const char* FILTER5 = "1380-1920 nm";

    const int FILTER_WHEEL = 0;

    int instr_numb = INSTR_NOT_FOUND;

    int findGratingNum(QString grating);

    int findGratingNum(double gr_maxWL);

    QString findGratingName(int gr_num);

    int findFilterNum(QString filter_name);

    QString findFilterName(int filter_num);

};

#endif // M150HANDLER_H
