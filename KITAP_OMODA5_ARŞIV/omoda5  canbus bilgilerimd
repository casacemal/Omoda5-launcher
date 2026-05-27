# Omoda 5 — Kesinleşmiş Canbus ve VHAL Bilgileri (v3)

Bu dosya, Semidrive ünitesinde bizzat test edilip doğrulanan kesin property ID'lerini ve kodlama yöntemlerini içerir.

## 🚗 1) Temel Araç Sensörleri (Doğrulanmış)
Bu veriler anlık değişim (on-change) yerine 4 saniyede bir sorgulama (polling) ile okunmalıdır.

- **Hız (Speed):** `0x11600207` (Float olarak döner, m/s -> km/h için 3.6 ile çarpılır).
- **Motor Devri (RPM):** `0x11600305` (Float/Int).
- **Dış Sıcaklık:** `0x11600703` (Float).
- **İç Sıcaklık (Sol):** `0x15600502`
- **İç Sıcaklık (Sağ):** `0x15600503`
- **Vites (Gear):** `0x11400400` (1:N, 2:R, 4:P, 8:D).
- **El Freni:** `0x11200402` (Boolean).

## 🚪 2) Kapı Durumu (Özel Yöntem)
Omoda 5'te kapı verisi için sadece ID yetmez, AreaID (Bölge) taraması yapılmalıdır.
- **ID:** `0x16400b00`
- **AreaId Listesi:**
  - `1` (Sol Ön), `4` (Sağ Ön), `16` (Sol Arka), `64` (Sağ Arka), `0x20000000` (Bagaj).
- **Kod Örneği (Kotlin):**
```kotlin
// Tüm bölgeleri döngüyle tara
DOOR_AREAS.forEach { areaId ->
    val value = carPropertyManager.getProperty(0x16400b00, areaId).getValue() as Int
    if (value > 0) isAnyDoorOpen = true
}
```

## ❄️ 3) Klima (HVAC) Kesin Bilgileri
Semidrive ünitesinde `yfve` paketi çalışmaz, aşağıdaki bilgiler asıldır:
- **Paket Adı:** `com.chery.hvac`
- **Açma Komutu:** `am start -n com.chery.hvac/.view.activity.MainActivity`
- **Kapatma Komutu:** `am force-stop com.chery.hvac`
- **Arka Plan Servisi:** `com.chery.hvac/.model.service.HavcService`

## ⏱️ 4) Performans Kuralı
Sistemi kasmamak için `VehicleDataFragment` içerisinde **4000ms (4 saniye)** aralıklı `Polling` mekanizması kullanılmalıdır. Sürekli `registerCallback` bu cihazda donmalara yol açabilir.

---
**Güncelleme Tarihi:** 25 Mayıs 2026
**Test Edilen Cihaz:** Semidrive semidrive-x9-for-arm64
