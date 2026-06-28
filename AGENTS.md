# AGENTS.md - Bilgi Çıkarma Protokolü

Bu dosya, projedeki otonom ajanların çalışma prensiplerini ve bilgi yönetim protokollerini tanımlar.

## Bilgi Çıkarma Protokolü

1.  **Gözlem:** Her kullanıcı isteğinde ve kod incelemesinde yeni bilgiler (teknik kısıtlar, tercihler, kararlar) aranır.
2.  **Kayıt:** Yeni bir bilgi tespit edildiğinde, kullanıcıya sormadan ilgili dokümana (PROJECT_BRIEF.md, ROADMAP.md vb.) eklenir.
3.  **Doğrulama:** Eğer yeni bilgi mevcut kararlarla çelişiyorsa, işlem yapmadan önce kullanıcıdan onay istenir.
4.  **Güncelleme:** Her görev sonunda PROGRESS.md, FILE_INDEX.md ve AGENTS.md hiyerarşik haritası güncellenir. Yeni bir dosya eklendiğinde veya bir dosyanın görevi değiştiğinde "Proje Mimari Haritası" tablosu derhal revize edilmelidir.

## Teknik Kısıtlar (Kesin Kurallar)

*   **API Seviyesi:** Sadece API 29 (Android 10 - AAOS) uyumlu kod yazılacak.
*   **Ağ Yapılandırması (DONDURULDU):** Aşağıdaki IP ve Port bilgileri KESİNLİKLE değiştirilemez (Kullanıcı onayı olmadan):
    *   `Server IP`: `100.95.239.119` (Hermes Gateway)
    *   `Hermes/STT Port`: `8642`
    *   `TTS Port`: `10201`
    *   `Protokol`: HTTP (Tailscale üzerinden proxy yapıldığı için)
*   **VPN Yönlendirme:** Sadece `100.95.239.119` (Hermes Gateway) adresi VPN'e zorlanır. Groq ve Edge TTS gibi servisler normal internet üzerinden çıkar.
*   **Disk Önceliği:** Kodlar önce fiziksel dosyaya yazılacak.
*   **Onay Mekanizması:** Gradle/ADB işlemleri için kullanıcıdan "EVET" beklenecek.
*   **Hızlı Yükleme (Hot Swap):** Sürekli tam build yapmak veya tam APK yüklemek (`adb install`) yerine, *sadece değişen dosyaları* yükleyerek işleri hızlandırmak esastır. Mümkün olan her durumda "Apply Changes" (Hot Swap) mantığıyla ilerlenmeli, tam APK gönderiminden kaçınılmalıdır.
*   **Hata Analizi:** Logcat çıktıları üzerinden satır numarası ile analiz yapılacak. Tek seferde 1 dakikadan uzun süreli log kaydı (logcat) kesinlikle alınmayacaktır.

## Proje Mimari Haritası (Hızlı Navigasyon)

Ajanlar, her seferinde tüm dosyaları taramak yerine aşağıdaki tabloya göre ilgili dosyaya odaklanmalıdır:

| Katman | Dosya | Girdi (Input) | Çıktı (Output) | Görev |
| :--- | :--- | :--- | :--- | :--- |
| **Global** | `AssistantApplication.kt` | Ayarlar, SharedPreferences | StateFlow (IP, Modlar) | Uygulama hafızası ve ayarlar. |
| **Araç** | `VehicleController.kt` | dumpsys, MQTT Sim | `VehicleState`, MQTT Pub | VHAL verisi okuma/enjeksiyonu. |
| **AI** | `AgentManager.kt` | Ses Metni, Araç Context | AI Yanıtı, Tool Calls | AI karar motoru ve mod yönetimi. |
| **Haberleşme**| `MqttPublisher.kt` | `VehicleState` | JSON (MQTT) | Araç verilerini dışa aktarma. |
| **Aksiyon** | `ActionExecutor.kt` | Fonksiyon Adı + Args | Shell Komutları | AI kararlarını araca uygular (VPN ve Saat dahil). |
| **Ses Algılama** | `WakeWordManager.kt` | Mikrofon (PCM) | Dinleme Tetikleyici | "Hey Omoda" algılayıcısı. |
| **STT** | `SttManager.kt` | Kayıt (M4A/RAW) | Ses Dosyası Yolu | Kayıt yönetimi. |
| **TTS Katmanı** | `TTSManager.kt` (ve Yöneticileri)| Metin, SSML Ayarları | Ses Çıkışı (AudioTrack) | Edge, Hermes veya Yerel TTS motoru seçimi. |
| **Servis** | `VoiceAssistantService.kt` | Sistem Sinyalleri | Servis Lifecycle | Arka plan yönetimi. |


## Ag Mimarisi (28 Haziran 2026)

### 4 Kural (Degismez)

| # | Servis | Baglanti | Yol |
|---|--------|----------|-----|
| 1 | Hermes API | 100.95.239.119:8642 | Tailscale (VPN) |
| 2 | STT (Groq) | api.groq.com/openai/v1 | VPN disi direkt |
| 3 | TTS (Edge) | Hermes API -> Edge TTS (LAN) | VPN disi |
| 4 | VPN kopunca | Otomatik dene + bildirim goster | - |

### STT Modlari

- **BULUT** = Groq STT (direkt api.groq.com) + Edge TTS (Hermes API uzerinden, Edge Online web socket)
  - Varsayilan mod. VPN disi calisir.
  - sttMode = BULUT

- **HERMES** = Hermes STT (Tailscale uzerinden) + Hermes TTS (Tailscale uzerinden)
  - Gelecekte kullanilacak. Hermes kendi STT/TTS sunucusu hazir olunca gecilecek.
  - sttMode = HERMES

### IP Yapisi

| Cihaz | LAN IP | Tailscale IP | Gorevi |
|-------|--------|-------------|--------|
| DietPi (Hermes) | 192.168.1.14 | 100.95.239.119 | Hermes API, Edge TTS proxy, Mosquitto MQTT |
| Omoda 5 (Arac) | - | 100.121.172.79 | Android AAOS, Launcher uygulamasi |

### Trafik Akisi

Omoda 5 (Arac)
  |
  +-- HERMES_API ----> Tailscale ----> 100.95.239.119:8642
  |
  +-- STT (Groq) ----> direkt --------> api.groq.com
  |
  +-- TTS -----------> Tailscale ----> Hermes API (100.95.239.119:8642)
                                         |
                                         +-- Edge TTS (LAN, VPN disi)
                                             192.168.1.14:10201

### VPN Kopma Davranisi (Kural 4)

- AssistantController periyodik checkConnection() ile baglantiyi izler
- Baglanti kopunca: hermesConnectionStatus = DISCONNECTED, ekranda bildirim
- Otomatik yeniden baglanma dongusu baslar
- Baglanti duzelince CONNECTED + bildirim
Proje yapısını ASLA değiştirme