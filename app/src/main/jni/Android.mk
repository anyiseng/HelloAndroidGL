LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := halide_gl_filter
LOCAL_SRC_FILES := libhalide_gl_filter.a
include $(PREBUILT_STATIC_LIBRARY)

# halide_gl_filter.o
# android_native_app_glue
include $(CLEAR_VARS)
LOCAL_MODULE    := android_halide_gl_native
LOCAL_ARM_MODE  := arm
LOCAL_SRC_FILES := android_halide_gl_native.cpp
LOCAL_LDFLAGS   += -L$(LOCAL_PATH)
LOCAL_LDLIBS    := -lm -llog -landroid -lEGL -lGLESv2
LOCAL_STATIC_LIBRARIES := halide_gl_filter

LOCAL_C_INCLUDES := /home/jiangkunpeng/open_source/Halide/include

include $(BUILD_SHARED_LIBRARY)

$(call import-module,android/native_app_glue)
