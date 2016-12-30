#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
    // Framebuffer
    "/sys/class/graphics/fb0",

    "/sys/block/mmcblk0",
    "/sys/devices/msm_sdcc.1*",
    "/sys/devices/msm_sdcc.1/mmc_host",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p28", //boot
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p29", //recovery
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p31", //misc
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p46", //cache
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p47", //system
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p48", //data

    "/sys/bus/mmc",
    "/sys/bus/mmc/drivers/mmcblk",
    "/sys/module/mmc_core",
    "/sys/module/mmcblk",

	// input	
	"/sys/devices/gpio_keys.85/input*",
	"/sys/devices/gpio_keys.85/input/input2",
	"/sys/devices/virtual/input*",
	"/sys/devices/virtual/misc/uinput",
	
    // for adb
    "/sys/class/tty/ptmx",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p23",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p24",
    "/sys/class/misc/android_adb",
    "/sys/class/android_usb/android0/f_adb",
    "/sys/bus/usb",

    //Mount persist and firmware
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p30",
    "/sys/devices/msm_sdcc.1/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p1",

    // USB Drive is in here
    "/sys/devices/platform/msm_hsusb_host*",

    // exfat requires fuse device
    "/sys/devices/virtual/misc/fuse",
    
    // for qualcomm overlay - /dev/ion
    "/sys/devices/virtual/misc/ion",

    NULL
};
