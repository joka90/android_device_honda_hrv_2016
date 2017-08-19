RECOVERY_VARIANT := twrp

BOARD_VENDOR_USE_NV_CAMERA := true

# Skip droiddoc build to save build time
BOARD_SKIP_ANDROID_DOC_BUILD := true

# Use a smaller subset of system fonts to keep image size lower
SMALLER_FONT_FOOTPRINT := true


TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := tegra3
TARGET_TEGRA_VERSION := t30

TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a9
# Avoid the generation of ldrcc instructions
NEED_WORKAROUND_CORTEX_A9_745320 := true
TARGET_USES_AOSP := true
BOARD_USES_QCOM_HARDWARE := false
# Kernel

BOARD_KERNEL_CMDLINE := androidboot.hardware=e1853 androidboot.console=ttyS0
BOARD_KERNEL_BASE := 0x10000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100
BOARD_KERNEL_SEPARATED_DT := false
TARGET_PREBUILT_KERNEL := device/honda/hrv_2016/recovery/kernel

TARGET_BOOTLOADER_BOARD_NAME := e1853
# Partition info
TARGET_USERIMAGES_USE_EXT4 := true
#TODO system, boot, userdata
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1090519040
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1417657344
BOARD_FLASH_BLOCK_SIZE := 4096

# TWRP

RECOVERY_FSTAB_VERSION := 2
TARGET_RECOVERY_FSTAB := device/honda/hrv_2016/recovery/root/etc/recovery.fstab

# Recovery Kernel
# Comment the following line to build recovery kernel with appropriate source
TARGET_PREBUILT_RECOVERY_KERNEL := device/honda/hrv_2016/recovery/kernel

# TWRP Settings
DEVICE_RESOLUTION := 800x600
RECOVERY_SDCARD_ON_DATA := true
TW_NO_BATT_PERCENT := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
#TW_EXTERNAL_STORAGE_PATH := "/sdcard1"
#TW_EXTERNAL_STORAGE_MOUNT_POINT := "sdcard1"
TW_EXTERNAL_STORAGE_PATH := "/usbdrive"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "usbdrive"
TW_NO_REBOOT_BOOTLOADER := true
TW_NO_REBOOT_RECOVERY := true
TW_FLASH_FROM_STORAGE := true
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_CRYPTO := false
TW_INCLUDE_JB_CRYPTO := false
#TW_INCLUDE_JB_CRYPTO := true
#TW_CRYPTO_FS_TYPE := "ext4"
#TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p7"
#TW_CRYPTO_MNT_POINT := "/data"
#TW_CRYPTO_FS_OPTIONS := "data=ordered,delalloc"
#TW_CRYPTO_FS_FLAGS := "0x00000406"
#TW_CRYPTO_KEY_LOC := "footer"

