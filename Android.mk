ifneq ($(filter $$DEVICE$$,$(TARGET_DEVICE)),)

LOCAL_PATH := device/xiaomi/onyx

include $(call all-makefiles-under,$(LOCAL_PATH))

endif