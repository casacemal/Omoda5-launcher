# Mikrofon → İş Akışı (Workflow)

```
Kullanıcı MIC tuşuna basar
         │
         ▼
HomeScreen.kt
  context.sendBroadcast("com.omoda.assistant.START_LISTENING")
         │
         ▼
VoiceAssistantService.kt
  voiceCommandReceiver.onReceive()
    → assistantController.startListening()
         │
         ▼
AssistantController.startListening()           [AssistantController.kt:175]
         │
         ├── isRadioMode == true? ──[Şu an FALSE]──→ startRadioMode() ← ESKİ DAVRANIŞ
         │                                              WebSocket telsiz
         │
         └── isRadioMode == false? ──→ sttManager.startRecording()
                                          AudioRecord → WAV dosyası
                                          (16kHz, 16-bit, mono)
                                                │
                                                ▼
          timeout (8sn) veya kullanici durdurur
                                                │
                                                ▼
          handleRecordingFinished(audioPath)    [AssistantController.kt:267]
                                                │
                                                ▼
          agentManager.processVoiceInput(audioFile)  [AgentManager.kt:142]
                                                │
                    ┌───────────────────────────┼───────────────────────────┐
                    ▼                           ▼                           ▼
          hermesConnectionStatus       hasInternet           İkisi de yoksa
              == "CONNECTED"         == true                    │
                    │                     │                      ▼
                    └─────────┬───────────┘          "Sunucuya erişemiyorum"
                              ▼                         Lokal komutlar
          sttClient.transcribe(audioFile)
          POST /v1/audio/transcriptions    [HermesClient.kt:76]
          Authorization: Bearer NINEROUTER_API_KEY
          192.168.1.14:20128
                              │
                    ┌─────────┴─────────┐
                    ▼                   ▼
                 success              fail
                    │                   │
                    ▼                   ▼
          processTextInput(text)   "Sunucuya bağlanılamadı"
                    │
                    ▼
          commandRouter.analyzeAndExecute(text)
                    │
          ┌─────────┼─────────┐
          ▼         ▼         ▼
       Success   Blocked   NotMatched
          │         │         │
          │         │         ▼
          │         │    sendChatSse(text)    [AgentManager.kt:255]
          │         │         │
          │         │         ├── createSessionSync() → 401 (9Router desteklemez)
          │         │         │       sessionCreationFailed = true
          │         │         │
          │         │         ├── OpenAI fallback:
          │         │         │   POST /v1/chat/completions
          │         │         │   Authorization: Bearer NINEROUTER_API_KEY
          │         │         │   stream: true
          │         │         │
          │         │         ▼
          │         │    SSE Streaming Yanıtı
          │         │         │
          │         │    ┌────┴──────────────────────┐
          │         │    ▼                           ▼
          │         │  assistant.delta / null     tool_calls
          │         │  (içerik chunk)            (araç çağrısı)
          │         │       │                        │
          │         │       ▼                        ▼
          │         │  Cümle tamponu           CommandFirewall
          │         │       │                  validateAndExecute()
          │         │       ▼
          │         │  TTS (HermesTTS → Edge TTS)
          │         │       │
          │         │       ▼
          │         │  Hoparlörden ses
          │         │
          └─────────┴──→ speak(response) → TTS
```

## Hermes Bağlantı Sorunu Analizi

### Neden Hermes'e Ulaşılamıyor?

```
İstemci (Uygulama)                     Sunucu (192.168.1.14)
       │                                        │
       │  PORT 8642 (Hermes)                    │
       ├─────────────────────────────► CLOSED ──┤  ← ❌ Bağlantı reddedildi
       │                                        │
       │  PORT 20128 (9Router)                  │
       ├─────────────────────────────► OPEN ────┤
       │  Header: Authorization: Bearer         │
       │    HERMES_API_KEY                      │
       │    "cdc682fd..."                       │
       │  Response: 401 / "API key required"    │  ← ❌ Key geçersiz
       │                                        │
       ├─────────────────────────────► OPEN ────┤
       │  Header: Authorization: Bearer         │
       │    NINEROUTER_API_KEY                  │
       │    "sk-b6f4d3879..."                   │
       │  Response: 200 OK, model listesi       │  ← ✅ Çalışıyor
       │                                        │
```

### Kök Neden

| Öğe | Değer | Durum |
|-----|-------|-------|
| **Hermes Sunucu** | `192.168.1.14:8642` | **PORT KAPALI** — Servis çalışmıyor |
| **9Router Gateway** | `192.168.1.14:20128` | **PORT AÇIK** — Çalışıyor |
| **HERMES_API_KEY** | `cdc682fdab...` | **Geçersiz** (8642 kapalı, 20128 kabul etmiyor) |
| **NINEROUTER_API_KEY** | `sk-b6f4d3879...` | **Geçerli** (20128'de çalışıyor) |
| **Session API** | `/api/sessions` | **401** (9Router desteklemiyor) |
| **Chat API** | `/v1/chat/completions` | **200** (OpenAI format, stream ile) |

### Yapılan Düzeltmeler

1. **`hermesClient` → `NINEROUTER_API_KEY`** — bağlantı kontrolü artık 200 OK döner
2. **OpenAI fallback** — session yoksa `/v1/chat/completions` + stream kullanılır
3. **`sessionCreationFailed` flag** — başarısız session denemesi tekrarlanmaz
4. **Port config** — port değeri artık config'den okunur (sabit 8642 değil)
5. **Settings port alanları** — IP yanında port da girilebilir

### Yapılması Gereken

Hermes sunucusu (`192.168.1.14:8642`) ayağa kalkana kadar:
- `checkConnection()` → NINEROUTER_API_KEY ile çalışır (✅ halihazırda yapıldı)
- Session API → atlanır, direkt OpenAI chat completions kullanılır (✅ yapıldı)
- Session-based kalıcı hafıza → kullanılamaz (her chat stateless)

Hermes sunucusu ayağa kalkınca:
- Port 8642'ye geçiş yapılır
- `HERMES_API_KEY` kullanılır
- `POST /api/sessions` → `session_id` → kalıcı hafızalı diyalog
- `POST /api/sessions/{id}/chat/stream` → SSE akışı
