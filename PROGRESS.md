# PROGRESS.md

## [2026-07-23] - v6459 (Yeni Tema Portu, Xiaomi Mi 13 Desteği ve Sensör Güvenlik Koruması)

- **Omoda5-ui-desing Tema Portu:** `OmodaSlateBg` (`#020617`), `OmodaCyanNeon` (`#69E2D3`), Glassmorphism kartlar ve neon aksanlar Jetpack Compose mimarisine taşındı.
- **Top Status Bar & Bottom Dock:** Reaktif üst durum çubuğu (`OmodaTopStatusBar`) ve alt hızlı erişim çubuğu (`OmodaBottomDock`) eklendi.
- **Omoda Digital Dashboard:** Dijital gösterge paneli (`OmodaDashboardScreen`) Hız, Devir, Vites, Hararet, Yağ Sıcaklığı ve TPMS verileriyle oluşturuldu.
- **Xiaomi Mi 13 & Esnek Ekran Desteği:** `BoxWithConstraints` ve esnek dp ölçeklemesi ile 2400x1080 (20:9) Xiaomi Mi 13 ekranları ve 1920x720 / 800x480 araç ekranları tam uyumlu hale getirildi.
- **Sensör Fail-Safe Protection:** Eksik veya okunamayan VHAL/sensör değerleri için `formatSensorValue()` koruması eklendi. Null/boş verilerde uygulama kilitlenmeden "Bulunamadı" uyarısı basılır.
- **Split-Screen & Ev Evrensel Navigasyon:** `SplitManager.kt` harita bölme işlevi korundu. Fiziksel Home tuşu (`KEYCODE_HOME`), jest Home çubuğu ve Back tuşu her ekrandan ana sayfaya dönecek şekilde bağlandı.

## MQTT Status Versiyon Telemetrisi, Uzaktan OTA ve Gelişmiş Mağaza Ekranı Tamamlandı (23.07.2026)
*   **Aksiyon:** `omoda/status` MQTT Heartbeat yayın paketine aktif versiyon verileri (`app_version`, `version_code`, `latest_version`) eklendi, uzaktan `check_ota_update` ve `trigger_ota_update` MQTT komut desteği getirildi, Mağaza/Güncelleme ekranına (`AppStoreSection.kt`) sürüm karşılaştırma kartı ve Değişiklik Notları (Release Notes) eklendi.
*   **Detay:**
    - **MQTT Versiyon Telemetrisi:** `MqttPublisher.kt` içinde `publishOnlineStatus()` metodu `v6452` versiyonunu ve `version_code` değerini `omoda/status` üzerinden 10s aralıklarla basacak şekilde güncellendi.
    - **Uzaktan OTA Komutları:** `omoda/komut` üzerinden `check_ota_update` gönderildiğinde GitHub sorgulanıp durum yayınlanıyor; `trigger_ota_update` gönderildiğinde cihaz en güncel APK'yı otomatik indirip `pm install` ile kuruyor.
    - **AppStoreSection.kt UI:** Ekran başına "Mevcut Yüklü Sürüm vs En Son Çevrimiçi Sürüm" durumu gösteren yeşil/turuncu durum kartı eklendi. Sürüm listesinde GitHub release açıklamaları (body) Değişiklik Notları kutusunda gösteriliyor. İndirilmiş APK'lar için "KUR (INSTALL)" butonu yeşil rozetle öne çıkarıldı.
    - **Dokümantasyon:** `PROJE_KITABI.md` (v4.2.0) Madde 7.6 olarak işlendi.

## Home/Geri Navigasyonu, Kademeli Başlatma ve 10s MQTT Status Heartbeat Tamamlandı (23.07.2026 - v6451)
*   **Aksiyon:** Fiziksel/jest Home ve Geri tuşu yönlendirmeleri düzeltildi, ilk açılışta radyonun donmasını önleyen kademeli (staggered) başlatma mimarisine geçildi, 10 saniyelik zengin MQTT Status Heartbeat yayın döngüsü kuruldu ve PC uygulamasına otomatik ADB bağlantı desteği eklendi.
*   **Detay:**
    - **Home & Geri Navigasyonu:** `MainActivity.kt`'ye `onNewIntent` ve `onKeyDown(KEYCODE_HOME)` eklenerek Home tuşunda launcher ana sayfasına dönülmesi sağlandı. `SensorMonitorScreen.kt` bileşenine `BackHandler` eklenerek geri tuşundaki kilitlenme çözüldü.
    - **Kademeli Başlatma Pipeline'ı:** FM Radyo ses odağını çalan Chery HVAC ototetiği silindi. Servis başlatmaları T=0s (UI), T=3s (Ses/Radyo), T=6s (VHAL/ADB), T=10s (MQTT/Ağ) aşamalarına bölündü.
    - **10s MQTT Status Heartbeat:** `omoda/status` konusuna her 10 saniyede bir IP, saat, ADB hazır olma durumu (`adb_ready: true`), servis portları ve mini loglar yayınlanıyor.
    - **PC Otomatik ADB:** `aes_app/main.py` uygulaması `omoda/status` konusunu dinleyerek ADB portunun hazır olduğunu gördüğü an otomatik `adb connect` yapıyor.
    - **Derleme:** `./gradlew assembleDebug` komutuyla `release_apks/app-updateV6451.apk` üretildi.

