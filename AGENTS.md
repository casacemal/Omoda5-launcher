# AGENTS.md - Bilgi Çıkarma Protokolü

Bu dosya, projedeki otonom ajanların çalışma prensiplerini ve bilgi yönetim protokollerini tanımlar.

## Bilgi Çıkarma Protokolü

1.  **Gözlem:** Her kullanıcı isteğinde ve kod incelemesinde yeni bilgiler (teknik kısıtlar, tercihler, kararlar) aranır.
2.  **Kayıt:** Yeni bir bilgi tespit edildiğinde, kullanıcıya sormadan ilgili dokümana (PROJECT_BRIEF.md, ROADMAP.md vb.) eklenir.
3.  **Doğrulama:** Eğer yeni bilgi mevcut kararlarla çelişiyorsa, işlem yapmadan önce kullanıcıdan onay istenir.
4.  **Güncelleme:** Her görev sonunda PROGRESS.md, FILE_INDEX.md ve AGENTS.md hiyerarşik haritası güncellenir. Yeni bir dosya eklendiğinde veya bir dosyanın görevi değiştiğinde "Proje Mimari Haritası" tablosu derhal revize edilmelidir.

## Teknik Kısıtlar (Kesin Kurallar)

*   **API Seviyesi:** Sadece API 29 (Android 10 - AAOS) uyumlu kod yazılacak.
*   **Disk Önceliği:** Kodlar önce fiziksel dosyaya yazılacak.
*   **Onay Mekanizması:** Gradle/ADB işlemleri için kullanıcıdan "EVET" beklenecek.
*   **Hızlı Yükleme:** Sürekli tam build yapmak yerine, sadece kod değişikliklerini uygulamak için (mümkünse) "Apply Changes" (CTRL+F10) tercih edilecek.
*   **Hata Analizi:** Logcat çıktıları üzerinden satır numarası ile analiz yapılacak.

## Proje Mimari Haritası (Hızlı Navigasyon)

Ajanlar, her seferinde tüm dosyaları taramak yerine aşağıdaki tabloya göre ilgili dosyaya odaklanmalıdır:

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

