# BoardConfig.mk for Ulefone Armor 15 (MT6765)
DEVICE_PATH := device/ulefone/Armor_15

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := 
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := generic

# CPU / Platform
TARGET_BOARD_PLATFORM := mt6765
TARGET_BOARD_SUFFIX := _64
TARGET_SOC_NAME := mt6765

# Bootloader & Kernel Parameters (Ausgelesen aus deinem AIK-Protokoll)
TARGET_BOOTLOADER_BOARD_NAME := mt6765
TARGET_NO_RADIOIMAGE := true
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2 buildvariant=user loop.max_part=7
BOARD_KERNEL_BASE := 0x40078000
BOARD_KERNEL_PAGESIZE := 2048

# Recovery-in-Boot Layout (Zwingend für Android 12 "Recovery-As-Boot")
BOARD_USES_RECOVERY_AS_BOOT := true
TARGET_NO_RECOVERY := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := false

# Security / Encryption
TW_INCLUDE_CRYPTO := true
TW_INCLUDE_CRYPTO_FBE := true

# TWRP User Interface Configuration
TW_THEME := portrait_hdpi
TW_EXTRA_LANGUAGES := true
TW_BRIGHTNESS_PATH := "/sys/class/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255
TW_DEFAULT_BRIGHTNESS := 150

# Hardware Buttons & Touch Control
RECOVERY_SDCARD_ON_DATA := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
