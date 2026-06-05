# 📘 OMODA 5 VHAL TECHNICAL MASTER GUIDE (THE FINAL OMEGA EDITION)
**Document ID:** CHERY-VHAL-T19C-OMEGA-ULTIMATE-V3
**Revision:** 22.0.0 | **Date:** June 2026
**Platform:** AAOS 10 (API 29) | **Hardware:** Semidrive x9 (Chery T19C)

---

## 0. CEMAL'İN SAHA NOTLARI VE KRİTİK SÖZLER (PRIMARY TRUTH)

Bu bölüm, cihaz üzerinde bizzat yapılan testlerden ve Cemal'in saha tecrübesinden elde edilmiştir. Projenin ana anayasasıdır.

### 0.1. ADB ve Shell Kullanımı
- **KRİTİK:** Cihaz shell içinde `adb logcat` **ÇALIŞMAZ**. Cihazda sadece `logcat` binary'si mevcuttur.
- **DOĞRU:** PC üzerinden `adb logcat`, cihaz terminalinden `logcat`.
- **Log Temizleme:** Teste başlamadan önce mutlaka `logcat -c` yapılmalıdır.

### 0.2. HardKey (Fiziksel Tuş) Mekanizması
Sistem, tuşları `WindowManager` seviyesinde yakalar ve şu yayın (broadcast) üzerinden dağıtır:
- **Action:** `com.saic.keyevent.hardkey.report`
- **İzleme Komutu:** `logcat | grep -i hardkey`
- **Bileşenler:** `WindowManager` → `CarHardkeyManager` → `SYSUI.HardKeyHandler` → `MEDIA.HardKeyBusiness`
- **CarPlay Entegrasyonu:** `CarPlayReceiver.onReceive` → `sendHardKey:keyTypeX`

### 0.3. Doğrulanmış Keycode Eşleşmeleri
| Keycode | Saha Tanımı | Gözlemlenen Davranış |
| :--- | :--- | :--- |
| **3** | KEYCODE_HOME | `openHomePage` tetikler. |
| **5** | KEYCODE_CALL | CarPlay hattına `keyType6` gönderir. |
| **25** | VOLUME_UP | Sistem UI (SYSUI) tarafından genelde `ignore` edilir. |
| **87** | MEDIA_NEXT | `CarHardkeyManager: mediaValue:3` görülür. |
| **289** | SRC / RADIO | `changeSource:Radio` akışını başlatır. |
| **290** | CP CONNECT | CarPlay (CP) bağlantı kontrolü. |
| **291** | NOT_PROCESSED | SYSUI işlemez, alt katmanlar işleyebilir. |
| **293** | VOICE / SIRI | Siri/Voice/Phone fonksiyonu (`keyType8`). |
| **294** | HOME (Internal)| SYSUI tarafından alınır. |

### 0.4. Loglardan Çıkarılan Sistem Bileşenleri
- `CarHardkeyManager: hardkey keycode:... press_down / shortPress_up`
- `SYSUI.HardKeyHandler: receive key code ... / ignore ... / openHomePage`
- `CarPlayCommClient: sendHardKey:keyType6`
- `MEDIA.HardKeyBusiness: onHardKey: Intent { act=com.saic.keyevent.hardkey.report }`

### 0.5. Sesli Asistan (STT) ve Tuş Tetikleme Mimarisi (DENENDİ VE ONAYLANDI)
Direksiyon tuşları arka plan (Binder) iş parçacığında `com.saic.keyevent.hardkey.report` üzerinden okunur. Bu veri akışından (RX) doğrudan Ana UI'a veya Vosk motoruna erişim sağlamak **SIGSEGV (Çökme)** hatasına neden olur.
- **Kullanılan Formül:** `Handler(Looper.getMainLooper()).post { }` kullanılarak RX verisi Ana İş Parçacığına yönlendirilmiş ve çökme tamamen engellenmiştir.
- **VOSK Model Yolu (Akıllı Tarama):** Orijinal Vosk Demo'su (`StorageService.unpack`) modeli `sync/model-tr` yoluna çıkarttığı için, sistemin modeli otomatik bulması adına aşağıdaki yollar taranacak şekilde koda işlenmiş ve test edilmiştir:
  1. `Android/data/com.omoda5.launcher/files/sync/model-tr` (Önceki sürümler ve Github standardı)
  2. `Android/data/com.omoda5.launcher/files/model-tr`
  3. `/sdcard/model-tr` veya `/sdcard/Download/vosk-model-small-tr-0.3`

