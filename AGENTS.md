# AGENTS.md — Omoda 5 Launcher AI System Prompt

**Versiyon:** 10.2.0 | **Platform:** Android 10 API 29 | **Cihaz:** Semidrive chery_t19c

Sen bu projenin AI asistanısın.
Bu dosya sana talimat verir — kullanıcıya rehber değildir.
Her yanıtta bu kuralları uygula.

---

## 0. MUTLAK KISITLAMALAR

Kullanıcı aksini istese bile geçerlidir:

| Kural                             | Açıklama                                                                                 |
|-----------------------------------|------------------------------------------------------------------------------------------|
| **Tam dosya üretme yasak**        | `.kt` dosyasını asla baştan sona yazma. Sadece değişen satırları ver.                    |
| **Onay olmadan değişiklik yapma** | Her kod önerisini ÖNCE/SONRA formatında sun, kullanıcı onayını bekle.                    |
| **API 30+ kullanma**              | Hedef API 29. `WindowInsetsController`, `ActivityResultContracts`, `SplashScreen` yasak. |
| **XML layout yazma**              | Proje tamamen Compose. ConstraintLayout, RecyclerView, ViewPager2 XML'i yazma.           |
| **Uydurma**                       | Emin olmadığın şeyi söyleme. "Bilmiyorum, dosyaya bakalım." de.                          |
| **Sorun atlatma**                 | Bir sorun çözülmeden diğerine geçme.                                                     |
| **OEM uygulamalarına dokunma**    | `com.chery.launcher`, `com.yfve.hvac` — bunlara müdahale etme.                           |
| **Araca yazma komutu üretme**     | CarPropertyManager sadece okuma/sniffing.                                                |

---

## 1. CİHAZ PROFİLİ

| Parametre              | Değer                                                       |
|------------------------|-------------------------------------------------------------|
| Cihaz adı              | `chery_t19c`                                                |
| Model                  | x9 for arm64 (Semidrive semidrive-x9-for-arm64)             |
| Üretici                | SEMIDRIVE                                                   |
| OS                     | **aaos 10 (API 29)**                                        |
| Build ID               | QQ1C.191205.016.A1                                          |
| Build tarihi           | 6 Nisan 2023                                                |
| Build tipi             | **userdebug** (geliştirici modu aktif)                      |
| CPU                    | ARM64-v8a (+ armeabi-v7a, armeabi uyumlu)                   |
| GPU                    | **PowerVR ROGUE**                                           |
| RAM heap max           | 512MB (büyüme limiti 192MB, başlangıç 16MB)                 |
| Depolama               | 32GB eMMC                                                   |
| Ekran                  | 1920×720 px, 160 dpi, Landscape (sabit 90°)                 |
| Sol bar                | 235px overscan                                              |
| Güvenli alan           | Sol 250dp, sağ 100dp                                        |
| ADB                    | TCP/IP :5555, auth yok, loopback: `127.0.0.1`               |
| WiFi                   | wlan0                                                       |
| GMS                    | **Yok** — Google Play Services, Maps, Location API çalışmaz |
| RIL                    | Devre dışı (`radio.noril=true`) — telefon yok               |
| Saat dilimi varsayılan | Asia/Shanghai (değiştirilebilir)                            |

---

## 2. PROJE KİMLİĞİ

| Alan            | Değer                                                        |
|-----------------|--------------------------------------------------------------|
| Package         | `com.omoda5.launcher`                                        |
| Activity        | `com.omoda5.launcher/.ui.MainActivity`                       |
| GitHub          | https://github.com/casacemal/Omoda5-launcher                 |
| APK adı         | `app-debugV<versionName>.apk`                                |
| Versiyon kıyası | `versionCode` (sayı) — `versionName` ile karşılaştırma yapma |

---

## 3. DUAL DISPLAY SİSTEMİ — KRİTİK

Cihazda **iki bağımsız ekran** vardır:

|            | Display Port 0   | Display Port 1                        |
|------------|------------------|---------------------------------------|
| Görev      | Ana infotainment | Araç kadranı (Cluster)                |
| Durum      | **Aktif**        | **Şu an kapalı**                      |
| Teknoloji  | Android UI       | EVS (Enhanced Video System)           |
| Dokunmatik | Var              | Yok                                   |
| HAL        | —                | `android.hardware.automotive.display` |

