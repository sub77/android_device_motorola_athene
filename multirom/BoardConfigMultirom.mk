# MultiROM
include device/motorola/athene/multirom/versioning/MR_REC_VERSION.mk
ifeq ($(MR_REC_VERSION),)
MR_REC_VERSION := $(shell date -u +%Y%m%d)-01
endif
BOARD_MKBOOTIMG_ARGS += --board mrom$(MR_REC_VERSION)

TARGET_USE_ION_COMPAT := true 
RECOVERY_GRAPHICS_USE_LINELENGTH := true

MR_INFOS := device/motorola/athene/multirom/infos
MR_DEVICE_HOOKS := device/motorola/athene/multirom/mr_hooks.c
MR_DEVICE_HOOKS_VER := 4
MR_FSTAB := device/motorola/athene/multirom/mrom.fstab
MR_INIT_DEVICES := device/motorola/athene/multirom/mr_init_devices.c

MR_USE_QCOM_OVERLAY := true
MR_PIXEL_FORMAT := "RGBX_8888"
MR_QCOM_OVERLAY_CUSTOM_PIXEL_FORMAT := MDP_RGBX_8888
MR_QCOM_OVERLAY_HEADER := device/motorola/athene/multirom/overlay/mr_qcom_overlay.h
MR_QCOM_OVERLAY_HEAP_ID_MASK := 2
MR_INPUT_TYPE := type_b
MR_DPI := hdpi
MR_DPI_FONT := 400
MR_KEXEC_DTB := true
MR_CONTINUOUS_FB_UPDATE := false

MR_DEV_BLOCK_BOOTDEVICE := true
MR_NO_KEXEC := enabled

MR_KEXEC_MEM_MIN := 0x81000000

MR_DEVICE_VARIANTS := athene athene_f xt1621 xt1622 xt1625 xt1626 xt1640 xt1641 xt1642 xt1643 xt1644

MR_ENCRYPTION := true
