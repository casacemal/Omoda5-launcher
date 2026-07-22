# PROGRESS.md

## İzin Geri Bildirimi ve Sürüm Senkronizasyonu (22.07.2026)
*   **Aksiyon:** İzin onarma tuşlarına Toast mesajı eklendi ve sürüm numarası eşitsizliği giderildi.
*   **Detay:**
    *   **İzin UI Geribildirimi:** `SettingsTabPermissions.kt` içerisindeki ADB komut butonlarına ve `PermissionManager.kt` içerisindeki onar tuşlarına anlık Toast bildirim eklendi.
    *   **Versiyon Numarası Eşitlemesi:** `app/build.gradle` içindeki versiyon mantığı değiştirildi, `VERSION_NAME` değerinin doğrudan `VERSION_CODE` ile aynı olması sağlandı (Örn: v6417).

## OTA ve UI İyileştirmeleri & Mağaza Modu Onarımı (22.07.2026)
*   **Aksiyon:** Omoda Store (Mağaza) modu onarıldı, UI ekranlarında versiyon ve tarih gösterimleri düzeltildi, ADB komut paneli mantıksal yerine taşındı.
*   **Detay:** 
    *   **Mağaza Onarımı:** Eski `jetpack_componse` dalından silinmiş mağaza APK'ları (aptoide, smarttube vb.) kurtarılarak güncel dalda oluşturulan `magaza` dizinine alındı. `OtaUpdateManager.kt` içindeki `STORE_URL` bu dizine yönlendirildi.
    *   **GitHub Tarih Parse Etme:** GitHub `/releases` API'sinden gelen `published_at` alanı ayrıştırılarak `AppStoreSection.kt` içerisine entegre edildi. Artık uygulamaların yayınlanma tarihleri gösteriliyor.
    *   **Versiyon İsimlendirmesi:** `SettingsTabAbout.kt`'de kafa karıştıran "v + versionCode" kullanımı yerine `VERSION_NAME` tekilleştirildi.
    *   **UI Revizyonu:** `SettingsTabSystem.kt` içerisindeki ADB "KOMUT" paneli, `SettingsTabLogs.kt` altına (Hızlı ADB İşlemleri kısmına) taşındı.

## Kod Denetim Raporu Aksiyonları (22.07.2026)
*   **Aksiyon:** `CODE_AUDIT_REPORT.md` kapsamındaki 16 düzeltme kodu entegre edildi.
*   **Detay:** 
    *   **Race Conditions:** `VehicleController.kt`'de state güncellemelerinde kayıpları önlemek için `Mutex` kilidi eklendi.
    *   **Kaynak Yönetimi:** `AssistantController.kt` içerisinde `AudioRecord` çakışmalarını engellemek için çift dinleme durduruldu.
    *   **Bellek/Performans:** `EventBus.kt` Flow buffer kapasitesi 64'ten 256'ya artırıldı, taşma politikası `DROP_OLDEST` olarak düzenlendi.
    *   **Ağ/Timeout:** `MqttPublisher.kt` ağ işlemleri Thread bloklamalarından kurtarılarak `CoroutineScope(Dispatchers.IO)` içine alındı.
    *   **Güvenlik:** `FirewallV2.kt` LLM-kaynaklı zararlı komut enjeksiyonlarına karşı `FORBIDDEN_PATTERNS` kara listesi ile güçlendirildi.
    *   **UI/Overlay:** `OverlayManager.kt` titremeleri engellendi; `AgentManager.kt` işlemlerinin iptali için `cancel()` metodu eklendi.

## Güvenlik ve Performans Açıkları Kapatıldı (21.07.2026)
*   **Aksiyon:** Kod Denetim Raporu'ndaki (CODE_AUDIT_REPORT.md) kritik ve yüksek öncelikli açıklar kapatıldı.
*   **Detay:**
    *   **G-001 / G-002:** Hardcoded MQTT kimlik bilgileri `BuildConfig` yapısına alındı ve `MqttPublisher` içerisindeki `brokerUrl` `GlobalState` üzerinden dinamik hale getirildi. "Settings -> Bağlantılar" sayfasına "MQTT Adresi" ayarı eklendi.
    *   **A-001:** `AdbConnectionMonitor` 5 saniyelik agresif polling döngüsünden kurtarılarak, modern `ConnectivityManager.NetworkCallback` yapısına dönüştürüldü ve fallback polling 30 saniyeye çekilerek batarya tasarrufu sağlandı.
    *   **D-001 / K-001:** `OverlayManager` yaşam döngüsü içerisindeki `serviceScope` sızıntıları giderildi ve overlay temizliği doğrulandı.

