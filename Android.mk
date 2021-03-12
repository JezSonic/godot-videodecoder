LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE:= avcodec
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libavcodec.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE:= avdevice
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libavdevice.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE:= avfilter
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libavfilter.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE:= avformat
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libavformat.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE:= swresample
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libswresample.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE:= swscale
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libswscale.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE:= avutil
LOCAL_SRC_FILES := $(LOCAL_PATH)/prebuilts/$(TARGET_ARCH_ABI)/libavutil.so
include $(PREBUILT_SHARED_LIBRARY)

LOCAL_MODULE := "godot-videodecoder"
LOCAL_SHARED_LIBRARIES := avcodec avdevice avfilter avformat swresample swscale avutil
LOCAL_SRC_FILES := $(LOCAL_PATH)/src/gdnative_videodecoder.c
include $(BUILD_SHARED_LIBRARY)