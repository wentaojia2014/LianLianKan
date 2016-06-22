QT += qml quick

CONFIG += c++11
CONFIG += audio
SOURCES += main.cpp \
    game.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

LIBS += -L.
# Default rules for deployment.
include(deployment.pri)

DISTFILES += \
    Readme.txt

HEADERS += \
    audio.h \
    game.h \
    enum.h
CONFIG(audio) {
    DEFINES += AUDIO_SUPPORT
    INCLUDEPATH += include/fmod
    CONFIG(debug, debug|release): LIBS+= -lfmodexL
    else:LIBS += -lfmodex
    SOURCES += audio.cpp
}
