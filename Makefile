THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222
ARCHS = armv7 arm64
TARGET = iphone:latest:7.0

include $(THEOS)/makefiles/common.mk

SRC = $(wildcard src/*.m)

TWEAK_NAME = wc
wc_FILES = $(wildcard src/*.m) src/Tweak.xm
wc_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 WeChat"
