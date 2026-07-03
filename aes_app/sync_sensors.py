#!/usr/bin/env python3
"""
SensorDictionary.kt'den sensör isimlerini okuyup discovered_sensors.json'a senkronize eder.
Kullanım: python3 sync_sensors.py
"""
import json
import re
import os

DICT_PATH = os.path.join(os.path.dirname(__file__), "..", "app", "src", "main", "java",
                         "com", "omoda", "universal", "assistant", "core", "SensorDictionary.kt")
SENSORS_JSON = os.path.join(os.path.dirname(__file__), "discovered_sensors.json")

def parse_sensor_dictionary(kt_path: str) -> dict[str, str]:
    """SensorDictionary.kt dosyasını parse edip {hex_id: isim} sözlüğü döner."""
    sensors: dict[str, str] = {}
    pattern = re.compile(r'"([0-9a-fA-F]+|MEDIA_[A-Z_]+)"\s+to\s+"([^"]+)"')
    
    with open(kt_path, "r", encoding="utf-8") as f:
        for line in f:
            m = pattern.search(line)
            if m:
                raw_id = m.group(1).lower()
                name = m.group(2)
                # MEDIA_ ile başlayanları 0x prefix'siz tut, diğerlerine 0x ekle
                if raw_id.startswith("media_"):
                    sensors[raw_id.upper()] = name
                else:
                    sensors[f"0x{raw_id}"] = name
    return sensors


def sync():
    if not os.path.exists(DICT_PATH):
        print(f"HATA: SensorDictionary.kt bulunamadı: {DICT_PATH}")
        return

    kt_sensors = parse_sensor_dictionary(DICT_PATH)
    print(f"SensorDictionary.kt'den {len(kt_sensors)} sensör okundu.")

    # Mevcut discovered_sensors.json'ı oku (varsa)
    existing: dict = {}
    if os.path.exists(SENSORS_JSON):
        with open(SENSORS_JSON, "r", encoding="utf-8") as f:
            existing = json.load(f)
        print(f"Mevcut discovered_sensors.json'da {len(existing)} kayıt var.")

    updated = 0
    added = 0

    for prop_id, name in kt_sensors.items():
        if prop_id in existing:
            old_name = existing[prop_id].get("name", "Bilinmeyen")
            if old_name == "Bilinmeyen" or old_name == "":
                existing[prop_id]["name"] = name
                updated += 1
        else:
            existing[prop_id] = {"name": name, "alias": ""}
            added += 1

    with open(SENSORS_JSON, "w", encoding="utf-8") as f:
        json.dump(existing, f, indent=4, ensure_ascii=False)

    print(f"Güncellenen: {updated}, Yeni eklenen: {added}")
    print(f"Toplam: {len(existing)} sensör → {SENSORS_JSON}")


if __name__ == "__main__":
    sync()
