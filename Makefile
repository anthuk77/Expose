TARGET := iphone:7.0:2.0
ARCHS := armv6 arm64
GO_EASY_ON_ME = 1

THEOS_DEVICE_IP = x.x.x.x

include theos/makefiles/common.mk

TWEAK_NAME = SkypeHack
SkypeHack_FILES = Tweak.xm
SkypeHack_FRAMEWORKS = UIKit

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
