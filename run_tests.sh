#!/bin/bash
echo "Starting data collection script for 115 minutes (6900 seconds)"
DURATION=6900
START_TIME=$(date +%s)

# Ensure logcat is running
adb -s 100.121.172.79:5555 logcat -c
adb -s 100.121.172.79:5555 logcat > /mnt/depo/launcher_v2/car_full_logcat.txt &
LOGCAT_PID=$!

echo "Logcat started in background with PID $LOGCAT_PID"

while [ $(($(date +%s) - START_TIME)) -lt $DURATION ]; do
    CURRENT_TIME=$(date +"%Y-%m-%d_%H-%M-%S")
    echo "--- Dumpsys at $CURRENT_TIME ---" >> /mnt/depo/launcher_v2/car_service_dumps.txt
    adb -s 100.121.172.79:5555 shell dumpsys car_service >> /mnt/depo/launcher_v2/car_service_dumps.txt
    
    # Randomly tap the screen to simulate page changes
    # App Dock is at the bottom, screen is 1920x720. Let's tap somewhere around x=1000-1500, y=650-700
    RANDOM_X=$((1000 + RANDOM % 500))
    RANDOM_Y=$((650 + RANDOM % 50))
    adb -s 100.121.172.79:5555 shell input tap $RANDOM_X $RANDOM_Y
    
    sleep 10
done

# Kill logcat
kill $LOGCAT_PID
echo "Data collection finished."
