1|# 🚗 OMODA 5 — Android Unit Teknik Kitabı
2|
3|> **Oluşturma:** 2026-07-14 | **Amaç:** Android proje geliştirme referansı  
4|> **Gerektiğinde oku:** `read_file(path="/home/dietpi/OMODA5_ANDROID_UNIT_KITABI.md")`
5|
6|---
7|
8|## 1. Cihaz Kimliği
9|
10|| Özellik | Değer |
11||---|---|
12|| Araç | Chery Omoda 5 (T19C) |
13|| Platform | Yanfeng Visteon (YFVE) Kokpit |
14|| SoC | **SEMIDRIVE X9** (arm64) |
15|| İşletim Sistemi | **AAOS 10** (API 29) — Android Automotive 10 |
16|| Ekran | 1920×720 (Display 0) |
17|| Root | **ROOTLU** (su root erişimi var) |
18|| Ses HAL | `audio.primary.chery_t19c.so` |
19|| Ses Asistanı | **Cerence Inc.** (OEM lisanslı, yedek yok) |
20|| STT (fabrika) | **iFlytek** (Çin, yedek yok) |
21|| Telefon Yansıtma | **Neusoft QDLink** (yedek yok) |
22|
23|---
24|
25|## 2. Donanım Detayları
26|
27|### 2.1 Ekran & UI
28|- **Çözünürlük:** 1920×720
29|- **Grid:** 5×2 (ana ekran), 235dp sidebar (sabit)
30|- **Split-Screen:** AAOS 10'da `ActivityView` çalışmıyor → `windowingMode 3` + `com.yfve.t19c.projection.carplay.service` deneniyor
31|
32|### 2.2 Ses Sistemi
33|- 2 ses bölgesi: ön / arka
34|- Aktif: mikrofon + voice_recognizer
35|- HAL'ler: `audio.primary.chery_t19c.so`, `android.hardware.audio@2.0/4.0-impl.so`, `libnfdsp.so`, `libwebrtc_audio_preprocessing.so`
36|- Dil desteği: en, zh, tr, ru, ar, es, pt, it, th, uk
37|
38|### 2.3 Fiziksel Tuşlar (Hardkey)
39|- Vendor-specific keycode'lar: **289–294**
40|- Broadcast: `com.saic.keyevent.hardkey.report`
41|
42|---
43|
44|## 3. VHAL Sensör Verileri
45|
46|### Standart Android Sensor ID'leri
47|
48|| Kategori | Sensörler |
49||---|---|
50|| **Kapı** | `DOOR_LOCK`, `DOOR_POS` |
51|| **Cam/Tavan** | `WINDOW_POS` |
52|| **HVAC** | `AC_ON`, `FAN_SPEED`, `SEAT_TEMPERATURE`, `SEAT_VENTILATION`, `DEFROSTER` |
53|| **Işıklar** | `HEADLIGHTS_STATE`, `HIGH_BEAM_LIGHTS_STATE`, `HAZARD_LIGHTS_STATE`, `FOG_LIGHTS_STATE` |
54|| **Motor** | `IGNITION_STATE`, `ENGINE_RPM`, `ENGINE_OIL_TEMP`, `ENGINE_OIL_LEVEL` |
55|| **Enerji** | `FUEL_LEVEL`, `EV_BATTERY_LEVEL`, `EV_CHARGE_PORT_OPEN`, `EV_CHARGE_PORT_CONNECTED`, `RANGE_REMAINING` |
56|| **Sürüş** | `PERF_ODOMETER`, `PERF_VEHICLE_SPEED`, `ENV_OUTSIDE_TEMPERATURE` |
57|
58|### Eksik VHAL Sensörleri (CAN-BUS üzerinden olabilir)
59|- `SEAT_BELT_BUCKLED`, `SEAT_OCCUPANCY`, `TIRE_PRESSURES` (TPMS)
60|
61|### OEM Custom Sensor Blokları (`0x21xx` serisi)
62|- `0x2140xx` — Koltuk masajı
63|- `0x2170xx` — Ambiyans ışık
64|- `0x2110xx` — ADAS
65|- `0x2160xx` — Kamera
66|
67|---
68|
69|## 4. Yazılım Mimarisi
70|
71|### 4.1 Launcher v2 Katmanları (7 Sabit Katman)
72|
73|```
74|1. Hardware/VHAL          → CarPropertyManager + Dumpsys
75|2. Yürütme/ADB             → Komut → fiziksel eylem
76|3. Reaktif Merkez/EventBus → SharedFlow (tek iletişim noktası, NO POLLING)
77|4. Telemetri/MQTT          → MqttTelemetryBridge → 100.95.239.119:1883
78|5. AI/Hermes               → STT → LLM → TTS pipeline
79|6. UI/Overlay              → Compose UI (5×2 grid, 235dp sidebar)
80|7. PC Simülasyon           → Python VHAL AES simülatörü
81|```
82|
83|**Kural: Yeni katman eklenemez!**
84|
85|### 4.2 Sesli Asistan Pipeline'ı
86|```
87|Kullanıcı → Wake Word / HardKey
88|  → SttManager (16kHz 16-bit mono WAV)
89|    → STT (9Router:20128 veya yerel 5000)
90|      → AgentManager → CommandRouter (yerel regex)
91|        → LLM (Hermes 8642 SSE)
92|          → CommandFirewall (güvenlik/hız kontrolü)
93|            → ActionExecutor
94|              → TTS (Edge TTS 10201 HTTP Stream → MediaPlayer)
95|```
96|
97|**Fallback:** Sunucu kapalı → yerel Android STT/TTS.  
98|**İnternet yok** → sadece çevrimdışı komutlar.  
99|**Ses önceliği:** ALERT > AI > NAV > MUSIC
100|
101|### 4.3 Cerence Ses Asistanı (Fabrika)
102|```
103|Cerence Runtime (com.chery.cerence.VrService)
104|  → VrPlatformService (com.chery.libvr)
105|    → VrFunctionBinderPool (3=Media, 4=Navi, 7=Radio, 8=Settings)
106|      → CarAdapterUse (CarBasicClient, CarVolumeClient, CarPowerClient)
107|        → VHAL
108|```
109|
110|⚠ Cerence OEM lisanslı, yedek yok. Doğrudan kullanılamaz.
111|
112|---
113|
114|## 5. Ağ Mimarisi
115|
116|### Ana IP: `100.95.239.119` (Tailscale) / `192.168.1.14` (LAN)
117|
118|| Port | Servis | Açıklama |
119||---|---|---|
120|| **8642** | Hermes API | Chat/LLM |
121|| **8766** | Hermes WS Relay | Android Bridge connection |
122|| **8765** | BridgeServer | Ktor HTTP (direkt USB/LAN) |
123|| **20128** | 9Router | STT/TTS proxy, OpenAI-compat |
124|| **5000** | Wyoming Bridge | STT fallback |
125|| **10201** | Edge TTS | Text-to-Speech |
126|| **5002** | Sherpa STT | Offline ASR |
127|| **1883** | MQTT | Telemetri (omoda/telemetri) |
128|
129|### Endpoint'ler
130|- **9Router:** `http://100.95.239.119:20128/v1`
131|- **MQTT:** `tcp://100.95.239.119:1883`
132|- **API Key:** ortak (sk-b6f...9a58)
133|
134|---
135|
136|## 6. Komut Matrisi
137|
138|| Kategori | Örnek Komutlar |
139||---|---|
140|| **HVAC** | Sıcaklık, fan, mod, sirkülasyon, üfleme, defrost |
141|| **Pencere/Tavan** | Aç/kapa/yolla, sunroof, tente, iç aydınlatma |
142|| **Medya/Radyo** | Play/Pause/Next/Prev, FM/AM/DAB, shuffle |
143|| **Işık/Far** | Ambient, sis, uzun/kısa, gündüz farı, akıllı far |
144|| **Araç Ayarları** | ADAS, DVR, cruise, kilit, kablosuz şarj, koku, oda spreyi |
145|| **Sistem** | Bluetooth, WiFi, Hotspot, Ses, Ekran, EQ |
146|
147|---
148|
149|## 7. Bilinen Kısıtlamalar & Sorunlar
150|
151|| # | Sorun | Açıklama |
152||---|---|---|
153|| 1 | **Notification Access** | Menü tamamen gizli, 3. parti launcher medya bilgisi çekemiyor |
154|| 2 | **Navigation Bar** | Standart Android tuşları yok, Chery LeftNavigationBar kullanılıyor |
155|| 3 | **Accessibility** | Kilitli (`accessibility_enabled=0`) |
156|| 4 | **Overlay İzni** | Sistem tarafından reddediliyor |
157|| 5 | **Cerence Lisansı** | OEM lisanslı, backup'ta yok → doğrudan kullanılamaz |
158|| 6 | **RDS Decoder** | FM Radyo RDS devre dışı/eksik |
159|| 7 | **ActivityView (AAOS10)** | Split-screen için çalışmıyor → SurfaceFlinger crash riski |
160|| 8 | **Groq/Harici Bulut Yasak** | Tüm AI/ses 9Router üzerinden |
161|| 9 | **Earth/Gravity Sensor** | AAOS10'da yok (API23+ gerekiyor) |
162|| 10 | **TPMS** | VHAL'de yok, CAN-BUS üzerinden olabilir |
163|
164|---
165|
166|## 8. Geliştirme Notları
167|
168|### Build & Deploy
169|- **Root proje:** `launcher_v2` (Gradle, :app / :core / :network / :voice-offline)
170|- **APK türleri:** `isUpdateOnly=true` (hafif), full APK (model güncellemesi)
171|- **ADB:** `adb connect 100.121.172.79:5555` (Omoda5 Tailscale)
172|- **Paket:** `com.omoda.lanc`
173|- **Test cihazı:** Sony Xperia Z5 (ADB)
174|
175|### Güvenlik Kuralları
176|- Shared UID bypass → AOSP patch (`0001-lab-bypass-shared-uid-signature-check.patch`)
177|- Command Firewall: tüm AI komutları güvenlik kontrolünden geçer
178|- ActivityView/SurfaceView gizleme: `alpha(0f)` kullan, `offset(10000.dp)` yasak
179|
180|### Dış Servis Kuralları
181|- ✅ Yerel Hermes (8642), 9Router (20128), MQTT (1883)
182|- ❌ Groq / OpenAI / harici bulut API'leri yasak
183|- ✅ Edge TTS (yerel, 10201)
184|
185|---
186|
187|## 9. Referans Dökümanlar
188|
189|| # | Dosya | Konum (Lenovo PC) |
190||---|---|---|
191|| 1 | AGENTS.md | `/mnt/depo/launcher_v2/AGENTS.md` |
192|| 2 | PROJECT_BRIEF.md | `/mnt/depo/launcher_v2/PROJECT_BRIEF.md` |
193|| 3 | SISTEM_CALISMA_MANTIGI.md | `/mnt/depo/launcher_v2/SISTEM_CALISMA_MANTIGI.md` |
194|| 4 | UI_MANIFESTO.md | `/mnt/depo/launcher_v2/UI_MANIFESTO.md` |
195|| 5 | ROADMAP.md | `/mnt/depo/launcher_v2/ROADMAP.md` |
196|| 6 | OMODA5_CERENCE_VOICE_ANALIZ_RAPORU.md | `/mnt/depo/launcher_v2/docs/` |
197|| 7 | OMODA5_SENSORS.md | `/mnt/depo/launcher_v2/docs/` |
198|| 8 | MIC_WORKFLOW.md | `/mnt/depo/launcher_v2/docs/` |
199|| 9 | FILE_INDEX.md | `/mnt/depo/launcher_v2/FILE_INDEX.md` |
200|| 10 | POSTMORTEM_ACTIVITYVIEW_CRASH.md | `/mnt/depo/launcher_v2/POSTMORTEM_ACTIVITYVIEW_CRASH.md` |
201|
202|---
203|
204|> **Sonraki oku:** `read_file(path="/home/dietpi/OMODA5_ANDROID_UNIT_KITABI.md")`  
205|> **Memory'de önemli bilgiler:** Omoda5 AAOS10, SEMIDRIVE X9, 7 katman, port/IP, kısıtlar
206|


