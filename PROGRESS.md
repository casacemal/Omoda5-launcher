# PROGRESS.md - Teknik Gelişim Günlüğü

## [2026-07-26] (UI Temizliği ve Root Bildirimi Onarımı)
- **UI Sadeleştirme:** `MainActivity.kt` üzerinden Omoda Üst Durum Çubuğu (TopStatusBar) kaldırıldı.
- **Alt Bar Kaldırıldı:** Dashboard ve diğer ana ekranlar artık tam ekran olarak çalışıyor.
- **Root Bildirimi Sessize Alındı:** `AdbClient.kt` içerisinde açılışta çıkan "Root Reddedildi" hata logları telefonda sessize alındı, sadece logcat'e yazılıyor.

## [2026-07-26] (Docs Uyum Onarımları ve Radyo/RDS Entegrasyonu)
- **HardKey Güvenliği (SIGSEGV Korunması):** `VoiceAssistantService.kt` içindeki tuş yakalama mantığı Cemal'in saha notlarına göre revize edildi. Binder thread'inden gelen sinyaller artık `Looper.getMainLooper()` ile Main Thread'e güvenli bir şekilde aktarılıyor.
- **Tuş Kodu Esnekliği:** OEM tuş raporlarındaki `keyCode` ve `key_code` anahtar farklılıkları için fallback mekanizması eklendi.
- **Radyo & RDS Widget'ı:** `CoolwalkWidgets.kt` içerisine `CoolwalkRadioCard` eklendi. Radyo frekansı aktif olduğunda hava durumu kartı yerine dinamik radyo kartı gösteriliyor.
- **VehicleState Genişletildi:** `radioFrequency`, `radioStationName` ve `radioText` alanları veri modeline eklendi.

## [2026-07-26] (Mini-AA Coolwalk Dashboard Entegrasyonu)
- **Yeni Nesil Dashboard:** `OmodaDashboardScreen.kt` tamamen yenilenerek Mini-AA projesinden ilham alan "Coolwalk" tarzı split-screen (bölünmüş ekran) tasarımına geçildi.
- **Modüler Bileşenler:** `CoolwalkWidgets.kt` altına Glassmorphism medya kartı, dinamik hava durumu kartı ve "Glow-bar" efektli hız göstergesi eklendi.
- **Trip Info Desteği:** `VehicleState.kt` dosyasına seyahat mesafesi (`tripDistance`) ve süresi (`tripDuration`) için temel alanlar eklendi.

## [2026-07-25] (VHAL Veri Akışı Restorasyonu ve Hibrit Döküm)
- **VHAL Tıkanıklığı Giderildi:** ADB Socket bağlantısının (127.0.0.1:5555) kilitlenmesi nedeniyle verilerin akmaması sorunu, `dumpsys car_service --vhal` (Toplu Döküm) yöntemine geri dönülerek çözüldü. Omoda donanımında en kararlı yöntem budur.
- **Hibrit Veri Okuma:** Toplu dökümden gelen binlerce satır, `AdbClient` üzerindeki satır biriktirici (Line Buffer) ile işlenir ve Regex ile sadece ilgili mülkler süzülür.
- **Reaktif UI Fix:** `SensorMonitorScreen.kt` üzerindeki zamana dayalı engeller temizlendi, ekran tamamen `EventBus` akışına bağlandı.

## [2026-07-25] (AdbClient Su Syntax Fix & Dumpsys Verification)
- **Su Syntax Onarıldı:** Omoda 5 ünitesindeki 'su -c' kısıtlaması aşıldı. Komutlar artık doğrudan `su root <komut>` veya `su 0 <komut>` formatında çalıştırılıyor.
- **Dumpsys Doğrulandı:** Manuel yapılan testlerde `su root dumpsys car_service get-property-value` komutunun canlı veri (1250.0 RPM vb.) döndürdüğü kanıtlandı.

## [2026-07-24] (VHAL ID Kararlılığı ve RPM Göstergesi)
- **VHAL ID Yolsuzluğu Onarıldı:** `VehicleController` içerisinde `get-property-value` komutuna gönderilen ID'lerin AAOS standardına uygun olarak **Decimal** formatına çevrilmesi zorunlu kılındı. Hex-Decimal karmaşasından kaynaklanan etiket (label) eşleşmeme sorunu giderildi.
- **TPMS Veri Akışı Restore Edildi:** `VehicleState` içerisindeki hardcoded (sabit) TPMS değerleri kaldırılarak, gerçek VHAL verilerine bağlandı.
- **Hatalı ID Dönüşüm Mantığı Düzeltildi:** Omoda'nın hex ID'lerinin (örn: 11600207) yanlışlıkla tekrar hex'e çevrilerek (`b10137`) bozulması engellendi.

## [2026-07-24] (Kritik VHAL ID Onarımları ve Sunucu IP Senkronizasyonu)
- **Kritik VHAL ID Onarımı:** `ActionExecutor.kt` ve `OmodaTools.kt` içerisindeki `set-property-value` komutlarının hex ID (`0x...`) kullanması nedeniyle çalışmama sorunu giderildi. Tüm ID'ler AAOS standardı olan decimal formatına çevrildi. (Örn: 0x21401008 -> 557846536).
- **MQTT Telemetri Yarış Durumu (Race Condition) Çözümü:** Uygulama açılışındaki 10 saniyelik kademeli başlatma nedeniyle `AssistantController`'ın MQTT publisher'ı kaçırması sorunu `updateConfig` mekanizmasına MQTT bridge yenileme eklenerek çözüldü.

## [2026-07-22] (Motor ve Araç Verileri UI Uyumsuzluğu)
- **Bileşik Veri Senkronizasyonu:** `11e00d00` (Hız/Devir/Vites) mülkü her çözüldüğünde artık "HIZ", "VİTES", "DEVİR" gibi bireysel anahtarlar da eşzamanlı olarak güncelleniyor.
- **Genişletilmiş Alias Sistemi:** `updateDisplay` metoduna "Sıcaklık", "RPM", "GEAR", "KAPI_FL/FR/RL/RR" gibi çok sayıda yeni takma ad eklendi.
- **Widget Güçlendirmesi:** `TeslaCarWidget.kt`, `VehicleWidget.kt` ve `ClimateWidget.kt` dosyalarındaki fallback (yedek) anahtar zincirleri genişletildi.
