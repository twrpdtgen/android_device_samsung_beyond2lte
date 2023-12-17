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

# Inherit from beyond2lte device
$(call inherit-product, device/samsung/beyond2lte/device.mk)

PRODUCT_DEVICE := beyond2lte
PRODUCT_NAME := omni_beyond2lte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G975F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="lineage_beyond2lte-userdebug 13 TQ3A.230901.001 edd7ec2cae test-keys"

BUILD_FINGERPRINT := samsung/lineage_beyond2lte/beyond2lte:13/TQ3A.230901.001/edd7ec2cae:userdebug/test-keys
