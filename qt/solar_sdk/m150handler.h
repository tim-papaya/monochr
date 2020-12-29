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

};

#endif // M150HANDLER_H
