# Omoda Assist V2 — Yeni Ağ Mimarisi (v152+)

## 1. Ağ Kuralları ve Endpointler

Tüm servisler tek bir sunucu IP ve portu üzerinden birleştirilmiştir. Ağ geçidi olarak 9Router proxy kullanılmaktadır.

| # | Servis | Adres | Protokol | Açıklama |
|---|--------|----------|----------|----------|
| 1 | **Tüm AI API (LLM + STT)** | `http://homeassistant.tailnet-4f03.ts.net:20128/v1` | HTTP (Bearer Token) | Tek yetkili Tailscale adresi |
| 2 | **TTS (Edge Online)** | WebSocket (Doğrudan Cihazdan) | WS / WSS | tr-TR-EmelNeural sesi ile |
| 3 | **MQTT Telemetri** | `tcp://homeassistant.tailnet-4f03.ts.net:1883` | TCP (MQTT) | `omoda/telemetri` konusu |
| 4 | **Yerel Ağ Yedekleri** | Sherpa & Piper (Pasif/Arşiv) | Local | İnternet yoksa devreye girer |

- **API Key:** `sk-b6f4d3879cc4a442-vwd4xl-8ad79a58` (Hem Chat hem STT için ortaktır.)

---

## 2. Çalışma Modları

Uygulama arayüzünden seçilebilen iki ana mod mevcuttur:

1.  **🚗 ARAÇ ASİSTAN (ASISTANT):**
    - Kısa, net ve direkt yanıtlar verir.
    - Araç sensör verilerini (hız, klima, vites vb.) sistem bağlamı olarak kullanır.
    - Wake word ("Hey Omoda") sonrası tek turluk diyalog kurar.
    - Model: `asist_genel`

2.  **💬 KESİNTİSİZ SOHBET (CHAT):**
    - Kesintisiz ve daha derin diyaloglar kurar.
    - Model: `asist_genel` (veya sunucu tarafındaki diğer sohbet modelleri).
    - Yol arkadaşı gibi davranır.

*Not: Eski `MONITOR` modu kaldırılmıştır. Telemetri analizi arka planda MQTT üzerinden otomatik yürütülmektedir.*

---

## 3. Trafik Akış Şeması

```
[ Omoda 5 / Mobil Cihaz ]
       │
       ├── (Ses Kaydı) ───► STT ──► http://homeassistant.tailnet-4f03.ts.net:20128/v1/audio/transcriptions
       │                                                                  │ (Model: groq/whisper-large-v3-turbo)
       │                                                                  ▼
       ├── (Metin) ──────► LLM ──► http://homeassistant.tailnet-4f03.ts.net:20128/v1/chat/completions (stream: true)
       │                                                                  │
       │     ◄── [SSE Stream Chunks] ─────────────────────────────────────┘
       │            │
       │            ├──► [Cümle Tamponu] ──► Edge TTS (WebSocket) ──► Hoparlör (AudioTrack)
       │            │
       │            └──► [tool_calls] ──► CommandFirewall (Yerel Kontrol)
       │                                         │
       │                                  [Whitelist & Sınır Kontrolü]
       │                                         │
       │                                         ▼ (Onaylandıysa)
       │                                   ActionExecutor (Shell / VHAL Komutu)
       │
       └── (Periyodik Veri) ──► MQTT ──► homeassistant.tailnet-4f03.ts.net:1883 (omoda/telemetri)
```

---

## 4. SSE (Server-Sent Events) ve TTS Akış Yönetimi

1.  **Gecikme Azaltma:**
    - LLM yanıtı bütünüyle beklenmez. `stream=true` ile gelen her kelime (chunk) takip edilir.
    - `reasoning_content` (Deepseek düşünme adımları) algılanarak filtrelenir ve seslendirilmez.
    - Gelen metin biriktirilir. Cümle sonu karakterleri (`.`, `?`, `!`) veya `\n` algılandığında veya tampon 40 karaktere ulaştığında hemen Edge TTS'e gönderilerek seslendirilir.
    - Bu sayede ilk kelimenin duyulma süresi **~500ms** seviyesindedir.

2.  **Tool Calls (Aksiyon) İşleme:**
    - SSE akışı sırasında gelen `tool_calls` delta paketleri arka planda birleştirilir.
    - Akış tamamlandığında (`[DONE]` veya `finish_reason=tool_calls`), birleştirilen komut yerel `CommandFirewall` kontrolüne gönderilir.
    - Firewall onaylarsa `ActionExecutor` üzerinden araçta uygulanır.