---

## 10. Build & Sistem Özellikleri

### 10.1 Build Bilgileri

| Özellik | Değer |
|---|---|
| **Build ID** | `chery_t19c-userdebug 10 QQ1C.191205.016.A1 eng.user.20230406.230150 test-keys` |
| **Android** | 10 (API 29) |
| **SDK** | 29 |
| **Security Patch** | 2019-12-05 |
| **Build Type** | `userdebug` (root erişilebilir) |
| **Brand** | `yfve` |
| **Device** | `chery_t19c` |
| **Manufacturer** | `SEMIDRIVE` |
| **Product Name** | `chery_t19c` |
| **Board Platform** | `x9` |
| **Hardware** | `x9m_ref` |
| **Hardware Camera** | `v4l2.x9` |
| **EGL** | `POWERVR_ROGUE` |

### 10.2 Bellek & Depolama

| Özellik | Değer |
|---|---|
| **Toplam RAM** | 2,961,880 KB (~2.8 GB) |
| **Boş RAM** | 214,068 KB (~209 MB) |
| **Kullanılabilir RAM** | 737,680 KB (~720 MB) |
| **Buffer** | 32,856 KB |
| **Cached** | 571,616 KB |
| **/data Partition** | 8.5 GB (6.5 GB kullanılmış, 1.9 GB boş — **%78 dolu**) |

