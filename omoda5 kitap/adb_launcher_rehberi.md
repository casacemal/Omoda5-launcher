# Omoda 5 — Gelişmiş ADB ve Sistem Rehberi

Bu rehber, Android 10 (API 29) Semidrive üniteleri için kritik ADB komutlarını ve "nasıl yapılır" bilgilerini içerir.

## 📺 1) Bölünmüş Ekran (Split Screen) ADB Zorlama
Semidrive ünitelerinde (API 29) standart Intent bayrakları ve `--windowingMode` parametresi bazen yetersiz kalır. Kesin çözüm `am stack resize` yöntemidir.

- **Yöntem:** Uygulamaları normal şekilde başlatın, ardından stack boyutlarını değiştirin.
- **Sol Panel (Stack ID 3):**
  `am stack resize 3 235 0 1077 720`
- **Sağ Panel (Stack ID 4):**
  `am stack resize 4 1077 0 1920 720`

*Not: İkinci boyutlandırmadan önce 1 saniye (`sleep 1`) beklemek sistemin senkronizasyonu için gereklidir.*

## 🏠 2) Home Tuşu (Orijinal Launcher'a Dönüşü Engelleme)
Sistem sürekli orijinal launcher'a dönüyorsa şu komutla bizim launcher'ımızı "Asıl Ev Sahibi" yapın:
`cmd package set-home-activity com.omoda5.launcher/.ui.MainActivity`

## 🔑 3) Otomatik İzin Verme (Self-Grant)
Uygulamanın açılışta kendine izin vermesi için kodda şu blok kullanılır:
```kotlin
val commands = arrayOf(
    "pm grant com.omoda5.launcher android.permission.READ_EXTERNAL_STORAGE",
    "pm grant com.omoda5.launcher android.permission.SYSTEM_ALERT_WINDOW",
    "appops set com.omoda5.launcher GET_USAGE_STATS allow"
)
// commands.forEach { execute(it) }
```

## 📂 4) Dosya Yolları ve Depolama (Android 10 Fix)
- **APK İndirme Yolu:** `/storage/emulated/0/Download/` (Chrome ve sistemin ortak klasörü).
- **Duvar Kağıtları Klasörü:** `/storage/emulated/0/Download/wallpapers/`
- **Önemli:** `AndroidManifest.xml` dosyasında `android:requestLegacyExternalStorage="true"` değeri mutlaka `true` olmalıdır.

## 📡 5) ADB TCP Modu (Kablosuz)
Bilgisayar bağlantısı olmadan TCP moduna geçmek için sırasıyla:
1. `setprop service.adb.tcp.port 5555`
2. `stop adbd`
3. `start adbd`

---
**Teknik Not:** Bu komutlar `AdbBridgeService` üzerinden localhost (127.0.0.1) üzerinden güvenli bir şekilde çalıştırılmaktadır.
