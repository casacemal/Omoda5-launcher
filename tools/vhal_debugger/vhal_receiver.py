import socket
import re

# Omoda 5 VHAL Receiver & Decoder
# Version: v1.0.0
# This script emulates the VhalManager.kt logic to verify data resolution.

UDP_IP = "127.0.0.1"
UDP_PORT = 5555

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
sock.bind((UDP_IP, UDP_PORT))

print(f"VHAL Emulator Dinlemede: {UDP_IP}:{UDP_PORT}")
print("VhalManager.kt Regex mantığı uygulanıyor...")

# Regex patterns from VhalManager.kt (as seen in RESOULTION_REPORT_v11_6_3.md)
FLOAT_REGEX = r"floatValues: \[([\d.,\s-]+)\]"
INT32_REGEX = r"int32Values: \[([\d.,\s-]+)\]"

def parse_vhal_data(line):
    # 1. Regex Match
    float_match = re.search(FLOAT_REGEX, line)
    int32_match = re.search(INT32_REGEX, line)
    
    value_to_parse = ""
    
    if float_match and float_match.group(1).strip():
        value_to_parse = float_match.group(1).strip()
    elif int32_match and int32_match.group(1).strip():
        value_to_parse = int32_match.group(1).strip()
        
    if not value_to_parse:
        return None, None

    # 2. Identify Property and Apply Scaling
    # Fuel scaling logic from report: if 0x11600307 then / 1000f
    if "0x11600307" in line:
        try:
            val_liters = float(value_to_parse) / 1000.0
            return "YAKIT", f"{val_liters:.1f} L"
        except ValueError:
            return "YAKIT", "Hata"
            
    if "0x11600207" in line:
        return "HIZ", f"{value_to_parse} km/h"
        
    if "0x11600703" in line:
        return "SICAKLIK", f"{value_to_parse} °C"

    return "BILINMEYEN", value_to_parse

try:
    while True:
        data, addr = sock.recvfrom(1024)
        line = data.decode()
        
        tag, result = parse_vhal_data(line)
        
        if tag:
            print(f"[RECV] RAW: {line}")
            print(f"       RESOLVED -> {tag}: {result}")
            print("-" * 50)

except KeyboardInterrupt:
    print("\nAlıcı durduruldu.")
finally:
    sock.close()
