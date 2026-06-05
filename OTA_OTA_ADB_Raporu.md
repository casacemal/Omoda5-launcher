# OTA Güncelleme ve ADB Sessiz Yükleme Raporu (GÜNCEL)

## 1. API 29 (Android 10) OTA Yöntemleri

### Uygulanan Yöntem:
- **ADB Install**: `adb install -r -d <apk>` ile uygulama güncellemeleri.
- **Sessiz Yükleme**: `AdbBridgeService` üzerinden shell komutu olarak yürütülür.
- **Downgrade Desteği**: `-d` flag ile her zaman aktif.

### Cihaz Kısıtlamaları (HAYATİ):
- Android 10 (API 29) zorunlu.
- Sadece TCP/IP ADB (port 5555).
- ADB servisi uygulama ilk açıldığında **AÇIK** gelmelidir.
- Kimlik doğrulama (RSA key) istenmez.

## 2. APK Kaynakları

### GitHub Repository:
- **URL**: https://github.com/casacemal/Omoda5-launcher.git
- **Release API**: `https://api.github.com/repos/casacemal/Omoda5-launcher/releases/latest`

## 3. Uygulama Akışı (Update Logic)

1. **Sürüm Kontrolü**: Her açılışta (veya manuel) GitHub API sorgulanır.
2. **İndirme**: Yeni APK `ExternalFilesDir` içine `ota_update.apk` adıyla kaydedilir.
3. **Yükleme Tetikleyici**: `Ayarlar -> Güncelleme` butonu.
4. **ADB Komutu**: `pm install -r -d /storage/emulated/0/.../ota_update.apk`
5. **Geri Bildirim**: İşlem sonucu `48sp` punto ile ekranın üstünde 5 saniye gösterilir.

## 4. Proje Yapısıyla Uyumluluk

### Kontrol Listesi:
- [x] API 29 Hedefi.
- [x] Sadece TCP/IP ADB.
- [x] 250dp Sol / 100dp Sağ Padding kuralları.
- [x] HVAC 2000ms gecikmeli başlangıç.

## Sonuç
Sistem, `AdbBridgeService` üzerinden kendi kendini güncelleyebilir hale getirilmiştir. Bu süreçte barların ve UI düzeninin (5x2 grid) bozulmaması için tüm kurallar sabitlenmiştir.
