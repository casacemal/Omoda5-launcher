# SISTEM_CALISMA_MANTIGI.md - Omoda 5 Launcher v2

Bu dosya, projenin teknik mimarisini, veri akışlarını ve karar mekanizmalarını açıklar.

## 1. Temel Mimari Prensipleri
Sistem, Android Automotive OS (AAOS 10) üzerinde **Event-Driven (Olay Güdümlü)** ve **Merkezi Kontrol** prensipleriyle çalışır.

*   **Merkezi Event Bus:** Tüm modüller (Ses, Araç, UI) birbiriyle `EventBus.kt` üzerinden haberleşir.
*   **Karma IP Mimarisi:** MQTT, Bridge ve Hermes servisleri `192.168.1.14` adresi üzerinden farklı portlarla sunulur. Diğer servisler kendi IP'lerini kullanır.
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
1.  **Veri Toplama (`VehicleController`):** `dumpsys car_service get-property-value <decimalId> <zone>` komutu AdbClient üzerinden çalıştırılır. **KRİTİK KURAL:** `car_service` hex string (`0x...`) kabul ETMEZ, ID'ler `.toLong(16)` ile decimal'e çevrilmelidir.
2.  **Dağıtım ve İndeksleme:** Okunan veriler `GlobalState.vehicleDataValues` haritasına HEM Hex ID, HEM Türkçe Etiket, HEM DE UI Kısaltmaları (Alias: `HIZ`, `VİTES`, `RPM`, `KAPI_FL` vb.) olarak çoklu anahtarlarla (Multi-Key Indexing) yazılır. Bu, tüm UI widget'larının (TeslaCarWidget, ClimateWidget vb.) veriye kendi bildiği anahtarla erişmesini sağlar.
3.  **Yayın (`EventBus`):** Okunan her veri `VehicleEvent.StateUpdated` olarak tüm sisteme yayılır.
3.  **Dışa Aktarım (`MqttPublisher`):** `MqttTelemetryBridge` bu eventleri yakalayarak `192.168.1.14:1883` broker'ına `omoda/telemetri` konusuyla iletir.
4.  **AI Bağlamı:** `AgentManager` bu verileri kullanarak LLM'e aracın anlık durumunu (Hız, konum, klima) "Context" olarak fısıldar.

### 3a. Doğrulanmış VHAL Property Haritası (21.07.2026 Cihaz Testi)

| Sensör | Hex ID | Decimal ID | Zone | Tip | Değer Notu |
|--------|--------|-----------|------|-----|------------|
| Hız / Devir (Combo) | `0x11e00d00` | `300561664` | `0x0` | floatValues[] | [0]=hız m/s, [8]=RPM, [9]=Vites(PRND), [12]=Dış sıcaklık |
| Yakıt (mL) | `0x11600104` | `292556036` | `0x0` | float | ÷1000 = Litre |
| Menzil (m) | `0x11600106` | `292556038` | `0x0` | float | ÷1000 = km |
| Klima Sıcaklığı | `0x21401008` | `554696712` | `0x0` | int32 | °C (22 = 22°C) |
| Klima Güç | `0x21401002` | `554696706` | `0x0` | int32 | 1=Açık, 0=Kapalı |
| Fan Hızı | `0x21401005` | `554696709` | `0x0` | int32 | 0-8 |
| Kapı Kilitleri | `0x16200b02` | `371197698` | multi-zone | int32 | 1=Kilitli (zone:1,4,10,40) |
| Ön Sol Kapı | `0x21402012` | `557056018` | `0x0` | int32 | 1=Açık |
| Ön Sağ Kapı | `0x21402013` | `557056019` | `0x0` | int32 | 1=Açık |
| EV Tekerlek | `0x17600309` | `392266505` | 0x1,2,4,8 | float | 200.0 rpm |

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

## 6. Bilinen Sorunlar ve Mimari Kararlar

### 6a. VHAL Hex/Decimal Sorunu (ÇÖZÜLDÜ - V6390)
`dumpsys car_service get-property-value` komutu hex string kabul etmez. Tüm property ID'ler `.toLong(16)` ile decimal'e çevrilmeli.

### 6b. `0x11e00d00` Combo Property (Hız+Devir)
Cihazda hız ve devir ayrı property'lerde değil, tek bir büyük `floatValues[]` dizisinde geliyor:
- `floatValues[0]` = Hız (m/s) → km/h için × 3.6
- `floatValues[8]` = Motor devri (RPM)
- `floatValues[9]` = Vites (PRND)

> **NOT:** `VehicleController.applyValue()` bu combo property'yi başarıyla ayrıştırıyor ve "HIZ", "DEVİR", "VİTES" anahtarlarını toplu olarak güncelliyor.

### 6c. `open_windows` / `close_windows` Araç Komutları
`OmadaTools` ve `ActionExecutor` artık doğru decimal ID'leri kullanıyor. AAOS `set-property-value` komutu kesinlikle decimal ID gerektirir:
```
# Yanlış:
dumpsys car_service set-property-value 0x13400bc0 15 100
# Doğru (0x13400bc0 -> 322964416):
dumpsys car_service set-property-value 322964416 15 100
```

### 6d. SensorMonitorScreen EventBus Bağlantısı
Ekran artık `EventBus.collect` ile reaktif dinleme yapıyor (V6389). Polling yöntemi kaldırıldı.
