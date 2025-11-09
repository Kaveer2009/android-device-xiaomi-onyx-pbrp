#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit_only.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)

# Configure virtual_ab_ota compression_with_xor.mk
 $(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/compression_with_xor.mk)

# Configure emulated_storage.mk
 $(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit from TWRP-common Stuff, if building TWRP.
$(call inherit-product-if-exists, vendor/twrp/config/common.mk)

# Inherit from PBRP-common stuff, if building PBRP.
$(call inherit-product-if-exists, vendor/pb/config/common.mk)

# Inherit from onyx device
$(call inherit-product, device/xiaomi/onyx/device.mk)

PRODUCT_NAME := pb_onyx
PRODUCT_DEVICE := onyx
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F7

# Release name
PRODUCT_RELEASE_NAME := onyx

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="onyx_global-user 15 AQ3A.250107.001 OS2.0.202.0.VOLMIXM release-keys" \
    BuildFingerprint=POCO/onyx_global/onyx:15/AQ3A.250107.001/OS2.0.202.0.VOLMIXM:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)