# A small sample used to demonstrate static C++ destructors
LOCAL_PATH := $(call my-dir)

#include $(CLEAR_VARS)
#LOCAL_MODULE := libtest1
#LOCAL_SRC_FILES := libtest1.cpp
#include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_MODULE := cpulimit
LOCAL_SRC_FILES := cpulimit.c  memrchr.c  \
	list.c  process_group.c  process_iterator.c  # process_iterator_linux.c
include $(BUILD_EXECUTABLE)
