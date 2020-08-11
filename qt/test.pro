QT       += core gui
QT       += charts

SOURCES += \
    chart/callout.cpp \
    chart/view.cpp \
    main.cpp \
    mainwindow.cpp \
    reader.cpp \
    usbhandler.cpp

HEADERS += \
    chart/callout.h \
    chart/view.h \
    mainwindow.h \
    reader.h \
    usb/ftd2xx.h \
    usbhandler.h

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
