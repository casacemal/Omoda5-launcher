# AGENTS.md - Bilgi Çıkarma Protokolü

Bu dosya, projedeki otonom ajanların çalışma prensiplerini ve bilgi yönetim protokollerini tanımlar.

## Bilgi Çıkarma Protokolü

1.  **Gözlem:** Her kullanıcı isteğinde ve kod incelemesinde yeni bilgiler (teknik kısıtlar, tercihler, kararlar) aranır.
2.  **Kayıt:** Yeni bir bilgi tespit edildiğinde, kullanıcıya sormadan ilgili dokümana (PROJECT_BRIEF.md, ROADMAP.md vb.) eklenir.
3.  **Doğrulama:** Eğer yeni bilgi mevcut kararlarla çelişiyorsa, işlem yapmadan önce kullanıcıdan onay istenir.
4.  **Güncelleme:** Her görev sonunda PROGRESS.md, FILE_INDEX.md ve AGENTS.md hiyerarşik haritası güncellenir. Yeni bir dosya eklendiğinde veya bir dosyanın görevi değiştiğinde "Proje Mimari Haritası" tablosu derhal revize edilmelidir.

## Mimari Kısıtlar (ÖNEMLİ)

*   **Tek IP / Çoklu Port Mimarisi:** Projede tüm dış servisler TEK BİR IP adresi üzerinden sunulur. Farklı hizmetler sadece port numaraları ile ayırt edilir.
*   **Sabit Sunucu Adresi:** `100.95.239.119` (Bu adres projede her yerde geçerli olan tek yetkili adrestir).
*   **Servis Portları:**
    *   **API Port (8642):** Chat Completions (SSE), STT (Speech-to-Text) ve TTS (Text-to-Speech) hizmetlerinin tamamı bu port üzerinden sunulur. Chat akışları için SSE protokolü zorunludur.
    *   **MQTT Port (1883):** Telemetri ve araç verileri SADECE bu port üzerinden iletilir. HTTP tabanlı telemetri gönderimi yasaktır.
*   **Servis Kısıtlamaları:** Groq, Edge TTS veya diğer harici bulut servisleri KESİNLİKLE kullanılmayacaktır. Tüm yapay zeka ve ses işlemleri `100.95.239.119:8642` adresindeki yerel servisler üzerinden yürütülecektir.

## API Hata Ayıklama Protokolü

*   **Sorun Tespiti:** Bağlantı veya yapılandırma sorunu yaşanırsa, doğrudan uygulamanın ana kodlarını bozarak deneme-yanılma yapmak **KESİNLİKLE YASAKTIR!**
*   **Test Araçlarının Kullanımı:** Ajanlar, API arızalarında öncelikle `scripts/` dizininde bulunan **test araçlarını** kullanmalıdır.

## Teknik Kısıtlar (Kesin Kurallar)
*   **Dil Kısıtlaması (ZORUNLU):** Tüm kullanıcıya yönelik metinler, hata mesajları, loglar ve diyaloglar **Türkçe** olmalıdır. İngilizce veya diğer dillerde kullanıcıya yönelik metin kullanımı YASAKTIR.

*   **Cihaz Algılama ve Simülasyon Modu:** Uygulama çalışma anında cihaz tipini kontrol etmelidir. Eğer cihaz bir AAOS ünitesi değilse (örn. test için kullanılan cep telefonu), uygulama otomatik olarak "Simülasyon Modu"nda başlamalıdır. Bu modda, başarısız olması kesin olan sistem seviyesi ADB komutları ve donanım bağımlı kritik servis hataları bastırılmalı, loglarda kirlilik yaratılmamalıdır.
*   **Ağ Yapılandırması (GÜNCELLENDİ):** 
    *   `Server IP`: `100.95.239.119` (Ana Sunucu)
    *   `Bridge IP`: `192.168.1.14:5000` (Yeni Tailscale Köprüsü - Wyoming)
    *   `Alternative Bridge IP`: `192.168.1.29` (Whisper/TTS Bridge)
    *   `API Endpoint`: `http://100.95.239.119:8642` (Chat, STT, TTS)
    *   `Bridge API Endpoint (Wyoming)`: `http://192.168.1.14:5000/v1` (STT, TTS)
    *   `Whisper Bridge STT`: `http://192.168.1.29:10301/v1/audio/transcriptions`
    *   `Whisper Bridge TTS`: `http://192.168.1.29:10201/v1/audio/speech`
    *   `MQTT Broker`: `100.95.239.119:1883`
*   **Servis Uç Noktaları (Wyoming Bridge):**
    *   **STT:** `POST http://192.168.1.14:5000/v1/stt` (JSON: `{"audio":"base64_data"}`)
    *   **TTS:** `POST http://192.168.1.14:5000/v1/tts` (JSON: `{"text":"text"}`)
*   **Servis Uç Noktaları (Whisper Bridge):**
    *   **STT:** `POST http://192.168.1.29:10301/v1/audio/transcriptions` (multipart/form-data)
    *   **TTS:** `POST http://192.168.1.29:10201/v1/audio/speech` (JSON: `{"input":"text","voice":"tr_TR-dfki-medium"}`)
*   **Ayarlar Paneli:** Hermes Server IP ve Bridge Server IP giriş satırları bulunmalıdır. MQTT ve telemetri verileri Hermes IP'sine yönlendirilir.
*   **Disk Önceliği:** Kodlar önce fiziksel dosyaya yazılacak.
*   **Hızlı Yükleme:** `adb push` + `adb shell pm install` yöntemi kullanılacaktır.
*   **API Seviyesi:** Sadece API 29 (Android 10) uyumlu kod yazılacaktır.

## Proje Mimari Haritası (Hızlı Navigasyon)

| Katman | Dosya | Görev |
| :--- | :--- | :--- |
| **Global** | `AssistantApplication.kt` | Uygulama hafızası ve global StateFlow yönetimi. (IP: `100.95.239.119`) |
| **Global** | `ConfigManager.kt` | Şifreli `app_config.json` yönetimi ve kalıcı ayarlar. |
| **STT** | `SttManager.kt` | `100.95.239.119:8642` üzerinden ses-metin dönüşümü. |
| **TTS** | `TTSManager.kt` | `100.95.239.119:8642` üzerinden metin-ses dönüşümü. |
| **AI** | `AgentManager.kt` | `100.95.239.119:8642` üzerinden SSE tabanlı AI karar motoru. |

*