⚠️ **/data partition dolu:** Yeni APK/large dosya eklerken dikkatli ol.

### 10.3 Donanım Bileşenleri

| Bileşen | Detay |
|---|---|
| **GPU** | PowerVR Rogue (SEMIDRIVE X9) |
| **Kamera** | v4l2.x9 driver |
| **Işık Sensörü** | `/sys/class/i2c-dev/i2c-8/device/8-0044/` (I2C bus 8) |
| **Ekran** | 1920×720, 50.62 FPS, density 160 (799×177 DPI), BUILT_IN, FLAG_SECURE |
| **Ağ (wlan0)** | `192.168.24.89/24` (MAC: `f8:6b:14:29:bb:fe`) |
| **Timezone** | `Europe/Istanbul` |

---

## 11. Ekran & Display Detayları

| Özellik | Değer |
|---|---|
| **Adı** | "Yerleşik Ekran" |
| **Çözünürlük** | 1920×720 (portrait) |
| **FPS** | 50.62249 (tek mod: `id=1`) |
| **Density** | 160 dpi (799.475 × 177.553 fiziksel DPI) |
| **Renk Modu** | 0 (sRGB) |
| **HDR** | Var (HdrCapabilities mevcut) |
| **Dokunma** | INTERNAL |
| **Rotation** | 0 (landscape) |
| **Flags** | DEFAULT_DISPLAY, ROTATES_WITH_CONTENT, SECURE, SUPPORTS_PROTECTED_BUFFERS |
| **Unique ID** | `local:0` |