## Sensör Risk Analizi, UI Onay İkazı ve 531 Sensör Kataloğu Tamamlandı (23.07.2026)
*   **Aksiyon:** Araçtaki tüm VHAL sensörlerinin risk analizleri yapıldı, `SENSOR_RISK_ANALYSIS.md` ve `531_SENSOR_CATALOG.md` belgeleri oluşturuldu, yeni güvenli sensörler koda entegre edildi ve UI Onay Diyaloğu eklendi.
*   **Detay:**
    - **Proje Kitabı (v4.1.0):** `PROJE_KITABI.md` dosyasına Madde 7.5 (Sensör Risk Sınıflandırması ve Güvenlik Protokolü) işlendi.
    - **531 Sensör Kataloğu (`531_SENSOR_CATALOG.md`):** Araç dump dosyalarındaki 482 benzersiz VHAL sensörünün tümü taranıp Hex ID, Türkçe ad ve risk sınıflandırmasıyla kataloğa dönüştürüldü.
    - **Güvenli Sensör Entegrasyonu:** Hararet (`0x11200305`), Yağ Sıcaklığı (`0x11200301`), ABS (`0x11400b02`), ESP (`0x11400b03`) ve Sinyal Kolu (`0x11400b00`) `VehicleState` ve `VehicleController` sınıflarına okuma (Read-Only) olarak eklendi.
    - **UI Onay Diyaloğu (`SafetyConfirmationDialog.kt`):** Orta riskli iklim/konfor eylemlerinden önce ekranda kullanıcı fiziksel onayı isteyen modal bileşeni yazıldı ve `SensorMonitorScreen.kt` ekranına bağlandı.
    - **Derleme Doğrulaması:** `./gradlew assembleDebug` komutuyla `app-updateV6450.apk` paketi sorunsuz üretildi (`BUILD SUCCESSFUL`).

## Master Teknik Ansiklopedi ve Otonom Ajan Rehberi Güncellendi (23.07.2026)
*   **Aksiyon:** `PROJE_KITABI.md` (v4.0.0) geçmiş git dallarının evrim sürecini (`kotlin--son-`, `sontest--multitask`, `jetpack_componse`, `master`/`Hermes-bridge`, `feature/architecture-2-0`), Architecture 2.0 katmanlarını, port haritasını ve AI ajan context iyileştirmelerini kapsayacak şekilde eksiksiz ve profesyonel Master kitaba dönüştürüldü.
*   **Detay:**
    - **Dal Evrimi Zaman Çizelgesi:** Projenin başlangıçtan bu yana geçirdiği 5 ana dal dönüm noktası ve mimari kararlar dokümante edildi.
    - **7 Katmanlı Mimari:** Architecture 2.0 katmanları (VHAL, ADB Execution, Reaktif EventBus, MQTT Telemetri, AI/Audio Pipeline, UI/Overlay, PC Simülasyon) ve sınıfları haritalandı.
    - **"Don't Do" Yasaklar Listesi:** Dumpsys decimal `.toLong(16)` dönüşümü, ActivityView `alpha(0f)` koruması, Linux Tkinter font kısıtı, cloud API yasağı ve fiziki onay anti-spam kuralları mühürlendi.
    - **AI Agent Context Cheat-Sheet:** Otonom ajanların projeye başlarken context yükünü sıfırlayacak hızlı erişim kartları ve kılavuz eklendi.

## Teknik Ansiklopedi ve Proje Kitabı Oluşturuldu (23.07.2026)
*   **Aksiyon:** Projenin tüm teknik detaylarını, mimarisini ve kullanım kılavuzunu içeren `PROJE_KITABI.md` (v3.0.0) ve `SENSÖR_STANDARTLARI.md` dosyaları oluşturuldu.
*   **Detay:**
    - **7 Katmanlı Mimari:** VHAL, ADB, Reactive, Telemetry, AI, UI ve Bridge katmanları dokümante edildi.
    - **Bilgi Bankası (Knowledge Base):** Geçmişte çözülen kritik hatalar ve "Don't Do" listesi eklendi.
    - **Geliştirici Rehberi:** Yeni sensör veya komut ekleme standartları tanımlandı.
    - **Görsel Standartlar:** AAOS 10 uyumlu 64dp buton ve 235dp sidebar kuralları mühürlendi.

