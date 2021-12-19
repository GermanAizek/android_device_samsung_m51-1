#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A715F
PRODUCT_MANUFACTURER := samsung

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE=m51 \
    PRODUCT_NAME=m51nsxx \
    PRIVATE_BUILD_DESC="m51nsxx-user 11 RP1A.200720.012 M515FXXU2CUB7 release-keys"

BUILD_FINGERPRINT := "samsung/m51nsxx/m51:11/RP1A.200720.012/M515FXXU2CUB7:user/release-keys"