---

## 1. OEM APK REVERSE MANTIĞI (RAW SMALI DECODING)

Bu bölüm, orijinal APK'lardan de-compile edilen ham eşleşmelerdir. **ASLA ÖZETLENEMEZ.**

### 1.1. CarBasicClient.smali (Gövde & Konfor)
```smali
0x21403001 -> mAutoLockSts          # Otomatik Kilitleme
0x21403002 -> mAutoFoldSts          # Ayna Katlama
0x21403003 -> mRemoteLockFeedbackSts # Kilit Onay Sesi
0x21403005 -> mPLGMaxPosition       # Bagaj Kapağı Maks.
0x21403006 -> mCWC_workingSts       # Kablosuz Şarj Çalışma
0x21403036 -> mCWC_ChargingSts      # Şarj Durumu (1:Şarj, 2:Hata, 3:FOD)
0x21403007 -> mCWC_PhoneForgotten   # Telefon Unutma Uyarısı
0x2140303c -> mCWC_PhoneForgottenMsg # Unutma Mesajı
0x21402000 -> mBCM_4_KeySts         # Uzaktan Kumanda Tuşları
0x21602023 -> mVehicleSpeedVSOSig   # Ham Hız (Float)
0x21402024 -> mVehicleSpeedVSOSigValid # Hız Geçerlilik
0x2140302c -> mICM_BrightnessLevel  # Parlaklık (0-10)
0x21403035 -> mSSMStatus            # SSM Durumu
0x2140203b -> mDayNightModeLight    # Gündüz/Gece (0:D, 1:N)
0x2140203c -> mDayNightModeLightByCan # CAN üzerinden Gündüz/Gece
0x2140203d -> mLightDetectedSts     # Işık Sensörü
0x21402016 -> mTrunkSts             # Bagaj Kilidi
0x21402018 -> mSrfSts               # Sunroof
0x21403042 -> mFDWindowSts          # Sürücü Camı (%)
0x21403043 -> mFPWindowSts          # Yolcu Camı (%)
0x21403044 -> mRLWindowSts          # Arka Sol Cam (%)
0x21403045 -> mRRWindowSts          # Arka Sağ Cam (%)
0x2140203e -> mScreenOverTemperatureSts # Ekran Isınma
0x2140306d -> mDMSSts               # Sürücü Yorgunluk (DMS)
```

### 1.2. CarDriveClient.smali (ADAS & ADH)
```smali
0x21403008 -> mAEBOnOffSts          # AEB (Acil Fren)
0x21403009 -> mFCWOnOffSts          # FCW (Ön Çarpışma)
0x2140300a -> mFCWSnvtySts          # FCW Hassasiyet (1:L, 2:M, 3:H)
0x2140300b -> mTJAICAExitTextInfoSts # TJA/ICA Bilgi
0x2140300c -> mOverSpeed            # Hız Aşım Uyarısı
0x2140300d -> mELKOnOffSts          # Acil Şerit Takibi
0x2140300e -> mLDWOnOffSts          # Şerit Terk Uyarı
0x2140300f -> mWarnModSts           # Uyarı Modu
0x21403010 -> mLDPOnOffSts          # Şerit Koruma (LDP)
0x21403011 -> mLDWLDPSnvtySts       # Şerit Hassasiyeti
0x21403012 -> mHDCCtrlSts           # Yokuş İniş Kontrolü
0x21403013 -> mESPSwitchStatus      # ESP On/Off
0x21403014 -> mDAIOnOffSts          # DAI Sistemi
0x2140303a -> mDriveModeSts         # Sürüş Modu (1:ECO, 2:N, 3:S)
0x21403054 -> mSlaSts               # Hız Sınırı (SLA)
```

### 1.3. CarHvacClient.smali (Klima & HVAC)
```smali
0x2140101a -> mDisplay              # Klima Panel Ekranı
0x2140101d -> mTemperatureUnit      # Birim (0:C, 1:F)
0x21401002 -> mClmOn               # AC Power (0/1)
0x21401003 -> mCompressorSts       # AC Kompresör
0x21401004 -> mCirculationModeSts  # Sirkülasyon (Dış/İç)
0x21401005 -> mBlowSpeedLevelSts   # Fan Hızı (1-7)
0x21401006 -> mModeAdjustSts       # Hava Yönü (0:A, 1:Y, 2:Cam)
0x21401007 -> mAutoSts             # Auto Modu
0x21401008 -> mTemperatureLeftC    # Sol Isı (17.0 - 32.0C)
0x21401009 -> mTemperatureRightC   # Sağ Isı (17.0 - 32.0C)
0x2140101b -> mTemperatureLeftF    # Sol Isı (Fahrenheit)
0x2140101c -> mTemperatureRightF   # Sağ Isı (Fahrenheit)
0x21401019 -> mElecClimateTemp      # Elektrikli Klima Isısı
0x2140101e -> mFGHeatSts           # Ön Cam Rezistans
0x2140101f -> mBGHeatSts           # Arka Cam Isıtma
```

