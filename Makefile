before-package::
	python3 abi.py $(THEOS_OBJ_DIR)/arm64e/*.dylib

TARGET := iphone:clang:12.0
PREFIX = $(THEOS)/toolchain/linux/usr/bin/
SYSROOT = $(THEOS)/sdks/iPhoneOS13.7.sdk
INSTALL_TARGET_PROCESSES = SpringBoard
THEOS_PACKAGE_SCHEME = rootless
Glowcons_EXTRA_FRAMEWORKS += Alderis
ARCHS = arm64 arm64e

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Glowcons

Glowcons_FILES = $(wildcard *.x)
Glowcons_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += glowprefs4
include $(THEOS_MAKE_PATH)/aggregate.mk
