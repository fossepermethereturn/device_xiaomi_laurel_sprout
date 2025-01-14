# Copyright (C) 2019 The PixelExperience Project
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

$(call inherit-product, device/xiaomi/laurel_sprout/device.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit some common PixelExperience stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)
TARGET_BOOT_ANIMATION_RES := 720
TARGET_GAPPS_ARCH := arm64

PRODUCT_SHIPPING_API_LEVEL := 28

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_laurel_sprout
PRODUCT_DEVICE := laurel_sprout
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := MI A3
PRODUCT_MANUFACTURER := Xiaomi


BUILD_FINGERPRINT := "Xiaomi/laurel_sprout_eea/laurel_sprout:9/PKQ1.190416.001/V10.3.6.0.PFQMIXM:user/release-keys"

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="laurel_sprout-user 9 PKQ1.190416.001 V10.3.6.0.PFQMIXM release-keys" \
    PRODUCT_NAME="laurel_sprout" \
    TARGET_DEVICE="laurel_sprout"

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
