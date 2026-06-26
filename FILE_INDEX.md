# FILE_INDEX.md - Mimari Harita ve Dosya Rehberi

Aşağıdaki tablo, projedeki dosyaların sorumluluklarını ve veri akışını özetler:

| Katman | Dosya | Girdi (Input) | Çıktı (Output) | Görev |
| :--- | :--- | :--- | :--- | :--- |
| **Global** | `AssistantApplication.kt` | Ayarlar, SharedPreferences | StateFlow (IP, Modlar) | Uygulama hafızası ve ayarlar. |
| **Araç** | `VehicleController.kt` | dumpsys, MQTT Sim | `VehicleState`, MQTT Pub | VHAL verisi okuma/enjeksiyonu. |
| **AI** | `AgentManager.kt` | Ses Metni, Araç Context | AI Yanıtı, Tool Calls | AI karar motoru ve mod yönetimi. |
| **Haberleşme**| `MqttPublisher.kt` | `VehicleState` | JSON (MQTT) | Araç verilerini dışa aktarma. |
| **Aksiyon** | `ActionExecutor.kt` | Fonksiyon Adı + Args | Shell Komutları | AI kararlarını araca uygular. |
| **Ses** | `WakeWordManager.kt` | Mikrofon (PCM) | Dinleme Tetikleyici | "Hey Omoda" algılayıcısı. |
| **STT** | `SttManager.kt` | Kayıt (M4A/RAW) | Ses Dosyası Yolu | Kayıt yönetimi. |
| **Servis** | `VoiceAssistantService.kt` | Sistem Sinyalleri | Servis Lifecycle | Arka plan yönetimi. |

## Ana Klasörler
*   `/app`: Ana uygulama modülü.
*   `/app/src/main/java/com/omoda/lanc/vehicle`: Araç telemetri ve kontrol katmanı.
*   `/app/src/main/java/com/omoda/lanc/core`: EventBus ve temel sistem bileşenleri.
*   `/app/src/main/java/com/omoda/lanc/service`: Arka plan servisleri (VoiceAssistant, Hermes, MediaListener).
*   `/app/src/main/java/com/omoda/lanc/overlay`: Sesli asistan görsel geri bildirim arayüzü.


## Kritik Dosyalar
*   `MainActivity.kt`: Ana giriş noktası, UI yönetimi ve ADB görevleri. (GÜNCELLENDİ: Saat/Tarih gösterimi ve dinamik ekran uyumluluğu eklendi.)
*   `SettingsScreen.kt`: Gelişmiş ayarlar ekranı. (GÜNCELLENDİ: Sidebars ve Tailscale/TSNet ayarları eklendi.)
*   `AssistantApplication.kt`: Global state yönetimi. (GÜNCELLENDİ: Tailscale/TSNet altyapı verileri eklendi.)
*   `AgentManager.kt`: AI bağlam yönetimi ve LLM iletişimi. (GÜNCELLENDİ: GPS, Uygulamalar ve Cihaz bilgileri eklendi.)
*   `VehicleController.kt`: Hibrit telemetri ve batch okuma motoru.
*   `MediaNotificationListener.kt`: Medya verilerini yakalayan sistem servisi.
*   `MqttPublisher.kt`: MQTT Köprü ve Telemetri yayıncı sınıfı.
*   `AssistantOverlayUI.kt`: Compose tabanlı asistan görsel katmanı.
*   `DrivingAnalysisEngine.kt`: Sürüş verilerini analiz eden ve sürüş sonu özeti hazırlayan motor.
