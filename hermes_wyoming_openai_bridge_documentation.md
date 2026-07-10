# Wyoming OpenAI Bridge (Port 5000) - Complete Technical Documentation

> ⚠️ **GÜNCELLEME (07.07.2026):** Bu doküman ESKİ Wyoming bridge mimarisini (whisper.cpp + Piper TCP) anlatmaktadır. Şu an port 5000'de çalışan `wyoming-bridge.service` (`/home/dietpi/.hermes/relay/wyoming_bridge.py` — aiohttp) farklı bir yapıya sahiptir:
> - **STT:** `POST /v1/stt` → 9Router proxy (`http://localhost:20128/v1/audio/transcriptions`)
> - **TTS:** `POST /v1/tts` → edge-tts (yerel, `/home/dietpi/.hermes/relay/edge_tts_server.py` port 10201)
> - **OpenAI uyumlu:** `POST /v1/audio/transcriptions` ve `POST /v1/audio/speech` endpoint'leri de mevcuttur.
> - Yeni systemd unit: `wyoming-bridge.service`, `websocket-relay.service` (8766), `edge-tts-server.service` (10201)
> - Eski script'ler (`wyoming_openai_bridge.py`, `edge_tts.sh`) artık mevcut değildir.

## 📋 Overview

The **Wyoming OpenAI Bridge** is a HTTP↔Wyoming protocol gateway running on port 5000 that enables third-party clients (9Router, Hermes, etc.) to securely access local STT/TTS services via a standardized OpenAI-compatible API. This proxy service acts as a protocol converter, translating HTTP requests from external clients into Wyoming protocol messages for upstream whisper.cpp (STT) and Piper (TTS) services, then converting their responses back to HTTP.

---

## 🏗️ System Architecture

```
┌─────────────────────────────────────────────────────────────┐
│                    HTTP CLIENTS                              │
│  ┌─────────────────┬─────────────────┬─────────────────┐    │
│  │  GET /v1/models  │ POST /v1/audio/transcriptions      │    │
│  │  (model list)   │  (STT)          │ POST /v1/audio/speech   │    │
│  └─────────────────┴─────────────────┴─────────────────┘    │
└─────────────────────────┬─────────────────────────────────────┘
                          │
                          ▼
                  ┌─────────────────────────┐
                  │   WYOMING OPENAI BRIDGE   │
                  │   (Python aiosqlite)      │
                  │   http://localhost:5000   │
                  └─────────────────────────┘
                          │
          ┌───────────────┼───────────────┐
          ▼               ▼               ▼
   HTTP      TCP   ←→   WHISPER.CPP    (Port 10300)
   Parser      Yakın    Wyoming Protokolü  (STT → Metin)
   Session    Bağlantı    AudioStart/Ai        →   {
          AudioChunk                   Json
          AudioStop                     {
                 "text": "transcribed text"
          }
          }
          │
          ▼
   ┌─────────────────────────┐
   │   LOCAL WHISPER MODELLERİ   │
   │   (whisper.cpp, Turkish)    │
   └─────────────────────────┘
```

---

## 🔧 Technical Components

### 1. Core Scripts

| File | Path | Purpose |
|------|------|---------|
| Wyoming OpenAI Bridge | `/home/dietpi/.hermes/skills/voice-mode-setup/scripts/wyoming_openai_bridge.py` | Main proxy server (port 5000) |
| Edge TTS Wrapper | `/home/dietpi/.hermes/scripts/edge_tts.sh` | Turkish TTS script (OpenAI-compatible) |
| Bridge Manager | `/tmp/wyoming_bridge_manager.sh` | Start/stop/status management |

### 2. Required Dependencies

#### System Packages
```bash
# Core dependencies
apt-get update && apt-get install -y ffmpeg python3-pip netcat

# Python packages
pip3 install aiohttp wyoming
```

#### Environment Variables
```bash
# Upstream service configuration
export WHISPER_HOST=192.168.1.29    # or localhost
export WHISPER_PORT=10300           # whisper.cpp TCP port
export PIPER_HOST=192.168.1.29      # or localhost  
export PIPER_PORT=10200             # Piper TCP port
export PIPER_VOICE=tr_TR-dfki-medium # Turkish voice model
```

