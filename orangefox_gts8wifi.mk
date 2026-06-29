#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from gts8wifi device
$(call inherit-product, device/samsung/gts8wifi/device.mk)

PRODUCT_COPY_FILES += $(call find-copy-subdir-files,*,device/samsung/gts8wifi/recovery/root,recovery/root)

PRODUCT_DEVICE := gts8wifi
PRODUCT_NAME := orangefox_gts8wifi
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-X700
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="gts8wifixx-user 12 SP2A.220305.013 X700XXS9DYF4 release-keys"

BUILD_FINGERPRINT := samsung/gts8wifixx/gts8wifi:12/SP2A.220305.013/X700XXS9DYF4:user/release-keys

# OrangeFox-specific
OF_MAINTAINER := Quent1
FOX_TARGET_DEVICES := gts8wifi
FOX_RECOVERY_INSTALL_PARTITION := /dev/block/bootdevice/by-name/recovery
