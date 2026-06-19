#
# Copyright (C) 2021-2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/matrixx/config/common_full_phone.mk)

# Inherit from raphael device
$(call inherit-product, device/xiaomi/raphael/device.mk)

# Flags
MATRIXX_BUILD_TYPE := OFFICIAL
MATRIXX_MAINTAINER := Jyotishman_baruah(BULLA)
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_CUSTOM_UDFPS := true
WITH_GMS := true
WITH_GMS_COMMS_SUITE := true
WITH_GMS_AICORE := true
TARGET_INCLUDE_PIXEL_LAUNCHER := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true
TARGET_INCLUDE_MATLOG := false
SURFACE_FLINGER_BOOST := true
USE_REALITY_ENGINE := true
WITH_BCR := true
TARGET_OPTIMIZED_DEXOPT := true
HBM_SUPPORTED := true

PRODUCT_NAME := matrixx_raphael
PRODUCT_DEVICE := raphael
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Mi 9T Pro

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="raphael-user 11 RKQ1.200826.002 V12.5.2.0.RFKMIXM release-keys" \
    BuildFingerprint=Xiaomi/raphael/raphael:11/RKQ1.200826.002/V12.5.2.0.RFKMIXM:user/release-keys
