# AGENT SKILLS & CAPABILITIES (GÜÇLÜ AGENT TANIMI)

Bu dosya, bu projede çalışacak yapay zeka asistanları için güçlü yetenekler ve uzmanlık alanlarını tanımlar.

## 1. CİHAZ BİLGİLERİ (DEVICE PROFILE)

### Temel Cihaz Özellikleri
- **Tür:** Otomotif (Android Automotive OS)
- **Platform:** AAOS (Android Automotive Operating System)
- **Model:** Omoda 5 Infotainment Ünitesi
- **API Seviyesi:** 29 (Android 10 / Q)
- **Ekran:** Landscape orientasyon, 1920x720, 160dpi
- **Görüntü Alanı:** 
  - Sol sidebar güvenli alan: 250dp
  - Sağ kenar boşluk: 100dp
  - Native split screen desteği: EVET

### Kritik Kısıtlamalar
- **Sadece API 29 uyumlu komutlar kullanılmalıdır**
- Android 11+ özelliklerine erişim yasak
- Automotive özel API'ler kullanılabilir

## 2. UYGULAMA MİMARİSİ (APPLICATION ARCHITECTURE)

### Paket Bilgileri
- **Package Name:** `com.omoda5.launcher`
- **Application ID:** `com.omoda5.launcher`
- **Launch Mode:** singleTask
- **Persistent:** true

### Ana Bileşenler
| Bileşen | Sınıf | Görev |
|---------|-------|-------|
| MainActivity | `ui/MainActivity.kt` | Ana launcher ekranı, 5 Sütun x 2 Satır Grid |
| LauncherSettingsActivity | `ui/LauncherSettingsActivity.kt` | Ayarlar, Sistem Kontrolü, Terminal ve Diagnostik |
| CheryAccessibilityService | `services/CheryAccessibilityService.kt` | Global Geri ve Home jestleri (Accessibility Overlay) |
| AdbBridgeService | `services/AdbBridgeService.kt` | Yerel soket üzerinden ADB komutu çalıştırma |

### Fragment Yapıları
- `VehicleDataFragment` - Araç verileri
- `VehicleDiagnosticsFragment` - Gelişmiş tanımlama
- `SplitPanelFragment` - Bölünmüş ekran paneli

### View Modelleri
- `SplitScreenViewModel` - Split screen yönetimi

## 3. ÖZEL KOMUTLAR VE KULLANIM (COMMANDS & USAGE)

### ADB Komutları
```bash
# ADB Bağlantısı (Localhost)
adb connect 127.0.0.1:5555

# HVAC Başlatma
am start -n com.yfve.hvac/com.yfve.hvac.MainActivity

# Overscan Ayarları (Kümülatif Mantık)
wm overscan -235,0,0,0    # Sol bar gizle
wm overscan 0,0,-70,0     # Sağ bar gizle
wm overscan -235,0,-70,0  # İkisini de gizle
wm overscan 0,0,0,0       # Sıfırla

# Paket Kurulumu (Sessiz)
pm install -r -d /path/to/apk
```

### Sistem Entegrasyonu
- **Stock Launcher:** `com.chery.launcher` (geçersiz kılınır)
- **HVAC:** `com.yfve.hvac`
- **Mirroring:** `com.yfve.car.androidauto`, `com.yfve.car.carplay`
- **Erişilebilirlik Hizmeti:** `com.omoda5.launcher.services.CheryAccessibilityService`

## 4. GELİŞTİRME KURALLARI (DEVELOPMENT RULES)

### Dil ve İletişim
- **Tüm iletişim:** Türkçe
- **Kod yorumları:** İngilizce (mevcut stile uygun)
- **Teknik dokümantasyon:** İngilizce/Türkçe

### Terminal ve Komut Görünürlüğü
- Tüm komutlar açık ve detaylı raporlanmalıdır
- Komutun amacı ve çıktısı belirtilmelidir

### API Uyumluluğu
- **ZORUNLU:** Tüm geliştirme API 29 (Android 10) uyumlu olmalıdır
- Android 11+ özellikleri (Activity Result API, yeni permission modelleri vb.) kullanılmamalıdır
- Gradle plugin: 8.5.2
- Kotlin plugin: 2.0.21

## 5. ÖZELLİK YETENEKLERİ (FEATURE CAPABILITIES)

### Split Screen
- **Tetikleyici:** Duvar kağıdı butonuna 1000ms uzun basılması
- **Düzen:** Sol/Sağ/Varsayılan uygulama yönetimi (Settings üzerinden)

### Global Jestler (Gestures)
- **Geri (Back):** Sağdan sola kaydırma (Overlay tabanlı)
- **Home:** Alttan yukarı kaydırma (Accessibility tabanlı)

### Anasayfa (Home) Düzeni
- **Grid:** 5 Sütun x 2 Satır (Toplam 10 ikon)
- **Padding:** Sol 250dp, Sağ 100dp (Barlar altında kalmamak için)
- **İkon Boyutu:** 180dp x 180dp

## 6. KOD TABANI İLKELERİ (CODING PRINCIPLES)

### Repository Pattern
- `AppSelectionRepository` - Uygulama seçimi
- `PreferencesManager` - Tercih yönetimi

### UI Pattern'leri
- ViewBinding zorunlu
- Material Design bileşenleri
- ViewPager2 ile sekme yapısı

## 7. TESPİT EDİLEN DURUMLAR (KNOWN STATUS)

1. **API 29 Sınırlamaları:** `wm overscan` Android 10'da çalışırken Android 11+'da çalışmaz.
2. **ADB Authentication:** Yerel bağlantıda RSA anahtarı sormaz.
3. **Home Tuşu:** KeyCode 3 intercept edilerek her zaman 1. sayfaya dönüş sağlanır.

## 8. REFERANS DOKÜMAN (YENİ)
- `ARAC_VERISI_ERISIM_REHBERI.md` dosyası mevcuttur.
- Araç verisi erişiminde normal app ve system/privileged sınırları için bu dosya temel referanstır.

---
**Son Güncelleme:** 2026-05-22
**Versiyon:** 1.1.0
