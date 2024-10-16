#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from TECNO-BA2 device
$(call inherit-product, device/tecno/TECNO-BA2/device.mk)

PRODUCT_DEVICE := TECNO-BA2
PRODUCT_NAME := omni_TECNO-BA2
PRODUCT_BRAND := TECNO
PRODUCT_MODEL := TECNO BA2
PRODUCT_MANUFACTURER := tecno

PRODUCT_GMS_CLIENTID_BASE := android-transsion-tecno-rev1

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="full_ba2_h8027-user 8.1.0 O11019 1616144031 release-keys"

BUILD_FINGERPRINT := TECNO/H8027/TECNO-BA2:8.1.0/O11019/ABC-210319V543:user/release-keys
