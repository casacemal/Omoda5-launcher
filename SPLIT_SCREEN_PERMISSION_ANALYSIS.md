# Split-Screen İzin ve Yapılandırma Analizi

## Tarih: 16.07.2026
## Kaynak: DisplayMirror (install.sh/bat), OpenLauncher (README/PiP), mini-aa, mevcut proje kodu

---

## 1. Mevcut Durum Tespiti

### 1.1 Kod ve Manifest Durumu

| Dosya | Split-Screen Yaklaşımı | Sorun |
|---|---|---|
| `DashboardScreen.kt` → `launchYandexSplit()` | `ActivityOptions.makeBasic()` ile fullscreen launch | **FLAG_ACTIVITY_LAUNCH_ADJACENT KULLANILMIYOR!** PROGRESS.md'de "native split-screen" yazmasına rağmen kod sadece fullscreen başlatıyor. |
| `MultiTaskActivity.kt` | `FLAG_ACTIVITY_LAUNCH_ADJACENT` + `am stack resize` | Stack ID'leri hardcoded (3,4). Semidrive X9'da farklı olabilir. `am force-stop` sonrası 2.5sn bekleme yetersiz olabilir. |
| `AndroidManifest.xml` | `MANAGE_ACTIVITY_STACKS`, `ACTIVITY_EMBEDDING`, `INTERNAL_SYSTEM_WINDOW`, `INJECT_EVENTS` tanımlı | **ADB ile grant edilmemiş olabilir!** Manifest'te olması yetmez, `pm grant` ile aktif edilmeli. |

### 1.2 PROGRESS.md ile Kod Tutarsızlığı

PROGRESS.md (Sürüm 6287) şöyle diyor:
> "DashboardScreen.kt 'Haritayi Ac' butonuna FLAG_ACTIVITY_LAUNCH_ADJACENT + android:activity.splitScreenCreateMode=1 (BOTTOM_OR_RIGHT) ile Yandex Navi'yi native split modunda baslatiyor."

**Gerçek kod:** `launchYandexSplit()` sadece `ActivityOptions.makeBasic()` kullanıyor, `FLAG_ACTIVITY_LAUNCH_ADJACENT` yok, `splitScreenCreateMode` yok.

---

## 2. Örnek Projelerden Çıkarımlar

### 2.1 DisplayMirror (Baghdady92/DisplayMirror)

**En kapsamlı split-screen referansı.** Şu kritik bilgileri sağladı:

#### a) ADB Key Zorunluluğu
```
Split-screen için ADB key'ler cihaza push edilmelidir.
Kurulum: adb push ~/.android/adbkey /data/local/tmp/adbkey
         adb push ~/.android/adbkey.pub /data/local/tmp/adbkey.pub
```
> "Force-stop and split-screen will not work without ADB keys." — install.sh uyarısı

#### b) Freeform Desteği Aktifleştirme
```bash
adb shell settings put global enable_freeform_support 1
```
Bu ayar **split-screen'in ön koşulu**. AAOS 10'da varsayılan olarak kapalı olabilir.

#### c) Split-Screen Akışı (windowingMode 5)
1. `settings put global enable_freeform_support 1`
2. Her iki uygulamayı `--windowingMode 5` (freeform) ile başlat
3. `am stack list` ile task ID'lerini bul
4. `am task resize <ID> <L> <T> <R> <B>` ile ekranı böl

#### d) appops İzinleri (pm grant YETMEZ!)
```bash
adb shell appops set <paket> SYSTEM_ALERT_WINDOW allow
adb shell appops set <paket> PROJECT_MEDIA allow
adb shell appops set <paket> REQUEST_INSTALL_PACKAGES allow
adb shell appops set <paket> USE_FULL_SCREEN_INTENT allow
```

#### e) deviceidle Koruma
```bash
adb shell dumpsys deviceidle whitelist +<paket>
```
Uygulamanın arka planda Android tarafından öldürülmesini engeller.

