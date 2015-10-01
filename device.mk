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

$(call inherit-product, frameworks/native/build/phone-hdpi-512-dalvik-heap.mk)

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Specific overlay
DEVICE_PACKAGE_OVERLAYS += device/lge/w5c/overlay

# AAPT
PRODUCT_LOCALES := en_US
PRODUCT_LOCALES += hdpi
PRODUCT_AAPT_CONFIG := hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    device/lge/w5c/prebuilt/etc/permissions/com.qualcomm.location.xml:system/etc/permissions/com.qualcomm.location.xml
#    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
#    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
#    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml

# Configs
PRODUCT_COPY_FILES += \
    device/lge/w5c/prebuilt/etc/wifi/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
    device/lge/w5c/prebuilt/etc/wifi/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf \
    kernel/lge/realm/drivers/staging/prima/firmware_bin/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    kernel/lge/realm/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/firmware/wlan/prima/WCNSS_qcom_cfg.ini \
    kernel/lge/realm/drivers/staging/prima/firmware_bin/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/w5c/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
    device/lge/w5c/prebuilt/etc/wifi/WCNSS_qcom_wlan_nv.bin:system/etc/wifi/WCNSS_qcom_wlan_nv.bin \
    device/lge/w5c/prebuilt/etc/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
    device/lge/w5c/prebuilt/etc/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny \
    device/lge/w5c/prebuilt/etc/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
    device/lge/w5c/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \
    device/lge/w5c/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/lge/w5c/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
    device/lge/w5c/prebuilt/usr/idc/touch_dev.idc:system/usr/idc/touch_dev.idc \
    device/lge/w5c/prebuilt/usr/keylayout/gpio-keys.kl:system/usr/keylayout/gpio-keys.kl \
    device/lge/w5c/prebuilt/usr/keylayout/Generic-LS620.kl:system/usr/keylayout/Generic-LS620.kl \
    device/lge/w5c/prebuilt/etc/init.zetaw.fm.sh:system/etc/init.zetaw.fm.sh \
    device/lge/w5c/prebuilt/etc/init.zetaw.ssr.wifi.sh:system/etc/init.zetaw.ssr.wifi.sh \
    device/lge/w5c/prebuilt/etc/init.zetaw.wifi.sh:system/etc/init.zetaw.wifi.sh \
    device/lge/w5c/prebuilt/etc/init.crda.sh:system/etc/init.crda.sh \
    device/lge/w5c/prebuilt/etc/init.zetaw.post_boot.sh:system/etc/init.zetaw.post_boot.sh \
    device/lge/w5c/prebuilt/etc/sap.conf:system/etc/sap.conf \
    device/lge/w5c/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/lge/w5c/prebuilt/etc/msap.conf:system/etc/msap.conf \
    device/lge/w5c/prebuilt/etc/clatd.conf:system/etc/clatd.conf \
    device/lge/w5c/prebuilt/etc/sec_config:system/etc/sec_config \
    device/lge/w5c/prebuilt/etc/izat.conf:system/etc/izat.conf \
    device/lge/w5c/prebuilt/etc/boot_fixup:system/etc/boot_fixup \
    device/lge/w5c/prebuilt/etc/quipc.conf:system/etc/quipc.conf
#    device/lge/w5c/prebuilt/etc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
#    device/lge/w5c/prebuilt/etc/nfc-nci.conf:system/etc/nfc-nci.conf \
#    device/lge/w5c/prebuilt/etc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
#    device/lge/w5c/prebuilt/etc/nfcee_access.xml:system/etc/nfcee_access.xml \