### Cluster Display Aktivasyonu

```bash
adb shell setprop ro.vendor.display.ports "0,1"
adb shell /vendor/bin/screentrigger &
adb reboot
# Kontrol:
adb shell dumpsys display | grep "port:"
```

### Cluster'a Activity Başlatma (API 29 uyumlu)

```kotlin
// İkinci ekranda (Cluster) activity başlat
val options = ActivityOptions.makeBasic()
options.launchDisplayId = 1  // Port 1 = Display ID 1
startActivity(Intent(this, ClusterActivity::class.java), options.toBundle())
```

### Cluster İçin Manifest İzni

```xml

<uses-permission android:name="android.permission.LAUNCH_MULTI_DISPLAY" /><uses-feature
android:name="android.hardware.automotive.display" android:required="false" />
```

---

## 4. MİMARİ — KRİTİK

### UI Sistemi: Jetpack Compose (XML yok)

```
ComponentActivity
    └── setContent { }
            ├── HorizontalPager       ← ViewPager2 DEĞİL
            ├── LazyVerticalGrid      ← RecyclerView DEĞİL
            └── Composable fonksiyonlar  ← XML layout DEĞİL
```

- **Activity tipi:** `ComponentActivity` — `AppCompatActivity` değil
- **Fragment:** Yok — tüm ekranlar Composable
- **Tema:** `MaterialTheme` / `CompositionLocalProvider` — `styles.xml` yok
- **Compose versiyonu:** `2.0.21` (Kotlin plugin)
- **compileSdk:** 34 | **minSdk:** 24 | **targetSdk:** 34

### Paket Yapısı

| Paket            | İçerik                                                                 |
|------------------|------------------------------------------------------------------------|
| `ui/`            | MainActivity, MultiTaskActivity, VehicleDataActivity, SettingsActivity |
| `ui/components/` | GlassIcon (Composable)                                                 |
| `ui/theme/`      | Theme.kt, Color.kt                                                     |
| `media/`         | MediaControlWidget, MediaControllerViewModel, OmodaMediaBrowserService |
| `services/`      | CheryAccessibilityService, MediaNotificationListener                   |
| `service/`       | AdbBridgeService, BootReceiver                                         |
| `common/`        | PreferencesManager, LogManager, UpdateManager                          |
| `model/`         | LauncherItem                                                           |
| `viewmodel/`     | VehicleDataViewModel                                                   |

### Bağımlılıklar

```kotlin
// Compose BOM: 2024.05.00
// Material3, Foundation, UI, Activity-Compose
// lifecycle-runtime-compose: 2.8.2   ← StateFlow için zorunlu
// media: 1.7.0
// okhttp3: 4.12.0
// android.car.jar → compileOnly (CarPropertyManager)
// Hilt / Room / Dagger YOK — ekleme
```

---

## 5. OEM PAKETLER VE SİSTEM ENTEGRASYONU

| Paket                      | Activity            | Görev            | Kural               |
|----------------------------|---------------------|------------------|---------------------|
| `com.chery.launcher`       | `.LauncherActivity` | OEM ana launcher | ❌ `pm disable` etme |
| `com.yfve.hvac`            | `.MainActivity`     | Klima kontrolü   | ❌ Müdahale etme     |
| `com.yfve.settings`        | —                   | Sistem ayarları  | ❌ Müdahale etme     |
| `com.yfve.car.androidauto` | —                   | Android Auto     | —                   |
| `com.yfve.car.carplay`     | —                   | Apple CarPlay    | —                   |

> ⚠️ **Cihazda test edildi:** `com.chery.hvac` çalışmıyor. Doğru paket: `com.yfve.hvac`

### HVAC Komutları

```bash
# Başlat
am start -n com.yfve.hvac/.MainActivity
# Durdur
am force-stop com.yfve.hvac
```

---

## 6. DEĞİŞTİRİLEMEZ KURALLAR

1. **1. Sayfa grid:** 5 Sütun × 2 Satır = 10 ikon. Sabittir. Değiştirme.
2. **Multi-Task 1:** Chery Media + Harita
3. **Multi-Task 2:** Musicolet + Harita
4. **Split screen:**
    - `am stack resize` root ile çalışıyor — **şimdilik MultiTaskActivity ile yönetiliyor**
    - `windowingMode` Semidrive'da çalışmıyor — kullanma
    - Freeform mod açma: `settings put global enable_freeform_support 1`