---

## 12. Aktif Servisler (Anlık)

| Servis | Paket | Açıklama |
|---|---|---|
| `CarService` | `com.android.car` | AAOS temel servisi |
| `GoogleTtsService` | `com.google.android.tts` | Google TTS aktif |
| `HavcService` | `com.chery.hvac` | HVAC kontrol |
| `SettingService` | `com.chery.settings` | Sistem ayarları |
| `BrightnessServer` | `com.chery.settings` | Parlaklık kontrol |
| `IPNService` | `com.tailscale.ipn` | Tailscale VPN |
| `OtaUpdateService` | `com.omoda.lanc` | OTA güncelleme servisimiz |
| `UsbVideoBrowserService` | `com.chery.media` | USB video |
| `UtilsService` | `com.chery.media` | Medya yardımcı |
| `MusicService` | `in.krosbits.musicolet` | Musicolet müzik çalar |
| `AIDLService` | `sw.com.dabdrmradio` | DAB Radyo |
| `NaviAidlService` | `com.astrob.turbodog` | TurboDog navigasyon |
| `AdapterService` | `com.android.bluetooth` | Bluetooth |
| `Assistant` | `android.ext.services` | Bildirim asistanı |

**Önemli Not:** `com.omoda.lanc` şu an ön planda (topActivity) — launcher_v2 çalışıyor.