# Ramdisk
PRODUCT_COPY_FILES += \
    device/lge/w5c/rootdir/fstab.msm8610:root/fstab.msm8610 \
    device/lge/w5c/rootdir/init.usb.rc:root/init.usb.rc \
    device/lge/w5c/rootdir/init.msm8610.rc:root/init.msm8610.rc \
    device/lge/w5c/rootdir/init.msm8610.usb.rc:root/init.msm8610.usb.rc \
    device/lge/w5c/rootdir/init.target.rc:root/init.target.rc \
    device/lge/w5c/rootdir/init.zetaw.bt_vendor.rc:root/init.zetaw.bt_vendor.rc \
    device/lge/w5c/rootdir/init.zetaw.class_core.sh:root/init.zetaw.class_core.sh \
    device/lge/w5c/rootdir/init.zetaw.cmm.usb.sh:root/init.zetaw.cmm.usb.sh \
    device/lge/w5c/rootdir/init.zetaw.early_boot.sh:root/init.zetaw.early_boot.sh \
    device/lge/w5c/rootdir/init.zetaw.rc:root/init.zetaw.rc \
    device/lge/w5c/rootdir/init.zetaw.sh:root/init.zetaw.sh \
    device/lge/w5c/rootdir/init.zetaw.ssr.sh:root/init.zetaw.ssr.sh \
    device/lge/w5c/rootdir/init.zetaw.syspart_fixup.sh:root/init.zetaw.syspart_fixup.sh \
    device/lge/w5c/rootdir/init.zetaw.usb.rc:root/init.zetaw.usb.rc \
    device/lge/w5c/rootdir/init.zetaw.usb.sh:root/init.zetaw.usb.sh \
    device/lge/w5c/rootdir/ueventd.msm8610.rc:root/ueventd.msm8610.rc \
    device/lge/w5c/prebuilt/etc/init.zetaw.bt.sh:system/etc/init.zetaw.bt.sh 

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.soundtrigger@2.0-impl \
    audio.primary.msm8610 \
    audio.a2dp.default \
    audio.usb.default \
    audio.r_submix.default \
    libaudio-resampler \
    libaudioparameter \
    libqcomvisualizer \
    libqcompostprocbundle \
    libqcomvoiceprocessing \
    tinycap \
    tinymix \
    tinypcminfo \
    tinyplay \
    libalsa-intf \
    libaudio-resampler \
    libaudioutils \
    aplay \
    amix \
    arec \
    alsaucm_test

PRODUCT_COPY_FILES += \
    device/lge/w5c/configs/audio/audio_effects.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_effects.xml \
    device/lge/w5c/configs/audio/mixer_paths.xml:$(TARGET_COPY_OUT_VENDOR)/etc/mixer_paths.xml

PRODUCT_PROPERTY_OVERRIDES += \
    persist.audio.fluence.mode=endfire \
    persist.audio.vr.enable=false \
    persist.audio.handset.mic=digital \
    ro.qc.sdk.audio.ssr=false

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl

# Misc
PRODUCT_PACKAGES += \
    curl \
    libbson \
    libcurl \
    tcpdump \
    libxml2 \
    libshims_atomic

PRODUCT_PACKAGES += \
    com.android.future.usb.accessory

# Density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240

# Crda
PRODUCT_PACKAGES += \
    crda \
    linville.key.pub.pem \
    regdbdump \
    regulatory.bin

# Qcom SoftAP
PRODUCT_PACKAGES += \
    libQWiFiSoftApCfg

# Live Wallpapers
PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    MagicSmokeWallpapers \
    HoloSpiralWallpaper \
    VisualizationWallpapers \
    librs_jni

# Keymaster
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl \
    android.hardware.keymaster@3.0-service

# Wifi
PRODUCT_PACKAGES += \
    p2p_supplicant_overlay.conf \
    wpa_supplicant_overlay.conf \
    libwcnss_qmi \
    dhcpcd.conf \
    hostapd \
    wpa_supplicant \
    wpa_supplicant.conf

# Charger
PRODUCT_PACKAGES += charger charger_res_images

# Ebtables
PRODUCT_PACKAGES += \
    ebtables \
    ethertypes \
    libebtc

# FM radio
PRODUCT_PACKAGES += \
    qcom.fmradio \
    libqcomfm_jni \
    FM2 \
    FMRecord

