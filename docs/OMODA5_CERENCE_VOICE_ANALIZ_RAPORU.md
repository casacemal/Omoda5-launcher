# Omoda5 Cerence Voice Assistant - Sistem Analiz Raporu

> **Tarih:** 2026-06-25
> **Kaynak:** /mnt/depo/emulator_yapimi/omoda5-backup/ + backup-degismis/
> **Platform:** Chery Omoda5 (T19C) - AAOS 10, SEMIDRIVE X9, YFVE entegrasyonu

---
## 1. Sistemi Gelistiren Firmalar

| Bilesen | Firma | Rol |
|---------|-------|-----|
| Kokpit Platformu | Yanfeng Visteon (YFVE) - com.yfve.t19c.* | Tum AAOS entegrasyonu, CarPlay, Android Auto |
| Cip Seti | SEMIDRIVE (Nanjing SemiDrive Tech) | X9 serisi AAOS SoC |
| Sesli Asistan | Cerence Inc. (ABD) - com.chery.cerence | OEM lisansli, backup'ta YOK |
| STT | iFlytek (Cin) - com.chery.iflytekosservice | Ses tanima (backup'ta YOK) |
| Telefon Yansitma | Neusoft (Cin) - com.neusoft.ssp.ces.c4.car.assistant | QDLink (backup'ta YOK) |
| AVN Tools | com.avn.tools | Ses/video/navigasyon alt yapisi |
| Arac API | com.chery.caradapter.carapi | VHAL baglanti katmani |

---
## 2. Mimari Katmanlar

```
Cerence Runtime (com.chery.cerence.VrService)   <- backup'ta YOK
  | Binder IPC
  v
VrPlatformService (com.chery.libvr icinde)
  | queryFunctionToolBinder(code)
  v
VrFunctionBinderPool
  +- 3 = VrMediaBinder  (Media)
  +- 4 = VrNaviBinder   (Navigation)
  +- 7 = VrRadioBinder  (Radio)
  +- 8 = VrSettingBinder (Settings)
  |
  v
CarAdapterUse -> CarBasicClient, CarVolumeClient, CarPowerClient
  |
  v
VHAL (Vehicle Hardware Abstraction Layer)
```
---
## 3. Tüm Komut Matrisi

### 3.1 HVAC (Iklimlendirme)

| Kategori | Enum | Action Stringleri |
|----------|------|-------------------|
| Sicaklik | AcControlTemperature | ADJUST, MAX, MIN, PLUS, MINUS |
| Fan hizi | AcControlWindSpeed | ADJUST, MAX, MIN, MIDDLE, PLUS, MINUS |
| Klima modu | AcType | AUTO, GEAR |
| Sirkulasyon | AcSetCirculation | OPEN, CLOSE, TRANSFORM |
| Devirdaim tipi | AcCirculation | INNER, OUTSIDE, AUTO |
| Ufleme yonu | AcWindDirection | FACE, FACE_FOOT, FOOT, FOOT_DEFROST |
| Defrost | AcSetDefrost | OPEN, CLOSE, AUTO_OPEN |

### 3.2 Pencere / Tavan / Ic Aydinlatma

| Kategori | Enum | Action Stringleri |
|----------|------|-------------------|
| Pencere | ControlWindow | OPEN, CLOSE, FULLY_OPEN, FULLY_CLOSE, OPEN_HALF |
| Tavan/Sunroof | ControlRoof | OPEN, CLOSE, OPEN_HALF, ADJUST_PERCENT |
| Tavan tipi | ControlRoof(Type) | SKY_WINDOW, SKY_WINDOW_TILT, SUNSHADE, SMOKING_MODE |
| Ic aydinlatma | ControlHutLight | OPEN, CLOSE, ADJUST, MAX, MIN, PLUS, MINUS |

### 3.3 Medya / Muzik / Radyo

| Kategori | Enum | Action Stringleri |
|----------|------|-------------------|
| Muzik oynatma | MediaPlayState | PLAY, PAUSE, NEXT, PREVIOUS, REPEAT |
| Karistirma modu | MediaPlayMode | ORDER, RANDOM, SINGLE, CYCLE |
| Radyo band | RadioPlayByBand | FM, AM, DAB, UNLIMITED |
| Radyo state | RadioControlPlayState | PLAY, PAUSE, NEXT, PREVIOUS |

### 3.4 Isik / Far

| Kategori | Action Stringleri |
|----------|-------------------|
| Isik kontrolu | OPEN, CLOSE, SWITCH, PLUS, MINUS, CHECK |
| Isik tipleri | AMBIENT_LIGHT, FOG_LIGHT, HIGH_BEAM, LOW_BEAM, DAYTIME_RUNNING_LAMP, SMART_HIGH_BEAM_ASSISTANCE, HEAD_LAMP_HEIGHT_ADJUSTMENT, HEAD_LAMP_SLEEP |

### 3.5 Arac Ayarlari

**Sayfalar:** ADAS, LIGHT, AIRCONDITION, SMART_KEY, CUSTOMIZATION, VEHICLE_BASE_INFO, APPOINTMENT_CHARGE, CHARGE_HEAT_PRESERVATION

**VehicleSettingControl (ON/OFF):** ENGINE, DVR, DVR_PHOTO, CRUISE, AUTO_LOCK, AUTO_DEFOG, APPROACH_UNLOCK, SMART_KEY_LOCK, SMART_KEY_BACK_DOOR_LOCK, LEAVE_LOCK, CABIN_AUTO_CLEAN, CABIN_AUTO_REFRESH, FRESH_MIND, AIR_FRESH_AUTO_RUN, USHER_FRAGRANCE, USHER_LIGHT, WIRELESS_CHARGE, OUTSIDE_REARVIEW_AUTO_FOLD, BT_TALKING_AUTO_SLOW_WINDSPEED, PARKING_AUTO_INNER, TANK_PORT, CHARGE_PORT, PHONE_FORGET_REMIND, PHONE_BT_NO_KEY_ENTRY

### 3.6 Sistem / Cihaz

Sistem sayfalari (ID): 0=NONE, 1=BLUETOOTH, 2=WIFI, 3=SOUND, 4=SPEECH(VR), 5=DISPLAY, 6=SYSTEM, 7=VOLUME, 8=EQ

Cihaz toggle: BT, WIFI, HOTSPOT, NET, WIRELESS_CHARGING

Sistem ayarlari: VOLUME_PAGE, SOUND_EFFECT, SPEAKER_LOCALISM, TTS_SPEAKER, TTS_INCOMING, VIDEO_LIMIT, KEY_TONE, LOUDNESS, VR_PAGE, HELP_FEEDBACK

2-State (Ac/Kapa): TwoStateControl -> OPEN / CLOSE

Telefon Intent: com.chery.dialer.ACTION_SHOW_PAGE
Sayfalar: CALL_HISTORY, CONTACTS, DIAL_PAD

---
## 4. Cerence Ayarlari

| Key | Aciklama |
|-----|----------|
| cerence_vr_wakeup | Sesle uyandirma ON/OFF |
| cerence_vr_wakeup_hint | Wake-up ipucu sesi ON/OFF |
| cerence_vr_incoming_call | Gelen aramada VR ON/OFF |
| cerence_speaker | 1=Erkek, 2=Kadin (TTS sesi) |
| vr_custom_walkup_word | Ozel wake word |
| vr_cerence_sound_location | 0=Kapali, 1=Surucu, 2=Oto |
| vr_free_wake_up_time | 0=Kapali, 1=15sn, 2=30sn, 3=45sn |
| vr_oil_quantity_notify | Yakit bildirimi ON/OFF |
| vrWakeupWord | Wake word (Cerence'e gonderilir) |

---
## 5. Ses Altyapisi

**HAL:** audio.primary.chery_t19c.so, android.hardware.audio@2.0/4.0-impl.so, libnfdsp.so, libwebrtc_audio_preprocessing.so

**Konfig:** 2 ses bolgesi (on/arka), mikrofon ve voice_recognizer izinleri acik

---
## 6. Dil Destegi

en, zh, tr, ru, ar, es, pt, it, th, uk

---
## 7. Backup Durumu

**Olan:** com.chery.media APK (smali dahil), cerencethdoverlay, cerencetwooverlay, caradapter API, HAL binary'leri, sistem config

**Olmayan:** Cerence runtime APK, iFlytek, QDLink, TTS/STT modelleri, wake word model, ses dosyalari

---
## 8. Anahtar Smali Dosyalari

PackageConstants$Cerence.smali -> Cerence paket/servis adi
VrConstants.smali -> VRServicePackgeName, VRServiceClassName
SettingConstans.smali -> Tum VR ayar keyleri
VrPlatformService.smali -> Cerence'e baglanma
VrFunctionBinderPool.smali -> Servis type kodlari (3/4/7/8)
ParamsAction$*.smali -> Komut enumlari
ParamsType$*.smali -> Parametre tipleri
PageConstants$*.smali -> Intent sayfalari

---
## 9. Sonuc

Dogrudan kullanmak mumkun degil - Cerence runtime OEM lisansli.
Komut matrisi tamamen cikarildi.
IVrFunctionBinderPool arayuzu biliniyor - taklit edilebilir.
En gercekci yol: Hermes Agent tabanli yeni voice assistant yapmak.

*Rapor, backup dosyalarindan aapt + smali + strings analizi ile olusturulmustur.*
