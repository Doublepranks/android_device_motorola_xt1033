#
# Copyright (C) 2013 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

$(call inherit-product, device/motorola/msm8226-common/msm8226.mk)

LOCAL_PATH := device/motorola/xt1033

# xt1053 specific overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

PRODUCT_LOCALES := pt_BR
PRODUCT_LOCALES += xhdpi
PRODUCT_AAPT_CONFIG := normal hdpi xhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

#telephony
PRODUCT_PROPERTY_OVERRIDES += \
	telephony.lteOnCdmaDevice=0 \
	ro.telephony.default_network=3 \
	persist.radio.no_wait_for_card=1 \
	persist.radio.dfr_mode_set=1 \
	ro.mot.build.customerid=RETBR \
	ro.hw.radio=0x5 \
	ro.hw.device=falcon \
	persist.radio.multisim.config=dsds \
	persist.dsds.enabled=true \
	ro.multi.rild=true

$(call inherit-product, device/motorola/msm8226-common/keylayout/keylayout.mk)
$(call inherit-product, vendor/motorola/xt1033/xt1033-vendor.mk)
