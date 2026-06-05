# KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md — Kronik Sorun Arşivi
**Versiyon:** 11.3.0 | **Son Güncelleme:** 2026-06-05

Semidrive ünitesinde karşılaşılan kronik sorunların kesin çözümleri.
Yeni bir sorun çözülünce buraya eklenir. Aynı sorun iki kez yaşanmaz.

---

## ÇÖZÜM 1 — Sonsuz Güncelleme Döngüsü

**Sorun:** GitHub sürüm adı (`v6.5.x`) cihaz sürümüyle uyuşmadığında uygulama her açılışta güncelleme indiriyordu.

**Kök Neden:** `UpdateManager.kt` `versionName` (string) karşılaştırması yapıyordu.

**Kesin Çözüm:**
```kotlin
// YANLIŞ:
if (remoteVersionName > localVersionName)  // string karşılaştırma

// DOĞRU:
if (remoteVersionCode > localVersionCode)  // sayısal karşılaştırma
```

**Etkilenen Dosya:** `UpdateManager.kt`

---

## ÇÖZÜM 2 — Mükerrer İkon Sorunu

**Sorun:** `com.chery.media` altındaki Müzik, Video, Resimler ayrı ayrı "Medya" adıyla ana sayfada görünüyordu. 10 ikonluk grid bozuluyordu.

**Kesin Çözüm:** `MainActivity.kt`'e paket filtresi eklendi:
```kotlin
// Aynı paketten birden fazla ikon gösterme
val uniqueApps = apps.distinctBy { it.packageName }
```

**Etkilenen Dosya:** `MainActivity.kt`

---

## ÇÖZÜM 3 — Kilitli Sistem İzinleri

**Sorun:** AAOS 10, Overlay ve Medya Okuma izinlerini uygulama ayarlarından vermeye izin vermiyordu.

**Kesin Çözüm:** `AdbBridgeService` her açılışta otomatik enjekte eder:
```bash
appops set com.omoda5.launcher SYSTEM_ALERT_WINDOW allow
cmd notification allow_listener com.omoda5.launcher/.services.MediaNotificationListener
```

**Etkilenen Dosya:** `AdbBridgeService.kt` → `injectPermissions()`

---

## ÇÖZÜM 4 — Split Screen (Alan Paylaşımı)

**Sorun:** Sistem split-screen'i kısıtladığı için harita müzik çaların üstüne biniyordu.

**Kesin Çözüm:** `windowingMode` yerine doğrudan stack resize:
```bash
am stack resize 3 235 0 1077 720    # Sol uygulama
am stack resize 4 1077 0 1920 720   # Sağ uygulama (harita)
```

**Not:** Bu komutlar Semidrive'a özeldir. Başka cihazlarda farklı koordinatlar gerekebilir.

---

## ÇÖZÜM 5 — Semidrive LocalLifecycleOwner Crash

**Sorun:** `LocalLifecycleOwner` hatası uygulamayı çöktürüyordu.

**Kesin Çözüm:** Lifecycle-aware bileşenler için `ViewTreeLifecycleOwner` kullanıldı:
```kotlin
val lifecycleOwner = ViewTreeLifecycleOwner.get(view) ?: return
```

**Etkilenen Dosya:** İlgili Fragment/View dosyaları

---

## ÇÖZÜM 6 — Hayalet Klasör Sorunu

**Sorun:** `"` adında hayalet klasör oluşuyor ve dosya sistemi karışıklığına yol açıyordu.

**Kesin Çözüm:**
```bash
# Temizleme
adb shell rm -rf '/storage/emulated/0/"'
# Oluşumun engellenmesi: ilgili string escape'leri düzeltildi
```

---

## ÇÖZÜM 7 — Home Butonu Chery Launcher'a Gidiyordu

**Sorun:** Home tuşuna basınca `com.omoda5.launcher` yerine `com.chery.launcher` açılıyordu.

**Kesin Çözüm:**
```bash
adb shell pm disable-user com.chery.launcher
adb shell cmd package set-home-activity --user 0 com.omoda5.launcher/.ui.MainActivity
```

---

## YENİ SORUN EKLERKEN FORMAT

```markdown
## ÇÖZÜM N — Kısa Başlık

**Sorun:** Ne oluyordu?
**Kök Neden:** Neden oluyordu?
**Kesin Çözüm:** Kod veya komut
**Etkilenen Dosya:** Hangi dosya değiştirildi?
```

---

## ÇÖZÜM 8 — Native Split Screen (Kaydırılabilir Bölünmüş Ekran) Başarısızlığı

