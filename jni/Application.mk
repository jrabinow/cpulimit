APP_PLATFORM := android-24
APP_ABI := armeabi armeabi-v7a arm64-v8a
local_dir :=$(call my-dir)
APP_BUILD_SCRIPT := $(local_dir)/../src/Android.mk
#APP_CPPFLAGS := -frtti
#APP_STL := gnustl_static
NDK_TOOLCHAIN_VERSION := 4.9
