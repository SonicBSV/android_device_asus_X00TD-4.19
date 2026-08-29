#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common syberia stuff
$(call inherit-product, vendor/syberia/config/common_full_phone.mk)
$(call inherit-product, vendor/syberia/common.mk)

WITH_GMS := true

# Inherit from X00TD device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

# Bootanimation (X00TD имеет разрешение экрана 1080x2160)
TARGET_BOOT_ANIMATION_RES := 1080

# FaceUnlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := syberia_X00TD
PRODUCT_DEVICE := X00TD
PRODUCT_BRAND := asus
PRODUCT_MODEL := Zenfone Max Pro M1
PRODUCT_MANUFACTURER := asus

PRODUCT_GMS_CLIENTID_BASE := android-asus

# Исправленный блок переопределений для убирания ошибки «Внутренняя ошибка»
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE=ASUS_X00T_2 \
    PRODUCT_NAME=WW_X00TD \
    PRIVATE_BUILD_DESC="sdm660_64-user 10 QKQ1 17.2017.2012.438-20210129 release-keys"

# Оригинальный сертифицированный отпечаток ASUS (Android 10 - финальное обновление)
BUILD_FINGERPRINT := asus/WW_X00TD/ASUS_X00T_2:10/QKQ1/17.2017.2012.438-20210129:user/release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