#### f) Tam Araba İzin Seti (install.sh'den)
```bash
# Car permissions (Android Automotive)
pm grant <paket> android.car.permission.CAR_SPEED
pm grant <paket> android.car.permission.CAR_ENERGY
pm grant <paket> android.car.permission.CAR_ENGINE_DETAILED
pm grant <paket> android.car.permission.CAR_POWERTRAIN
pm grant <paket> android.car.permission.CAR_TIRES
pm grant <paket> android.car.permission.CAR_INFO
pm grant <paket> android.car.permission.CAR_EXTERIOR_ENVIRONMENT
pm grant <paket> android.car.permission.CAR_MILEAGE
pm grant <paket> android.car.permission.CAR_VENDOR_EXTENSION
pm grant <paket> android.car.permission.CAR_DYNAMICS_STATE
pm grant <paket> android.car.permission.CONTROL_CAR_CLIMATE
pm grant <paket> android.car.permission.READ_CAR_DISPLAY_UNITS
pm grant <paket> android.car.permission.CAR_DRIVING_STATE
```

### 2.2 OpenLauncher (PiP/Freeform)

#### Kritik Keşif: Platform Sertifikası
> "This feature requires **AOSP platform-level signing** to access the window embedding APIs."

OpenLauncher'ın PiP (Picture-in-Picture) özelliği, freeform window için **sistem seviyesinde imza (platform certificate)** gerektiğini açıkça belirtiyor. Bu, bizim cihazda split-screen'in çalışmamasının **temel sebebi** olabilir:
- Uygulamamız **debug key** ile imzalı
- AAOS 10'da `FLAG_ACTIVITY_LAUNCH_ADJACENT` ve `windowingMode` için **platform imzası** veya **system priv-app** statüsü gerekebilir

#### mini-aa
- Clean split-panel layout (media + sol, apps + sağ)
- Kaynak kodu yok, sadece APK
- Kendi içinde bölünmüş layout kullanıyor (native Android split değil)

---

## 3. Kök Neden Analizi: Split-Screen Neden Çalışmıyor?

Üç ana sebep tespit edildi:

### Sebep 1: Eksik freeform_support Ayarı ⭐ En Olası
AAOS 10'da `enable_freeform_support` varsayılan olarak `0` (kapalı). Bu ayar açılmadan `FLAG_ACTIVITY_LAUNCH_ADJACENT` veya `windowingMode 3/5` çalışmaz.

**Çözüm:** ADB ile `settings put global enable_freeform_support 1`

### Sebep 2: Eksik ADB Key'leri
Split-screen `am task resize` gibi shell komutları gerektiriyor. ADB key olmadan bu komutlar yetkisiz kalır.

**Çözüm:** ADB key'leri `/data/local/tmp/`'ye push et

### Sebep 3: Platform İmza Eksikliği (OpenLauncher PiP Keşfi)
Debug key ile imzalanmış uygulamalar, AAOS'ta `FLAG_ACTIVITY_LAUNCH_ADJACENT` kullanamayabilir.

**Çözüm:** Cihazın platform sertifikasına erişim varsa onunla imzala, yoksa `windowingMode` + `am task resize` fallback'ini kullan.

### Sebep 4: Kod-PROGRESS.md Tutarsızlığı
`launchYandexSplit()`'te `FLAG_ACTIVITY_LAUNCH_ADJACENT` gerçekten yok. Kod fullscreen launch yapıyor.

---

## 4. Aksiyon Planı

### Aşama 1: ADB Ayarlarını Otomatikleştir (Hemen Yapılacak)

`MainActivity.kt` içine `grantSplitScreenPermissions()` fonksiyonu eklenecek. Bu fonksiyon her başlatmada:

1. `settings put global enable_freeform_support 1`
2. Eksik appops izinlerini ver:
   - `SYSTEM_ALERT_WINDOW allow`
   - `PROJECT_MEDIA allow`
   - `REQUEST_INSTALL_PACKAGES allow`
3. Eksik car permission'larını `pm grant` ile ver
4. `dumpsys deviceidle whitelist +com.omoda.lanc`
5. ADB key'leri `/data/local/tmp/`'ye kopyala (varsa)

### Aşama 2: launchYandexSplit() Düzeltmesi

