# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit from 64-bit architecture
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64bit.mk)

# Common configuration inclusions
$(call inherit-product, $(SRC_TARGET_DIR)/product/embedded.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Copy the prebuilt kernel to build target
PRODUCT_COPY_FILES += \
    device/ulefone/Armor_15/prebuilt/zImage:kernel

# Device identifier
PRODUCT_DEVICE := Armor_15
PRODUCT_NAME := omni_Armor_15
PRODUCT_BRAND := Ulefone
PRODUCT_MODEL := Armor 15
PRODUCT_MANUFACTURER := Ulefone

# Forcefully add MTP support
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp

# Add fingerprint from Stock Ulefone Armor 15 Android 12 ROM
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="Ulefone/Armor_15/Armor_15:12/SP1A.210812.016/1657828282:user/release-keys" \
    PRIVATE_BUILD_DESC="Armor_15-user 12 SP1A.210812.016 1657828282 release-keys"