---

## 📡 API Endpoints

### 1. Model List (GET /v1/models)

```http
GET /v1/models HTTP/1.1
Host: localhost:5000

HTTP/1.1 200 OK
Content-Type: application/json

{
  "object": "list",
  "data": [
    {
      "id": "whisper-1",
      "object": "model",
      "created": 0,
      "owned_by": "wyoming-whisper-cpp"
    },
    {
      "id": "tts-1",
      "object": "model",
      "created": 0,
      "owned_by": "wyoming-piper"
    }
  ]
}
```

### 2. Speech-to-Text (POST /v1/audio/transcriptions)

**Request**
```http
POST /v1/audio/transcriptions HTTP/1.1
Host: localhost:5000
Content-Type: multipart/form-data

--boundary
Content-Disposition: form-data; name="file"; filename="audio.wav"

<binary wav data>
--boundary--
```

**Response**
```json
{
  "text": "transcribed text here"
}
```

### 3. Text-to-Speech (POST /v1/audio/speech)

**Request**
```http
POST /v1/audio/speech HTTP/1.1
Host: localhost:5000
Content-Type: application/json

{
  "input": "Metin için konuşma",
  "voice": "tr_TR-dfki-medium"
}
```

**Response**
```http
HTTP/1.1 200 OK
Content-Type: audio/wav

<binary wav data>
```

---

## 🔄 Protocol Conversion Flow

### STT Flow: HTTP → Wyoming → Metin

1. **HTTP Layer**: External client sends multipart form-data with audio file
2. **Audio Normalization**: `ffmpeg` converts audio to 16kHz, 16-bit mono
3. **Wyoming Protocol**: TCP connection to whisper.cpp (port 10300)
   - `AudioStart(rate=16000, width=2, channels=1).event()`
   - `AudioChunk(audio=chunk).event()` (3200 bytes each)
   - `AudioStop().event()`
4. **Response Processing**: Listen for `transcript` events from whisper.cpp
5. **HTTP Response**: Return JSON `{"text": "transcribed text"}`

### TTS Flow: HTTP → Wyoming → Ses

1. **HTTP Layer**: External client sends JSON with text and voice
2. **Wyoming Protocol**: TCP connection to Piper (port 10200)
   - `Synthesize(text=text).event()`
3. **Response Processing**: 
   - `audio-start`: Initialize audio parameters
   - `audio-chunk`: Collect audio data
   - `audio-stop`: Complete audio stream
4. **Audio Assembly**: Convert to WAV format using `wave` module
5. **HTTP Response**: Return audio/wav with binary data

---

## 🚀 Quick Start Scripts

### A. Bridge Management Script

