#! /system/bin/sh


echo device > /sys/kernel/debug/31220000.dwc3/mode 

rmmod /vendor/lib/modules/usb_f_iap.ko
rmmod /vendor/lib/modules/usb_f_ncm.ko
rmmod /vendor/lib/modules/g_iap_ncm.ko

start adbd

stop carplay_init_sh
stop carplay_startdriver_sh
stop carplay_setParam_sh

