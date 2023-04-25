#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from CH6n device
$(call inherit-product, device/tecno/CH6n/device.mk)

PRODUCT_DEVICE := CH6n
PRODUCT_NAME := twrp_CH6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CH6n
PRODUCT_MANUFACTURER := tecno

# Fastbootd
PRODUCT_PACKAGES += \
    android.hardware.fastboot@1.0-impl-mock \
    android.hardware.fastboot@1.0-impl-mock.recovery

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ch6n_h6912-user 12 SP1A.210812.016 95966 release-keys"

BUILD_FINGERPRINT := TECNO/CH6n-OP/TECNO-CH6n:12/SP1A.210812.016/220917V347:user/release-keys
