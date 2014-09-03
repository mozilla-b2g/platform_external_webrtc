# This file is generated by gyp; do not edit. This means you!

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE_CLASS := STATIC_LIBRARIES
LOCAL_MODULE := libwebrtc_ns
LOCAL_MODULE_TAGS := optional
LOCAL_GENERATED_SOURCES :=
LOCAL_SRC_FILES := \
    noise_suppression_x.c \
    nsx_core.c 

# floating point
# noise_suppression.c ns_core.c 

# Flags passed to both C and C++ files.
MY_CFLAGS :=  
MY_CFLAGS_C :=
MY_DEFS := '-DNO_TCMALLOC' \
    '-DNO_HEAPCHECKER' \
    '-DWEBRTC_TARGET_PC' \
    '-DWEBRTC_LINUX' \
    '-DWEBRTC_THREAD_RR'
ifeq ($(TARGET_ARCH),arm) 
MY_DEFS += \
    '-DANDROID' 
endif

ifneq ($(TARGET_ARCH_VARIANT),armv5te)
ifneq ($(TARGET_ARCH_VARIANT),armv5te-vfp)
ifneq ($(TARGET_ARCH_VARIANT),armv6)
ifneq ($(TARGET_ARCH_VARIANT),armv6-vfp)
MY_DEFS += \
    '-DWEBRTC_ANDROID'
endif
endif
endif
endif

LOCAL_CFLAGS := $(MY_CFLAGS_C) $(MY_CFLAGS) $(MY_DEFS)

# Include paths placed before CFLAGS/CPPFLAGS
LOCAL_C_INCLUDES := $(LOCAL_PATH)/../../../../.. \
    $(LOCAL_PATH)/../interface \
    $(LOCAL_PATH)/../../../utility \
    $(LOCAL_PATH)/../../../../../common_audio/signal_processing_library/main/interface 

# Flags passed to only C++ (and not C) files.
LOCAL_CPPFLAGS := 

LOCAL_LDFLAGS :=

LOCAL_STATIC_LIBRARIES :=

LOCAL_SHARED_LIBRARIES := libcutils \
    libdl \
    libstlport
LOCAL_ADDITIONAL_DEPENDENCIES :=

include external/stlport/libstlport.mk
include $(BUILD_STATIC_LIBRARY)