## Köprü (Bridge) ve IP Karmaşası Giderildi (23.07.2026)
*   **Aksiyon:** Tailscale ve Yerel IP arasındaki çelişki giderildi, "KÖPRÜ" butonu kaldırılarak otomatik fallback mekanizması kuruldu.
*   **Detay:**
    - **UI Sadeleştirme:** MainActivity üzerinden kafa karıştırıcı Köprü butonu kaldırıldı.
    - **Akıllı Fallback:** Sunucuya erişilemediğinde sistem otomatik olarak yerel STT (Sherpa) ve TTS (Piper) moduna geçecek şekilde güncellendi.
    - **Kod Temizliği:** GlobalState ve AppConfig üzerinden gereksiz mükerrer IP değişkenleri temizlendi.

## Motor ve Araç Verileri UI Uyumsuzluğu Tamamen Çözüldü (22.07.2026)
*   **Aksiyon:** `VehicleController.kt` veri indeksleme mantığı plana göre %100 uyumlu hale getirildi, bileşik (composite) veri çözme hatası giderildi.
*   **Detay:**
    *   **Bileşik Veri Senkronizasyonu:** `11e00d00` (Hız/Devir/Vites) mülkü her çözüldüğünde artık sadece tek bir anahtar değil; "HIZ", "VİTES", "DEVİR" gibi bireysel anahtarlar da eşzamanlı olarak güncelleniyor.
    *   **Genişletilmiş Alias Sistemi:** `updateDisplay` metoduna "Sıcaklık", "RPM", "GEAR", "KAPI_FL/FR/RL/RR" gibi çok sayıda yeni takma ad eklenerek tüm UI bileşenleriyle tam uyum sağlandı.
    *   **Widget Güçlendirmesi:** `TeslaCarWidget.kt`, `VehicleWidget.kt` ve `ClimateWidget.kt` dosyalarındaki fallback (yedek) anahtar zincirleri genişletildi.
    *   **UI Görselleştirme:** `TeslaCarWidget` üzerindeki araç simülasyonuna arka kapı açık ikazları (Red Door Alerts) eklendi.

## OTA Yükleyici ve Root Yetki İyileştirmeleri (22.07.2026)
*   **Aksiyon:** OTA indirme hataları ve root yetkilendirme sorunları çözüldü, Mağaza Yenile butonu onarıldı.
*   **Detay:**
    *   **OTA Installer Bug:** `OtaUpdateManager` üzerinden indirilen uygulamaların otomatik yüklenmemesi sorunu çözüldü. Sorunun `AdbBridgeService` güvenlik duvarı (whitelist) nedeniyle `pm install` komutunu reddetmesinden kaynaklandığı tespit edildi. İlgili komuta izin verildi ve Intent doğru servise yönlendirildi.
    *   **Root Yetkilendirme:** ADB fallback sistemine `su -c` komutu eklendi. Root'lu telefon kullananlarda uygulamanın doğrudan Magisk/SuperSU izni istemesi sağlandı.
    *   **OTA Cache Bypass:** GitHub API'sinden sürümler sorgulanırken `Cache-Control: no-cache` header'ı eklenerek sürümlerin anında (gecikmesiz) görünmesi sağlandı.
    *   **Mağaza Yenileme:** "Yenile" butonunun mağaza uygulamalarını (Aptoide vb.) çekmeme sorunu düzeltildi.

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
*   Sürüm 6461 (6461) - 23.07.2026 22:53
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
    *   `DashboardMediaWidgetSmallPreview()` composable'ı, preview için özel bir implementasyon sağladı.## MQTT Fix & AES App Enhancement (22.07.2026)
*   **Fix:** `MqttPublisher.kt` içerisinde sessizce çöken MQTT Paho kütüphanesi abonelik (`subscribe`) yapısı `try-catch` blokları ve logcat çıktılarıyla güçlendirildi.
*   **Enhancement:** VHAL AES masaüstü aracı (`aes_app/main.py`), terminal scriptleri yerine birincil simülasyon test aracı olarak zorunlu kılındı. Hız ve RPM testleri için interaktif kaydırma çubukları (sliders) arayüze eklendi. `AGENTS.md` içerisindeki kurallar bu yönde katılaştırıldı.