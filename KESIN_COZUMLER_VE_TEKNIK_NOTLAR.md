# 💎 OMODA 5 LAUNCHER - KESİN ÇÖZÜMLER VE TEKNİK NOTLAR (v6.6.0)

Bu döküman, Semidrive ünitesindeki kronik sorunların nasıl aşıldığını ve v6.6.0 Diamond Final sürümündeki mimari kararları içerir.

### 1. 🔄 Sonsuz Güncelleme Döngüsü (Update Loop Fix)
- **Sorun:** GitHub'daki sürüm ismi (v6.5.x) ile cihazdaki isim uyuşmadığında uygulama her açılışta tekrar indirme yapıyordu.
- **Kesin Çözüm:** `UpdateManager.kt` içindeki kontrol mantığı `versionName` (yazı) yerine `versionCode` (sayı) karşılaştırmasına geçirildi. Artık sadece sayısal değer (Örn: 46 > 45) büyükse güncelleme tetiklenir.

### 2. 📱 Mükerrer (Fazla) İkon Sorunu
- **Sorun:** `com.chery.media` paketi altındaki Müzik, Video ve Resimler ayrı ayrı "Medya" ismiyle anasayfada listeleniyordu.
- **Kesin Çözüm:** `MainActivity.kt` içine "Package Filter" eklendi. Aynı paket adını taşıyan uygulamalar filtrelenerek anasayfa 10 ikonluk (5x2) sabit düzene kavuşturuldu.

### 3. 🔓 Kilitli Sistem İzinleri (Permission Bypass)
- **Sorun:** AAOS 10, Overlay ve Medya Okuma izinlerini manuel vermeye izin vermiyordu.
- **Kesin Çözüm:** Uygulama açılışında `AdbBridgeService` üzerinden şu komutlar otomatik enjekte edilir:
    - `appops set com.omoda5.launcher SYSTEM_ALERT_WINDOW allow` (Üst Katman)
    - `cmd notification allow_listener .../MediaNotificationListener` (Medya Bilgisi)

### 4. 📺 Multi-Task ve Alan Paylaşımı
- **Sorun:** Sistem split-screen'i yasakladığı için harita paneli müzik çaların altına/üstüne biniyordu.
- **Kesin Çözüm:** 
    - **Multi Task 1:** Chery Media (Sığdır-Aç) + Harita.
    - **Multi Task 2:** Musicolet + Harita.
    - **Dinamik:** Uzun basılan uygulamayı sola, haritayı sağa alan `Adjacent Launch` motoru v6.6.0'da mühürlendi.

### 🏎️ 5. Araç Verileri ve Hata Teşhis
- **Yenilik:** 4 sütunlu yoğun düzen ile 16 farklı VHAL verisi tek ekrana sığdırıldı.
- **Hata Teşhis:** Kontak kapalıyken veya veri gelmediğinde "Neden" bilgisi (Örn: "CarService kilitli") ekranda canlı raporlanır.
