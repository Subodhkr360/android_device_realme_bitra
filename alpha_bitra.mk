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
$(call inherit-product, vendor/alpha/config/common_full_phone.mk)

PRODUCT_NAME := alpha_bitra
PRODUCT_DEVICE := bitra
PRODUCT_MANUFACTURER := realme
PRODUCT_BRAND := realme
PRODUCT_MODEL := RMX3370
TARGET_HAS_UDFPS := true
TARGET_BOOT_ANIMATION_RES := 1080

PRODUCT_GMS_CLIENTID_BASE := android-oppo

ALPHA_MAINTAINER := Subodh
TARGET_INCLUDE_AXFX := true
TARGET_INCLUDE_MATLOG := false
WITH_ADB_INSECURE := false
# Extras
TARGET_INCLUDE_SIMPLE_TUNE := true
TARGET_PREBUILT_BCR := true
TARGET_BUILD_PACKAGE := 3
ifeq ($(TARGET_BUILD_PACKAGE),3)
  # (valid only for GAPPS builds)
  TARGET_INCLUDE_GOOGLE_COMMS := true
  TARGET_INCLUDE_PIXEL_LAUNCHER := false
  TARGET_SUPPORTS_QUICK_TAP := true
  TARGET_SUPPORTS_CALL_RECORDING := true
  TARGET_INCLUDE_STOCK_ARCORE := true
  TARGET_INCLUDE_LIVE_WALLPAPERS := true
  TARGET_SUPPORTS_GOOGLE_RECORDER := false
endif

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="RMX3370-user 13 TP1A.220905.001 R.18c4bac_16f5e-1 release-keys" \
    BuildFingerprint=realme/RMX3370/RE879AL1:13/TP1A.220905.001/R.18c4bac_16f5e-1:user/release-keys \
    DeviceName=RE879AL1 \
    DeviceProduct=RMX3370 \
    SystemDevice=RE879AL1 \
    SystemName=RMX3370
