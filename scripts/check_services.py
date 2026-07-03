import requests
import json
import os
import time

SERVER_IP = "100.95.239.119"
PORT = "20128"
BASE_URL = f"http://{SERVER_IP}:{PORT}/v1"
NINEROUTER_API_KEY = "sk-b6f4d3879cc4a442-vwd4xl-8ad79a58"
# Let's try NINEROUTER for all first, then HERMES if needed
API_KEY = NINEROUTER_API_KEY
SESSION_KEY = "user:ahmet:master_profile"

def test_stt():
    print(f"\n--- Testing STT at {BASE_URL}/audio/transcriptions ---")
    url = f"{BASE_URL}/audio/transcriptions"
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "X-Hermes-Session-Key": SESSION_KEY
    }

    dummy_wav = "test_audio.wav"
    # Create a 1-second silence WAV (larger than just header)
    # 16kHz, 16-bit, Mono = 32000 bytes for 1 sec
    with open(dummy_wav, "wb") as f:
        f.write(b'RIFF$\x00\x00\x00WAVEfmt \x10\x00\x00\x00\x01\x00\x01\x00\x80>\x00\x00\x00}\x00\x00\x02\x00\x10\x00data')
        f.write(b'\x00' * 32000)

    try:
        with open(dummy_wav, "rb") as f:
            files = {"file": (dummy_wav, f, "audio/wav")}
            data = {
                "model": "groq/whisper-large-v3-turbo",
                "language": "tr"
            }
            response = requests.post(url, headers=headers, files=files, data=data, timeout=15)
            print(f"Status: {response.status_code}")
            print(f"Response: {response.text}")
    except Exception as e:
        print(f"Error: {e}")

def test_chat():
    print(f"\n--- Testing Chat at {BASE_URL}/chat/completions ---")
    url = f"{BASE_URL}/chat/completions"
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "Content-Type": "application/json",
        "X-Hermes-Session-Key": SESSION_KEY
    }
    payload = {
        "model": "asistan",
        "messages": [{"role": "user", "content": "Merhaba asistan"}],
        "stream": False
    }
    try:
        response = requests.post(url, headers=headers, json=payload, timeout=15)
        print(f"Status: {response.status_code}")
        print(f"Response: {response.text[:200]}")
    except Exception as e:
        print(f"Error: {e}")

def test_tts():
    print(f"\n--- Testing TTS at {BASE_URL}/audio/speech ---")
    url = f"{BASE_URL}/audio/speech"
    headers = {
        "Authorization": f"Bearer {API_KEY}",
        "Content-Type": "application/json",
        "X-Hermes-Session-Key": SESSION_KEY
    }
    payload = {
        "model": "tts-1",
        "input": "Merhaba dünya.",
        "voice": "edge"
    }
    try:
        response = requests.post(url, headers=headers, json=payload, timeout=15)
        print(f"Status: {response.status_code}")
        if response.status_code == 200:
            print("Success! Received audio data.")
        else:
            print(f"Response: {response.text}")
    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    test_stt()
    test_chat()
    test_tts()
