ifneq ($(filter DRG, $(TARGET_DEVICE)),)

LOCAL_PATH := $(call my-dir)

include $(call all-makefiles-under,$(LOCAL_PATH))

endif

ifeq ($(BOARD_USES_QCOM_FBE_DECRYPTION),true)
    BOARD_USES_QCOM_DECRYPTION := true

    # Dummy file to apply post-install patch for qcom_decrypt_fbe
    include $(CLEAR_VARS)

    LOCAL_MODULE := qcom_decrypt_fbe
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_CLASS := ETC
    LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/system/bin
    LOCAL_REQUIRED_MODULES := qcom_decrypt

    include $(BUILD_PHONY_PACKAGE)
endif

ifeq ($(BOARD_USES_QCOM_DECRYPTION),true)
    # Include resetprop for prepdecrypt property setting
    TW_INCLUDE_RESETPROP := true

    # Dummy file to apply post-install patch for qcom_decrypt
    include $(CLEAR_VARS)

    LOCAL_MODULE := qcom_decrypt
    LOCAL_MODULE_TAGS := optional
    LOCAL_MODULE_CLASS := ETC
    LOCAL_MODULE_PATH := $(TARGET_ROOT_OUT)/system/bin
    LOCAL_REQUIRED_MODULES := android.hidl.token@1.0 relink_binaries relink_libraries twrp_ramdisk teamwin
    include $(BUILD_PHONY_PACKAGE)
endif
