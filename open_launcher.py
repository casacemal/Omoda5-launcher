#!/usr/bin/env python3
import subprocess
import sys
from pathlib import Path

ADB_DEVICE = "192.168.1.23:5555"

def run_adb(cmd):
    result = subprocess.run(["adb", "-s", ADB_DEVICE] + cmd, capture_output=True)
    return result.returncode == 0

def launch_omoda5():
    """Omoda 5 launcher'ı başlatır"""
    # Launcher'ı ön plana getir
    run_adb(["shell", "am", "start", "-n", "com.omoda5.launcher/com.omoda5.launcher.ui.MainActivity"])
    # Home intent'i gönder
    run_adb(["shell", "input", "keyevent", "KEYCODE_HOME"])
    print("Omoda 5 Launcher başlatıldı!")

if __name__ == "__main__":
    launch_omoda5()