`DashboardScreen.kt` içindeki launch fonksiyonuna:
- `FLAG_ACTIVITY_LAUNCH_ADJACENT` ekle
- `splitScreenCreateMode=1` dene
- Fallback olarak `--windowingMode 5` + `am task resize` ekle

### Aşama 3: Platform İmza Araştırması

Cihazdan platform sertifikası çıkarılabilir mi? `/system/etc/security/` veya `ota.key` kontrolü yapılacak.

---

## 5. Referans Komutlar (Hızlı Test İçin)

```bash
# Freeform desteğini aç
adb shell settings put global enable_freeform_support 1

# Kontrol et
adb shell settings get global enable_freeform_support

# Tüm izinleri ver (DisplayMirror seti)
PACKAGE=com.omoda.lanc

# appops
adb shell appops set $PACKAGE SYSTEM_ALERT_WINDOW allow
adb shell appops set $PACKAGE PROJECT_MEDIA allow
adb shell appops set $PACKAGE REQUEST_INSTALL_PACKAGES allow

# split-screen test
adb shell am start -n ru.yandex.yandexnavi/.MainActivity --windowingMode 5 --display 0
adb shell am stack list
# Task ID'lerini bul ve resize et:
# adb shell am task resize <taskId> 235 0 1077 720  (sol yarı)
# adb shell am task resize <taskId> 1077 0 1920 720 (sağ yarı)

# Alternatif: doğrudan FLAG_ACTIVITY_LAUNCH_ADJACENT test
adb shell am start -n ru.yandex.yandexnavi/.MainActivity -f 0x10000000 --ez launchAdjacent true
```

---

## 7. ÇALIŞAN KESİN YÖNTEM: Freeform + Task Resize (Coolwalk Düzeni)

AAOS 10 (Semidrive X9) üzerinde yapılan testler sonucunda, standart split-screen yöntemlerinin kısıtlı olduğu, ancak `freeform` modunun tam kapasite çalıştığı kanıtlanmıştır.

### Adım 1: Ön Koşullar (ADB ile Bir Kez Yapılmalı)
Uygulama içerisinden ADB portu (5555) kapalı olabileceği için PC'den şu komutun gönderilmesi şarttır:
```bash
adb shell settings put global enable_freeform_support 1
```

### Adım 2: Başlatma Algoritması
1. Hedef uygulamayı (Yandex/Google Maps) `--windowingMode 5` bayrağı ile başlat.
2. `am stack list` komutu ile uygulamanın o anki `taskId` değerini yakala.
3. `am task resize <taskId> <sol> <üst> <sağ> <alt>` komutu ile koordinatları belirle.

### Adım 3: Üst Barı Gizleme (UI Fix)
Freeform modunda görünen beyaz Title Bar'ı gizlemek için koordinatlar ekranın biraz dışına itilmelidir:
- **Normal Üst Sınır:** 0
- **Gizli Üst Sınır:** -44 (veya -40)
- **Komut Örneği:** `am task resize 4367 235 -44 1235 720`

### Adım 4: Coolwalk Koordinat Haritası (1920x720)
- **Sidebar (Sol):** 0 - 80 dp (80px @ 160dpi)
- **Harita (Orta):** 235px - 1235px (Geniş alan)
- **Medya/Bilgi (Sağ):** 1235px - 1920px (Kalan alan)

---

## 9. GOOGLE MAPS SPLIT-SCREEN DOĞRULAMASI (16.07.2026)

Google Maps (`com.google.android.apps.maps`) üzerinde yapılan testler sonucunda aşağıdaki yapılandırma ile tam uyum sağlanmıştır:

### Koordinat Verileri (Safe-Zone)
AAOS 10 negatif koordinatlara izin vermediği için en güvenli ve şık duran koordinatlar:
- **Left:** 235
- **Top:** 0 (Negatif -44 hata verir!)
- **Right:** 1235
- **Bottom:** 720

### Uygulama Yolu
`com.google.android.apps.maps/com.google.android.maps.MapsActivity`

### Önemli Not
Harita açıldığında Launcher'ın sağ tarafındaki widget'lar (Medya/Eco) görünmeye devam eder. Bu, gerçek bir "Coolwalk" (Dashboard) deneyimi sağlar.