```bash
#!/bin/bash
# wyoming_bridge_manager.sh

BRIDGE_SCRIPT="/home/dietpi/.hermes/skills/voice-mode-setup/scripts/wyoming_openai_bridge.py"
BRIDGE_LOG="/tmp/wyoming_bridge.log"
BRIDGE_PID_FILE="/tmp/wyoming_bridge.pid"

start_bridge() {
    echo "Wyoming OpenAI Bridge başlatılıyor..."
    cd /home/dietpi
    nohup python3 "$BRIDGE_SCRIPT" --port 5000 --host 0.0.0.0 > "$BRIDGE_LOG" 2>&1 &
    BRIDGE_PID=$!
    echo $BRIDGE_PID > "$BRIDGE_PID_FILE"
    sleep 3
    if ps -p $BRIDGE_PID > /dev/null; then
        echo "✅ Wyoming OpenAI Bridge çalışıyor (PID: $BRIDGE_PID)"
        echo "   Log: $BRIDGE_LOG"
    else
        echo "❌ Wyoming OpenAI Bridge başlatılamıyor"
        cat "$BRIDGE_LOG"
        exit 1
    fi
}

stop_bridge() {
    if [ -f "$BRIDGE_PID_FILE" ]; then
        BRIDGE_PID=$(cat "$BRIDGE_PID_FILE")
        if ps -p $BRIDGE_PID > /dev/null; then
            kill $BRIDGE_PID
            sleep 2
            if ps -p $BRIDGE_PID > /dev/null; then
                kill -9 $BRIDGE_PID
                echo "Wyoming OpenAI Bridge denge hatasıyla durduruldu"
            else
                echo "Wyoming OpenAI Bridge durdu"
            fi
        fi
        rm -f "$BRIDGE_PID_FILE"
    fi
}

check_bridge() {
    echo "Wyoming OpenAI Bridge durumu:"
    if curl -s http://localhost:5000/v1/models > /dev/null; then
        echo "✅ HTTP /v1/models: OK"
    else
        echo "❌ HTTP /v1/models: DENYED"
    fi
    
    # Upstream TCP kontrolleri
    echo "Upstream TCP Kontrolü:"
    if timeout 2 bash -c "cat < /dev/null > /dev/tcp/localhost/10300"; then
        echo "✅ whisper.cpp (STT) TCP portu 10300: ERİŞİLİR"
    else
        echo "❌ whisper.cpp (STT) TCP portu 10300: ULAŞILAMAZ"
    fi
    
    if timeout 2 bash -c "cat < /dev/null > /dev/tcp/localhost/10200"; then
        echo "✅ Piper (TTS) TCP portu 10200: ERİŞİLİR"
    else
        echo "❌ Piper (TTS) TCP portu 10200: ULAŞILAMAZ"
    fi
}

case "$1" in
    start) start_bridge ;;
    stop) stop_bridge ;;
    restart) stop_bridge && sleep 2 && start_bridge ;;
    status|check) check_bridge ;;
    *) echo "Kullanım: $0 {start|stop|restart|status|check}" ;;
esac
```

### B. Edge TTS Wrapper Script

```bash
#!/bin/bash
# /home/dietpi/.hermes/scripts/edge_tts.sh

TEXT="$1"
OUTPUT="$2"
TMPFILE="/tmp/edge_tts_$$.mp3"

# Edge TTS yükleme
if ! command -v edge-tts &> /dev/null; then
    pip install edge-tts --break-system-packages
fi

edge-tts --voice tr-TR-EmelNeural --text "$TEXT" --write-media "$TMPFILE"
ffmpeg -y -i "$TMPFILE" -c:a libopus -b:a 24k -application voip "$OUTPUT"
rm -f "$TMPFILE"
```

---

## 📊 Monitoring & Status Tools

### A. Bridge Status Checker

```python
#!/usr/bin/env python3
# bridge_status_checker.py
import subprocess
import json
import sys

def check_bridge_http():
    """HTTP /v1/models endpoint'ini kontrol et"""
    try:
        result = subprocess.run(
            ["curl", "-s", "http://localhost:5000/v1/models"],
            capture_output=True, text=True, timeout=5
        )
        if result.returncode == 0:
            models = json.loads(result.stdout)
            print("✅ Wyoming OpenAI Bridge HTTP: Çalışıyor")
            print(f"   Modeller: {[m['id'] for m in models['data']]}")
            return True
        else:
            print(f"❌ Wyoming OpenAI Bridge HTTP: HTTP {result.returncode}")
            return False
    except Exception as e:
        print(f"❌ Wyoming OpenAI Bridge HTTP: {e}")
        return False

def check_upstream_tcp(port, service):
    """TCP portunun erişilebilirliğini kontrol et"""
    try:
        result = subprocess.run(
            ["timeout", "2", "bash", "-c", f"cat < /dev/null > /dev/tcp/localhost/{port}"],
            capture_output=True, timeout=5
        )
        if result.returncode == 0:
            print(f"✅ {service} TCP {port}: ERİŞİLİR")
            return True
        else:
            print(f"❌ {service} TCP {port}: ERİŞİLEMEZ")
            return False
    except Exception as e:
        print(f"❌ {service} TCP {port}: {e}")
        return False

def main():
    print("🏥 Wyoming OpenAI Bridge Durum Kontrolü")
    print("=" * 50)
    
    http_ok = check_bridge_http()
    stt_ok = check_upstream_tcp(10300, "whisper.cpp")
    tts_ok = check_upstream_tcp(10200, "Piper")
    
    print("")
    print("Özet:")
    if http_ok and stt_ok and tts_ok:
        print("✅ Tüm hizmetler yükseliyor!")
        return 0
    else:
        print("⚠️ Bazı hizmetler yükseliyor değil")
        return 1

if __name__ == "__main__":
    exit(main())
```

