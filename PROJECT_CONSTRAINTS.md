# PROJECT_CONSTRAINTS.md — Değiştirilemeyen Kurallar

**Versiyon:** 9.0.0 | **Son Güncelleme:** 2026-05-22

Bu dosyadaki değerler kullanıcı aksini belirtmedikçe **değiştirilemez.**
Tüm AI asistanlar ve geliştiriciler bu dosyayı referans alır.

---

## 1. SİSTEM

| Parametre   | Değer                               |
|-------------|-------------------------------------|
| Android API | **29** (Android 10)                 |
| Platform    | Semidrive / AAOS                    |
| ADB Port    | **5555** (TCP/IP, auth yok)         |
| Bağlantı IP | `127.0.0.1` (fallback: `10.0.2.15`) |

---

## 2. PAKET VE SINIF ADLARI

| Bileşen                        | Değer                                              |
|--------------------------------|----------------------------------------------------|
| Launcher paketi                | `com.omoda5.launcher`                              |
| Orijinal (devre dışı) launcher | `com.chery.launcher`                               |
| HVAC paketi                    | `com.chery.hvac`                                   |
| HVAC Activity                  | `com.chery.hvac/.view.activity.MainActivity`       |
| Android Auto                   | `com.yfve.car.androidauto`                         |
| CarPlay                        | `com.yfve.car.carplay`                             |
| Accessibility servisi          | `com.omoda5.launcher/...CheryAccessibilityService` |

---

## 3. EKRAN VE OVERSCAN

```
Çözünürlük  : 1920×720 px, 160dpi, Landscape
Sol bar     : -235 (overscan)
Sağ bar     : -80  (overscan)
Sol padding : 250dp (güvenli alan)
Sağ padding : 100dp (güvenli alan)

Komut formatı:
  wm overscan -235,0,-80,0   → her ikisini gizle
  wm overscan 0,0,0,0        → sıfırla
```

---

## 4. UI KURALLARI

- **Grid:** 5 Sütun × 2 Satır = 10 ikon (1. sayfa sabittir, değiştirilemez)
- **İkon boyutu:** 180×180dp
- **2. sayfa:** Tıklanma sıklığına göre otomatik sıralama, favoriler en başta
- **Ayarlar butonları:** 20sp + Bold
- **Terminal:** Canlı loglar `#00FF41` (Matrix Yeşili) rengiyle akar
- **Terminal sütunu:** Sağ %20 küçük, sol ayarlar paneli geniş
- **favori ve gizleme : icon üzerine 3 sn den fazla basınca açılan menüden gizle yada favori seçimi.
  yapılır. ayarlar sayfsında gizlenen app ler geri alınabilir.

5. SPLIT SCREEN

Semidrive'da standart `windowingMode` çalışmaz. Her zaman ADB stack kullan:

```bash
am stack resize 3 235 0 1077 720    # Sol panel
am stack resize 4 1077 0 1920 720   # Sağ panel
```

- **Tetikleyici:** İkona 1 saniye uzun basış veya anasayfadaki Split butonu
- **Multi-Task 1:** Chery Media + Harita
- **Multi-Task 2:** Musicolet + Harita

---

## 6. JESTLER

| Jest                   | Eylem            |
|------------------------|------------------|
| Sağdan sola kaydırma   | Geri (Back)      |
| Alttan yukarı kaydırma | Ana Ekran (Home) |

---

## 7. OTA VE DERLEME

```
İndirme yolu    : /storage/emulated/0/Download/
Duvar kağıdı    : /storage/emulated/0/Download/wallpapers/
APK adlandırma  : app-debugV<versionName>.apk
Sürüm kontrolü  : versionCode (sayı) ile karşılaştır — versionName ile değil
Yükleme yöntemi : Intent.ACTION_VIEW (pm install güvenilmez)
GitHub API      : https://api.github.com/repos/casacemal/Omoda5-launcher/releases/latest
```

---

## 8. OTOMASYON (Her açılışta çalışır)

```bash
# ADB TCP aktif et
adb tcpip 5555

# Overlay izni
appops set com.omoda5.launcher SYSTEM_ALERT_WINDOW allow

# Medya bilgisi izni
cmd notification allow_listener .../MediaNotificationListener

# Overscan uygula
wm overscan -235,0,-70,0

# HVAC başlat (2000ms gecikmeli)
sleep 2 && am start -n com.chery.hvac/.view.activity.MainActivity
```

---

## 9. GRADLE VE BUILD

```
Gradle plugin  : 8.5.2
Kotlin plugin  : 2.0.21
Min SDK        : 29
Target SDK     : 29
ViewBinding    : zorunlu
```

---

## 10. SESLİ ASİSTAN (v10.1.0)

- **Hibrit Yapı:** Sistem STT ve VOSK (Offline) motorları.
- **Model Yükleme:** Modeller APK dışında `/sdcard/Android/data/com.omoda5.launcher/files/model-tr` dizininde tutulur.
- **Dinamik Güncelleme:** "İNDİR" butonu ile model dış kaynaklardan çekilir, APK boyutu 10MB altında tutulur.
