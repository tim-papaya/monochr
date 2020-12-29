QT       += core gui
QT       += charts

SOURCES += \
    chart/chart.cpp \
    chart/filereader.cpp \
    chart/filewriter.cpp \
    main.cpp \
    mainwindow.cpp \
    solar_sdk/m150handler.cpp \
    usb/usbhandler.cpp \
    usb/usbreader.cpp \

HEADERS += \
    chart/chart.h \
    chart/filereader.h \
    chart/filewriter.h \
    mainwindow.h \
    solar_sdk/m150handler.h \
    solar_sdk/solarls_sdk.h \
    usb/ftd2xx.h \
    usb/usbhandler.h \
    usb/usbreader.h \

FORMS += \
    mainwindow.ui

TRANSLATIONS += \
    test_ru_RU.ts


# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

unix|win32: LIBS += -L$$PWD/usb/ -lftd2xx

INCLUDEPATH += $$PWD/usb
DEPENDPATH += $$PWD/usb

DISTFILES +=

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/solar_sdk/ -lSolarLS.Sdk_x64
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/solar_sdk/ -lSolarLS.Sdk_x64
else:unix: LIBS += -L$$PWD/solar_sdk/ -lSolarLS.Sdk_x64

INCLUDEPATH += $$PWD/solar_sdk
DEPENDPATH += $$PWD/solar_sdk
