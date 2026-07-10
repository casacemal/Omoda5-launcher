# SISTEM_CALISMA_MANTIGI.md - Omoda 5 Launcher v2

Bu dosya, projenin teknik mimarisini, veri akışlarını ve karar mekanizmalarını açıklar.

## 1. Temel Mimari Prensipleri
Sistem, Android Automotive OS (AAOS 10) üzerinde **Event-Driven (Olay Güdümlü)** ve **Merkezi Kontrol** prensipleriyle çalışır.

*   **Merkezi Event Bus:** Tüm modüller (Ses, Araç, UI) birbiriyle `EventBus.kt` üzerinden haberleşir.
*   **Tek IP Mimarisi:** Tüm dış servisler (AI, STT, TTS, MQTT) `100.95.239.119` adresi üzerinden farklı portlarla sunulur.
*   **Güvenlik Duvarı (Command Firewall):** AI'dan gelen tüm araç komutları fiziksel eyleme dönüşmeden önce güvenlik ve hız sınırlarından geçer.

## 2. Sesli Asistan İş Akışı (Voice Pipeline)
Bir sesli komut şu aşamalardan geçer:

1.  **Tetikleme:** Wake word (Hey Omoda) veya direksiyon tuşu (`HardKeyPressed`) ile `AssistantController` dinlemeyi başlatır.
2.  **Ses Kaydı (`SttManager`):** Ses 16kHz kalitesinde kaydedilir. Bridge modu aktifse WAV, değilse AAC (M4A) formatı kullanılır.
3.  **Metne Dönüştürme (STT):** Kayıt `AgentManager` aracılığıyla Hermes Sunucusuna (Whisper) gönderilir.
4.  **Niyet Analizi (`AgentManager`):** 
    *   Önce `CommandRouter` ile yerel Regex kontrolü yapılır (Hızlı yanıt: "Camı aç").
    *   Eşleşme yoksa LLM'e (Hermes Chat) SSE üzerinden gönderilir.
5.  **Karar ve Güvenlik (`CommandFirewall`):** LLM bir "Tool Call" (araç komutu) üretirse, bu istek `CommandFirewall`'a düşer. Whitelist kontrolü ve hız/güvenlik doğrulaması yapılır.
6.  **Eylem (`ActionExecutor`):** Onaylanan komut VHAL veya Android API üzerinden icra edilir.
7.  **Geri Bildirim (TTS):** Yanıt metni `HermesTTSManager` (OpenAI/Piper) üzerinden sese dönüştürülür. Hata durumunda `AndroidSystemTtsManager` fallback olarak devreye girir.

## 3. Araç Veri Akışı (Telemetri)
1.  **Veri Toplama (`VehicleController`):** CarPropertyManager üzerinden hız, vites, sıcaklık gibi veriler sürekli okunur.
2.  **Dağıtım (`EventBus`):** Okunan her veri `VehicleEvent.StateUpdated` olarak tüm sisteme yayılır.
3.  **Dışa Aktarım (`MqttPublisher`):** `MqttTelemetryBridge` bu eventleri yakalayarak `100.95.239.119:1883` broker'ına `omoda/telemetri` konusuyla iletir.
4.  **AI Bağlamı:** `AgentManager` bu verileri kullanarak LLM'e aracın anlık durumunu (Hız, konum, klima) "Context" olarak fısıldar.

## 4. Ses ve Focus Yönetimi (`AudioEngine`)
Sistemde ses önceliği hiyerarşisi vardır:
*   **ALERT:** En yüksek öncelik (TPMS hatası vb.). Diğer sesleri keser.
*   **ASSISTANT:** Asistan konuşurken müzik sesi kısılır (Ducking).
*   **MEDIA:** Normal müzik/radyo akışı.

## 5. Hata Toleransı (Resilience)
*   **Bağlantı Kontrolü:** `HermesClient` sürekli sunucu sağlığını (`/health`) kontrol eder.
*   **API Key Senkronizasyonu (Dual-Auth Fallback):** Uygulama, STT/TTS veya LLM isteklerinde 401 Unauthorized hatası alırsa, otomatik olarak `NINEROUTER_API_KEY` yedek anahtarına geçer ve isteği 1 kez tekrar dener. Bu, sunucudaki port bazlı yetkilendirme farklılıklarını otomatik olarak çözer.
*   **Fallback Mekanizmaları:** 
    *   Sunucu kapalıysa STT ve TTS yerel sistemlere (Android Native) döner.
    *   İnternet yoksa sadece `CommandRouter` (çevrimdışı komutlar) çalışır.
*   **Simülasyon Modu:** Araç donanımı yoksa (test telefonu) donanım bağımlı hatalar otomatik bastırılır.
