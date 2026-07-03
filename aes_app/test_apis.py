import os
import requests
import json
import urllib.parse
import sys

def test_groq():
    print("Testing Groq STT...")
    url = "https://api.groq.com/openai/v1/audio/transcriptions"
    headers = {
        "Authorization": "Bearer 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"
    }
    
    # Create a dummy audio file
    dummy_file = "dummy.wav"
    # Assuming dummy.wav is correctly generated previously
        
    try:
        with open(dummy_file, "rb") as f:
            files = {
                "file": ("dummy.wav", f, "audio/wav")
            }
            data = {
                "model": "groq/whisper-large-v3-turbo"
            }
            response = requests.post(url, headers=headers, files=files, data=data)
            print("Groq Status:", response.status_code)
            print("Groq Response:", response.text)
    except Exception as e:
        print("Groq test failed:", e)

def test_edge():
    print("\nTesting Edge TTS (via proxy)...")
    base_url = "http://homeassistant.tailnet-4f03.ts.net:20128"
    token = "6A5AA1D4EAFF4E9FB37E23D68491D6F4"
    text = "Merhaba dünya"
    url = f"{base_url}/v2/audio/speech?input={urllib.parse.quote(text)}&model=tts-1&voice=edge&TrustedClientToken={token}"
    try:
        response = requests.post(url, data="")
        print("Edge Proxy Status:", response.status_code)
        print("Edge Proxy Content-Type:", response.headers.get("Content-Type"))
        if response.status_code == 200:
            print("Edge Proxy test SUCCESS")
        else:
            print("Edge Proxy test Response:", response.text[:200])
    except Exception as e:
        print("Edge Proxy test failed:", e)

    print("\nTesting Edge TTS Direct (via Microsoft Edge online API)...")
    # Actually, we can test using edge-tts python package if available, or just we can check if the Edge proxy was what the user meant.
    # The prompt says "grog ve edge online apileri" (groq and edge online apis).
    
def test_hermes_stt_20128():
    print("\nTesting 20128 STT...")
    url = "http://homeassistant.tailnet-4f03.ts.net:20128/v1/audio/transcriptions"
    headers = {
        "Authorization": "Bearer sk-b6f4d3879cc4a442-vwd4xl-8ad79a58",
        "X-Hermes-Session-Key": "4078"
    }
    dummy_file = "dummy.wav"
    try:
        with open(dummy_file, "rb") as f:
            files = {
                "file": ("dummy.wav", f, "audio/wav")
            }
            data = {
                "model": "groq/whisper-large-v3-turbo",
                "language": "tr",
                "response_format": "json"
            }
            response = requests.post(url, headers=headers, files=files, data=data)
            print("20128 STT Status:", response.status_code)
            print("20128 STT Response:", response.text[:200])
    except Exception as e:
        print("20128 STT test failed:", e)

def test_hermes_tts_20128():
    print("\nTesting 20128 TTS...")
    url = "http://homeassistant.tailnet-4f03.ts.net:20128/v1/audio/speech"
    headers = {
        "Authorization": "Bearer sk-b6f4d3879cc4a442-vwd4xl-8ad79a58",
        "X-Hermes-Session-Key": "4078",
        "Content-Type": "application/json"
    }
    data = {
        "model": "tts-1",
        "input": "Merhaba test",
        "voice": "alloy"
    }
    try:
        response = requests.post(url, headers=headers, json=data)
        print("20128 TTS Status:", response.status_code)
        if response.status_code == 200:
            print("20128 TTS SUCCESS, content length:", len(response.content))
        else:
            print("20128 TTS Response:", response.text[:200])
    except Exception as e:
        print("20128 TTS test failed:", e)

if __name__ == "__main__":
    test_groq()
    test_edge()
    test_hermes_stt_20128()
    test_hermes_tts_20128()
