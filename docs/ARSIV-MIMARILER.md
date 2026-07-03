# Omoda Assist — Mimari Arşivi

## ARŞİV v1 — 27.06.2026 (Eski Mimari)

> Referans: git commit `e2d8e54` — `5c27f61`

### Ağ Yapısı (Eski)
| Servis | Adres | Açıklama |
|--------|-------|----------|
| Hermes Chat API | `homeassistant.tailnet-4f03.ts.net:8642` | Chat completions |
| STT (Groq) | `api.groq.com/openai/v1` | Doğrudan Groq API key ile |
| TTS (Edge) | Hermes proxy → Edge TTS | Hermes üstünden |
| MQTT | `homeassistant.tailnet-4f03.ts.net:1883` | Araç telemetri |

### API Anahtarları (Eski)
- `HERMES_API_KEY` = Hermes sunucu key'i (hash)
- `NINEROUTER_API_KEY` = `sk-b6f4d3879cc4a442-2nggwr-6d81d031`
- `groqApiKey` = `gsk_mq3n...` (Groq doğrudan)
- `GROQ_STT_MODEL` = `whisper-large-v3`

### Chat Sistemi (Eski)
- **Blocking HTTP** → `newCall.enqueue()` → tüm yanıt bitince TTS
- Ortalama gecikme: **3-5 saniye**
- SSE yok
- Tool calls: tam yanıt parse edilir

### Mod Sistemi (Eski)
| Mod | Açıklama |
|-----|----------|
| ASISTANT | Kısa araç yanıtları |
| CHAT | Sohbet modu |
| MONITOR | Her 5sn telemetri → LLM anomali analizi |

### Önemli Kararlar
- 8642 port Chat, 20128 port STT/TTS için ayrıydı
- Groq API key ve Hermes API key birbirinden bağımsız tutuluyordu
- `analyzeTelemetryForAnomaly()`: Her 5sn araç verisini LLM'e gönderiyordu

---

## ARŞİV v2 — 30.06.2026 (9Router Tek Endpoint + SSE)

> Referans: git commit `012ad93` — v152

### Ağ Yapısı (v2 — Şu An Aktif Değil, Geçiş Noktası)
| Servis | Adres | Açıklama |
|--------|-------|----------|
| Tüm API (Chat+STT) | `homeassistant.tailnet-4f03.ts.net:20128` | 9router proxy tek adres |
| TTS (Edge) | Edge Online TTS | Değişmedi |
| MQTT | `homeassistant.tailnet-4f03.ts.net:1883` | Değişmedi |

### API Anahtarları (v2)
- Tek key: `sk-b6f4d3879cc4a442-vwd4xl-8ad79a58`
- `groqApiKey` StateFlow kaldırıldı
- Chat model: `asist_genel`
- STT model: `groq/whisper-large-v3` (proxy üstünden)

### Chat Sistemi (v2)
- **SSE Streaming** → EventSource → chunk akışı
- `reasoning_content` chunk'ları filtreleniyor
- `tool_calls` delta'ları birleştiriliyor → CommandFirewall
- Cümle tamponu: `.?!` veya 40 char → TTS flush
- Tahmini ilk yanıt gecikmesi: **~500ms**

### Mod Sistemi (v2)
| Mod | Simge | Renk | Açıklama |
|-----|-------|------|----------|
| ASISTANT | 🚗 | Yeşil (#69E2D3) | Araç odaklı, kısa yanıtlar |
| CHAT | 💬 | Sarı (#F3B14B) | Kesintisiz sohbet, detaylı |

- MONITOR modu kaldırıldı (MQTT telemetri bu işi yapıyor)
- `analyzeTelemetryForAnomaly()` kaldırıldı

### Değiştirilen Dosyalar
- `AgentManager.kt` — tamamen yeniden yazıldı (SSE)
- `NetworkModule.kt` — `sseClient` eklendi
- `HermesClient.kt` — STT metod birleştirildi
- `AssistantApplication.kt` — tek key, tek adres
- `HomeScreen.kt` — 2 mod UI, MONITOR kaldırıldı
