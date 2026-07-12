#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import sys
import argparse
import requests
import json
import wave
import time

# Renkli Çıktılar
GREEN = "\033[92m"
RED = "\033[91m"
YELLOW = "\033[93m"
RESET = "\033[0m"

# Varsayılan Yapılandırmalar
PRIMARY_STT_KEY = "sk-b6f4d3879cc4a442-vwd4xl-8ad79a58"
HERMES_API_KEY = "cdc682fdab57893c833680246ca0b95635c2c479e612218918d5e4bdbddc8e34"

def generate_dummy_wav(filename="dummy_test.wav"):
    """Dinamik olarak 1 saniyelik boş/sessiz 16kHz 16-bit Mono WAV dosyası üretir."""
    try:
        with wave.open(filename, 'wb') as wf:
            wf.setnchannels(1)
            wf.setsampwidth(2) # 16-bit
            wf.setframerate(16000) # 16kHz
            wf.writeframes(b'\x00\x00' * 16000)
        return True
    except Exception as e:
        print(f"{RED}x Dummy WAV dosyası üretilemedi: {e}{RESET}")
        return False

def test_api_endpoint(name, url, method="POST", headers=None, files=None, json_data=None, data=None):
    """Genel bir API test yardımcı fonksiyonu."""
    print(f"\n🚀 {YELLOW}Test Ediliyor: {name}{RESET}")
    print(f"   URL: {url}")
    start_time = time.time()
    try:
        if method == "POST":
            response = requests.post(url, headers=headers, files=files, json=json_data, data=data, timeout=8)
        else:
            response = requests.get(url, headers=headers, timeout=8)
        
        elapsed = time.time() - start_time
        print(f"   Durum Kodu: {response.status_code} (Süre: {elapsed:.2f}sn)")
        
        if response.status_code == 200:
            print(f"   {GREEN}✓ Başarılı! Response Content Boyutu: {len(response.content)} byte{RESET}")
            # JSON yanıtı ise yazdır
            content_type = response.headers.get("Content-Type", "")
            if "application/json" in content_type:
                try:
                    parsed_json = response.json()
                    print(f"   Yanıt JSON: {json.dumps(parsed_json, ensure_ascii=False)}")
                except:
                    pass
            return True
        else:
            print(f"   {RED}x Hata! Yanıt Kod: {response.status_code}{RESET}")
            print(f"   Yanıt Detayı: {response.text[:250]}")
            return False
    except requests.exceptions.Timeout:
        print(f"   {RED}x Hata! Zaman aşımı (Timeout > 8sn){RESET}")
        return False
    except Exception as e:
        print(f"   {RED}x Bağlantı Hatası: {e}{RESET}")
        return False

def main():
    parser = argparse.ArgumentParser(description="Hermes & Wyoming Ses Sistemi Yerel API Test Aracı")
    parser.add_argument("--ip", default="192.168.1.14", help="Sunucu IP Adresi (Varsayılan: 192.168.1.14)")
    args = parser.parse_args()

    server_ip = args.ip
    print("=" * 60)
    print(f"🤖 {GREEN}SES SISTEMI API TEST ARACI BAŞLATILDI (Hedef: {server_ip}){RESET}")
    print("=" * 60)

    # Dummy WAV dosyası hazırla
    dummy_wav = "dummy_test.wav"
    if not generate_dummy_wav(dummy_wav):
        sys.exit(1)

    tests_run = 0
    tests_passed = 0

    # 1. Wyoming STT (Port 5000)
    tests_run += 1
    stt_file = open(dummy_wav, "rb")
    files = {"file": (dummy_wav, stt_file, "audio/wav")}
    stt_url_5000 = f"http://{server_ip}:5000/v1/stt"
    if test_api_endpoint("Wyoming STT (Port 5000 / v1/stt)", stt_url_5000, files=files):
        tests_passed += 1
    stt_file.close()

    # 2. 9Router STT (Port 20128)
    tests_run += 1
    stt_file = open(dummy_wav, "rb")
    files = {"file": (dummy_wav, stt_file, "audio/wav")}
    headers_stt_20128 = {
        "Authorization": f"Bearer {PRIMARY_STT_KEY}",
        "X-Hermes-Session-Key": "4078"
    }
    stt_url_20128 = f"http://{server_ip}:20128/v1/audio/transcriptions"
    if test_api_endpoint("9Router STT (Port 20128 / v1/audio/transcriptions)", stt_url_20128, headers=headers_stt_20128, files=files, data={"model": "groq/whisper-large-v3-turbo", "language": "tr"}):
        tests_passed += 1
    stt_file.close()

    # 3. Wyoming TTS (Port 5000)
    tests_run += 1
    tts_url_5000 = f"http://{server_ip}:5000/v1/tts"
    tts_data_5000 = {
        "input": "Merhaba dünya bu bir Wyoming test sesidir.",
        "voice": "tr-TR-AhmetNeural"
    }
    if test_api_endpoint("Wyoming TTS (Port 5000 / v1/tts)", tts_url_5000, json_data=tts_data_5000):
        tests_passed += 1

    # 4. 9Router TTS (Port 20128 - Edge Proxy)
    tests_run += 1
    token_edge = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
    text_val = "Merhaba dünya bu bir 9Router test sesidir."
    tts_url_20128 = f"http://{server_ip}:20128/v2/audio/speech?input={requests.utils.quote(text_val)}&model=tts-1&voice=edge&TrustedClientToken={token_edge}"
    if test_api_endpoint("9Router TTS (Port 20128 / v2/audio/speech)", tts_url_20128, method="POST", data=""):
        tests_passed += 1

    # 5. Local Edge TTS (Port 10201)
    tests_run += 1
    tts_url_10201 = f"http://{server_ip}:10201/v1/audio/speech"
    tts_data_10201 = {
        "input": "Merhaba dünya bu yerel Edge TTS test sesidir.",
        "voice": "tr-TR-AhmetNeural"
    }
    if test_api_endpoint("Edge TTS (Port 10201 / v1/audio/speech)", tts_url_10201, json_data=tts_data_10201):
        tests_passed += 1

    # 6. Hermes Chat Completions (Port 8642)
    tests_run += 1
    chat_url_8642 = f"http://{server_ip}:8642/v1/chat/completions"
    headers_chat_8642 = {
        "Authorization": f"Bearer {HERMES_API_KEY}",
        "X-Hermes-Session-Key": "user:ahmet:master_profile"
    }
    chat_data_8642 = {
        "model": "asistan",
        "messages": [
            {"role": "system", "content": "Sen bir araç asistanısın."},
            {"role": "user", "content": "Selam nasılsın?"}
        ],
        "stream": False
    }
    if test_api_endpoint("Hermes Chat API (Port 8642 / v1/chat/completions)", chat_url_8642, headers=headers_chat_8642, json_data=chat_data_8642):
        tests_passed += 1

    # Temizlik
    if os.path.exists(dummy_wav):
        os.remove(dummy_wav)

    print("\n" + "=" * 60)
    print(f"🏁 {GREEN}TEST TAMAMLANDI!{RESET}")
    print(f"   Toplam Test: {tests_run}")
    print(f"   Başarılı   : {GREEN}{tests_passed}{RESET}")
    print(f"   Başarısız  : {RED if tests_run != tests_passed else GREEN}{tests_run - tests_passed}{RESET}")
    print("=" * 60)

if __name__ == "__main__":
    main()
