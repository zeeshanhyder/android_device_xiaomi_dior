#
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)


# Inherit from hardware-specific part of the product configuration
$(call inherit-product, device/xiaomi/dior/device.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_DEVICE := dior
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := HM NOTE LTE
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=dior

# Ubuntu Overlay Files
PRODUCT_COPY_FILES += \
    device/xiaomi/dior/ubuntu/udev.rules:system/ubuntu/lib/udev/rules.d/70-dior.rules \
    device/xiaomi/dior/ubuntu/display.conf:system/ubuntu/etc/ubuntu-touch-session.d/dior.conf \
    device/xiaomi/dior/ubuntu/rcS:system/ubuntu/etc/default/hwclock \
    device/xiaomi/dior/ubuntu/bluetooth-touch-dior.conf:system/ubuntu/etc/init/bluetooth-touch-dior.conf \
    device/xiaomi/dior/ubuntu/bluetooth.sh:system/ubuntu/usr/share/bluetooth-touch/dior \
    device/xiaomi/dior/ubuntu/config-dior.xml:system/ubuntu/usr/share/powerd/device_configs/config-dior.xml \
    device/xiaomi/dior/ubuntu/init/ubuntu-location-service.override:system/ubuntu/etc/init/ubuntu-location-service.override \
    device/xiaomi/dior/ubuntu/msm8226-tapan-snd-card.conf:system/ubuntu/usr/share/alsa/ucm/msm8226-tapan-snd-card/msm8226-tapan-snd-card.conf \
    device/xiaomi/dior/ubuntu/HiFi:system/ubuntu/usr/share/alsa/ucm/msm8226-tapan-snd-card/HiFi \
    device/xiaomi/dior/ubuntu/VoiceCall:system/ubuntu/usr/share/alsa/ucm/msm8226-tapan-snd-card/VoiceCall

# device id for ubuntu initrd
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.device=dior