5. **İzinler:** Her açılışta `AdbBridgeService` ile enjekte edilir. Manuel dialog önerme.
6. **Terminal rengi:** `#00FF41` (Matrix Yeşili) — değiştirme
7. **Overscan:** `wm overscan -235,0,-70,0` (API 29'a özel, 30+'da çalışmaz)
8. **HVAC:** Her açılışta 2000ms gecikmeli başlatılır

---

## 7. VHAL / CANBUS — DOĞRULANMIŞ PROPERTY ID'LERİ

> Bu değerler Semidrive cihazda bizzat test edilip doğrulanmıştır.
> Polling aralığı: **4000ms** — sürekli `registerCallback` donmaya yol açar.

### Temel Sensörler

ActivityResultContracts kullanılabilir ancak mevcut proje mimarisiyle uyumlu olmalıdır.
| Sensör | Property ID | Tip | Not |
|--------|-------------|-----|-----|
| Hız | `0x11600207` | Float | m/s → km/h: ×3.6 |
| Motor devri (RPM) | `0x11600305` | Float/Int | — |
| Dış sıcaklık | `0x11600703` | Float | — |
| İç sıcaklık (Sol) | `0x15600502` | Float | — |
| İç sıcaklık (Sağ) | `0x15600503` | Float | — |
| Vites | `0x11400400` | Int | 1:N, 2:R, 4:P, 8:D |
| El freni | `0x11200402` | Boolean | — |

### Kapı Durumu (Özel Yöntem — AreaID Taraması)

```kotlin
// Property ID: 0x16400b00
// AreaID listesi: 1=Sol Ön, 4=Sağ Ön, 16=Sol Arka, 64=Sağ Arka, 0x20000000=Bagaj
val DOOR_AREAS = listOf(1, 4, 16, 64, 0x20000000)

DOOR_AREAS.forEach { areaId ->
    val value = carPropertyManager.getProperty(0x16400b00, areaId).getValue() as Int
    if (value > 0) isAnyDoorOpen = true
}
```

---

## 8. BİLİNEN KISITLAMALAR

| Kısıtlama                       | Durum                                            | Çözüm                                                     |
|---------------------------------|--------------------------------------------------|-----------------------------------------------------------|
| GMS yok                         | Google Play/Maps/Location çalışmaz               | OSMDroid (harita), Open-Meteo (hava)                      |
| Bildirim erişimi bloklu         | `enabled_notification_listeners` kısıtlı         | ADB: `settings put secure enabled_notification_listeners` |
| Standart nav bar yok            | Chery `LeftNavigationBar` kullanıyor             | `CheryAccessibilityService` jest tabanlı                  |
| Accessibility servisleri kapalı | `accessibility_enabled=0`, ayarlar kilitli       | ADB: `settings put secure enabled_accessibility_services` |
| Overlay izni reddediliyor       | `SYSTEM_ALERT_WINDOW` otomatik denied            | ADB: `appops set ... SYSTEM_ALERT_WINDOW allow`           |
| HVAC kayboluyor                 | Stock launcher tamamen kapatılırsa HVAC kaybolur | `pm disable` asla kullanma — sadece `set-home-activity`   |
| `windowingMode` split screen    | Semidrive'da çalışmıyor                          | `am stack resize` (root gerekir) — şimdilik MultiTask     |
| `wm overscan`                   | API 30+'da çalışmaz                              | API 29'da OK                                              |
| Cluster display (Port 1)        | Şu an kapalı                                     | `screentrigger` + property set (bkz. Bölüm 3)             |
| VHAL vendor property'leri       | Normal imzalı app erişemez                       | `ARAC_VERISI_ERISIM_REHBERI.md`                           |
| `pm install` OTA                | Güvenilmez                                       | `Intent.ACTION_VIEW` kullan                               |
| Hidden API erişimi              | Bazı API'ler varsayılan kısıtlı                  | `settings put global hidden_api_policy 1`                 |

---

## 9. KOD ÜRETME KURALLARI

### Değişiklik Formatı — Her zaman böyle sun:

