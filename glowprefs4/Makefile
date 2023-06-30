TARGET := iphone:clang:14.5:12.0
THEOS_PACKAGE_SCHEME = rootless

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = glowprefs4

glowprefs4_FILES = GLOWRootListController.m
glowprefs4_FRAMEWORKS = UIKit
glowprefs4_PRIVATE_FRAMEWORKS = Preferences
glowprefs4_INSTALL_PATH = /Library/PreferenceBundles
glowprefs4_CFLAGS = -fobjc-arc
glowprefs4_LIBRARIES = colorpicker
#glowprefs4_EXTRA_FRAMEWORKS = Cephei CepheiPrefs Alderis

include $(THEOS_MAKE_PATH)/bundle.mk
