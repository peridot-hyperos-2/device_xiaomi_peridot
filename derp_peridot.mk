#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Derpfest-AOSP stuff.
$(call inherit-product, vendor/derp/config/common_full_phone.mk)

# Inherit from peridot device
$(call inherit-product, device/xiaomi/peridot/device.mk)

PRODUCT_NAME := derp_peridot
PRODUCT_DEVICE := peridot
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := 24069PC21G

# Derpfest
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_NOT_USES_BLUR := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_INCLUDE_ACCORD := false
EXTRA_UDFPS_ICONS := true
TARGET_HAS_UDFPS := true
DERP_BUILDTYPE := weekly

# Gapps
WITH_GMS := true
BUILD_WITH_GAPPS := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="peridot_global-user 14 UKQ1.240624.001 OS2.0.100.0.VNPMIXM release-keys" \
    BuildFingerprint=POCO/peridot_global/peridot:14/UKQ1.240624.001/OS2.0.100.0.VNPMIXM:user/release-keys \
    DeviceName=peridot
    DeviceProduct=peridot_global \
    SystemName=peridot_global \
    SystemDevice=peridot

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Sign Builds
PRODUCT_DEFAULT_DEV_CERTIFICATE := vendor/marble/priv-keys/releasekey