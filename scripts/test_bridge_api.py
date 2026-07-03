import requests
import os
import json

BASE_URL = "http://192.168.1.29:5000/v1"
TEST_AUDIO = "/mnt/depo/launcher_v2/test_audio.wav"

def test_stt():
    print(f"Testing STT at {BASE_URL}/audio/transcriptions...")
    if not os.path.exists(TEST_AUDIO):
        print(f"Error: {TEST_AUDIO} not found.")
        return

    url = f"{BASE_URL}/audio/transcriptions"
    files = {'file': open(TEST_AUDIO, 'rb')}
    try:
        response = requests.post(url, files=files, timeout=30)
        print(f"STT Response Status: {response.status_code}")
        print(f"STT Response Body: {response.text}")
    except Exception as e:
        print(f"STT Test Failed: {e}")

def test_tts():
    print(f"Testing TTS at {BASE_URL}/audio/speech...")
    url = f"{BASE_URL}/audio/speech"
    payload = {
        "input": "Merhaba, sistem testi başarılı.",
        "voice": "tr_TR-dfki-medium"
    }
    headers = {"Content-Type": "application/json"}
    try:
        response = requests.post(url, json=payload, headers=headers, timeout=10)
        print(f"TTS Response Status: {response.status_code}")
        if response.status_code == 200:
            print("TTS Success: Received audio stream/file.")
            # Ses dosyasını kaydetmek istersek buraya ekleyebiliriz
        else:
            print(f"TTS Response Body: {response.text}")
    except Exception as e:
        print(f"TTS Test Failed: {e}")

if __name__ == "__main__":
    test_stt()
    print("-" * 30)
    test_tts()
