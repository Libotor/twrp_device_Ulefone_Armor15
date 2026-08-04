#!/sbin/sh

setenforce 0

# Get your device's block path where "system", "recovery", etc. lives.
mkdir -p /dev/block/platform/bootdevice/by-name/
busybox mount -o bind /dev/block/by-name/ /dev/block/platform/bootdevice/by-name/
