import os
import time
import random
import subprocess

# OMODA 5 - VHAL SIMULATOR v1.0
# Bu araç, PC üzerinden emülatöre sanal araç verisi enjekte eder.

DEVICE_IP = "127.0.0.1:5555" # Emülatör portu

PROPERTIES = {
    "SPEED": "0x11600207",
    "RPM": "0x11600305",
    "TEMP": "0x11600703",
    "GEAR": "0x11400400",
    "DOOR": "0x16400b00"
}

def exec_adb(cmd):
    full_cmd = f"adb -s {DEVICE_IP} shell {cmd}"
    subprocess.run(full_cmd, shell=True, capture_output=True)

def simulate_trip():
    print("🚗 Omoda 5 Sürüş Simülasyonu Başladı...")
    speed = 0
    while True:
        # Hız Simülasyonu
        speed = (speed + random.randint(-5, 10)) % 180
        if speed < 0: speed = 0
        
        # ADB üzerinden sahte log bas (VhalManager bu formatı anlıyor)
        # Format: [Value] Property:ID
        log_line = f"D/OMODA_SIM: [ {speed}.0 ] Property:{PROPERTIES['SPEED']}"
        subprocess.run(f"adb -s {DEVICE_IP} shell log -p d -t OMODA_SIM '[{speed}.0] Property:{PROPERTIES['SPEED']}'", shell=True)
        
        # Rastgele Kapı/Isı verisi
        temp = random.randint(18, 30)
        subprocess.run(f"adb -s {DEVICE_IP} shell log -p d -t OMODA_SIM '[{temp}.0] Property:{PROPERTIES['TEMP']}'", shell=True)
        
        print(f"📡 Gönderilen -> Hız: {speed} km/h | Isı: {temp} C")
        time.sleep(4) # 4sn polling aralığına uygun

if __name__ == "__main__":
    simulate_trip()
