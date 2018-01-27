# Copyright (C) 2013-2016, The CyanogenMod Project
# Copyright (C) 2017-2018, The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Boot animation
TARGET_SCREEN_WIDTH := 1080
TARGET_SCREEN_HEIGHT := 1920

TARGET_INCLUDE_ARCORE := true

# Enable dexpreopt to speed boot time
WITH_DEXPREOPT := true
DONT_DEXPREOPT_PREBUILTS := true

# CAF
TARGET_QCOM_DISPLAY_VARIANT := caf-msm8996
TARGET_QCOM_AUDIO_VARIANT := caf-msm8996
TARGET_QCOM_MEDIA_VARIANT := caf-msm8996
TARGET_QCOM_BLUETOOTH_VARIANT := caf-msm8996

TARGET_USES_QCOM_BSP := true

#USE_DEVICE_SPECIFIC_DISPLAY := true
#DEVICE_SPECIFIC_DISPLAY_PATH := hardware/qcom/display-caf/msm8996
#USE_DEVICE_SPECIFIC_AUDIO := true
#DEVICE_SPECIFIC_AUDIO_PATH := hardware/qcom/audio-caf/msm8996
#USE_DEVICE_SPECIFIC_MEDIA := true
#DEVICE_SPECIFIC_MEDIA_PATH := hardware/qcom/media-caf/msm8996

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay-nitrogen
	
# Missing Dependencies
ALLOW_MISSING_DEPENDENCIES := true

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit some common Nitrogen stuff.
$(call inherit-product, vendor/nitrogen/products/common.mk)
$(call inherit-product, vendor/nitrogen/config/utils.mk)

# Inherit from z2_plus device
$(call inherit-product, device/zuk/z2_plus/device.mk)

PRODUCT_NAME := nitrogen_z2_plus
PRODUCT_DEVICE := z2_plus
PRODUCT_MANUFACTURER := ZUK
PRODUCT_BRAND := ZUK
PRODUCT_MODEL := Z2 Plus

PRODUCT_GMS_CLIENTID_BASE := android-zuk

TARGET_VENDOR_PRODUCT_NAME := z2_plus
TARGET_VENDOR_DEVICE_NAME := z2_plus
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=z2_plus PRODUCT_NAME=z2_plus

TARGET_VENDOR := zuk

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="ZUK/z2_plus/z2_plus:7.0/NRD90M/2.5.412_170428:user/release-keys" \
    PRIVATE_BUILD_DESC="z2_plus-user 7.0 NRD90M 2.5.412_170428 release-keys"
