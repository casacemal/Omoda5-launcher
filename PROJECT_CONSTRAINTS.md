# PROJECT CONSTRAINTS & IMMUTABLE RULES (DEĞİŞTİRİLEMEZ KURALLAR)

Bu dosya, projenin teknik bütünlüğünü korumak için oluşturulmuştur. Bu dosyadaki değerler ve mantık akışı, kullanıcı aksini talep etmediği sürece DEĞİŞTİRİLEMEZ.

## 0. SİSTEM MİMARİSİ
- **Android Versiyonu:** **API 29 (Android 10)**
- **Kısıtlama:** API 29 üzerinde çalışmayan veya bu sürümden sonra kaldırılan özelliklere dikkat edilmelidir.

## 1. KRİTİK PAKET VE SINIF ADLARI
- **Orijinal Launcher:** `com.chery.launcher`
- **HVAC (Klima) Paketi:** **`com.chery.hvac`** (Kesinleşti: Semidrive cihazında bizzat doğrulandı).
- **HVAC Ana Activity:** `com.chery.hvac/.view.activity.MainActivity` (Monkey ile başlatılır).
- **Android Auto:** `com.yfve.car.androidauto`
- **CarPlay:** `com.yfve.car.carplay`
- **Erişilebilirlik Servisi:** `com.omoda5.launcher/com.omoda5.launcher.services.CheryAccessibilityService`

## 2. EKRAN VE OVERSCAN STANDARTLARI
- **Sol Panel:** `-235` (Gizleme değeri)
- **Sağ Panel:** `-70` (Gizleme değeri)
- **Komut:** `wm overscan <sol>,0,<sağ>,0`

## 3. UI VE TASARIM KURALLARI
- **Grid Yapısı:** 5 Sütun x 2 Satır (Toplam 10 ikon). 1. Sayfa sabittir. 2. Sayfadan itibaren uygulamalar tıklanma sayısına göre otomatik sıralanır.
- **Okunabilirlik:** Ayarlar sayfasındaki butonlar **20sp + Bold** olmalıdır.
- **Terminal Bölümü:** Ayarlar sayfasındaki sağ terminal sütunu %20 küçültülmüş, sol ayarlar paneli genişletilmiştir.
- **Terminal:** Canlı loglar **Matrix Yeşili (#00FF41)** renginde akmalıdır.
- **Split Screen Mekanizması:** Semidrive ünitelerinde standart `windowingMode` çalışmaz. Bunun yerine ADB üzerinden `am stack resize 3 235 0 1077 720` (Sol) ve `am stack resize 4 1077 0 1920 720` (Sağ) komutları kullanılmalıdır.
- **Split Screen Tetikleyici:** İkona 1 saniye uzun basış veya anasayfadaki Split butonu.

## 4. GLOBAL GESTURE (HAREKET) KURALLARI
- **Geri (Back):** Sağdan sola kaydırma.
- **Ana Ekran (Home):** Alttan yukarı kaydırma.

## 5. ADB VE BAĞLANTI KISITLAMALARI
- **Zorunlu Port:** `5555`.
- **Bağlantı:** Yerel bağlantıda kimlik doğrulama istenmez.
- **Home Tuşu Fix:** `cmd package set-home-activity` komutuyla sistem zorlanır.

## 6. OTOMASYON VE OTA GÜNCELLEME
- **İndirme Yolu:** `/storage/emulated/0/Download/` (Sistemin standart indirme klasörü).
- **Duvar Kağıdı Yolu:** `/storage/emulated/0/Download/wallpapers/`
- **Yükleme:** `Intent.ACTION_VIEW` (Sistem Paket Yükleyicisi) tetiklenir. `pm install` güvenilmezdir.
- **VPN Otomasyonu:** İnternet bağlantısı algılandığı anda Tailscale arka planda otomatik başlatılır.
- **Açılış Otomasyonu:** ADB TCP (5555), Overscan ve İzinler her açılışta otomatik yenilenir.
- **APK İsimlendirme:** Oluşturulan tüm APK dosyaları `app-debugV<versionName>.apk` formatında olmalıdır. (Örn: `app-debugV6.4.1.apk`).

---
**NOT:** Bu kurallar v6.4.1 itibariyle projenin yeni anayasasıdır.
