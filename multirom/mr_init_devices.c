#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{
	"/sys/class/graphics/fb0",
	"/sys/class/graphics/fb1",
	"/sys/devices/virtual/graphics/fb0",
	"/sys/devices/virtual/graphics/fb1",

	"/sys/block/mmcblk0*",
	"/sys/block/mmcblk0/mmcblk0*",
	"/sys/block/mmcblk0/mmcblk0p1", //modem
	"/sys/block/mmcblk0/mmcblk0p47", //system
	"/sys/block/mmcblk0/mmcblk0p48", //data
	"/sys/block/mmcblk0/mmcblk0p46", //cache
	"/sys/block/mmcblk0/mmcblk0p30", //persist
	"/sys/block/mmcblk0/mmcblk0p28", //boot
	"/sys/block/mmcblk0/mmcblk0p29", //recovery
	"/sys/block/mmcblk0/mmcblk0p31", //misc

	"/sys/bus*",
	"/sys/devices*",
	"/sys/bus/mmc*",
	"/sys/bus/mmc/drivers/mmcblk*",
	"/sys/module/mmc_core",
	"/sys/module/mmcblk",

	// looks like storage to me
	"/sys/devices/msm_sdcc.1/mmc_host*",
	"/sys/devices/msm_sdcc.2/mmc_host*",

    // for touchpanel & gpio
    "/sys/class/input/input0",
    "/sys/class/input/input0/event0",
    "/sys/class/input/input1",
    "/sys/class/input/input1/event1",    
    "/sys/class/input/input2",
    "/sys/class/input/input2/event2",
    "/sys/class/input/input3",
    "/sys/class/input/input3/event3",    
    "/sys/class/input/input4",
    "/sys/class/input/input4/event4",
    "/sys/class/input/input5",
    "/sys/class/input/input5/event5",
    "/sys/class/input/input6",
    "/sys/class/input/input6/event6",
    "/sys/class/input/input7",
    "/sys/class/input/input7/event7",
    "/sys/class/input/input8",
    "/sys/class/input/input8/event8",
    "/sys/class/input/input9",
    "/sys/class/input/input9/event9",  

	// USB drive
	"/sys/module/xhci-hcd*",
	"/sys/bus/platform/drivers/xhci-hcd*",

	// for adb
	"/sys/devices/virtual/tty/ptmx",
	"/sys/devices/virtual/misc/android_adb",
	"/sys/devices/virtual/android_usb/android0/f_adb",
	"/sys/bus/usb",

	// for qualcomm overlay - /dev/ion
	"/sys/devices/virtual/misc/ion",

	// Encryption
	//"/sys/devices/virtual/misc/device-mapper",
	//"/sys/devices/virtual/qseecom/qseecom",

	NULL
};

