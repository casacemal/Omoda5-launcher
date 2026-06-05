import socket
import time
import random

# Omoda 5 VHAL Simulator - Advanced Version
# Version: v2.0.0
# Features: Standard Sensors + Ambient Light + Radar + TPMS Simulation

UDP_IP = "127.0.0.1"
UDP_PORT = 5555

PROPERTIES = {
    # Standard Powertrain
    "SPEED": "0x11600207",
    "RPM": "0x11600305",
    "FUEL": "0x11600307",
    "GEAR": "0x11400400",
    
    # HVAC
    "TEMP_OUT": "0x11600703",
    "FAN_SPEED": "0x21401002",
    
    # Ambient Light
    "AMBIENT_SW": "0x21403028",
    "AMBIENT_COLOR": "0x21403029",
    "AMBIENT_BRIGHT": "0x2140302A",
    
    # ADAS & Radar
    "RADAR_LHF": "0x21402007",
    "RADAR_RHF": "0x2140200b",
    "AVM_TRIGGER": "0x21402006",
    
    # TPMS
    "TPMS_FL": "0x21705004",
    "TPMS_FR": "0x21705005"
}

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
print(f"VHAL Simulator v2.0 Başlatıldı. Hedef: {UDP_IP}:{UDP_PORT}")

def create_vhal_string(prop_id, value, is_float=True):
    if is_float:
        return f"Property: {prop_id}, floatValues: [{float(value)}], int32Values: [], status: 0"
    else:
        return f"Property: {prop_id}, floatValues: [], int32Values: [{int(value)}], status: 0"

try:
    while True:
        # 1. Hız ve RPM (Dinamik)
        speed = round(random.uniform(20, 120), 1)
        rpm = int(speed * 30 + random.randint(-100, 100))
        sock.sendto(create_vhal_string(PROPERTIES["SPEED"], speed, True).encode(), (UDP_IP, UDP_PORT))
        sock.sendto(create_vhal_string(PROPERTIES["RPM"], rpm, True).encode(), (UDP_IP, UDP_PORT))

        # 2. Ambient Light (Renk değişimi simülasyonu)
        color_idx = random.randint(1, 64)
        sock.sendto(create_vhal_string(PROPERTIES["AMBIENT_COLOR"], color_idx, False).encode(), (UDP_IP, UDP_PORT))
        
        # 3. Radar Sensörleri (Engele yaklaşma simülasyonu)
        dist = random.randint(10, 255)
        sock.sendto(create_vhal_string(PROPERTIES["RADAR_LHF"], dist, False).encode(), (UDP_IP, UDP_PORT))
        
        # 4. TPMS (Sabit Basınç)
        sock.sendto(create_vhal_string(PROPERTIES["TPMS_FL"], 2.3, True).encode(), (UDP_IP, UDP_PORT))

        print(f"[SIMULATING] Speed: {speed} km/h, RPM: {rpm}, Ambient Color: {color_idx}, Radar: {dist}")
        
        time.sleep(1) # Daha hızlı akış

except KeyboardInterrupt:
    print("\nSimülatör durduruldu.")
finally:
    sock.close()