### 1.4. CarAvmClient.smali (360 Kamera & Vites)
```smali
# AVM (Around View Monitor) ve Vites Pozisyonu
0x21402006 -> mGearPosition         # Vites Pozisyonu (0:P, 1:R, 2:N, 3:D)
0x2140203f -> mManualGearPosition   # Manuel Vites Pozisyonu
# mRadarWorkSts - Radar Çalışma Durumu
# mGearPosition - Vites Pozisyonu (R geri vites tetikleyici)
# GEAR_POSITION_DELAY_TIME = 0x1f4 (500ms gecikme)
```

### 1.5. Ham Smali Kod Parçaları (Source Evidence)
```smali
# CarBasicClient.smali -> public init()V
    const v2, 0x21403001
    const/4 v3, 0x0
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoLockSts:I

    const v4, 0x21403002
    invoke-virtual {v1, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mAutoFoldSts:I

    const v12, 0x21602023
    invoke-virtual {v1, v12, v3}, Landroid/car/hardware/property/CarPropertyManager;->getFloatProperty(II)F
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarBasicClient;->mVehicleSpeedVSOSig:F

# CarDriveClient.smali -> public init()V
    const v2, 0x21403008
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mAEBOnOffSts:I

    const v4, 0x21403009
    invoke-virtual {v1, v4, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mFCWOnOffSts:I

    const v13, 0x21403012
    invoke-virtual {v1, v13, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarDriveClient;->mHDCCtrlSts:I

# CarHvacClient.smali -> public init()V
    const v2, 0x2140101a
    invoke-virtual {v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mDisplay:I

    const v5, 0x21401002
    invoke-virtual {v1, v5, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mClmOn:I

    const v11, 0x21401008
    invoke-virtual {v1, v11, v3}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v1
    iput v1, v0, Lcom/chery/caradapter/carapi/client/CarHvacClient;->mTemperatureLeftC:I

# CarAvmClient.smali -> checkGearPosition()V
    const v1, 0x21402006
    const/4 v2, 0x0
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I
    move-result v0
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I
```

---

## 2. TÜM VERİ SÖZLÜĞÜ VE DÖNÜŞÜM FORMÜLLERİ

| Property ID | Teknik Tanım | Veri Tipi | Dönüşüm / Enum |
| :--- | :--- | :--- | :--- |
| `0x11600207` | Araç Gerçek Hızı | Float | `km/h = value * 3.6` (Saha Kanıtı: m/s → km/h) |
| `0x11600305` | Motor Devri | Float | `RPM = value` |
| `0x11600307` | Kalan Yakıt | Float | `Litre = value / 1000` |
| `0x11600308` | Menzil | Float | Doğrudan km |
| `0x11400400` | Vites Durumu | Int | 1:N, 2:R, 4:P, 8:D |
| `0x11400401` | Kontak Durumu | Int | 1:OFF, 2:ACC, 3:ON, 4:START |
| `0x11200402` | El Freni | Boolean | 0:OFF, 1:ON |
| `0x11600703` | Dış Sıcaklık | Float | Celsius |
| `0x15600502` | İç Sıcaklık (Sol) | Float | Celsius |
| `0x15600503` | İç Sıcaklık (Sağ) | Float | Celsius |

---

## 3. AREA ID KATMANI (BÖLGESEL KONTROL)

`0x16400b00` (Kapı) için AreaID maskeleri:
- **0x1 (1):** Sol Ön | **0x4 (4):** Sağ Ön | **0x10 (16):** Sol Arka | **0x40 (64):** Sağ Arka | **0x20000000:** Bagaj

```kotlin
// Tüm bölgeleri döngüyle tara (Cemal'in onayladığı yöntem)
val DOOR_AREAS = listOf(1, 4, 16, 64, 0x20000000)
DOOR_AREAS.forEach { areaId ->
    val value = carPropertyManager.getProperty(0x16400b00, areaId).getValue() as Int
    if (value > 0) isAnyDoorOpen = true
}
```
