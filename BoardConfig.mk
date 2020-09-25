#
# Copyright (C) 2015-2016 The Android Open-Source Project
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

DEVICE_PATH := device/lge/w5c

TARGET_RECOVERY_DEVICE_DIRS := $(DEVICE_PATH)

TARGET_ARCH := arm
TARGET_CPU_ABI  := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
#TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

#TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
#TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_BOARD_PLATFORM := msm8610

TARGET_BOOTLOADER_BOARD_NAME := MSM8610
TARGET_NO_BOOTLOADER := true

BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=23 msm_rtb.filter=0x37 androidboot.hardware=w5c
BOARD_KERNEL_SEPARATED_DT := true
#BOARD_MKBOOTIMG_ARGS := --base 0x00000000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_CUSTOM_BOOTIMG_MK := device/lge/w5c/mkbootimg.mk
KERNEL_TOOLCHAIN_PREFIX := arm-eabi-
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
#LZMA_RAMDISK_TARGETS := recovery
#TARGET_KERNEL_CONFIG := w5c_spr_us_defconfig
TARGET_KERNEL_CONFIG := w5c_defconfig
TARGET_KERNEL_SOURCE := kernel/lge/realm
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
TARGET_KERNEL_APPEND_DTB := true

BOARD_USES_QCOM_HARDWARE := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 23068672
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 23068672
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1363148800
BOARD_CACHEIMAGE_PARTITION_SIZE :=    100000000
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 33554432

# don't take forever to wipe
BOARD_SUPPRESS_SECURE_ERASE := true

# TWRP
RECOVERY_SDCARD_ON_DATA := true
TARGET_RECOVERY_FSTAB := device/lge/w5c/twrp.fstab
TARGET_RECOVERY_PIXEL_FORMAT := RGB_565
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
#TW_NEW_ION_HEAP := true
TW_THEME := portrait_hdpi
#TW_SCREEN_BLANK_ON_BOOT := true
TARGET_INCREASES_COLDBOOT_TIMEOUT := true

