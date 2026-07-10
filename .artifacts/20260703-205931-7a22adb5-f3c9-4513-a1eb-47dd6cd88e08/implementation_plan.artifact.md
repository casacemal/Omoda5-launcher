# [v2.0.0] Full Paket Geçişi ve UI Yenileme Planı

Bu plan, uygulamanın v2.x serisine geçişini, modellerin kalıcı hale getirilmesini ve kullanıcı arayüzünün (UI) yeniden düzenlenmesini kapsar.

## User Review Required

- **Model Taşıma Stratejisi:** Modeller ilk kurulumda Assets'ten `/sdcard/Omoda/Models` dizinine kopyalanacak. Sonraki "Update" paketlerinde Assets boş olsa dahi sistem buradan çalışmaya devam edecek.
- **UI Ölçeklendirme:** Uygulama ikonları %40 büyütüldüğünde ekran sığmama durumu olursa yatay kaydırma (Pager) sayfa sayısı artacaktır.
- **OTA Sürümü:** Mevcut `VERSION_CODE` 2000'den başlatılacaktır.

## Proposed Changes

### 1. Model Yönetimi (Kalıcılık)

#### [SherpaModelInstaller.kt](file:///mnt/depo/launcher_v2/app/src/main/java/com/omoda/lanc/tts/SherpaModelInstaller.kt)
- Modellerin birincil çalışma dizini `/sdcard/Omoda/Models` olarak değiştirilecek.
- Uygulama açılışında Assets'te yeni model varsa SDCard'a taşıyacak, yoksa SDCard'dakini kullanacak.
- Yazma izinleri için `AdbClient` üzerinden `mkdir` ve `cp` yetkileri kontrol edilecek.

---

### 2. UI Yerleşim ve Görsel Düzenleme

#### [MainActivity.kt](file:///mnt/depo/launcher_v2/app/src/main/java/com/omoda/lanc/MainActivity.kt)
- **App İkonları:** 2 satır sınırı getirilecek. İkon boyutları %40 artırılacak (`64.dp` -> `90.dp` civarı).
- **Kontrol İkonları:** Mic, Wallpaper ve Ayarlar butonları ekranın sağ yanından **sol alt köşeye** taşınacak.
- **Hizalama:** Sol kenar boşluğu (`-230.dp` / `235.dp` mantığı) korunacak.

#### [SettingsScreen.kt](file:///mnt/depo/launcher_v2/app/src/main/java/com/omoda/lanc/ui/screens/SettingsScreen.kt)
- Üst kısımdaki versiyon ve "GÜNCEL" yazısı font boyutu 2 katına çıkarılacak.

---

### 3. Sürüm ve OTA Yapılandırması

#### [version.properties](file:///mnt/depo/launcher_v2/app/version.properties)
- `VERSION_CODE=2000`
- `VERSION_NAME=2.0.0`

#### [build.gradle](file:///mnt/depo/launcher_v2/app/build.gradle)
- Hafif update paketleri için `sourceSets` içindeki `exclude 'sherpa_**'` kuralı otomatikleştirilecek (Build tipine göre).

## Verification Plan

### Automated Tests
- `python3 scripts/upload_release.py` ile v2000 sürümünün GitHub'a yüklenmesi.
- `adb shell ls -R /sdcard/Omoda/Models` ile dosya taşıma kontrolü.

### Manual Verification
- Omoda 5 ekranında ikon boyutlarının ve yerleşiminin gözle kontrolü.
- Ayarlar ekranındaki yazı büyüklüğünün teyidi.
- Çevrimdışı (Airplane mode) sesli komut testi.