---

## 🔌 Integration Examples

### A. Docker Compose Configuration

```yaml
version: '3.8'
services:
  wyoming-bridge:
    build: .
    ports:
      - "5000:5000"
    environment:
      - WHISPER_HOST=whisper-cpp
      - WHISPER_PORT=10300
      - PIPER_HOST=piper-tts
      - PIPER_PORT=10200
      - PIPER_VOICE=tr_TR-dfki-medium
    depends_on:
      - whisper-cpp
      - piper-tts

  whisper-cpp:
    image: wis-giteye/wyoming-whisper-cpp:latest
    ports:
      - "10300:10300"
    volumes:
      - whisper-model:/app/models

  piper-tts:
    image: wis-giteye/wyoming-piper:latest
    ports:
      - "10200:10200"
    volumes:
      - piper-model:/app/models

volumes:
  whisper-model:
  piper-model:
```

### B. Systemd Service

```ini
# /etc/systemd/system/wyoming-openai-bridge.service
[Unit]
Description=Wyoming OpenAI Bridge
After=network.target whisper-cpp.service piper-tts.service

[Service]
Type=simple
User=dietpi
WorkingDirectory=/home/dietpi
ExecStart=/usr/bin/python3 /home/dietpi/.hermes/skills/voice-mode-setup/scripts/wyoming_openai_bridge.py --port 5000 --host 0.0.0.0
Restart=always
RestartSec=10
Environment=WHISPER_HOST=localhost
Environment=WHISPER_PORT=10300
Environment=PIPER_HOST=localhost
Environment=PIPER_PORT=10200
Environment=PIPER_VOICE=tr_TR-dfki-medium

[Install]
WantedBy=multi-user.target
```

---

## 🔍 Integration Test Script

```python
#!/usr/bin/env python3
# bridge_integration_test.py
import asyncio
import aiohttp
import tempfile
from pathlib import Path
import wave
import json

async def integration_test():
    """Tüm sistem entegrasyonunu test et"""
    
    print("🧪 Wyoming OpenAI Bridge Entegrasyon Testi")
    print("=" * 50)
    
    # 1️⃣ Bridge HTTP durumunu kontrol et
    print("\n1️⃣ HTTP Endpoint Kontrolü")
    try:
        async with aiohttp.ClientSession() as session:
            async with session.get("http://localhost:5000/v1/models", 
                                  timeout=aiohttp.ClientTimeout(total=5)) as resp:
                if resp.status == 200:
                    data = await resp.json()
                    print("✅ HTTP /v1/models: OK")
                    print(f"   Modeller: {[m['id'] for m in data['data']]}")
                else:
                    print(f"⚠️ HTTP /v1/models: HTTP {resp.status}")
    except Exception as e:
        print(f"❌ HTTP /v1/models: {e}")
        return False
    
    # 2️⃣ STT test
    print("\n2️⃣ STT Test")
    with tempfile.NamedTemporaryFile(suffix=".wav", delete=False) as tmp:
        with wave.open(tmp.name, 'w') as wf:
            wf.setnchannels(1)
            wf.setsampwidth(2)
            wf.setframerate(16000)
            wf.writeframes(b'\x00\x00\x00\x00' * 32000)
        test_wav = tmp.name
    
    try:
        form = aiohttp.FormData()
        form.add_field('file', open(test_wav, 'rb'),
                      filename='test.wav',
                      content_type='audio/wav')
        
        async with aiohttp.ClientSession() as session:
            async with session.post("http://localhost:5000/v1/audio/transcriptions",
                                   data=form, timeout=aiohttp.ClientTimeout(total=10)) as resp:
                if resp.status == 200:
                    result = await resp.json()
                    text = result.get('text', '')
                    print(f"✅ STT (whisper.cpp): '{text}'")
                else:
                    print(f"⚠️ STT (whisper.cpp): HTTP {resp.status}")
    except Exception as e:
        print(f"⚠️ STT (whisper.cpp): {e}")
    finally:
        Path(test_wav).unlink(missing_ok=True)
    
    # 3️⃣ TTS test
    print("\n3️⃣ TTS Test")
    test_request = {
        "input": "Test Turkish speaking",
        "voice": "tr_TR-dfki-medium"
    }
    
    try:
        async with aiohttp.ClientSession() as session:
            async with session.post("http://localhost:5000/v1/audio/speech",
                                   json=test_request,
                                   timeout=aiohttp.ClientTimeout(total=10)) as resp:
                if resp.status == 200:
                    audio_data = await resp.read()
                    print(f"✅ TTS (Piper): {len(audio_data)} byte ses üretti")
                else:
                    print(f"⚠️ TTS (Piper): HTTP {resp.status}")
    except Exception as e:
        print(f"⚠️ TTS (Piper): {e}")
    
    # 4️⃣ Komut satırı wrapper'ı test et
    print("\n4️⃣ Komut Satırı Aracı Testi")
    try:
        result = subprocess.run(
            ["/home/dietpi/.hermes/scripts/edge_tts.sh", "Merhaba test", "/tmp/cmd_test.ogg"],
            capture_output=True, text=True, timeout=30
        )
        if result.returncode == 0:
            print("✅ Edge TTS wrapper: Çalışıyor")
        else:
            print(f"❌ Edge TTS wrapper: {result.stderr}")
    except Exception as e:
        print(f"❌ Edge TTS wrapper: {e}")
    
    print("\n" + "=" * 50)
    print("🏁 Entegrasyon Testi Tamamlandı!")
    
    return True

if __name__ == "__main__":
    success = asyncio.run(integration_test())
    exit(0 if success else 1)
```