---

## 13. Yüklü Paketler

### 13.1 OEM Sistem Paketleri (Chery/YFVE)

| Paket | Açıklama |
|---|---|
| `com.chery.launcher` | Fabrika launcher |
| `com.chery.media` | Medya çalar |
| `com.chery.dialer` | Telefon |
| `com.chery.settings` | Sistem ayarları |
| `com.chery.hvac` | İklimlendirme |
| `com.chery.help` | Yardım |
| `com.chery.upgrade` | OTA güncelleme |
| `com.chery.icm` | ? |
| `com.chery.cerence` | Cerence ses asistanı |
| `com.yfve.t19c.projection.carplay.service` | CarPlay (crash loop!) |
| `com.yfve.t19c.projection.devicemanager` | Projeksiyon cihaz yönetimi |
| `com.yfve.car.carplay` | CarPlay Uygulaması |
| `com.yfve.car.androidauto` | Android Auto |
| `vendor.yfvet.projection.androidauto` | AA投影 |
| `com.yfve.engineeringmode` | Mühendislik modu |
| `com.yfve.t19c_eol` | EOL test |
| `com.neusoft.ssp.ces.c4.car.assistant` | Neusoft助手 |
| `com.android.car` | AAOS CarService |

### 13.2 HD Overlay Paketleri (Chery)

| Paket | Açıklama |
|---|---|
| `com.chery.settingsthdoverlay` | Ayarlar overlay |
| `com.chery.settingstwooverlay` | Ayarlar overlay v2 |
| `com.chery.mediathdoverlay` | Medya overlay |
| `com.chery.mediatwooverlay` | Medya overlay v2 |
| `com.chery.launcherthdoverlay` | Launcher overlay |
| `com.chery.launchertwooverlay` | Launcher overlay v2 |
| `com.chery.cerencethdoverlay` | Cerence overlay |
| `com.chery.cerencetwooverlay` | Cerence overlay v2 |
| `com.chery.dialerthdoverlay` | Telefon overlay |
| `com.chery.dialertwooverlay` | Telefon overlay v2 |
| `com.chery.helpthdoverlay` | Yardım overlay |
| `com.chery.helptwooverlay` | Yardım overlay v2 |
| `com.chery.upgradethdoverlay` | Güncelleme overlay |
| `com.chery.upgradetwooverlay` | Guncelleme overlay v2 |

### 13.3 Üçüncü Parti Yüklü Uygulamalar

