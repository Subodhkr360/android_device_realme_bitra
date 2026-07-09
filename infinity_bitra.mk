#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from bitra device
$(call inherit-product, device/realme/bitra/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/infinity/config/common_full_phone.mk)

PRODUCT_NAME := infinity_bitra
PRODUCT_DEVICE := bitra
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
INFINITY_MAINTAINER := SAI
TARGET_HAS_UDFPS := true
WITH_BCR := true

#(BCR)
$(call inherit-product-if-exists, vendor/bcr/bcr.mk)

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3370-user 13 TP1A.220905.001 R.18c4bac_16f5e-1 release-keys" \
    BuildFingerprint=realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.18c4bac_16f5e-1:user/release-keys \
    DeviceName=RE879AL1 \
    DeviceProduct=RMX3370 \
    SystemDevice=RE879AL1 \
    SystemName=RMX3370