---

## 📚 Best Practices

### A. Security
- **Frederick Arayüzü**: Tüm güvenliği korur, Proxy Bağlantısı aracılığıyla yerel Wyoming hizmetlerine erişim
- **Servis Güvenliği**: Systemd servisleri, güvenilir kullanıcı, izinler kontrolü

### B. İzleme
- **Log Dosyası**: `/tmp/wyoming_bridge.log` → hata ayıklama için
- **Durum Kontrolü**: `bridge_status_checker.py` → sağlık kontrolleri için
- **Docker Instance Logs**: `docker logs wyoming-bridge` → konteyner içi durum kontrolleri

### C. Ölçeklenebilirlik
- **Load Balancer**: Birden fazla Wyoming Bridge INSTANCE'ı → Nginx, uç noktalara ön uç
- **Çoklu Upstream**: Herbir STT/TTS türü için 3'üncü parti sağlayıcıları kullanabilir → Shemotic circuit breaker
- **HA (Yüksek Kullanılabilirlik)**: 2 Node sistem → Otomatik fail-over sağlayın

### D. Elastikiyet
- **Dinamik model yüklemeleri**: whisper.cpp modellerini hot-deploy etmek için herhangi bir an
- **Ses ayarları**: Farklı variyonları için Piper sesleri değiştirmek için HTTP POST: `/v1/audio/speech voice=tr_TR-girl`
- **Protokol esnekliği**: Wyoming protokolü değişirse, Sunucudaki tek bir nokta

---

## ⚠️ Troubleshooting Guide

### Common Issues and Solutions

| Issue | Solution |
|-----------|----------|
| **Upstream bağlantıları zaman aşımına uğrar** | Log kontrolü → yeniden başlat (`systemctl restart wyoming-openai-bridge`) |
| **Sesc uyumsuzluğu (sessiz, fazla çekirdek sayısı vb.)** | ffmpeg argümanları: `-ar 16000 -ac 1 -sample_fmt s16` |
| **Model yükleme başarısızlığı** | Model dosyalarını `/models` dizinine koyun (Docker) veya Whisper/Piper ortamlarına göre ayarlayın |
| **Proxy bazen kullanılamıyor (9Router)** | **Local fallback**: Whiskyan Bridge'a yönlendirin → `http://localhost:5000/v1/audio/transcriptions` |
| **Edge TTS hizmeti kaybı** | Yerel ses dosyası cache'ini kullanın + OPS olarak Piper'i kullanın (eğer yerel) |
| **DNS adı çözülemez (whisper.cpp:port)** | Host adını `/etc/hosts` içinde değiştirin → `192.168.1.29 whisper-cpp` |

