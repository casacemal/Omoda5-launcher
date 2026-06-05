# AGENT_SKILLS.md — Bileşenler, Komutlar ve Yetenekler

**Versiyon:** 9.0.0 | **Son Güncelleme:** 2026-05-22

AI asistanların bu projede etkili çalışabilmesi için gereken teknik referans.
Cihaz profili ve değişmez kurallar için → `PROJECT_CONSTRAINTS.md`

---

## 1. UYGULAMA MİMARİSİ

### Ana Bileşenler

| Sınıf                       | Dosya                                   | Görev                         |
|-----------------------------|-----------------------------------------|-------------------------------|
| `MainActivity`              | `ui/MainActivity.kt`                    | Ana ekran — 5×2 grid          |
| `LauncherSettingsActivity`  | `ui/LauncherSettingsActivity.kt`        | Ayarlar, terminal, diagnostik |
| `CheryAccessibilityService` | `services/CheryAccessibilityService.kt` | v8.9.7: 3-Way Home Intercept & Edge Gestures |
| `AdbBridgeService`          | `services/AdbBridgeService.kt`          | v8.9.7 Ultimate Socket Engine: Multi-IP, Live Stream |

### Fragment'lar

| Fragment                     | Görev                             |
|------------------------------|-----------------------------------|
| `VehicleDataFragment`        | 9 canlı araç verisi (4sn polling) |
| `VehicleDiagnosticsFragment` | VHAL hata teşhisi                 |
| `SplitPanelFragment`         | Bölünmüş ekran yönetimi           |

### ViewModel ve Repository

| Sınıf                      | Görev                                    |
|----------------------------|------------------------------------------|
| `SplitScreenViewModel`     | Split screen durum yönetimi              |
| `MediaControllerViewModel` | Medya oturumu StateFlow                  |
| `AppSelectionRepository`   | Uygulama seçimi ve sıralama              |
| `PreferencesManager`       | SharedPreferences sarmalayıcı            |
| `UpdateManager`            | OTA sürüm kontrolü (versionCode tabanlı) |

---

## 2. ADB KOMUT REFERANSİ

### Bağlantı

```bash
adb connect 127.0.0.1:5555
adb tcpip 5555
```

### Uygulama Yönetimi

```bash
# Launcher varsayılan home yap
adb shell cmd package set-home-activity --user 0 com.omoda5.launcher/.ui.MainActivity

# Chery launcher devre dışı
adb shell pm disable-user com.chery.launcher

# APK kur
adb shell pm install -r -d /storage/emulated/0/Download/app-debugV9.0.0.apk
```

### İzin Enjeksiyonu

```bash
adb shell appops set com.omoda5.launcher SYSTEM_ALERT_WINDOW allow
adb shell cmd notification allow_listener com.omoda5.launcher/.services.MediaNotificationListener
adb shell pm grant com.omoda5.launcher android.permission.PACKAGE_USAGE_STATS
```

### Ekran ve Overscan

```bash
wm overscan -235,0,-80,0    # Sol + Sağ bar gizle
wm overscan -235,0,0,0      # Sadece sol
wm overscan 0,0,-80,0       # Sadece sağ
wm overscan 0,0,0,0         # Sıfırla
```

### Split Screen

```bash
am stack resize 3 235 0 1077 720    # Sol panel
am stack resize 4 1077 0 1920 720   # Sağ panel
```

### HVAC ve Sistem

```bash
am start -n com.chery.hvac/.view.activity.MainActivity
dumpsys car_service
logcat -v time | grep com.omoda5.launcher
```

---

## 3. SİSTEM ENTEGRASYONU

| Sistem         | Paket                      | Not                           |
|----------------|----------------------------|-------------------------------|
| Stock Launcher | `com.chery.launcher`       | Devre dışı bırakılır          |
| HVAC           | `com.chery.hvac`           | 2000ms gecikmeli başlatılır   |
| Android Auto   | `com.yfve.car.androidauto` | —                             |
| CarPlay        | `com.yfve.car.carplay`     | —                             |
| VPN            | Tailscale                  | Bağlı değilse Watchdog bağlar |

---

## 4. BİLİNEN SINIRLAMALAR

| Konu                         | Durum                                                        |
|------------------------------|--------------------------------------------------------------|
| `wm overscan`                | API 29'da çalışır, API 30+'da çalışmaz                       |
| ADB auth (RSA key)           | Loopback bağlantıda sorulmaz                                 |
| `windowingMode` split screen | Semidrive'da çalışmaz — stack resize kullan                  |
| VHAL vendor property'leri    | Normal imzalı app erişemez → `ARAC_VERISI_ERISIM_REHBERI.md` |
| `pm install` OTA             | Güvenilmez → `Intent.ACTION_VIEW` kullan                     |

---

## 5. KOD YAZIM KURALLARI

- Tüm iletişim Türkçe, kod yorumları İngilizce
- MVVM + StateFlow + ViewBinding (zorunlu)
- API 29 sınırı — Activity Result API veya yeni permission modelleri kullanılmaz
- Her ADB komutunun amacı ve çıktısı kullanıcıya raporlanır
- **Özellik Eksiltmeme (No Feature Loss):** Eski sürümlerdeki fonksiyonlar korunmak zorundadır.
