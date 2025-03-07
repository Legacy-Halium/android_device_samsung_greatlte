#
# Copyright (C) 2019 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/halium.mk)

# Inherit from greatlte device
$(call inherit-product, device/samsung/greatlte/device.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := greatlte
PRODUCT_NAME := lineage_greatlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-N950F
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=greatltexx \
    PRIVATE_BUILD_DESC="greatltexx-user 9 PPR1.180610.011 N950FXXU7DSJ1 release-keys"

BUILD_FINGERPRINT := samsung/greatltexx/greatlte:9/PPR1.180610.011/N950FXXU7DSJ1:user/release-keys