## AAOS UI Refactoring (21.07.2026)
*   **Aksiyon:** Settings ve SensorMonitor ekranlarındaki butonlar AAOS kısıtlamalarına (64dp Touch Target) uygun hale getirildi.
*   **Detay:** 
    *   Tüm standart `Button` bileşenleri `CarButton` ile değiştirildi (`SettingsTabSystem.kt`, `SettingsTabAssistant.kt`, `SettingsTabConnections.kt`, `SettingsTabPermissions.kt`).
    *   Tab menüsü `FilterChip` yerine AAOS standartlarına uygun dinamik `Surface` tabanlı odaklanabilir (focusable) butonlar kullanılarak güncellendi (`SettingsScreen.kt`).
    *   `SensorCard` bileşenine Rotary Controller için focus state eklendi ve grid boyutu AAOS'a uygun 240.dp yapıldı.
    *   Ana ekran (`DashboardScreen`) kural 1 gereği muaf tutuldu.

## KRİTİK VHAL Sensör Hatası Düzeltildi - V6390 (21.07.2026)
*   **Problem:** `VehicleController.kt` içinde `dumpsys car_service get-property-value` komutuna property ID'ler `0x11600207` gibi hex string olarak gönderiliyordu. Android'in `car_service` servisi hex string **kabul etmez** → `NumberFormatException` fırlatıp hiç veri dönmüyordu. Bu yüzden tüm sensörler (Hız, Devir, Klima, Kapılar vb.) boş görünüyordu.
*   **Kök Neden:** `def.id.removePrefix("0x")` hex karakterleri kaldırıyor fakat string hex biçiminde kalıyordu (örn: `"11600207"`). `car_service` bu formatı reddetti.
*   **Çözüm:** Her property ID'si için `.toLong(16)` ile decimal'e çevrildi:
    ```kotlin
    val decId = def.id.removePrefix("0x").toLong(16)
    "dumpsys car_service get-property-value $decId $zone"
    ```
*   **Doğrulama:** Dumpsys testi ile cihazdan gelen gerçek veriler:
    | Sensör | Hex ID | Decimal ID | Değer |
    |--------|--------|-----------|-------|
    | Hız/Devir | `0x11e00d00` | `300561664` | `[0.153, ..., 1250.0, ...]` floatValues |
    | Yakıt (L) | `0x11600104` | `292556036` | `15000.0` (=15L) |
    | Menzil | `0x11600106` | `292556038` | `150000.0` (=150km) |
    | Klima Sol | `0x15600503` | `359248131` | `16.0°C` |
    | Klima Sağ | `0x15600503` zone:0x44 | `359248131` | `20.0°C` |
    | Vites | `0x11400108` | `288358664` | `4` (=D) |
    | Motor | `0x11400109` | `288358665` | `1` (=Çalışıyor) |
*   **Etkilenen Dosya:** `core/src/main/java/com/omoda/lanc/core/VehicleController.kt` — `startPollingLayer()` metodu.

## AAOS UI Guidelines & Hermes Enhancements (21.07.2026)
*   **Hermes Pairing & Telemetry:** Eşleşme kodu `OMODA5` olarak hardcode edildi (`PairingManager.kt`). `CommandDispatcher.kt` içerisinde donanım yetenekleri (`DeviceCapabilities`) state olarak LLM'e sağlandı.
*   **AAOS Distraction Guidelines:** Ana sayfa (`DashboardScreen`) hariç, tüm sayfalarda (Settings, App Store, Sensor Monitor, Sylvie, Coolwalk) minimum **64dp** Touch Target kurallarına uygun olarak `CarButton` ve `CarIconButton` bileşenleri (`AutomotiveComponents.kt`) entegre edildi. 
*   **Odaklanma Desteği:** D-pad ve Rotary Controller cihazları için özel focus state (Border) UI'a dahil edildi. Metin boyutları araç kullanımına uygun olarak büyütüldü.

## Son Durum (UI Restoration: v6312 Standards)
*   Sürüm 6417 (6417) - 22.07.2026 15:12
*   **Restorasyon:** Tüm UI bileşenleri 19.07.2026 08:00-12:00 (v6312) aralığındaki altın oranlara ve `UI_MANIFESTO.md` standartlarına geri döndürüldü.
*   **HomeScreen:** Grid padding değerleri manifesto ile eşitlendi (end=80dp, bottom=80dp).
*   **Dashboard:** Sidebar genişliği 235dp'ye sabitlendi ve akıllı split oranı (high speed) 0.65f olarak güncellendi.
*   **Architecture 2.0:** `LayoutEngine` tüm Dashboard sayfaları için 235dp sidebar boşluğu kuralını devraldı.

## DashboardScreen.kt Preview Fix (20.07.2026)
*   **Fix:** `DashboardScreen.kt` dosyasındaki rendering hatası düzeltildi.
*   **Problem:** `MediaControllerViewModel` örneği, Application context gerektirdiği için Preview'da ömür verse (crash) oluyordu.
*   **Çözüm:** 
    *   `PreviewDashboardScreen()` fonksiyonu yeni bir `DashboardScreenPreview()` composable'ına yönlendirdi.
    *   `DashboardScreenPreview()` fonksiyonu, ViewModel yerine sabit bir medya durumu (fake state) kullandı.
    *   Gerçek `DashboardScreen()` fonksiyonu hala ViewModel'i kullanıyor, ancak preview için ayrı bir implementasyon sağlandı.
    *   `DashboardMediaWidgetSmallPreview()` composable'ı, preview için özel bir implementasyon sağladı.