**Sorun:** `am stack resize 3` komutu veya `windowingMode=5` ile yapılan bölünmüş ekranlarda uygulamalar üst üste biniyor, kaydırma/boyutlandırma barı çıkmıyordu.
**Kök Neden:** Semidrive, dışarıdan ADB ile stack komutlarını veya `windowingMode`'u sınırlandırıyor. En stabil yöntem Android'in kendi Erişilebilirlik (Accessibility) Tetikleyicisi.
**Kesin Çözüm:** `CheryAccessibilityService` içerisinden `GLOBAL_ACTION_TOGGLE_SPLIT_SCREEN` çağrılır (ana uygulama dock'a alınır). Ardından 2. uygulama `FLAG_ACTIVITY_LAUNCH_ADJACENT` bayrağı ile başlatılır.
**Etkilenen Dosya:** `MultiTaskActivity.kt` & `CheryAccessibilityService.kt`

---

## ÇÖZÜM 9 — Media Denetleyicisinin (SecurityException) Çökmesi

**Sorun:** Cihaza APK atıldıktan sonra Launcher medya bilgisini okumuyor, "Medya Bekleniyor..." yazısında takılı kalıyordu.
**Kök Neden:** Semidrive sistemi, `MEDIA_CONTENT_CONTROL` iznini uygulamaya otomatik vermediği için `MediaSessionManager.getActiveSessions(null)` çağrısı `SecurityException` fırlatıp tüm sistemi kilitliyordu.
**Kesin Çözüm:** `null` yerine, uygulamanın kendi NotificationListener'ının `ComponentName`'i verilerek Android güvenlik duvarı bypass edildi.
```kotlin
val component = ComponentName(application, com.omoda5.launcher.services.MediaNotificationListener::class.java)
val sessions = sessionManager.getActiveSessions(component)
```
Ayrıca Vivaldi tarayıcısından dinlenen müziklerin de yakalanması için `MediaNotificationListener.kt` filtrelerine `"vivaldi"` eklendi.
**Etkilenen Dosya:** `MediaControllerViewModel.kt` & `MediaNotificationListener.kt`

---

## ÇÖZÜM 10 — Direksiyon Tuşlarının Kaybolması ve Asistan (STT) Başlatılırken Çökme (SIGSEGV)

**Sorun:** Direksiyondaki tuşlar algılanmıyor veya MIC (Sesli Asistan) tuşuna basılıp "Dinliyorum" arayüzü ekrana çağrılırken sistem "SIGSEGV (Segmentation Fault)" verip kilitleniyordu.
**Kök Neden:** Araçtaki fiziksel direksiyon tuşlarını (CANBUS üzerinden `com.saic.keyevent.hardkey.report` ile) dinleyen `SystemBridgeManager` arka plan Binder iş parçacığında çalışıyordu. Bu alt iş parçacığından doğrudan Ana UI'a (Toast/HUD) veya Ses Motoruna (SpeechRecognizer) müdahale edilmeye çalışıldığı için Android güvenlik protokolü uygulamayı çökertiyordu.
**Kesin Çözüm:** Direksiyon tuşu kodları (örn. 293 MIC, 85 Play/Pause vb.) değiştirilmeden korundu. Tuş olayı yakalandıktan sonra asistan veya bildirim tetiklemeleri `Handler(Looper.getMainLooper()).post { }` kullanılarak Ana İş Parçacığına (Main Thread) yönlendirildi. Bu sayede "Dinliyorum" ibaresi sorunsuz çalıştı ve kapanma hatası engellendi.
**Etkilenen Dosya:** `SystemBridgeManager.kt`

---

## ÇÖZÜM 11 — VHAL Dumpsys Line-Split (Satır Bölünme) Hatası ve HVAC Sensörleri

**Sorun:** Android 10 (Semidrive) cihazında `dumpsys car_service get-property-value` komutu çalıştırıldığında, çıktıda yer alan `int32Values:` veya `floatValues:` gibi etiketlerden hemen sonra otomatik olarak alt satıra geçiliyor (newline `\n`). Bu durum, logcat üzerinden VHAL verilerini okuyan Regex filtresinin verileri (özellikle boş dizileri `[]` veya tek elemanlı dizileri `[1]`) yakalayamamasına ve parse edememesine neden oluyordu.
**Kök Neden:** OEM sisteminin `dumpsys` aracı değerleri formatlarken `\n` ekliyor. Standart tek satırlık Regex işlemleri bu noktada kırılıyor. Ayrıca Klima (HVAC) sisteminin değerleri Android standart PID'lerinden ziyade `0x21401008` gibi üreticiye özel (OEM custom) ID'lerden dönüyordu.
**Kesin Çözüm:** 
1. `VhalManager.kt` içerisindeki okuma mekanizmasına bir **Line Buffer (Satır Tamponu)** eklendi. Gelen satırlar `string:` kelimesi görülene kadar bir tamponda birleştiriliyor. Böylece çok satırlı `dumpsys` çıktısı tek satıra indirgeniyor.
2. Regex, yeni satır hatalarını yok edecek şekilde güçlendirildi: `(?i)(?:value|floatValues|int32Values)[s]?[:=]\s*\[([^\]]*)\]`
3. Klima verileri için decompile edilmiş `CarHvacClient.smali` dosyasından okunan OEM özel Property ID'leri (`0x21401002`, `0x21401005`, `0x21401008`, `0x21401009`, `0x2140100a`, `0x21401007`) izleme listesine dahil edildi.
**Etkilenen Dosya:** `VhalManager.kt`, `DiagnosticLabActivity.kt`, `tools/vhal_debugger/*`
