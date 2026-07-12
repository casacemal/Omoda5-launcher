# PROGRESS.md

## Son Durum (Full System Stability & PC Dashboard)
*   Sürüm 6179 (6.0.0) - 12.07.2026 00:26
*   **Kod Audit Temizliği:** 57 maddelik kod tarama raporundaki tüm kritik ve yüksek öncelikli hatalar (güvenlik, crash, leak) giderildi.
*   **PC Veri İzleme Paneli:** `main.py` dosyasına "Canlı İzleme & Test" sekmesi eklendi; araç verileri (hız, vites, klima vb.) anlık takip edilebiliyor.
*   **Ölü Kod Temizliği:** Projede yer kaplayan ve kafa karıştıran ölü dosyalar (`NavGraph`, `HomeScreen` (old), `SensorSelectionDialog`, `WaveOverlayView`) silindi.
*   **Full Paket Hazır:** Sherpa ses modellerini içeren tam paket başarıyla derlendi ve cihaza yüklendi.
*   **GitHub & Backup Fix:** Token yetkilendirme ve yedekleme sistemi kararlılık yamaları uygulandı.

## Önceki Durum (GitHub OTA & Backup System Fixes)

## Önceki Durum (Handheld UI Optimization & Stability)

## Önceki Durum (Bridge & Simulator Controls Split)

## Önceki Durum (Compact Settings & Build Success)
*   Sürüm 6127 (6.0.0) - 11.07.2026 13:06
*   **Mobil Ayarlar Arayüzü İyileştirildi:** `SettingsScreen.kt` ve `SettingsComponents.kt` dosyaları güncellenerek mobil cihazlarda (telefon) daha kompakt ve kullanışlı bir görünüm sağlandı.
*   **Sensör İzleme Ekranı Eklendi:** `SensorMonitorScreen.kt` ile aracın tüm VHAL verileri tek ekranda toplandı (2sn yenileme).
*   **Hata Gidermeleri:** Build sırasında oluşan `isCompact` parametre hataları ve `lsun` gibi yazım hataları temizlendi.
*   **APK Çıkartıldı:** `app-updateV6119.apk` başarıyla derlendi ve `release_apks` dizinine kopyalandı.

## Önceki Durum (Sensor Monitoring & Navigation)

## Önceki Durum (Security & UX Refinement)
*   Sürüm 6113 (6.0.0) - 11.07.2026 10:18
*   **Firewall Bypass Onarıldı:** `CommandRouter.kt` artık firewall sonucunu bekliyor ve engellenen komutları `CommandResult.Blocked` olarak raporluyor.
*   **TTS Fallback Fix:** `EdgeOnlineTTSManager.kt` içindeki hata durumunda yanlış callback çağrımı düzeltildi, böylece ağ kopmalarında yerel TTS'e geçiş mümkün hale geldi.
*   **HUD Görünürlüğü Artırıldı:** `AssistantOverlayUI.kt` font boyutları (11sp->16sp, 19sp->24sp) otomotiv standartlarına göre büyütüldü.
*   **Ses Görselleştirme Aktifleştirildi:** Overlay pulse animasyonu artık `GlobalState.currentAmplitude` değerine göre dinamik olarak ölçekleniyor.

## Önceki Durum (Build & Stability Fixes)
*   Sürüm 6111 (6.0.0) - 11.07.2026 00:55
*   **Resim Kaynakları Onarıldı:** JPEG formatında olup .png uzantılı olan `ic_launcher` ikonları gerçek PNG formatına dönüştürüldü (AAPT2 hata giderme).
*   **Lint Hataları Giderildi:** `MissingPermission`, `NewApi`, `ProtectedPermissions` ve `NotificationPermission` hataları suppress edildi veya kod API 29 uyumlu hale getirildi.
*   **Manifest İyileştirmesi:** Sistem izinleri için `tools:ignore` eklendi ve eksik `uses-feature` (telephony) tanımları yapıldı.
*   **API 29 Uyumluluğu:** `ScreenRecorder.kt` içindeki API 31+ `MediaRecorder` constructor'ı API 29 uyumlu hale getirildi.

## Önceki Durum (Audio Standards & Manifesto Mühürleme)
*   Sürüm 6110 (6.0.0) - 11.07.2026 00:53
*   **Ses Standartları Mühürlendi:** Mikrofon kayıt parametreleri (16kHz, Mono, 1.6f SNR) `UI_MANIFESTO.md` dosyasına eklendi ve "değiştirilemez" olarak işaretlendi.
*   **Gain Optimizasyonu:** `SttManager.kt` içindeki `GAIN_FACTOR` (Yazılımsal Kazanç) referans projedeki agresif yapı baz alınarak 2.5'ten 3.5'e çıkarıldı.
*   **Manifesto Güncellemesi:** `UI_MANIFESTO.md` dosyası `UI & SES MANİFESTOSU` olarak genişletildi.

## Önceki Durum (UI Restoration & Chery Integration)
*   Sürüm 6076 (6.0.0) - 10.07.2026 17:55
*   **UI Ölçeklendirme Onarıldı:** Ayarlar ve ana ekran ikonlarının büyük görünme sorunu giderildi. Referans projeye (v9.3.0) uygun ölçüler (160dp container, 110dp icon) uygulandı.
*   **5x2 Grid Düzeni:** Ana ekran kesin olarak 5 sütun x 2 satır (10 ikon) düzenine sabitlendi.
*   **Chery İkon Entegrasyonu:** İlk sayfa ikonları Chery stok mipmap ikonları (`home_app_*`) ile değiştirildi ve stok uygulama paketlerine bağlandı.
*   **Hermes Bridge Landscape Fix:** `BridgeActivity` ekranının yan açılma sorunu `AndroidManifest.xml` üzerinden landscape zorlanarak çözüldü.
*   **Auto-Pairing Kodu:** DietPi kurulumları ile uyum için varsayılan eşleşme kodu `OMODA5` olarak set edildi.
*   **UI Manifestosu:** Gelecekteki tasarım bozulmalarını önlemek için `UI_MANIFESTO.md` oluşturuldu ve kurallar mühürlendi.

## Önceki Durum (Update Tab Fix & Version Info)
*   Sürüm 6075 (6.0.0) - 10.07.2026 18:30
*   **Market Sekmesi Geri Getirildi:** `SettingsScreen.kt` içindeki responsive tasarım güncellemesi sırasında kaybolan "Market" (Güncelleme) sekmesi geri eklendi.
*   ...