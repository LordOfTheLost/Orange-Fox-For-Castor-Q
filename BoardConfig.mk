#
# Copyright 2021 The Android Open Source Project
#
# Copyright (C) 2019-2021 OrangeFox Recovery Project
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

DEVICE_CODE := castor
LOCAL_PATH := device/$(DEVICE_CODE)

# For building with minimal manifest
# ALLOW_MISSING_DEPENDENCIES := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := krait

# TARGET_2ND_ARCH := arm
# TARGET_2ND_ARCH_VARIANT := armv7-a-neon
# TARGET_2ND_CPU_ABI := armeabi-v7a
# TARGET_2ND_CPU_ABI2 := armeabi
# TARGET_2ND_CPU_VARIANT := krait
# TARGET_BOARD_SUFFIX := _32
# TARGET_USES_64_BIT_BINDER := true

ENABLE_CPUSETS := true
ENABLE_SCHEDBOOST := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8974
TARGET_NO_BOOTLOADER := true
# TARGET_USES_UEFI := true

# lzma
LZMA_RAMDISK_TARGETS := boot,recovery
BOARD_NEEDS_LZMA_MINIGZIP := true

# Kernel
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom user_debug=23 msm_rtb.filter=0x3b7 ehci-hcd.park=3 dwc3.maximum_speed=high dwc3_msm.prop_chg_detect=Y androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET     := 0x01000000
TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel
NEED_KERNEL_MODULE_SYSTEM := true
TARGET_KERNEL_ARCH := arm

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 22272000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)
BOARD_CACHEIMAGE_PARTITION_SIZE := 209715200
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16384000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2436890624
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12253589504
BOARD_USERDATAIMAGE_FILE_SYSTEM_TYPE := ext4

# Platform
TARGET_BOARD_PLATFORM := msm8974
TARGET_BOARD_PLATFORM_GPU := qcom-adreno330
# TARGET_PLATFORM_DEVICE_BASE := /devices/soc/

# Workaround for error copying vendor files to recovery ramdisk
TARGET_COPY_OUT_VENDOR := vendor

# Recovery
TARGET_OTA_ASSERT_DEVICE := $(DEVICE_CODE)
# BOARD_HAS_LARGE_FILESYSTEM := true
# BOARD_HAS_NO_SELECT_BUTTON := true

# Android Verified Boot
# BOARD_AVB_ENABLE := false
# BOARD_BUILD_DISABLED_VBMETAIMAGE := true

# TWRP specific build flags
TW_DEFAULT_LANGUAGE="en"
TW_THEME := portrait_hdpi
# TW_THEME := landscape_hdpi
RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_DEFAULT_BRIGHTNESS := 255
TW_MAX_BRIGHTNESS := 255
# TW_EXCLUDE_DEFAULT_USB_INIT := true
TW_EXTRA_LANGUAGES := false
# TW_INCLUDE_NTFS_3G := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/recovery.fstab
# AB_OTA_UPDATER := false
TW_USE_QCOM_HAPTICS_VIBRATOR := true
TW_SCREEN_BLANK_ON_BOOT := true
TW_USE_TOOLBOX := true

# File Systems
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
# TW_INCLUDE_FUSE_NTFS := true
# TW_INCLUDE_FUSE_EXFAT := true

# Crypto
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true
TW_INCLUDE_FBE := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true
TARGET_CRYPTFS_HW_PATH := vendor/qcom/opensource/commonsys/cryptfs_hw

# System as root
# BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
# BOARD_SUPPRESS_SECURE_ERASE := true

# Extras
TW_IGNORE_MISC_WIPE_DATA := true

# Debug
TWRP_INCLUDE_LOGCAT := true
TARGET_USES_LOGD := true

# SHRP
SHRP_DEVICE_CODE := $(DEVICE_CODE)
SHRP_OFFICIAL := true
SHRP_EXPRESS := false
SHRP_PATH := $(LOCAL_PATH)
SHRP_MAINTAINER := "Lord Of The Lost"
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A_Only
SHRP_REC := /dev/block/bootdevice/by-name/recovery
SHRP_EDL_MODE := 0
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_STATUSBAR_RIGHT_PADDING := 48
SHRP_STATUSBAR_LEFT_PADDING := 48
# SHRP_NOTCH := true
SHRP_DARK := true
SHRP_SKIP_DEFAULT_ADDON_1 := true
SHRP_SKIP_DEFAULT_ADDON_2 := true
# SHRP_NO_SAR_AUTOMOUNT := true