| Paket | Açıklama |
|---|---|
| `com.omoda.lanc` | **Launcher v2** (bizim) |
| `com.tailscale.ipn` | Tailscale VPN |
| `in.krosbits.musicolet` | Musicolet müzik |
| `io.gh.reisxd.tizentube.cobalt` | Cobalt (TizenTube) |
| `org.smarttube.stable` | SmartTube |
| `com.mirfatif.permissionmanagerx` | İzin yöneticisi |
| `dev.patrickgold.florisboard` | FlorisBoard klavye |
| `com.ilv.vradio` | Radyo |
| `moe.shizuku.privileged.api` | Shizuku |
| `com.brouken.player` | Brouken player |
| `com.google.android.apps.accessibility.voiceaccess` | Voice Access |
| `by.green.tuber` | Tuber |
| `org.localsend.localsend_app` | LocalSend |
| `bin.mt.plus` | MT Manager |
| `io.homeassistant.companion.android.minimal` | Home Assistant |
| `com.frack.xeq` | ? |
| `ru.yandex.yandexnavi` | Yandex Navi |
| `com.google.android.apps.maps` | Google Maps |
| `nu.nav.float` | ? |
| `com.google.android.gms` | Google Play Services |
| `com.google.android.tts` | Google TTS |
| `muharroot.exe` | ? |
| `com.dofun.dofunweather.main` | Hava durumu |
| `com.nutomic.syncthingandroid` | Syncthing |
| `com.google.android.apps.automotive.inputmethod` | AAOS Klavye |
| `idu.com.radio.radyoturk` | Radyo Turk |
| `com.vivaldi.browser` | Vivaldi tarayıcı |
| `de.danoeh.antennapod` | AntennaPod podcast |
| `cm.aptoide.pt` | Aptoide mağaza |
| `com.softartstudio.carwebguru` | CarWebGuru |

---

## 14. Ses Sistemi Detayları

### 14.1 Audio HAL'leri

| HAL | Yol |
|---|---|
| `audio.primary.chery_t19c.so` | `/vendor/lib/hw/` |
| `android.hardware.audio@2.0-impl.so` | `/vendor/lib/hw/` |
| `android.hardware.audio@4.0-impl.so` | `/vendor/lib/hw/` |
| `android.hardware.audio.effect@2.0-impl.so` | `/vendor/lib/hw/` |
| `android.hardware.audio.effect@4.0-impl.so` | `/vendor/lib/hw/` |
| `audio.r_submix.default.so` | `/vendor/lib/hw/` |
| `audio.usb.default.so` | `/vendor/lib/hw/` |

### 14.2 Çalışan Ses Servisleri

| Servis | Durum |
|---|---|
| `init.svc.audioserver` | running |
| `init.svc.vendor.audio-hal-2-0` | running |
| `init.svc.vendor.audiocontrol-hal-1.0` | running |

### 14.3 Bildirim Sesi
- `ro.config.notification_sound` = `Adara.ogg`

---

## 15. Ağ & Bağlantı

### 15.1 WLAN

| Özellik | Değer |
|---|---|
| **Arayüz** | wlan0 |
| **Durum** | UP (aktif) |
| **IP** | `192.168.24.89/24` |
| **Broadcast** | `192.168.24.255` |
| **MAC** | `f8:6b:14:29:bb:fe` |
| **MTU** | 1500 |

### 15.2 ADB Bağlantı
- **Protokol:** TCP/IP (ADB over WiFi)
- **Adres:** `100.121.172.79:5555` (Tailscale)
- **Bağlantı:** Aktif ✓

---

## 16. Toplam Paket Sayıları

| Kategori | Sayı |
|---|---|
| **Sistem paketleri** | 34 (OEM Chery/YFVE + AAOS) |
| **3. parti paketler** | 31 |
| **Toplam** | 65 paket |

---

---


## 17. Launcher V2 — Teknik Başvuru (RX/TX Kapsamlı)

### 17.1. Proje
- **Paket:** `com.omoda.lanc`
- **Kaynak:** `/mnt/depo/launcher_v2` (Lenovo PC 192.168.1.29)
- **Mimari:** 7 katman (Altyapı→UI), EventBus no-polling, GlobalState.isSimulationMode
- **OmodaAssist:** `/mnt/depo/omodaassist_v2` (Lenovo PC)

### 17.2. ADB Root Erişimi
| Komut | Sonuç |
|-------|-------|
| Normal shell | `adb shell "id"` → uid=2000(shell) |
| Root shell | `adb shell "su 0 id"` → uid=0(root) |
| Root komut | `adb shell "su 0 <komut>"` |
| **KRİTİK** | `su -c 'komut'` **ÇALIŞMAZ** → `su 0 komut` kullan |

