#
# Copyright (C) 2023 The LineageOS Project
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
#

# Inherit from m51 device
$(call inherit-product, device/samsung/m51/device.mk)

# Inherit some common Evolution stuff.
$(call inherit-product, vendor/evolution/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_m51
PRODUCT_DEVICE := m51
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M515
PRODUCT_MANUFACTURER := samsung

# Use the latest approved GMS identifiers
PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="m51nsxx-user 12 SP1A.210812.016 M515FXXS5DWG1 release-keys" \
    PRODUCT_DEVICE=m51 \
    PRODUCT_NAME=m51nsxx \
    TARGET_BOOTLOADER_BOARD_NAME=sm6150 \

BUILD_FINGERPRINT := "samsung/m51nsxx/qssi:12/SP1A.210812.016/M515FXXS5DWG1:user/release-keys"

# Evolution Stuff
TARGET_BOOT_ANIMATION_RES := 1080
TARGET_USES_PICO_GAPPS := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := true

