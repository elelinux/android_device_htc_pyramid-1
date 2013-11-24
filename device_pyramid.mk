#
# Copyright (C) 2011 The CyanogenMod Project
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

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# common msm8660 configs
$(call inherit-product, device/htc/pyramid/msm8660.mk)

DEVICE_PACKAGE_OVERLAYS += device/htc/pyramid/overlay

# GPS
PRODUCT_PACKAGES += \
    gps.pyramid

# Wifi
$(call inherit-product-if-exists, hardware/broadcom/wlan/bcmdhd/firmware/bcm4329/device-bcm.mk)

# Bluetooth/wifi Firmware
$(call inherit-product-if-exists, device/htc/pyramid/bcm_hcd.mk)

# Boot ramdisk setup
PRODUCT_COPY_FILES += \
    device/htc/pyramid/ramdisk/fstab.pyramid:root/fstab.pyramid \
    device/htc/pyramid/ramdisk/init.pyramid.rc:root/init.pyramid.rc \
    device/htc/pyramid/ramdisk/init.pyramid.usb.rc:root/init.pyramid.usb.rc \
    device/htc/pyramid/ramdisk/ueventd.pyramid.rc:root/ueventd.pyramid.rc \
    device/htc/pyramid/ramdisk/remount.pyramid:root/remount.pyramid

  

## recovery and custom charging
PRODUCT_COPY_FILES += \
    device/htc/pyramid/recovery/sbin/choice_fn:recovery/root/sbin/choice_fn \
    device/htc/pyramid/recovery/sbin/power_test:recovery/root/sbin/power_test \
    device/htc/pyramid/recovery/sbin/offmode_charging:recovery/root/sbin/offmode_charging \
    device/htc/pyramid/recovery/sbin/detect_key:recovery/root/sbin/detect_key \
    device/htc/pyramid/recovery/sbin/htcbatt:recovery/root/sbin/htcbatt
    
      
      
# QC thermald config
PRODUCT_COPY_FILES += device/htc/pyramid/configs/thermald.conf:system/etc/thermald.conf


# Keylayouts and Keychars
PRODUCT_COPY_FILES += \
    device/htc/pyramid/keychars/pyramid-keypad.kcm:system/usr/keychars/pyramid-keypad.kcm \
    device/htc/pyramid/keylayout/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
    device/htc/pyramid/keylayout/cy8c-touchscreen.kl:system/usr/keylayout/cy8c-touchscreen.kl \
    device/htc/pyramid/keylayout/h2w_headset.kl:system/usr/keylayout/h2w_headset.kl \
    device/htc/pyramid/keylayout/pyramid-keypad.kl:system/usr/keylayout/pyramid-keypad.kl

# Input device config
PRODUCT_COPY_FILES += \
	device/htc/pyramid/idc/projector_input.idc:system/usr/idc/projector_input.idc \
	device/htc/pyramid/idc/atmel-touchscreen.idc:system/usr/idc/atmel-touchscreen.idc

# HTC BT Audio tune
PRODUCT_COPY_FILES += device/htc/pyramid/dsp/AudioBTID.csv:system/etc/AudioBTID.csv

# Sound configs
PRODUCT_COPY_FILES += \
	device/htc/pyramid/dsp/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
	device/htc/pyramid/dsp/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
	device/htc/pyramid/dsp/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
	device/htc/pyramid/dsp/AudioBTID.csv:system/etc/AudioBTID.csv \
	device/htc/pyramid/dsp/CodecDSPID.txt:system/etc/CodecDSPID.txt \
	device/htc/pyramid/dsp/soundimage/Sound_FM_HP.txt:system/etc/soundimage/Sound_FM_HP.txt \
	device/htc/pyramid/dsp/soundimage/Sound_FM_SPK.txt:system/etc/soundimage/Sound_FM_SPK.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Original_MFG.txt:system/etc/soundimage/Sound_Original_MFG.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Phone_Original.txt:system/etc/soundimage/Sound_Phone_Original.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Rec_mono.txt:system/etc/soundimage/Sound_Rec_mono.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
	device/htc/pyramid/dsp/soundimage/Sound_Rec_Voice_record.txt:system/etc/soundimage/Sound_Rec_Voice_record.txt \
	device/htc/pyramid/dsp/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
	device/htc/pyramid/dsp/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
	device/htc/pyramid/dsp/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
	device/htc/pyramid/dsp/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
	device/htc/pyramid/dsp/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
	device/htc/pyramid/dsp/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
	device/htc/pyramid/dsp/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
	device/htc/pyramid/dsp/snd_soc_msm/snd_soc_msm_2x:system/etc/snd_soc_msm/snd_soc_msm_2x \
	device/htc/pyramid/dsp/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml

# Adreno Drivers
PRODUCT_COPY_FILES += \
    device/htc/pyramid/firmware/a225_pfp.fw:system/etc/firmware/a225_pfp.fw \
    device/htc/pyramid/firmware/a225_pm4.fw:system/etc/firmware/a225_pm4.fw \
    device/htc/pyramid/firmware/a225p5_pm4.fw:system/etc/firmware/a225p5_pm4.fw \
    device/htc/pyramid/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/htc/pyramid/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw

## misc
PRODUCT_PROPERTY_OVERRIDES += \
    ro.setupwizard.enable_bypass=1 \
    dalvik.vm.lockprof.threshold=500 \
    ro.com.google.locationfeatures=1 \
    dalvik.vm.dexopt-flags=m=y

# We have enough space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi
PRODUCT_LOCALES += en_US hdpi

# call the proprietary setup
$(call inherit-product-if-exists, vendor/htc/pyramid/pyramid-vendor.mk)

$(call inherit-product-if-exists, vendor/htc-extra/pyramid/pyramid-vendor.mk)
# media profiles and capabilities spec
$(call inherit-product, device/htc/pyramid/media_a1026.mk)

## htc audio settings
$(call inherit-product, device/htc/pyramid/media_htcaudio.mk)

# call dalvik heap config
$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)

