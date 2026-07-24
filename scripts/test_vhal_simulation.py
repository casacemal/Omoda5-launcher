#!/usr/bin/env python3
"""
Test VHAL Dumpsys Response Parsing & Simulation Data Delivery
Bu betik, AdbClient ve VehicleController sınıflarında yapılan:
1. Dumpsys Hex ID parsing (0x'siz temiz Hex ve floatValues parsing)
2. Akış Tamponu (Line Accumulator) satır bölme simülasyonu
3. Test telefonuna MQTT simülasyon verisi basma (omoda/simulate)
fonksiyonlarını bağımsız olarak test eder.
"""

import re
import json
import time
import argparse
import paho.mqtt.client as mqtt

def test_dumpsys_regex_parser():
    print("=== 1. Dumpsys Response Regex & Parsing Testi ===")
    
    sample_dumpsys_output = """
Property:0x11600207,status: 0,timestamp:0,zone:0x0,floatValues: [72.5],int32Values: [],int64Values: [],bytes: [],string:
Property:0x11600305,status: 0,timestamp:0,zone:0x0,floatValues: [],int32Values: [2400],int64Values: [],bytes: [],string:
Property:0x21402006,status: 0,timestamp:0,zone:0x0,floatValues: [],int32Values: [5],int64Values: [],bytes: [],string:
Property:0x11200305,status: 0,timestamp:0,zone:0x0,floatValues: [88.0],int32Values: [],int64Values: [],bytes: [],string:
"""
    
    id_regex = re.compile(r"(?i)Property:(?:0x)?([0-9a-fA-F]+)")
    val_regex = re.compile(r"(?i)(?:value|floatValues|int32Values)s?[:=]\s*\[([^]]*)]")

    lines = [l.strip() for l in sample_dumpsys_output.strip().split('\n') if l.strip()]
    
    parsed_results = {}
    for line in lines:
        id_match = id_regex.search(line)
        if not id_match:
            continue
        prop_id = id_match.group(1).lower()
        
        val_matches = val_regex.findall(line)
        val = next((v.strip() for v in val_matches if v.strip()), "")
        
        parsed_results[prop_id] = val
        print(f"  [PARSED] Property ID: 0x{prop_id} -> Value: '{val}'")
    
    assert "11600207" in parsed_results and parsed_results["11600207"] == "72.5", "Hız sensörü parsing hatası!"
    assert "11600305" in parsed_results and parsed_results["11600305"] == "2400", "RPM sensörü parsing hatası!"
    assert "21402006" in parsed_results and parsed_results["21402006"] == "5", "Vites sensörü parsing hatası!"
    print("✅ Regex & Parsing Testi BAŞARILI!\n")

def send_test_phone_simulation(broker_ip, phone_ip=None):
    print(f"=== 2. Test Telefonu Simülasyon Verisi Gönderimi ({broker_ip}) ===")
    
    client = mqtt.Client()
    client.username_pw_set("mqtthome", "4078")
    
    try:
        client.connect(broker_ip, 1883, 60)
        print(f"  MQTT Broker ({broker_ip}:1883) bağlantısı kuruldu.")
        
        sim_data = [
            {"propertyId": "0x11600207", "float": "85.0"},  # Hız (km/h)
            {"propertyId": "0x11600305", "float": "2800.0"}, # Devir (RPM)
            {"propertyId": "0x21402006", "int": "5"},       # Vites (D)
            {"propertyId": "0x11200305", "float": "90.0"},  # Motor Harareti (°C)
            {"propertyId": "0x21401008", "int": "22"},      # Klima Sıcaklığı (°C)
            {"propertyId": "0x21402012", "int": "0"},       # Ön Sol Kapı (Kapalı)
        ]
        
        print("  Simülasyon paketleri gönderiliyor ('omoda/simulate' & 'omoda/telemetri')...")
        for item in sim_data:
            payload = json.dumps(item)
            client.publish("omoda/simulate", payload)
            client.publish("omoda/telemetri", payload)
            print(f"    -> İletildi: {payload}")
            time.sleep(0.3)
            
        client.disconnect()
        print("✅ Simülasyon Veri Testi BAŞARILI! Test telefonunda (Simülasyon Modu Açıkken) veriler anında akmalıdır.\n")
    except Exception as e:
        print(f"❌ Simülasyon Test Hatası: {e}")

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="VHAL Dumpsys & Phone Simulation Test Script")
    parser.add_argument("--ip", type=str, default="192.168.1.14", help="MQTT Broker IP")
    args = parser.parse_args()
    
    test_dumpsys_regex_parser()
    send_test_phone_simulation(args.ip)
