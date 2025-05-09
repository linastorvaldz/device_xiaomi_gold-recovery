#!/usr/bin/env bash
export LC_ALL="C.UTF-8"
export ALLOW_MISSING_DEPENDENCIES=true
export FOX_TARGET_DEVICES="gold"
export FOX_MAINTAINER_PATCH_VERSION=$(date +"%Y%m%d")
export FOX_VARIANT="HyperOS1"

# OFR Build settings
export FOX_VENDOR_BOOT_RECOVERY=1
export FOX_INSTALLER_VENDOR_BOOT_RAMDISK_INSTALL=1
export FOX_INSTALLER_DISABLE_AUTOREBOOT=1
export FOX_RECOVERY_SYSTEM_PARTITION="/dev/block/mapper/system"
export FOX_RECOVERY_VENDOR_PARTITION="/dev/block/mapper/vendor"
export FOX_USE_UPDATED_MAGISKBOOT=1
export FOX_ENABLE_APP_MANAGER=1
export OF_FLASHLIGHT_ENABLE=1
export OF_FORCE_CASEFOLDING=1
export OF_USE_LZ4_COMPRESSION=1
export OF_BIND_MOUNT_SDCARD_ON_FORMAT=1
export OF_WIPE_METADATA_AFTER_DATAFORMAT=1
export OF_UNBIND_SDCARD_F2FS=1
export OF_LOOP_DEVICE_ERRORS_TO_LOG=1
export OF_MAINTAINER="eraselk"

# Disable/Remove unused stuffs
export FOX_DELETE_MAGISK_ADDON=1
export FOX_DELETE_AROMAFM=1
export FOX_REMOVE_AAPT=1
export FOX_REMOVE_BASH=1
export FOX_EXCLUDE_NANO_EDITOR=1
export OF_NO_REFLASH_CURRENT_ORANGEFOX=1
export OF_USE_GREEN_LED=0

# OFR Binaries
export FOX_USE_TAR_BINARY=1
export FOX_USE_SED_BINARY=1
export FOX_USE_XZ_UTILS=1
export OF_ENABLE_LPTOOLS=1

# OTA
export FOX_AB_DEVICE=1
export FOX_VIRTUAL_AB_DEVICE=1
export OF_DISABLE_MIUI_OTA_BY_DEFAULT=1
export OF_NO_TREBLE_COMPATIBILITY_CHECK=1
export OF_SUPPORT_VBMETA_AVB2_PATCHING=1
export OF_DYNAMIC_FULL_SIZE=9126805504

# Flashlight
export OF_FL_PATH1=/sys/class/leds/mt6360_flash_ch1/brightness
export OF_FL_PATH2=/sys/class/leds/mt6360_flash_ch2/brightness

# OFR GUI Settings
export OF_SCREEN_H=2400
export OF_STATUS_H=95
export OF_STATUS_INDENT_LEFT=48
export OF_STATUS_INDENT_RIGHT=48
export OF_ALLOW_DISABLE_NAVBAR=0
export OF_CLOCK_POS=1

# Copy maintainer avatar image
MAINTAINER_AVATAR="$(gettop)/device/xiaomi/gold/avatar/avatar.png"
if [ -f "$MAINTAINER_AVATAR" ]; then
    cp -f ${MAINTAINER_AVATAR} $(gettop)/bootable/recovery/gui/theme/portrait_hdpi/images/Default/About/maintainer.png
fi