### 17.3. DUMPSYS — Veri Okuma (En Kritik Bölüm)
#### 17.3.1. Sorun: `get-property-value` Kırık
OEM `CarPropertyService.java` → `Integer.parseInt()` hex string parse edemiyor.
- `dumpsys car_service get-property-value 0x11600207 0` → **NumberFormatException**
- `dumpsys car_service get-property-value 11600207 0` → **NumberFormatException (decimal de çalışmıyor)**
- Help text "hex ister" der ama içi decimal bekler → **OEM BUG**

#### 17.3.2. Çalışan Yöntem: Bare `dumpsys car_service`
```
adb shell "dumpsys car_service"
```
- 2310 satır çıktı (2250+ satır)
- **48 event** (value içeren satır)
- **530 Property config** (sadece tanımlar)
- **1425 Prop servis ataması**

#### 17.3.3. Event Output Formatı
```
event count:4635, lastEvent:Property:0x21602023,status: 0,timestamp:2523150254295,
zone:0x1000000,floatValues: [9.4375],int32Values: [],int64Values: [],bytes: [],string:
```

#### 17.3.4. Test Edilen Değerler
| Property ID | İsim | Değer | Event Count |
|-------------|------|-------|-------------|
| 0x11600207 | PERF_VEHICLE_SPEED | 50.0 (inject ile) | 1 |
| 0x21602023 | OEM Custom | 9.4375 | 4635 |
| 0x21602003 | OEM Custom | 10.0 | 925 |

#### 17.3.5. inject-vhal-event (Test Amaçlı)
```
adb shell "dumpsys car_service inject-vhal-event 0x11600207 0 50.0"
```
- Başarılı → bare dump'ta `floatValues: [50.0]` görünür
- **Uyarı:** Gerçek araç verisi için VHAL event üretmeli, inject sadece test

### 17.4. VHAL Property IDs (Hex)
#### Ana Sensörler (0x116xxx — Hız/RPM/Temp)
| Hex ID | Decimal | İsim | Çevrim |
|--------|---------|------|--------|
| 0x11600207 | 291533319 | PERF_VEHICLE_SPEED | ×3.6 = km/h |
| 0x11600104 | 291533060 | PERF_ENGINE_RPM | direkt |
| 0x11600307 | 291533575 | PERF_COOLANT_TEMP | −40°C offset |
| 0x11600304 | 291533572 | PERF_OIL_PRESSURE | kPa |
| 0x11600305 | 291533573 | PERF_OIL_TEMP | −40°C offset |
| 0x11600308 | 291533576 | PERF_BATTERY_VOLTAGE | volt |
| 0x11600309 | 291533577 | PERF_BATTERY_CURRENT | amper |
| 0x1160030C | 291533580 | PERF_FUEL_CONSUMPTION | L/100km |
| 0x11600204 | 291533316 | PERF_ODOMETER | km |

#### Vites (KIRIK!)
| Hex ID | İsim | Durum |
|--------|------|-------|
| 0x11400400 | GEAR_SELECTION | **KIRIK** — Omoda5'te çalışmıyor |
| **0x21402006** | **OEM GEAR** | **Çalışan alternatif** |

#### Combo Sensor (0x11e00d00 / OBD2_LIVE_FRAME)
Tek property'den çoklu veri — `floatValues` array indeksleri:
| Index | Veri | Çevrim |
|-------|------|--------|
| [0] | Hız (m/s) | ×3.6 = km/h |
| [8] | Motor RPM | direkt |
| [9] | Vites PRND | float→kategorik |
| [12] | Dış sıcaklık | −40°C offset |

### 17.5. RX/TX Hata Kayıtları
| Hata | Neden | Çözüm |
|------|-------|-------|
| `NumberFormatException` | `0x` prefix ile hex ID | Bare dump kullan |
| `Connection Refused` | localhost:5555 socket | Runtime.exec() kullan |
| `SIGSEGV` crash | AudioRecord RX thread | Event handler'ı try-catch ile koru |
| `su -c` fail | OEM su syntax farklı | `su 0` kullan |
| `Permission Denied` | DUMP izni yok | `pm grant` ile ver |
| `Shizuku N/A` | Shizuku Semidrive'da çalışmıyor | Runtime.exec() kullan |
| `SELinux Enforcing` | App → su domain transition engellenir | `su 0` ile bypass |
| `VOSK Not Found` | Model yolu yanlış | 6 farklı yolu tara (Akıllı Tarama) |
| `Keyboard Overflow` | Klavye 2225px taşar | Display metrics düzeltmesi gerekir |
| `CarPropertyManager` | OEM System Signature engeli | DUMPSYS approach (fallback) |

