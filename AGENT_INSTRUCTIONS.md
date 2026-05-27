# AGENT & DEVELOPER INSTRUCTIONS (ÖNEMLİ)

Bu dosya, bu proje üzerinde çalışacak tüm yapay zeka asistanları ve geliştiriciler için temel kuralları içerir.

## 0. CİHAZ BİLGİSİ (HAYATİ ÖNEM)
- **HEDEF CİHAZ API SEVİYESİ:** **API 29 (Android 10)**
- **ÖNEMLİ:** Tüm geliştirme, API kullanımı ve ADB komutları Android 10 (API 29) uyumlu olmalıdır. Daha yüksek API seviyelerine özel (Android 11+ gibi) özellikler kullanılmamalıdır.

## 1. DİL KURALLARI (LANGUAGE RULES)
- **TÜM İLETİŞİM:** Kullanıcı ile olan tüm diyaloglar, açıklamalar ve raporlar **TÜRKÇE** olmalıdır.
- **KOD:** Değişken isimleri, yorum satırları ve teknik dokümantasyon İngilizce kalabilir ancak kullanıcıya yapılan açıklamalar her zaman Türkçe olmalıdır.

## 2. TERMİNAL VE KOMUT GÖRÜNÜRLÜĞÜ
- Çalıştırılan tüm terminal komutları (`adb`, `gradlew`, `shell` vb.) kullanıcıya **açık, görünür ve detaylı** bir şekilde raporlanmalıdır.

## 3. PROJE ÖZEL DETAYLARI
- **ADB:** Varsayılan olarak AÇIK gelmelidir. Port `5555`. Kimlik doğrulama gerekmez.
- **Stok Launcher:** Paket adı `com.chery.launcher`'dır.
- **Klima (HVAC):** Paket adı `com.chery.hvac`'dır. (HAYATİ: Semidrive ünitesinde bizzat doğrulandı).
- **Ayna (Mirroring):** Android Auto (`com.yfve.car.androidauto`) ve CarPlay (`com.yfve.car.carplay`) paketleri YFVE adını korur.
- **APK İsimlendirme:** Çıktılar `app-debugV<versionName>.apk` formatında olmalıdır.
- **Overscan (Bar Gizleme):** 
    - Sol Bar: `-235`
    - Sağ Bar: `-70`
    - Akıllı Yönetim: Barların durumları hafızada tutulmalı ve birbirini bozmamalıdır.
- **Anasayfa Düzeni:**
    - Grid: **5 Sütun x 2 Satır** (Toplam 10 ikon).
    - Akıllı Sıralama: 2. Sayfadan itibaren uygulamalar tıklanma sayısına göre sıralanır. 1. Sayfa sabittir.
    - Padding: Sol 250dp, Sağ 100dp.
- **Ayarlar Panel Düzeni:**
    - Terminal Alanı: %20 küçültülmüş.
    - Ayar Butonları: Genişletilmiş ve görünür.
- **Global Gestures:**
    - Geri: Sağdan sola kaydırma.
    - Home: Alttan yukarı kaydırma.
- **Bildirimler:** İndirme oranını (%/Hız/Süre) canlı gösteren bildirim motoru aktif.

## 4. ÇALIŞMA PRENSİBİ
- `PROJECT_CONSTRAINTS.md` içindeki kurallar **ANAYASA** niteliğindedir ve kullanıcı aksini söylemedikçe değiştirilemez.
- Klima (HVAC) paketi `com.chery.hvac` olarak kalmalıdır.
- Bölünmüş Ekran için kesinlikle `am stack resize` koordinatları kullanılmalıdır.
- Tailscale ve Sistem Ayarları açılışta otomatik tetiklenmelidir.
- Her önemli değişiklikten veya derleme (build) işleminden önce/sonra kullanıcıya bilgi verilmeli ve gerekiyorsa onay alınmalıdır.
- Araç verileri, diagnostik ve terminal işlemleri `LauncherSettingsActivity` üzerinden yönetilir.

## 5. REFERANS DOKÜMANLAR (YENİ)
- `ARAC_VERISI_ERISIM_REHBERI.md` dosyası mevcuttur.
- Araç verilerinde normal uygulama erişimi vs. sistem/privileged erişim ayrımı için önce bu dosya okunmalıdır.