```
📄 Dosya: MainActivity.kt
📍 Satır: 87
❌ Eski:
    val result = foo()
✅ Yeni:
    val result = foo() ?: return
📝 Neden: foo() null döndürebilir, NullPointerException önlendi
```

Birden fazla değişiklik varsa her biri için ayrı blok.

### Yasak API'ler (API 30+):

```kotlin
BUNLARI YAZMA
        WindowInsetsController         // API 30+
ActivityResultContracts         // API 30+ önerilir
SplashScreen                    // API 31+
WindowMetricsCalculator         // API 30+
Build.VERSION_CODES.R           // API 30 — projeye girmez
```

### Doğru Compose kalıpları:

```kotlin
// StateFlow → Compose state
val x by viewModel.xFlow.collectAsStateWithLifecycle()  // ✅ lifecycle-aware
val x by viewModel.xFlow.collectAsState()               // ⚠️ lifecycle-aware değil

// Liste — RecyclerView yok
LazyVerticalGrid(columns = GridCells.Fixed(5)) { }      // ✅

// Sayfalama — ViewPager2 yok
HorizontalPager(state = rememberPagerState { count }) { } // ✅
```

---

## 10. KRONİK SORUN HAFIZASI

| Sorun                       | Çözüm                                          | Dosya                 |
|-----------------------------|------------------------------------------------|-----------------------|
| Sonsuz güncelleme döngüsü   | `versionCode` karşılaştır, `versionName` değil | `UpdateManager.kt`    |
| Mükerrer ikon (aynı paket)  | `distinctBy { it.packageName }`                | `MainActivity.kt`     |
| Overlay izni verilemez      | `AdbBridgeService.injectPermissions()`         | `AdbBridgeService.kt` |
| Split screen binişme        | `am stack resize` kullan                       | —                     |
| `LocalLifecycleOwner` crash | `ViewTreeLifecycleOwner.get(view)`             | Fragment dosyaları    |

> Tam detaylar → `KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md`

---

## 11. HATA ÇÖZME PROTOKOLÜ

1. `KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md`'ye bak — daha önce çözülmüş olabilir.
2. **Log Taraması (KURAL):** Cihaz loglarında (`logcat`) veya dosyalarda arama yaparken daima önce **İngilizce terimlerle** (Örn: `HardKey`, `Exception`, `KeyCode`) arama yap.
3. **Veri Kaynağı Referansı (KURAL):** Fiziksel tuşlar, araç VHAL verileri veya CANBUS (RX/TX) iletişimini ilgilendiren herhangi bir konuyu araştırırken referans veri kaynağı olarak kesinlikle `OMODA5_VHAL_RX_TX_TECHNICAL_BOOK.md` dosyasını kullan.
4. **Çözüm Hikayeleştirme ve Belgeleme (KURAL):** Bulunan her büyük hata çözümü (özellikle çökmeler, donanım tuşları ve sistem kısıtlamaları), ilgili dokümantasyon dosyasına "Sorun neydi? Nasıl Keşfedildi? Ne Yapıldı?" şeklinde detaylı bir hikaye ve **birebir çalışan formül/kod kopyası** ile kalıcı olarak işlenmelidir. Asla kısa özet geçme.
5. Hatayı tek cümleyle tanımla.
6. Sadece hatalı satırı/bloğu düzelt — çevresine dokunma.
7. ÖNCE/SONRA formatında sun.
8. Kullanıcı onayını bekle.

---

## 12. REFERANS HARİTASI

| Ne arıyorsun?                          | Dosya                                |
|----------------------------------------|--------------------------------------|
| Değişmez teknik kurallar, koordinatlar | `PROJECT_CONSTRAINTS.md`             |
| Bileşen listesi, ADB komutları         | `AGENT_SKILLS.md`                    |
| Geçmiş sürümler                        | `CHANGELOG.md`                       |
| Kronik sorun çözümleri                 | `KESIN_COZUMLER_VE_TEKNIK_NOTLAR.md` |
| Araç verisi erişim sınırları           | `ARAC_VERISI_ERISIM_REHBERI.md`      |
| Medya widget mimarisi                  | `MEDIA_TASARIM.md`                   |

ADB_FASTBOOT_TUM_SATIRLAR.md