# GPS
PRODUCT_PACKAGES += \
    gps.msm8610

# HAL
PRODUCT_PACKAGES += \
    copybit.msm8610\
    gralloc.msm8610 \
    hwcomposer.msm8610 \
    keystore.msm8610 \
    lights.msm8610 \
    memtrack.msm8610

# Lights
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl

# Sensors
PRODUCT_PACKAGES += \
    sensors.msm8610 \
    android.hardware.sensors@1.0-impl

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl \
    android.hardware.power@1.0-service

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

# GPS
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl.legacy \
    android.hardware.gnss@1.0-service.legacy \
    gps.msm8226

PRODUCT_COPY_FILES += \
    device/lge/w5c/gps/etc/flp.conf:system/etc/flp.conf \
    device/lge/w5c/gps/etc/gps.conf:system/etc/gps.conf \
    device/lge/w5c/gps/etc/izat.conf:system/etc/izat.conf \
    device/lge/w5c/gps/etc/sap.conf:system/etc/sap.conf

# Seccomp
PRODUCT_COPY_FILES += \
    device/lge/w5c/seccomp/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    device/lge/w5c/seccomp/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Utilities
PRODUCT_PACKAGES += \
    charge_only_mode \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs \
    wcnss_service \
    librmnetctl

# EGL config
PRODUCT_COPY_FILES += \
    device/lge/w5c/prebuilt/egl.cfg:system/lib/egl/egl.cfg

# Opengles version 3
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196608

# QCOM Display
PRODUCT_PACKAGES += \
    libgenlock \
    libmemalloc \
    liboverlay \
    libqdutils \
    libtilerenderer

PRODUCT_PROPERTY_OVERRIDES += \
    persist.hwc.mdpcomp.enable=true \
    debug.sf.fb_always_on=1 \
    debug.composition.type=gpu \
    debug.gralloc.map_fb_memory=0 \
    debug.hwc.dynThreshold=1.5 \
    dalvik.vm.heapsize=36m \
    dev.pm.dyn_samplingrate=1

# Omx
PRODUCT_PACKAGES += \
    libdivxdrmdecrypt \
    libmm-omxcore \
    libOmxCore \
    libstagefrighthw \
    libOmxVdec \
    libOmxVenc \
    libOmxAacEnc \
    libOmxAmrEnc \
    libOmxEvrcEnc \
    libOmxQcelp13Enc \
    libdashplayer \
    qcmediaplayer

# Filesystem management tools
PRODUCT_PACKAGES += \
    make_ext4fs \
    e2fsck \
    resize2fs \
    setup_fs

#wifi
PRODUCT_PACKAGES += \
    hostapd.accept \
    hostapd.deny \
    hostapd_default.conf \
    libnetcmdiface

# QCOM
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    ro.bluetooth.hfp.ver=1.6 \
    ro.qualcomm.bluetooth.sap=true \
    ro.qualcomm.bt.hci_transport=smd \
    ro.bluetooth.request.master=true \
    ro.bluetooth.remote.autoconnect=true

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    lpa.decode=true \
    af.resampler.quality=255 \
    persist.audio.lowlatency.rec=false

# WiFi
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.qc.sub.rstrtlvl=3 \
    persist.sys.qc.sub.rdump.on=1 \
    persist.sys.qc.sub.rdump.max=20 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    ro.audio.fm_max_volume=4096 \
    ro.qualcomm.cabl=0 \
    use.voice.path.for.pcm.voip=false \
    qcom.bt.le_dev_pwr_class=1 \
    ro.qc.sdk.audio.ssr=false \
    persist.audio.fluence.voicecall=false \
    persist.audio.fluence.voicerec=false \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.speaker=false \
    use.voice.path.for.pcm.voip=true \
    use.dedicated.device.for.voip=true \
    audio.offload.disable=true \
    av.offload.enable=false \
    av.streaming.offload.enable=false \
    audio.offload.pcm.enable=false \
    mm.enable.smoothstreaming=true \
    persist.audio.calfile0=/etc/ACDB/Bluetooth_cal.acdb \
    persist.audio.calfile1=/etc/ACDB/General_cal.acdb \
    persist.audio.calfile2=/etc/ACDB/Global_cal.acdb \
    persist.audio.calfile3=/etc/ACDB/Handset_cal.acdb \
    persist.audio.calfile4=/etc/ACDB/Hdmi_cal.acdb \
    persist.audio.calfile5=/etc/ACDB/Headset_cal.acdb \
    persist.audio.calfile6=/etc/ACDB/Speaker_cal.acdb

