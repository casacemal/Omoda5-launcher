#! /vendor/bin/sh

mkdir /data/sdrv_deviceinfo/
chmod 777 /data/sdrv_deviceinfo

devicetime=`date +%Y%m%d_%H%M%S`

echo $devicetime

mkdir /data/sdrv_deviceinfo/${devicetime}
chmod 777 /data/sdrv_deviceinfo/${devicetime}

#/system/bin/dumpsys cpuinfo >/sdcard/sdrv_deviceinfo/${devicetime}/cpuinfo.txt
#chmod 666 /sdcard/sdrv_deviceinfo/${devicetime}/cpuinfo.txt

#dump input info
/system/bin/dumpsys input >/data/sdrv_deviceinfo/${devicetime}/input.txt
chmod 666 /data/sdrv_deviceinfo/${devicetime}/input.txt

#dump meminfo
cat /proc/meminfo >/data/sdrv_deviceinfo/${devicetime}/proc_mem.txt
chmod 666 /data/sdrv_deviceinfo/${devicetime}/proc_mem.txt

/system/bin/dumpsys meminfo >/data/sdrv_deviceinfo/${devicetime}/meminfo.txt
chmod 666 /data/sdrv_deviceinfo/${devicetime}/meminfo.txt

#dump io info
/system/bin/iotop -n 1 >/data/sdrv_deviceinfo/${devicetime}/iotop.txt
/system/bin/vmstat >/data/sdrv_deviceinfo/${devicetime}/vmstat.txt

#dump cpu info
/system/bin/top -n 5 -H >/data/sdrv_deviceinfo/${devicetime}/top.txt
cat /sys/devices/system/cpu/online >/data/sdrv_deviceinfo/${devicetime}/cpu_online_num.txt
cat /sys/devices/system/cpu/cpufreq/policy0/cpuinfo_cur_freq >/data/sdrv_deviceinfo/${devicetime}/cpu_current_freq.txt
cat /sys/class/thermal/thermal_zone0/temp > /data/sdrv_deviceinfo/${devicetime}/cpu_temp.txt

#dump trace info
echo $devicetime > /dev/kmsg
echo 'w' > /proc/sysrq-trigger
echo 'l' > /proc/sysrq-trigger
dmesg > /data/sdrv_deviceinfo/${devicetime}/dmesg.log

#dump gpu info
cat /d/pvr/debug_dump > /data/sdrv_deviceinfo/${devicetime}/pvr.txt
