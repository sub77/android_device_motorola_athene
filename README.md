## TWRP device tree for Motorola G4 Plus

Device: Motorola G4 Plus (2016)
Codename: Athene

Add to `.repo/local_manifests/athene.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/motorola/athene" name="android_device_motorola_athene" remote="twrp" revision="twrp" />
</manifest>
```

Then run `repo sync` to check it out.

Specs and details Sheet available at : http://www.gsmarena.com/motorola_moto_g4_plus-8050.php
XDA forums at : http://forum.xda-developers.com/moto-g4-plus

NOTE: This tree is compatible with Omni ROM android-6.0 tree.
