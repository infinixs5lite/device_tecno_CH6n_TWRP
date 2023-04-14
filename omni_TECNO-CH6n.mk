#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-CH6n device
$(call inherit-product, device/tecno/TECNO-CH6n/device.mk)

PRODUCT_DEVICE := TECNO-CH6n
PRODUCT_NAME := omni_TECNO-CH6n
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO CH6n
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-tecno

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="vnd_ch6n_h6912-user 12 SP1A.210812.016 95966 release-keys"

BUILD_FINGERPRINT := TECNO/CH6n-OP/TECNO-CH6n:12/SP1A.210812.016/220917V347:user/release-keys
