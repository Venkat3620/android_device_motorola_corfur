#
# Copyright (C) 2022 ArrowOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common ArrowOS stuff.
$(call inherit-product, vendor/arrow/config/common.mk)

# Inherit from corfur device
$(call inherit-product, device/motorola/corfur/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := arrow_corfur
PRODUCT_DEVICE := corfur
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g71 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="corfur_g-user 11 RRUBS31.Q3-71-102-2-5 09cdc release-keys"

BUILD_FINGERPRINT := motorola/corfur_g/corfur:11/RRUBS31.Q3-71-102-2-5/09cdc:user/release-keys

# ArrowOS additions
DEVICE_MAINTAINER := Venkat3620
