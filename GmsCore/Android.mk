LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := privapp-permissions-com.google.android.gms.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/permissions
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := sysconfig-com.google.android.gms.xml
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/sysconfig
LOCAL_SRC_FILES := $(LOCAL_MODULE)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := GmsCore
LOCAL_PRODUCT_MODULE := true
LOCAL_SRC_FILES := com.google.android.gms-214816048.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_PRIVILEGED_MODULE := true
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := releasekey
LOCAL_OVERRIDES_PACKAGES := com.qualcomm.location
LOCAL_USES_LIBRARIES := com.android.location.provider
LOCAL_REQUIRED_MODULES := privapp-permissions-com.google.android.gms.xml sysconfig-com.google.android.gms.xml
include $(BUILD_PREBUILT)

