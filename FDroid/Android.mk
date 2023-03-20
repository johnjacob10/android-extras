LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := additional_repos.xml
LOCAL_PRODUCT_MODULE := true
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_PRODUCT_ETC)/org.fdroid.fdroid
LOCAL_SRC_FILES := additional_repos.xml
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE := FDroid
LOCAL_PRODUCT_MODULE := true
LOCAL_SRC_FILES := org.fdroid.fdroid_1016051.apk
LOCAL_MODULE_CLASS := APPS
LOCAL_MODULE_SUFFIX := $(COMMON_ANDROID_PACKAGE_SUFFIX)
LOCAL_CERTIFICATE := PRESIGNED
LOCAL_OPTIONAL_USES_LIBRARIES := androidx.window.extensions androidx.window.sidecar
LOCAL_REQUIRED_MODULES := additional_repos.xml
include $(BUILD_PREBUILT)