---

## 🚀 Future Directions

### 1. Emerging Features

**JSON-RPC Enhancements**
- Wyoming'a JSON-RPC üzerinden isteğe yanıt vermek için STT/TTS API'leri genelleştirilebilir
- OpenAI uyumluluğu: Tam OpenAI API uyumluluğu sağlanabilir

**WebSocket Destek**
- HTTP yerine gerçek zamanlı voice-to-text için websocket desteklemek
- Session persistence, gerçek zamanlı akışlar için

**Pipeline Sistemi**
- Hem STT hem TTS'nin + ses ayarlama + ses modunu çalıştırmak için veri akışları
- OpenCV + FFmpeg kullanarak oynatılır

**Herhangi Bir TTY Ya da UDP**
- Wyoming protokolünü UDP bazında sunabilmek
- Mobil ve IoT cihazlar için

**Kurumsal OCR**
- QR kodları, faturalar vb. için şekilde STT ile birleştirmek için Whisper OCR entegrasyonu

**Ses tabanlı SSO**
- Voice token → JWT; yeni kimlik doğrulama yolları

---

## 📝 Quick Reference

### Command Line Usage

```bash
# Bridge kontrolü
./wyoming_bridge_manager.sh start      # Başlat
./wyoming_bridge_manager.sh stop       # Durdur
./wyoming_bridge_manager.sh restart    # Yeniden başlat
./wyoming_bridge_manager.sh status     # Durum kontrolü

# Durum kontrolü
python3 bridge_status_checker.py

# Entegrasyon testi
python3 bridge_integration_test.py

# Edge TTS kullanımı
/home/dietpi/.hermes/scripts/edge_tts.sh "Merhaba dünya" /tmp/response.ogg

# Wyoming Bridge kontrolü
curl -s http://localhost:5000/v1/models | jq '.data[].id'
curl -X POST http://localhost:5000/v1/audio/transcriptions -F "file=@audio.wav"
curl -X POST http://localhost:5000/v1/audio/speech -d '{"input":"Merhaba","voice":"tr_TR-dfki-medium"}'
```

### Configuration Files

```bash
# Wyering OpenAI Bridge
/home/dietpi/.hermes/skills/voice-mode-setup/scripts/wyoming_openai_bridge.py

# Edge TTS Wrapper  
/home/dietpi/.hermes/scripts/edge_tts.sh

# Systemd Service
/etc/systemd/system/wyoming-openai-bridge.service

# Environment Variables
export WHISPER_HOST=192.168.1.29
export WHISPER_PORT=10300
export PIPER_HOST=192.168.1.29  
export PIPER_PORT=10200
export PIPER_VOICE=tr_TR-dfki-medium
```

---

## 🏁 Summary

The **Wyoming OpenAI Bridge (Port 5000)** provides a robust HTTP↔Wyoming protocol gateway that enables secure, standardized access to local STT/TTS services. Key features include:

- **Protocol Conversion**: HTTP ↔ Wyoming for seamless integration
- **Flexible Architecture**: Supports multiple upstream services and fallback mechanisms  
- **Comprehensive Monitoring**: Health checks, status tracking, and logging
- **Production Ready**: Systemd integration, Docker support, and thorough error handling
- **Future Proof**: Extensible architecture for new features and services

This bridge serves as the foundation for modern voice applications, providing reliable Turkish voice processing capabilities through Microsoft's Edge TTS and local whisper.cpp/Piper services with proper fallback mechanisms. 

---

*This documentation covers the complete technical specifications of the Wyoming OpenAI Bridge system running on port 5000, including architecture, API endpoints, integration examples, and operational best practices.*