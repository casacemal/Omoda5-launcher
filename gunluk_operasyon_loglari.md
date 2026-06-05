# Günlük Operasyon ve ADB Komut Logları

**Tarih:** 02 Haziran 2026
**Hedef IP:** 100.121.172.79:5555

## 1. Yürütülen Komutlar ve Yanıtlar (03 Haziran 2026 - FINAL)

### Home Tuşu ve Gestures Zaferi
> **Analiz:** Sistem orijinal launcher'ı ismen aradığı için takılıyordu.
> **Çözüm:** `priority="1000"` ve Balyoz Metodu (v10.1.2) uygulandı.
> **Sonuç:** `BAŞARILI`. Home tuşu artık anında Launcher'a dönüyor. Gezginler stabil.

### Merkezi Veri Köprüsü (v10.1.x)
> **Gözlem:** Medya, VHAL ve Keys artık tek bir Bridge üzerinden akıyor. Sayfa geçişlerinde veri kaybı sıfıra indirildi.

### Tailscale Bağlantı ve Yükleme
> **Hedef:** 100.121.172.79:5555
> **İşlem:** `git checkout jetpack_componse` -> `gradle assembleDebug` -> `adb install -r`
> **Sonuç:** `Success`. Uygulama Tailscale üzerinden başarıyla güncellendi.

### v10.0.0 Merkezi Köprü (Bridge) Testi
> **Komut:** `adb logcat -d | grep "BRIDGE"`
> **Yanıt:** `BRIDGE: Merkezi Veri Köprüsü Aktif`.
> **Gözlem:** Medya bildirimleri ve VHAL verileri (Hız: 0x11600207) artık tek bir Singleton StateFlow üzerinden UI'a kesintisiz ulaşıyor.

### Sesli Asistan ve Tuş Analizi
> **İşlem:** 293 (Mic) tuşuna basıldı.
> **Log:** `VOICE: Ses Tanıma Motoru Bulunamadı!`.
> **Tespit:** Cihazda yerleşik GMS veya offline STT motoru yok. Bu tuş artık direkt `VoiceEducationActivity` rehberini açacak şekilde revize edilmeli.

## 2. Sistem Hataları ve Teşhis: Home ve Gestures Sorunu
- **Belirti:** Home tuşu (3/294) ve kenar kaydırma (Gestures) tepki vermiyor.
- **Teşhis:** `CheryAccessibilityService` sistem tarafından (yüksek kaynak kullanımı veya kilitlenme nedeniyle) devre dışı bırakılmış. 
- **Olası Sebep:** `AdbBridgeService` içindeki sürekli 5555 portu tarama döngüsü CPU'yu yoruyor olabilir.
- **Acil Çözüm:** `adb shell settings put secure enabled_accessibility_services com.omoda5.launcher/com.omoda5.launcher.services.CheryAccessibilityService` komutuyla servis manuel tetiklenmeli.

## 3. Donanım Notları
- **SD Kart:** Cihazda fiziksel bir harici SD kart mount edilmiş görünmüyor. Tüm işlemler 32GB dahili eMMC üzerinde yürütülüyor.

### Pencere Yığını Analizi (Multi-Task)
> **Komut:** `adb shell "dumpsys activity activities | grep -E 'Stack #|TaskRecord|mBounds|mStackId'"`
> **Yanıt:** YouTube Music (Stack #9), Maps (Stack #1). Koordinatlar: (235, 0 - 1920, 720).

### Multi-Task Manuel Tetikleme
> **Komut:** `adb shell "am start -n com.google.android.apps.youtube.music/...; am stack resize 9 235 0 1077 720"`
> **Yanıt:** `Starting: Intent { ... }`. Haritalar tam ekran açıldı, bölünme başarısız oldu (Legacy motoru gerekiyor).

### VHAL Veri Okuma (Ham - Canlı Analiz)
> **HIZ (0x11600207):** `floatValues: [0.0]` -> Park halinde, veri akışı stabil.
> **VİTES (0x11400400):** Cihaz vites verisini `0x11400a03` (int32: 100) olarak döndürüyor; bu OEM spesifik bir ID olabilir, takipteyiz.
> **DİĞER:** `0x21403021` (int32: [1]), `0x21401022` (int32: [1]) gibi yeni property'ler keşfedildi.

### Orijinal Ses Motoru (Cerence) Analizi
- **Bulgu:** Backup içinde `/product/app/cerence/cerence.apk` bulundu.
- **Log Analizi:** `VOICE: Ses Tanıma Motoru Bulunamadı!` mesajı, bu APK'nın standart Android STT servislerine kayıtlı olmadığını kanıtlıyor.
- **Karar:** Cerence paketini (`com.nuance.voiceserver`) manuel tetikleme testleri yapılacak.

### Doğrulanan Özellikler (02 Haziran 2026)
- **Home Tuşu:** Başarıyla yakalanıyor ve Launcher'a dönüyor.
- **Overscan:** Sol ve Sağ bar bağımsız olarak gizlenip açılabiliyor.
- **v9.4.1 Master:** Saydam Multi-Task Lab ekranı başarıyla yüklendi.

## 2. Sistem Hataları ve Notlar
- **Ağ Kararsızlığı:** Tailscale veya diğer otomatik servisler bağlantıyı bozuyor. Otomatik görevler askıya alınmalı veya butona bağlanmalı.
- **ADB Stream:** Başta akıcı olan veri akışı sonradan durdu (Socket zaman aşımı veya servis çökmesi ihtimali).
- **Yeni İstekler:** Tam Cihaz Reboot ve Launcher Servis Reboot butonları eklenecek.
