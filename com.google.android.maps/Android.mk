LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.android.maps.xml
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/permissions
LOCAL_SRC_FILES := com.google.android.maps.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := com.google.android.maps.jar
LOCAL_MODULE_TAGS := optional
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_CLASS := JAVA_LIBRARIES
LOCAL_SRC_FILES := com.google.android.maps.jar
LOCAL_PACKAGE_NAME := com.google.android.maps.jar
LOCAL_PROVIDES_USES_LIBRARY := com.google.android.maps
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_REQUIRED_MODULES := com.google.android.maps.xml
LOCAL_ENFORCE_USES_LIBRARIES := false
include $(BUILD_PREBUILT)

