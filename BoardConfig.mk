#
# Copyright (C) 2016 The CyanogenMod Project
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

LOCAL_PATH := device/motorola/athene

BOARD_VENDOR := motorola-qcom

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Asserts
TARGET_OTA_ASSERT_DEVICE := athene,athene_f,xt1621,xt1622,xt1625,xt1626,xt1640,xt1641,xt1642,xt1643,xt1644

# Platform
TARGET_BOARD_PLATFORM := msm8952
TARGET_BOARD_PLATFORM_GPU := qcom-adreno405

TARGET_CPU_CORTEX_A53 := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8952
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

# Kernel
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci lpm_levels.sleep_disabled=1 earlyprintk
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0x01000000 --tags_offset 0x00000100
TARGET_CUSTOM_DTBTOOL := dtbTool_moto
TARGET_KERNEL_ARCH := arm
TARGET_KERNEL_CONFIG := cm_athene_defconfig
TARGET_KERNEL_SOURCE := kernel/motorola/msm8952
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-

# Audio
AUDIO_FEATURE_ENABLED_KPI_OPTIMIZE := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1

# RIL
BOARD_PROVIDES_RILD := true
BOARD_PROVIDES_LIBRIL := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += \
    $(LOCAL_PATH)/cmhw \
    hardware/cyanogen/cmhw

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
TARGET_USES_NEW_ION_API :=true
TARGET_CONTINUOUS_SPLASH_ENABLED := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
USE_OPENGL_RENDERER := true
SF_VSYNC_EVENT_PHASE_OFFSET_NS := 2000000
VSYNC_EVENT_PHASE_OFFSET_NS := 6000000

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216        # 16384 * 1024 mmcblk0p28
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216    # 16384 * 1024 mmcblk0p29
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2600255488    # 2539312 * 1024 mmcblk0p47
BOARD_PERSISTIMAGE_PARTITION_SIZE := 28819456     # 28144 * 1024 mmcblk0p30
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27258650624 # 26619776 * 1024 mmcblk0p48
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_CACHEIMAGE_PARTITION_SIZE := 260014080      # 253920 * 1024 mmcblk0p46

# FM
TARGET_QCOM_NO_FM_FIRMWARE := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_athene
TARGET_RECOVERY_DEVICE_MODULES := libinit_athene
TARGET_UNIFIED_DEVICE := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
USE_DEVICE_SPECIFIC_LOC_API := true
TARGET_NO_RPC := true

# Partitions
BOARD_FLASH_BLOCK_SIZE := 131072

# Power
TARGET_POWERHAL_VARIANT := qcom

# CPU
ENABLE_CPUSETS := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Properties
TARGET_SYSTEM_PROP += device/motorola/athene/system.prop

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

#Enable peripheral manager
TARGET_PER_MGR_ENABLED := true

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true

# Media
TARGET_USES_MEDIA_EXTENSIONS := true

# Keymaster
TARGET_PROVIDES_KEYMASTER := true
TARGET_KEYMASTER_WAIT_FOR_QSEE := true

# CNE and DPM
TARGET_LDPRELOAD := libNimsWrap.so
BOARD_USES_QCNE := true

# Sensors
USE_SENSOR_MULTI_HAL := true

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
TARGET_RECOVERY_FSTAB := device/motorola/athene/multirom/mrom-fstab.athene
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true

# SDClang
TARGET_USE_SDCLANG := true

# TWRP Recovery
TW_THEME_LANDSCAPE := landscape_hdpi
TW_TARGET_USES_QCOM_BSP := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TW_NO_USB_STORAGE := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_HW_DISK_ENCRYPTION := true
TW_MAX_BRIGHTNESS := 255
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
BOARD_SUPPRESS_SECURE_ERASE := true
RECOVERY_SDCARD_ON_DATA := true
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_INCLUDE_CRYPTO := true
TW_THEME := portrait_hdpi

#MultiROM config. MultiROM also uses parts of TWRP config
TARGET_RECOVERY_IS_MULTIROM := true
MR_NO_KEXEC := enabled
MR_CONTINUOUS_FB_UPDATE := true
MR_INPUT_TYPE := type_a
MR_INIT_DEVICES := device/motorola/athene/multirom/mr_init_devices.c
MR_DPI := xhdpi
MR_DPI_FONT := 400
MR_USE_MROM_FSTAB := true
MR_FSTAB := device/motorola/athene/multirom/mrom-fstab.athene
MR_KEXEC_MEM_MIN := 0x20000000
MR_DEVICE_HOOKS := device/motorola/athene/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4
MR_USE_QCOM_OVERLAY := true
MR_QCOM_OVERLAY_HEADER := device/motorola/athene/multirom/mr_qcom_overlay.h
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_QCOM_OVERLAY_HEAP_ID_MASK := 2
MR_INFOS := device/motorola/athene/multirom/mrom_infos
MR_DEVICE_SPECIFIC_VERSION := e
MR_DEVICE_VARIANTS := athene athene_f xt1621 xt1622 xt1625 xt1626 xt1640 xt1641 xt1642 xt1643 xt1644
MR_ENCRYPTION := true
# bootmenu
DEVICE_RESOLUTION := 1080x1920
MR_PIXEL_FORMAT := "ABGR_8888"
RECOVERY_GRAPHICS_USE_LINELENGTH := true
# Versioning
include device/motorola/athene/multirom/MR_REC_VERSION.mk
BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
#Force populating /dev/block/platform/msm_sdcc.1/by-name
#from the emmc
MR_POPULATE_BY_NAME_PATH := "/dev/block/platform/msm_sdcc.1/by-name"

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X
