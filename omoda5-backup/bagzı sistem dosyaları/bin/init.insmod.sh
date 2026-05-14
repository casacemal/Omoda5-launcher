#! /vendor/bin/sh

#insmod wifi
#chmod 0770 /vendor/lib/modules/bcmdhd.ko
insmod /vendor/lib/modules/bcmdhd.ko \
firmware_path=/vendor/firmware/firmware_pcie.bin \
nvram_path=/vendor/firmware/bcmdhd.cal \
clm_path=/vendor/firmware/4359_cypress_auto.clm_blob

#insmod pvr
#chmod 0770 /vendor/lib/modules/pvrsrvkm.ko
check_results=`getprop ro.boot.gpu`
if [ "$check_results" = "vgpu" ];then
insmod /vendor/lib/modules/pvrsrvkm.ko DriverMode=1
else
insmod /vendor/lib/modules/pvrsrvkm.ko
fi

chown system system /sys/kernel/debug/sync/sw_sync
chmod 0666 /sys/kernel/debug/sync/sw_sync
chmod 0666 /dev/pvr_sync

#install g2d
#chmod 0770 /vendor/lib/modules/sdrv-g2d.ko
insmod /vendor/lib/modules/sdrv-g2d.ko

for file in `ls /sys/class/rfkill/`
do
    echo $file
    rf_type=`cat /sys/class/rfkill/$file/type`
    if [ "$rf_type" = "bluetooth" ];then
        chmod 0666 /sys/class/rfkill/$file/state
    fi
    echo $rf_type
done

chmod 0777 sys/class/backlight/panel0-backlight/brightness
chmod 0777 sys/class/backlight/panel1-backlight/brightness

setprop "semidrive.early.insmod" 1
