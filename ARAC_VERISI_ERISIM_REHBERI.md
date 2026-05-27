# Araç Verisi Erişim Rehberi (Normal App vs System)

**Tarih:** 27 Mayıs 2026  
**Hedef:** Semidrive / Android 10 (API 29)

## 1) Normal imzalı uygulama ile güvenli okunabilenler

- GPS tabanlı hız/konum (`ACCESS_FINE_LOCATION` ile)
- Cihaz sensörleri (ivme, gyro, pusula; cihaz destekliyorsa)
- Batarya, ağ, depolama, medya gibi standart Android verileri
- Uygulama kullanım istatistiği (`PACKAGE_USAGE_STATS` + `appops`)
- Kullanıcı açarsa Accessibility olayları
- ADB/shell üzerinden sınırlı `dumpsys car_service` çıktısı
- Log'a düşen araç olayları (`logcat` filtreleri ile)

## 2) Normal imzalı uygulama ile genelde okunamayanlar

- Kapı kilit/durum ham property'leri
- HVAC ham CAN/VHAL alanlarının tamamı
- Powertrain düşük seviye alanları (rpm/tork vb. vendor bağımlı)
- Vendor özel VHAL property ID'leri

## 3) Neden okunamıyor?

- Bu alanlar çoğunlukla `signature|privileged` korumalıdır.
- Normal release imza (kendi JKS) tek başına yeterli değildir.

## 4) Bu verileri açmak için gereken seviye

- Platform imza + `priv-app` kurulum
- Gerekirse system/vendor whitelist ve servis proxy
- Bazı cihazlarda BSP/vendor entegrasyonu

