LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_SRC_FILES := $(call all-java-files-under, src)
LOCAL_JAVA_LIBRARIES := bouncycastle

LOCAL_PACKAGE_NAME := CertInstaller
LOCAL_CERTIFICATE := platform

# Enable dexpreopt to speed boot time
WITH_DEXPREOPT := true

include $(BUILD_PACKAGE)

# Use the folloing include to make our test apk.
include $(call all-makefiles-under,$(LOCAL_PATH))