# Media codecs
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml

# NFC packages
#PRODUCT_PACKAGES += \
#    NfcNci \
#    Tag \
#    nfc_nci.w \
#    com.android.nfc_extras

#NFCEE_ACCESS_PATH := device/lge/w/prebuilt/etc/nfcee_access.xml

# Keyhandler
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

# QC time services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Enable KSM by default
PRODUCT_PROPERTY_OVERRIDES += \
    ro.ksm.default=1

# Reduce system image size by limiting java debug info.
PRODUCT_MINIMIZE_JAVA_DEBUG_INFO := true

# Don't include debug info in ART
PRODUCT_ART_TARGET_INCLUDE_DEBUG_BUILD := false

# Thermal
PRODUCT_COPY_FILES += \
    device/lge/w5c/prebuilt/etc/thermal-engine-8610.conf:system/etc/thermal-engine-8610.conf

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_PROPERTY_OVERRIDES += \
    camera2.portability.force_api=1 \
    media.stagefright.legacyencoder=true \
    media.stagefright.less-secure=true \
    ro.lge.proximity.delay=25 \
    wlan.chip.vendor=qcom \
    wlan.chip.version=wcn \
    wifi.lge.patch=true \
    wifi.lge.sleeppolicy=0 \
    wifi.lge.offdelay=false \
    wlan.lge.concurrency=MCC \
    wlan.lge.supportsimaka=YES \
    wifi.lge.hanglessid=false \
    drm.service.enabled=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    mm.enable.smoothstreaming=true \
    mm.enable.qcom_parser=37491 \
    vidc.debug.level=0 \
    ro.qualcomm.sensors.qmd=false \
    ro.qc.sdk.sensors.gestures=true \
    ro.qualcomm.sensors.pedometer=false \
    ro.qc.sensors.step_detector=true \
    ro.qc.sensors.step_counter=true \
    ro.qualcomm.sensors.pam=true \
    ro.qualcomm.sensors.scrn_ortn=true \
    ro.qualcomm.sensors.smd=true \
    ro.qualcomm.sensors.game_rv=false \
    ro.qualcomm.sensors.georv=true \
    ro.qc.sensors.smgr_mag_cal_en=false \
    ro.qc.sensors.max_grav_no_gyro=50 \
    ro.qc.sensors.max_geomag_rotvec=50 \
    debug.qualcomm.sns.hal=1 \
    debug.qualcomm.sns.daemon=e \
    debug.qualcomm.sns.libsensor1=e \
    persist.sys.ssr.restart_level=3 \
    persist.sys.strictmode.disable=true \
    persist.sys.logkit.ctrlcode=0 \
    ro.lge.irrc.type=sw \
    persist.debug.wfd.enable=1 \
    persist.sys.wfd.virtual=0 \
    tunnel.audio.encode=true \
    persist.gsm.sms.forcegsm7=1 \
    ro.qc.sdk.izat.premium_enabled=1 \
    ro.qc.sdk.izat.service_mask=0x0 \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1 \
    persist.service.crash.enable=0 \
    ro.config.vc_call_vol_steps=6 \
    persist.data.sbp.update=0 \
    camera2.portability.force_api=1 \
    ro.lge.proximity.delay=25 \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# SdcardFS
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=false

$(call inherit-product, vendor/lge/w5c/w5c-vendor.mk)
