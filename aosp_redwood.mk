#
# Copyright (C) 2023 The aosp Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from redwood device
$(call inherit-product, device/xiaomi/redwood/device.mk)

# Inherit some common aosp stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Call the Leica Camera setup
#$(call inherit-product-if-exists, vendor/xiaomi/redwood-miuicamera/products/miuicamera.mk)

# Dolby-Vision
$(call inherit-product, hardware/Dolby-Vision/dolby-vision.mk)

PRODUCT_BRAND := POCO
PRODUCT_DEVICE := redwood
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_MODEL := 22101320G
PRODUCT_NAME := aosp_redwood

# Elixir props
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
ELIXIR_MAINTAINER := franlop77
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_HOSTNAME := Elixir
TARGET_BUILD_APERTURE_CAMERA := true
FORCE_LAWNCHAIR := true

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_SYSTEM_NAME := redwood_global
PRODUCT_SYSTEM_DEVICE := redwood

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="redwood_global-user 13 RKQ1.211001.001 V14.0.4.0.TMSMIXM release-keys" \
    TARGET_DEVICE=$(PRODUCT_SYSTEM_DEVICE) \
    TARGET_PRODUCT=$(PRODUCT_SYSTEM_NAME)

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := POCO/redwood_global/redwood:13/RKQ1.211001.001/V14.0.4.0.TMSMIXM:user/release-keys

