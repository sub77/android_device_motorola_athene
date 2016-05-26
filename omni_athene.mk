# Inherit from some product specifics
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common stuff
$(call inherit-product, vendor/omni/config/common.mk)

# Release name
PRODUCT_RELEASE_NAME := athene

# Charger
PRODUCT_PACKAGES += charger charger_res_images

PRODUCT_COPY_FILES += \
    device/motorola/athene/kernel:kernel \
    device/motorola/athene/dt.img:dt.img \
	device/motorola/athene/twrp.fstab:root/etc/twrp.fstab

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := athene
PRODUCT_NAME := omni_athene
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G4 Plus
PRODUCT_MANUFACTURER := motorola