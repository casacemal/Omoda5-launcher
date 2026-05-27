# 📑 SEMIDRIVE SİSTEM ANALİZİ VE GEÇMİŞ KAYIT RAPORU

Bu dosya, Semidrive ünitesi üzerindeki teknik engelleri, Nisan 2026 yedeklerinden çıkarılan dersleri ve v6.4.2 için çözüm yollarını içerir.

## 1. BÖLÜNMÜŞ EKRAN (SPLIT SCREEN) ANALİZİ

### 🔍 Mevcut Durum (Neden Çalışmıyor?):
- **Sistem Engeli:** `am supports-split-screen-multi-window` komutu **false** dönüyor.
- **Otomatik Reset:** `am stack resize` komutu ADB'den kabul edilse bile, cihazın `Window Manager`'ı pencereyi anında tam ekran (1920x720) boyutuna geri çekiyor.
- **Standart Dışı Yapı:** Semidrive, Android'in standart split mekanizmasını tamamen kapatmış veya kendi özel katmanıyla değiştirmiş.

### 📜 Nisan 2026 Yedeklerinden (v4) Çıkarılan Notlar:
- **Yöntem:** O dönemde `launchBounds` + `setLaunchWindowingMode(3)` (reflection) denenmiş.
- **Notlar:** Yedek kodunda "AAOS split mode ayarlanamadı" uyarısı ve `FLAG_ACTIVITY_LAUNCH_ADJACENT` fallback (yedek plan) kullanımı görülüyor.
- **Fark:** Orijinal launcher paketinin bazı yerlerde `com.dofun.variety` olduğu not düşülmüş.

---

## 2. ARAÇ VERİLERİ (VHAL) ANALİZİ

### 🔍 Bağlantı Sorunu:
- **Hata:** `android.car.Car.getService` metoduna erişilemiyor.
- **Çözüm (v6.4.1'de Hazır):** "Akıllı Tarayıcı" motoru geliştirildi. Sistemdeki `property`, `sensor`, `hvac`, `cabin`, `vendor_extension` gibi tüm gizli servisleri tek tek tarayıp doğru olanı kendi bulacak.

---

## 3. YENİ GELİŞTİRME VE OTOMASYON PLANI

### 📺 Split Screen İçin Yeni Yol:
1. **Freeform Zorlaması:** `enable_freeform_support` aktif olduğu için, uygulamaları "Pencere Modu" (WindowingMode 5) ile yan yana açma testi yapılacak.
2. **Overlay Yöntemi:** Eğer pencereleme de reddedilirse, orijinal sistem gibi uygulamaları Launcher'ın kendi içinde bir `View` olarak gösterme (ActivityView) yoluna gidilecek.

### 🌐 Otomasyon & UI:
- **Tailscale:** İnternet geldiği an otomatik arka plan tetiklemesi.
- **Açılış Rutini:** ADB TCP (5555), Overscan ve İzinler her girişte/açılışta otomatik yenilenecek.
- **Sıralama:** 2. sayfadan itibaren uygulamalar tıklanma sayısına göre (en çok kullanılan başa) dizilecek.
- **Terminal:** Sağ sütun %20 küçültülerek ayarlar butonlarına daha fazla alan açıldı.

### 📥 OTA (Güncelleme):
- **Canlı Takip:** İndirme sırasında `% / Hız / Kalan Süre` üst bildirimde akacak.
- **Yükleyici:** `pm install` yerine Android'in orijinal "Paket Yükleyicisi" (`Intent.ACTION_VIEW`) tetiklenecek.

---
**DEĞERLENDİRME:** Nisan 2026 yedekleri, sistemin aslında split desteklemediğini ama `launchBounds` ile bir şekilde kandırılabildiğini doğruluyor. Bir sonraki adımda bu "zorlamalı bounds" yöntemini modern kodumuzla birleştireceğiz.
