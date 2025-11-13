TARGET = ru.template.KMPAurora
CONFIG += auroraapp

SOURCES += src/main.cpp
HEADERS +=

# ★ ПОДКЛЮЧЕНИЕ KMP БИБЛИОТЕКИ ИЗ ЛОКАЛЬНОЙ ПАПКИ ★
LIBS += -L$$PWD/libs/releaseShared -lshared
INCLUDEPATH += $$PWD/libs/releaseShared

# Остальные настройки
AURORAAPP_ICONS = 86x86 108x108 128x128 172x172
CONFIG += auroraapp_i18n
TRANSLATIONS += \
    translations/ru.template.KMPAurora.ts \
    translations/ru.template.KMPAurora-ru.ts

DISTFILES += \
    src/MainScreen.qml
