# Omoda Assist V2 — Ağ Mimarisi

## 4 Kural (Değişmez)

| # | Servis | Bağlantı | Yol |
|---|--------|----------|-----|
| 1 | Hermes API | 100.95.239.119:8642 | Tailscale (VPN) |
| 2 | STT (Groq) | api.groq.com/openai/v1 | VPN dışı direkt |
| 3 | TTS (Edge) | Hermes API -> Edge TTS (LAN) | VPN dışı |
| 4 | VPN kopunca | Otomatik dene + bildirim göster | - |

## STT Modları

| Mod | STT Sağlayıcı | TTS Sağlayıcı | Ne Zaman Kullanılır |
|-----|---------------|---------------|-------------------|
| BULUT | Groq (api.groq.com, direkt) | Edge Online (Hermes API üstünden) | Varsayılan. VPN dışı çalışır |
| HERMES | Hermes STT (Tailscale üstünden) | Hermes TTS (Tailscale üstünden) | Gelecekte. Hermes'in kendi STT/TTS servisleri hazır olunca |

- **BULUT** = Groq STT + Edge TTS (mevcut, kararlı)
- **HERMES** = Hermes STT + Hermes TTS (ileriye dönük, şu an kullanılmıyor)

## IP Yapısı

| Cihaz | LAN IP | Tailscale IP | Görevi |
|-------|--------|-------------|--------|
| DietPi (Hermes) | 192.168.1.14 | 100.95.239.119 | Hermes API, Edge TTS proxy, Mosquitto MQTT |
| Omoda 5 (Araç) | - | 100.121.172.79 | Android AAOS, Launcher uygulaması |

## Trafik Akışı

Omoda 5 (Araç)
  |
  +-- HERMES_API ----> Tailscale ----> 100.95.239.119:8642
  |
  +-- STT (Groq) ----> direkt --------> api.groq.com
  |
  +-- TTS -----------> Tailscale ----> Hermes API (100.95.239.119:8642)
                                         |
                                         +-- Edge TTS (LAN, VPN dışı)
                                             192.168.1.14:10201

## VPN Kopma Davranışı (Kural 4)

- AssistantController periyodik checkConnection() ile bağlantıyı izler
- Bağlantı kopunca:
  1. hermesConnectionStatus = "DISCONNECTED"
  2. Ekranda bildirim gösterilir
  3. Otomatik yeniden bağlanma döngüsü başlar
  4. Bağlantı düzelince "CONNECTED" + bildirim