### 17.6. İzinler
| İzin | Komut | Neden |
|------|-------|-------|
| `android.permission.DUMP` | `pm grant com.omoda.lanc android.permission.DUMP` | dumpsys için |
| `android.car.permission.CAR_SPEED` | Root-only | CarPropertyManager için |
| `android.car.permission.CAR_VENDOR_EXTENSION` | OEM-specific | Turbodog var |

### 17.7. HVAC Control (set-property-value)
| İşlem | Decimal ID | Zone |
|-------|-----------|------|
| HVAC Aç/Kapa | 354419973 | 0 |
| Fan Hızı | 356517120 / 358614282 | 0 |
| AC Aç/Kapa | 358614274 | 0 |
| Sıcaklık Sürücü | 358614275 | 1 |
| Sıcaklık Yolcu | 358614275 | 16 |
| Cam pozisyon | 322964416 | 1/15/65536 |
| Sunroof | 322964416 | 65536 |

### 17.8. ADB Komut Referansı
```
# Root erişim
adb shell "su 0 id"

# Dumpsys (tüm vehicle verisi)
adb shell "dumpsys car_service"

# Property config (tüm property'lerin tanımı)
adb shell "dumpsys car_service get-carpropertyconfig"

# Tek property config
adb shell "dumpsys car_service get-carpropertyconfig 0x11600207"

# Değer enjekte (test)
adb shell "dumpsys car_service inject-vhal-event 0x11600207 0 50.0"

# İzin ver
adb shell "pm grant com.omoda.lanc android.permission.DUMP"

# Screenshot
adb exec-out screencap -p > screen.png

# Package info
adb shell "pm dump com.omoda.lanc | grep -iE 'Service|Receiver|Permission'"
```

### 17.9. App İçi Çalışma Akışı
1. `AdbClient.executeCommand("su 0 dumpsys car_service get-property-value {decimalId} {zone}")`
2. **NOT:** Bu hâlâ NumberFormatException verebilir — bare dump'a geçilmeli
3. Çıktı parse: `parseAndApplyLine()` → VehicleState'a yazar
4. EventBus → Dashboard/SensorMonitor ekranına iletir

### 17.10. Obsidian Vault
Docker container `big-bear-obsidian`'da `/config/vault/Omoda5/`:
- `Launcher_V2_Teknik_Kitap.md` — Kapsamlı kitap (13KB)
- `Dumpsys_Sorun_Analizi.md` — Sorun teşhisi
- `Sensor_Katalogu_Ozeti.md` — 531 sensör özeti
- `Progress_Ozet.md` — Versiyon geçmişi (v6450-v6494)
- `Voice_Pipeline_VHAL_Map.md` — Ses hattı + VHAL haritası
- `VHAL_Book_RX_TX.md` — RX/TX iletişim kitabı (20KB)
- `Omoda5_Kitap_RX_TX.md` — Omoda5RX/TX kitabı (23KB)
- `Referans_Proje_Karsilastirma.md` — Proje karşılaştırması

---

> **Son güncelleme:** 2026-07-25 (RX/TX kapsamlı güncelleme — dumpsys sorunu tespit ve çözüm)
> **Kritik bulgu:** `get-property-value` OEM'de kırık, bare `dumpsys car_service` çalışıyor
> **Sonraki adım:** VehicleController'ı bare dump'a geçir
> **VOSK Model Yolları:** /sdcard/model-tr, /sdcard/Download/vosk-model-small-tr-0.3, sync/model-tr

