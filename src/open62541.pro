TEMPLATE = lib
CONFIG  += staticlib
CONFIG  -= app_bundle
CONFIG  -= qt

QMAKE_CFLAGS += -std=c99

DESTDIR  = $$PWD/../build

CONFIG(debug, debug|release) {
	OBJECTS_DIR = $$DESTDIR/debug
	TARGET = open62541d
} else {
	OBJECTS_DIR = $$DESTDIR/release
	TARGET = open62541
}	

INCLUDEPATH += $$PWD

SOURCES += $$PWD/open62541.c

# [ENCRYPTION]
INCLUDEPATH += $$PWD/../../mbedtls.git/build/include