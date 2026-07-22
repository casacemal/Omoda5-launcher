# FILE_INDEX.md

*   Sürüm 6406 (6.3.921) - 22.07.2026 09:35
    *   `VehicleController.kt`: Flow güncellemelerine `Mutex` kilitleri eklendi (Lost Update koruması).
    *   `AssistantController.kt`: TTS kuyruk limitleri sınırlandırıldı, çift `AudioRecord` kullanımı engellendi.
    *   `EventBus.kt`: Buffer boyutu 256'ya çıkarıldı (DROP_OLDEST eklendi).
    *   `MqttPublisher.kt`: Tüm ağ işlemleri IO Coroutine'lerine taşındı.
    *   `FirewallV2.kt`: Yasaklı sistem komutları (`rm`, `su`, vb.) shell injection'a karşı filtrelendi.
    *   `OverlayManager.kt`: Reaktif akışta `collectLatest` yerine `collect` kullanımı ile UI titremeleri düzeltildi.
    *   `AgentManager.kt`: İptal mekanizması eksikliği giderilerek `cancel()` eklendi.

*   Sürüm 6394 (6.3.921) - 21.07.2026 19:45
    *   `SettingsScreen.kt` ve `SettingsTab*.kt`: Standart Button'lar AAOS `CarButton` ile değiştirildi, 64dp yükseklik ve odak state (Rotary Controller) desteği eklendi.
    *   `SensorMonitorScreen.kt`: `SensorCard` bileşenine Rotary controller odaklanma durumu eklendi. Grid genişliği AAOS için 240.dp'ye çıkarıldı.

*   Surum 6354 (6.0.0) - 20.07.2026 12:45
    *   `MainActivity.kt`: HomeScreen padding değerleri manifesto standartlarına (235, 60, 80, 80) çekildi.
    *   `DashboardScreen.kt`: Sidebar genişliği 235dp yapıldı, split ağırlığı v6312 standartlarına (0.65f) geri getirildi.
    *   `LayoutEngine.kt`: Tüm DSL tabanlı dashboard'lar için merkezi 235dp padding kuralı eklendi.

*   Surum 6275 (6.0.0) - 15.07.2026 15:00
    *   `DashboardScreen.kt`: ActivityViewContainer kaldirildi. Yandex Navi native split-screen (FLAG_ACTIVITY_LAUNCH_ADJACENT + splitScreenCreateMode=1) ile baslatiliyor. `isMapOpen` state silindi. `launchYandexSplit()` fonksiyonu eklendi.
    *   `ActivityViewContainer.kt`: Stub'a cevrildi, `@Deprecated` olarak isaretlendi. AAOS10 API 29'da `android.app.ActivityView` mevcut degil.

*   Surum 6272 (6.0.0) - 15.07.2026 14:48
    *   `DashboardScreen.kt`: Yandex Navi animasyon boyutu sabitlendi ve surukleme aninda map'in restart olmasini engelleyen yapi kuruldu.
    *   `MainActivity.kt`: DashboardScreen'in her zaman arkada yasamasini saglayan background koruma (offset) mantigi eklendi.

*   Surum 6230 (6.0.0) - 13.07.2026 16:30
    *   `ActionExecutor.kt`: HVAC baslatma komutu `com.chery.hvac` paketiyle uyumlu hale getirildi.
    *   `MainActivity.kt`: Klima otomatik onarim (Auto-Repair) paket adi ve activity yolu guncellendi.
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)` & `SensorMonitorScreen.kt`: Klima acma ve onarma butonlarindaki paket adi uyusmazligi giderildi.

*   Surum 6169 (6.0.0) - 11.07.2026
    *   `CODE_AUDIT_REPORT.md`: Kapsamli kod audit raporu — 57 sorun tespit edildi (5 Kritik, 16 Yuksek, 22 Orta, 14 Dusuk). Guvenlik, ag, ses, durum yonetimi, kaynak yonetimi, olu kod ve mimari kategorileri.
    *   `AGENTS.md`: Kod audit raporu referansi eklendi (Kapsamli Kod Audit Raporu bolumu).

*   Surum 6077 (6.0.0) - 10.07.2026 20:00
    *   `SttManager.kt`: Mikrofon kazanci (Gain) 3.5'e yukseltildi, VAD parametreleri manifesto ile esitlendi.
    *   `UI_MANIFESTO.md`: Ses ve mikrofon standartlari eklenerek muhurlendi.
    *   `AGENTS.md`: Ses standartlarinin korunmasi kurali eklendi.

*   Surum 6076 (6.0.0) - 10.07.2026 19:30
    *   `MainActivity.kt`: 5x2 grid duzeni, Chery ikonlari ve referans padding degerleri uygulandi.
    *   `GlassIcon.kt`: Ikon boyutlari referans manifesto degerlerine cekildi (110dp).
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)`: Sidebar genisligi (235dp) ve buton boyutlari optimize edildi.
    *   `PairingManager.kt`: Varsayilan eslesme kodu `OMODA5` yapildi.
    *   `UI_MANIFESTO.md`: Yeni tasarim kurallari dosyasi.

*   Surum 6075 (6.0.0) - 10.07.2026 18:30
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)`: Market (Guncelleme) sekmesi geri getirildi.

*   Surum 6077 (6.0.0) - 10.07.2026 21:14

*   Surum 6078 (6.0.0) - 10.07.2026 21:18

*   Surum 6079 (6.0.0) - 10.07.2026 21:22

*   Surum 6080 (6.0.0) - 10.07.2026 21:25

*   Surum 6081 (6.0.0) - 10.07.2026 21:27

*   Surum 6082 (6.0.0) - 10.07.2026 21:28

*   Surum 6083 (6.0.0) - 10.07.2026 21:33

*   Surum 6084 (6.0.0) - 10.07.2026 21:35

*   Surum 6085 (6.0.0) - 10.07.2026 21:38

*   Surum 6086 (6.0.0) - 10.07.2026 21:41

*   Surum 6087 (6.0.0) - 10.07.2026 21:42

*   Surum 6088 (6.0.0) - 10.07.2026 21:46

*   Surum 6089 (6.0.0) - 10.07.2026 21:47

*   Surum 6090 (6.0.0) - 10.07.2026 21:51

*   Surum 6091 (6.0.0) - 10.07.2026 22:00

*   Surum 6092 (6.0.0) - 10.07.2026 22:03

*   Surum 6093 (6.0.0) - 10.07.2026 22:05

*   Surum 6094 (6.0.0) - 10.07.2026 22:08

*   Surum 6095 (6.0.0) - 10.07.2026 22:10

*   Surum 6096 (6.0.0) - 10.07.2026 22:13

*   Surum 6097 (6.0.0) - 10.07.2026 22:20

*   Surum 6098 (6.0.0) - 10.07.2026 23:17

*   Surum 6099 (6.0.0) - 10.07.2026 23:53

*   Surum 6100 (6.0.0) - 10.07.2026 23:57

*   Surum 6101 (6.0.0) - 10.07.2026 23:59

*   Surum 6102 (6.0.0) - 11.07.2026 00:19

*   Surum 6103 (6.0.0) - 11.07.2026 00:21

*   Surum 6104 (6.0.0) - 11.07.2026 00:22

*   Surum 6105 (6.0.0) - 11.07.2026 00:24

*   Surum 6106 (6.0.0) - 11.07.2026 00:25

*   Surum 6107 (6.0.0) - 11.07.2026 00:28

*   Surum 6108 (6.0.0) - 11.07.2026 00:38

*   Surum 6109 (6.0.0) - 11.07.2026 00:46

*   Surum 6110 (6.0.0) - 11.07.2026 00:53
    *   `ScreenRecorder.kt`: API 31+ constructor kullanimi API 29 uyumlu hale getirildi.
    *   `AndroidManifest.xml`: Sistem izinleri (DUMP, LOGS vb.) icin lint korumasi eklendi, `uses-feature` tanimlari yapildi.
    *   `ActionExecutor.kt`: API 30 screenshot callback uyarisi suppress edildi.
    *   `OtaUpdateService.kt` & `PackageReplacedReceiver.kt`: Bildirim izinleri lint uyarilari giderildi.
    *   `WakeWordManager.kt`, `SherpaAsrManager.kt`, `SttManager.kt`, `NetworkMonitor.kt`: Mikrofon ve ag izinleri lint uyarilari giderildi.

*   Surum 6112 (6.0.0) - 11.07.2026 01:50
    *   `CommandRouter.kt`: Firewall dogrulama mantigi eklendi, yetkisiz komutlar engelleniyor.
    *   `EdgeOnlineTTSManager.kt`: Hata yonetimi duzeltilerek TTS fallback zinciri onarildi.
    *   `AssistantOverlayUI.kt`: HUD metin boyutlari buyutuldu ve ses genligi gorsellestirmesi eklendi.

*   Surum 6112 (6.0.0) - 11.07.2026 03:42

*   Surum 6114 (6.0.0) - 11.07.2026 02:15
    *   `SensorMonitorScreen.kt`: Yeni sensor izleme ekrani (Hiz, RPM, Yakit, HVAC vb.).
    *   `MainActivity.kt`: Sensor ekranina gecis icin "VERI" FAB butonu ve navigasyon mantigi eklendi.

*   Surum 6114 (6.0.0) - 11.07.2026 10:49

*   Surum 6115 (6.0.0) - 11.07.2026 11:12

*   Surum 6116 (6.0.0) - 11.07.2026 11:14

*   Surum 6117 (6.0.0) - 11.07.2026 11:22

*   Surum 6118 (6.0.0) - 11.07.2026 11:25

*   Surum 6119 (6.0.0) - 11.07.2026 11:26
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)` & `SettingsComponents.kt`: Mobil cihazlar icin kompakt gorunum (`isCompact`) destegi eklendi.
    *   `SensorMonitorScreen.kt`: Omoda 5 VHAL verilerinin izlendigi dinamik ekran tamamlandi.
    *   `MainActivity.kt`: "VERI" butonu ile sensor ekranina navigasyon eklendi.

*   Surum 6120 (6.0.0) - 11.07.2026 11:42

*   Surum 6121 (6.0.0) - 11.07.2026 11:44

*   Surum 6122 (6.0.0) - 11.07.2026 12:12

*   Surum 6123 (6.0.0) - 11.07.2026 12:13

*   Surum 6124 (6.0.0) - 11.07.2026 12:47

*   Surum 6125 (6.0.0) - 11.07.2026 12:56

*   Surum 6126 (6.0.0) - 11.07.2026 13:04

*   Surum 6127 (6.0.0) - 11.07.2026 13:10
    *   `ConfigManager.kt`: Ayarlari SD karta yedekleme ve geri yukleme (Backup/Restore) destegi eklendi.
    *   `GlobalState.kt` & `AssistantApplication.kt`: API anahtarlari flow tabanli reaktif yapiya gecirildi.
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)`: Backup/Restore butonlari ve dinamik API anahtari giris alanlari eklendi.
    *   `EdgeOnlineTTSManager.kt`: Sabit token yerine dinamik `GlobalState` token'i kullanimi aktiflestirildi.

*   Surum 6128 (6.0.0) - 11.07.2026 13:46

*   Surum 6129 (6.0.0) - 11.07.2026 13:47

*   Surum 6153 (6.0.0) - 11.07.2026 17:05
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)`: Alt bar kaldirildi, Kaydet/Iptal ust bara tasindi, mobil yatay mod optimizasyonu yapildi.
    *   `MainActivity.kt`: Uygulama yukleme arkaya (IO) alindi, FAB butonlari `LazyRow` ile kaydirilabilir yapildi.
    *   `AdbConnectionMonitor.kt`: Port 5555 kontrolu sessizlestirildi (log temizligi).
    *   `MediaControllerViewModel.kt`: `SecurityException` korumasi eklendi.

*   Surum 6131 (6.0.0) - 11.07.2026 14:15

*   Surum 6130 (6.0.0) - 11.07.2026 13:48

*   Surum 6131 (6.0.0) - 11.07.2026 14:26

*   Surum 6132 (6.0.0) - 11.07.2026 14:28

*   Surum 6133 (6.0.0) - 11.07.2026 14:35

*   Surum 6134 (6.0.0) - 11.07.2026 14:39

*   Surum 6135 (6.0.0) - 11.07.2026 14:42

*   Surum 6136 (6.0.0) - 11.07.2026 14:56

*   Surum 6137 (6.0.0) - 11.07.2026 15:31

*   Surum 6138 (6.0.0) - 11.07.2026 15:40

*   Surum 6139 (6.0.0) - 11.07.2026 15:41

*   Surum 6140 (6.0.0) - 11.07.2026 15:51

*   Surum 6141 (6.0.0) - 11.07.2026 15:54

*   Surum 6142 (6.0.0) - 11.07.2026 16:11

*   Surum 6143 (6.0.0) - 11.07.2026 16:13

*   Surum 6144 (6.0.0) - 11.07.2026 16:22

*   Surum 6145 (6.0.0) - 11.07.2026 16:23

*   Surum 6146 (6.0.0) - 11.07.2026 16:30

*   Surum 6147 (6.0.0) - 11.07.2026 16:31

*   Surum 6148 (6.0.0) - 11.07.2026 16:38

*   Surum 6149 (6.0.0) - 11.07.2026 16:39

*   Surum 6150 (6.0.0) - 11.07.2026 16:40

*   Surum 6151 (6.0.0) - 11.07.2026 16:40

*   Surum 6152 (6.0.0) - 11.07.2026 16:41

*   Surum 6153 (6.0.0) - 11.07.2026 17:05

*   Surum 6154 (6.0.0) - 11.07.2026 17:13

*   Surum 6155 (6.0.0) - 11.07.2026 17:21

*   Surum 6156 (6.0.0) - 11.07.2026 17:23

*   Surum 6157 (6.0.0) - 11.07.2026 17:34

*   Surum 6158 (6.0.0) - 11.07.2026 17:39

*   Surum 6159 (6.0.0) - 11.07.2026 17:42

*   Surum 6160 (6.0.0) - 11.07.2026 18:00

*   Surum 6161 (6.0.0) - 11.07.2026 18:12

*   Surum 6162 (6.0.0) - 11.07.2026 18:23

*   Surum 6163 (6.0.0) - 11.07.2026 18:41

*   Surum 6164 (6.0.0) - 11.07.2026 18:45
    *   `OtaUpdateManager.kt`: GitHub token formatı "token [KEY]" olarak guncellendi, yetkilendirme sorunlari cozuldu.
    *   `ConfigManager.kt`: Yedekleme yolu `/sdcard/Omoda` olarak sabitlendi, ByteArray tabanli XOR sifreleme ile veri butunlugu saglandi.
    *   `RelayClient.kt`: Varsayilan baglanti parametreleri (192.168.1.14 & OMODA5) eklendi.
    *   `MqttPublisher.kt`: `omoda/status` konusuna online/retained durum mesaji gonderimi eklendi.
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)`: Yatay modda sol bar (sidebar) destegi ve kompakt UI bilesenleri eklendi.

*   Surum 6165 (6.0.0) - 11.07.2026 18:50

*   Surum 6166 (6.0.0) - 11.07.2026 18:59

*   Surum 6167 (6.0.0) - 11.07.2026 19:16

*   Surum 6168 (6.0.0) - 11.07.2026 19:54

*   Surum 6169 (6.0.0) - 11.07.2026 21:04

*   Surum 6170 (6.0.0) - 11.07.2026 21:15

*   Surum 6171 (6.0.0) - 11.07.2026 21:24

*   Surum 6172 (6.0.0) - 11.07.2026 22:14

*   Surum 6173 (6.0.0) - 11.07.2026 23:14

*   Surum 6174 (6.0.0) - 11.07.2026 23:29

*   Surum 6175 (6.0.0) - 11.07.2026 23:50

*   Surum 6176 (6.0.0) - 11.07.2026 23:53

*   Surum 6177 (6.0.0) - 11.07.2026 23:56

*   Surum 6178 (6.0.0) - 12.07.2026 00:02

*   Surum 6179 (6.0.0) - 12.07.2026 00:26

*   Surum 6180 (6.0.0) - 12.07.2026 11:01

*   Surum 6181 (6.0.0) - 12.07.2026 11:12

*   Surum 6182 (6.0.0) - 12.07.2026 11:32

*   Surum 6183 (6.0.0) - 12.07.2026 11:44

*   Surum 6184 (6.0.0) - 12.07.2026 11:45

*   Surum 6185 (6.0.0) - 12.07.2026 12:32

*   Surum 6186 (6.0.0) - 12.07.2026 13:13

*   Surum 6187 (6.0.0) - 12.07.2026 13:18

*   Surum 6188 (6.0.0) - 12.07.2026 13:23

*   Surum 6189 (6.0.0) - 12.07.2026 13:27

*   Surum 6190 (6.0.0) - 12.07.2026 13:27

*   Surum 6191 (6.0.0) - 12.07.2026 13:32

*   Surum 6192 (6.0.0) - 12.07.2026 13:44

*   Surum 6193 (6.0.0) - 12.07.2026 14:41

*   Surum 6200 (6.0.0) - 12.07.2026
    *   `MainActivity.kt`: Split Ekran (Dashboard) butonu grid ve FAB barina eklendi; ADB izin enjeksiyonu genisletildi.
    *   `accessibility_service_config.xml`: Uzaktan komut icrasi (jetler) icin jest izni eklendi.
    *   `RelayClient.kt`: WebSocket baglanti durumu GlobalState'e baglandi.

*   Surum 6194 (6.0.0) - 12.07.2026 19:26

*   Surum 6200 (6.0.0) - 12.07.2026 20:36

*   Surum 6211 (6.0.0) - 13.07.2026
    *   `SherpaModelInstaller.kt`: Model arama dizinine `/sdcard/Omoda/Models` yolu eklendi ve klasor yapisi optimize edildi.
    *   `DashboardScreen.kt`: Harita yukleme sorunu icin retry ve window attachment kontrolu eklendi.
    *   `AgentManager.kt`: Dusunme ve STT asamalari icin watchdog (zaman asimi) eklendi.
    *   `MainActivity.kt`: Split ekran butonu UI'a eklendi ve ADB izin enjeksiyonu genisletildi.
    *   `GlobalState.kt`: `isCarHardware` kontrolu mimari donguyu onlemek icin merkeze tasindi.
    *   `SettingsScreen.kt (ve alt SettingsTab'ları)`: TTS ayarlarina yerel ses motoru icin "PIPER" butonu eklendi.

*   Surum 6205 (6.0.0) - 13.07.2026
    *   `SherpaModelInstaller.kt`: Model arama dizinine `/sdcard/Omoda/Models` yolu eklendi.
    *   `SherpaAsrManager.kt`: Whisper token dosyasi adi `tiny-tokens.txt` olarak guncellendi.

*   Surum 6201 (6.0.0) - 12.07.2026 20:40

*   Surum 6202 (6.0.0) - 12.07.2026 21:20

*   Surum 6203 (6.0.0) - 12.07.2026 21:43

*   Surum 6204 (6.0.0) - 12.07.2026 21:52

*   Surum 6205 (6.0.0) - 13.07.2026 00:24

*   Surum 6206 (6.0.0) - 13.07.2026 00:43

*   Surum 6207 (6.0.0) - 13.07.2026 00:54

*   Surum 6208 (6.0.0) - 13.07.2026 01:03

*   Surum 6210 (6.0.0) - 13.07.2026 01:19

*   Surum 6211 (6.0.0) - 13.07.2026 01:26

*   Surum 6212 (6.0.0) - 13.07.2026 01:46

*   Surum 6213 (6.0.0) - 13.07.2026 01:50

*   Surum 6214 (6.0.0) - 13.07.2026 10:52

*   Surum 6215 (6.0.0) - 13.07.2026 11:19

*   Surum 6217 (6.0.0) - 13.07.2026 11:44

*   Surum 6219 (6.0.0) - 13.07.2026 11:49

*   Surum 6220 (6.0.0) - 13.07.2026 13:54

*   Surum 6222 (6.0.0) - 13.07.2026 14:12

*   Surum 6223 (6.0.0) - 13.07.2026 15:33

*   Surum 6224 (6.0.0) - 13.07.2026 15:52

*   Surum 6225 (6.0.0) - 13.07.2026 16:15

*   Surum 6226 (6.0.0) - 13.07.2026 16:16

*   Surum 6227 (6.0.0) - 13.07.2026 16:33

*   Surum 6228 (6.0.0) - 13.07.2026 16:34

*   Surum 6229 (6.0.0) - 13.07.2026 16:40

*   Surum 6230 (6.0.0) - 13.07.2026 16:41

*   Surum 6231 (6.0.0) - 13.07.2026 16:43

*   Surum 6232 (6.0.0) - 13.07.2026 16:44

*   Surum 6233 (6.0.0) - 13.07.2026 16:48

*   Surum 6234 (6.0.0) - 13.07.2026 16:48

*   Surum 6235 (6.0.0) - 13.07.2026 16:55

*   Surum 6236 (6.0.0) - 13.07.2026 16:56

*   Surum 6237 (6.0.0) - 13.07.2026 17:01

*   Surum 6238 (6.0.0) - 13.07.2026 17:02

*   Surum 6239 (6.0.0) - 13.07.2026 17:09

*   Surum 6240 (6.0.0) - 13.07.2026 17:09

*   Surum 6241 (6.0.0) - 13.07.2026 17:21

*   Surum 6242 (6.0.0) - 13.07.2026 17:22

*   Surum 6243 (6.0.0) - 13.07.2026 17:27

*   Surum 6244 (6.0.0) - 13.07.2026 17:28

*   Surum 6245 (6.0.0) - 13.07.2026 17:33

*   Surum 6246 (6.0.0) - 13.07.2026 17:33

*   Surum 6247 (6.0.0) - 13.07.2026 18:33

*   Surum 6248 (6.0.0) - 13.07.2026 18:42

*   Surum 6249 (6.0.0) - 13.07.2026 23:43

*   Surum 6250 (6.0.0) - 13.07.2026 23:57

*   Surum 6251 (6.0.0) - 14.07.2026 12:56

*   Surum 6252 (6.0.0) - 14.07.2026 12:57

*   Surum 6253 (6.0.0) - 15.07.2026 00:58

*   Surum 6254 (6.0.0) - 15.07.2026 01:00

*   Surum 6255 (6.0.0) - 15.07.2026 01:23

*   Surum 6256 (6.0.0) - 15.07.2026 01:23

*   Surum 6257 (6.0.0) - 15.07.2026 01:29

*   Surum 6258 (6.0.0) - 15.07.2026 01:34

*   Surum 6259 (6.0.0) - 15.07.2026 01:38

*   Surum 6260 (6.0.0) - 15.07.2026 01:40

*   Surum 6261 (6.0.0) - 15.07.2026 01:45

*   Surum 6262 (6.0.0) - 15.07.2026 01:51

*   Surum 6263 (6.0.0) - 15.07.2026 02:01

*   Surum 6264 (6.0.0) - 15.07.2026 02:02

*   Surum 6265 (6.0.0) - 15.07.2026 12:29

*   Surum 6266 (6.0.0) - 15.07.2026 12:30

*   Surum 6267 (6.0.0) - 15.07.2026 12:31

*   Surum 6268 (6.0.0) - 15.07.2026 12:31

*   Surum 6269 (6.0.0) - 15.07.2026 14:14

*   Surum 6270 (6.0.0) - 15.07.2026 14:20

*   Surum 6271 (6.0.0) - 15.07.2026 14:25

*   Surum 6272 (6.0.0) - 15.07.2026 14:48

*   Sürüm 6305 (6.0.0) - 17.07.2026 09:30
    *   `ARCH_DOC_EXTRACT.md`: Kapsamlı sistem mimarisi ve teknik tasarım dokümanı projenin 360 derece analiziyle oluşturuldu.
    *   `ActionExecutor.kt`: Medya kontrol ve uygulama başlatma araçları (YouTube, Spotify) mimari analize uygun olarak incelendi.

*   Sürüm 6275 (6.0.0) - 15.07.2026 14:56

*   Sürüm 6276 (6.0.0) - 15.07.2026 15:01

*   Sürüm 6277 (6.0.0) - 15.07.2026 15:02

*   Sürüm 6278 (6.0.0) - 15.07.2026 15:13

*   Sürüm 6279 (6.0.0) - 15.07.2026 15:16

*   Sürüm 6280 (6.0.0) - 15.07.2026 23:29

*   Sürüm 6281 (6.0.0) - 15.07.2026 23:30

*   Sürüm 6282 (6.0.0) - 15.07.2026 23:33

*   Sürüm 6283 (6.0.0) - 15.07.2026 23:34

*   Sürüm 6284 (6.0.0) - 15.07.2026 23:34

*   Sürüm 6285 (6.0.0) - 15.07.2026 23:37

*   Sürüm 6286 (6.0.0) - 16.07.2026 15:21

*   Sürüm 6287 (6.0.0) - 16.07.2026 17:59

*   Sürüm 6288 (6.0.0) - 17.07.2026 00:07

*   Sürüm 6289 (6.0.0) - 17.07.2026 00:11

*   Sürüm 6290 (6.0.0) - 17.07.2026 00:57

*   Sürüm 6291 (6.0.0) - 17.07.2026 01:14

*   Sürüm 6292 (6.0.0) - 17.07.2026 01:47

*   Sürüm 6293 (6.0.0) - 17.07.2026 02:30

*   Sürüm 6294 (6.0.0) - 17.07.2026 02:41

*   Sürüm 6295 (6.0.0) - 17.07.2026 04:29

*   Sürüm 6296 (6.0.0) - 17.07.2026 04:34

*   Sürüm 6297 (6.0.0) - 17.07.2026 05:33

*   Sürüm 6298 (6.0.0) - 17.07.2026 05:40

*   Sürüm 6299 (6.0.0) - 17.07.2026 05:49

*   Sürüm 6300 (6.0.0) - 17.07.2026 06:00

*   Sürüm 6301 (6.0.0) - 17.07.2026 06:09

*   Sürüm 6302 (6.0.0) - 17.07.2026 06:37

*   Sürüm 6303 (6.0.0) - 17.07.2026 06:44

*   Sürüm 6304 (6.0.0) - 17.07.2026 07:15

*   Sürüm 6305 (6.0.0) - 17.07.2026 17:56

*   Sürüm 6306 (6.0.0) - 17.07.2026 17:58

*   Sürüm 6307 (6.0.0) - 19.07.2026 04:03

*   Sürüm 6308 (6.0.0) - 19.07.2026 04:38

*   Sürüm 6309 (6.0.0) - 19.07.2026 04:56

*   Sürüm 6310 (6.0.0) - 19.07.2026 09:19

*   Sürüm 6311 (6.0.0) - 19.07.2026 10:38

*   Sürüm 6312 (6.0.0) - 19.07.2026 10:57

*   Sürüm 6313 (6.0.0) - 19.07.2026 10:59

*   Sürüm 6314 (6.0.0) - 19.07.2026 11:19

*   Sürüm 6315 (6.0.0) - 19.07.2026 11:49

*   Sürüm 6316 (6.0.0) - 19.07.2026 12:19

*   Sürüm 6317 (6.0.0) - 19.07.2026 12:39

*   Sürüm 6318 (6.0.0) - 19.07.2026 12:41

*   Sürüm 6319 (6.0.0) - 19.07.2026 12:48

*   Sürüm 6320 (6.0.0) - 19.07.2026 12:48

*   Sürüm 6321 (6.0.0) - 19.07.2026 12:51

*   Sürüm 6322 (6.0.0) - 19.07.2026 12:53

*   Sürüm 6323 (6.0.0) - 19.07.2026 13:33

*   Sürüm 6324 (6.0.0) - 19.07.2026 13:38

*   Sürüm 6325 (6.0.0) - 19.07.2026 13:40

*   Sürüm 6326 (6.0.0) - 19.07.2026 14:00

*   Sürüm 6327 (6.0.0) - 19.07.2026 14:06

*   Sürüm 6328 (6.0.0) - 19.07.2026 14:37

*   Sürüm 6329 (6.0.0) - 19.07.2026 14:51

*   Sürüm 6330 (6.0.0) - 19.07.2026 15:09

*   Sürüm 6331 (6.0.0) - 19.07.2026 15:40

*   Sürüm 6332 (6.0.0) - 19.07.2026 15:46

*   Sürüm 6333 (6.0.0) - 19.07.2026 16:10

*   Sürüm 6334 (6.0.0) - 19.07.2026 16:33

*   Sürüm 6335 (6.0.0) - 19.07.2026 16:43

*   Sürüm 6336 (6.0.0) - 19.07.2026 16:45

*   Sürüm 6337 (6.0.0) - 19.07.2026 17:01

*   Sürüm 6338 (6.0.0) - 19.07.2026 23:13

*   Sürüm 6339 (6.0.0) - 19.07.2026 23:37

*   Sürüm 6340 (6.0.0) - 19.07.2026 23:46

*   Sürüm 6341 (6.0.0) - 19.07.2026 23:54

*   Sürüm 6342 (6.0.0) - 20.07.2026 00:09

*   Sürüm 6343 (6.0.0) - 20.07.2026 00:29

*   Sürüm 6344 (6.0.0) - 20.07.2026 00:38

*   Sürüm 6345 (6.0.0) - 20.07.2026 01:02

*   Sürüm 6346 (6.0.0) - 20.07.2026 03:44

*   Sürüm 6347 (6.0.0) - 20.07.2026 04:06

*   Sürüm 6348 (6.0.0) - 20.07.2026 04:23

*   Sürüm 6349 (6.0.0) - 20.07.2026 04:24

*   Sürüm 6350 (6.0.0) - 20.07.2026 04:49

*   Sürüm 6351 (6.0.0) - 20.07.2026 04:52

*   Sürüm 6352 (6.0.0) - 20.07.2026 04:52

*   Sürüm 6353 (6.0.0) - 20.07.2026 04:55

*   Sürüm 6354 (6.0.0) - 20.07.2026 14:00

*   Sürüm 6355 (6.0.0) - 20.07.2026 16:59

*   Sürüm 6356 (6.0.0) - 20.07.2026 17:01

*   Sürüm 6357 (6.0.0) - 20.07.2026 18:27

*   Sürüm 6358 (6.0.0) - 20.07.2026 18:58

*   Sürüm 6359 (6.0.0) - 20.07.2026 19:15

*   Sürüm 6360 (6.0.0) - 20.07.2026 19:21

*   Sürüm 6361 (6.0.0) - 20.07.2026 19:25

*   Sürüm 6362 (6.0.0) - 20.07.2026 19:37

*   Sürüm 6363 (6.0.0) - 20.07.2026 23:55

*   Sürüm 6364 (6.0.0) - 21.07.2026 00:16

*   Sürüm 6365 (6.0.0) - 21.07.2026 00:24

*   Sürüm 6366 (6.0.0) - 21.07.2026 00:32

*   Sürüm 6367 (6.0.0) - 21.07.2026 00:55

*   Sürüm 6368 (6.0.0) - 21.07.2026 01:55

*   Sürüm 6369 (6.0.0) - 21.07.2026 02:09

*   Sürüm 6370 (6.0.0) - 21.07.2026 02:13

*   Sürüm 6371 (6.0.0) - 21.07.2026 02:16

*   Sürüm 6372 (6.0.0) - 21.07.2026 02:36

*   Sürüm 6373 (6.0.0) - 21.07.2026 02:38

*   Sürüm 6374 (6.0.0) - 21.07.2026 02:47

*   Sürüm 6375 (6.0.0) - 21.07.2026 02:52

*   Sürüm 6376 (6.0.0) - 21.07.2026 07:58

*   Sürüm 6377 (6.0.0) - 21.07.2026 08:00

*   Sürüm 6378 (6.0.0) - 21.07.2026 08:06

*   Sürüm 6379 (6.0.0) - 21.07.2026 08:10

*   Sürüm 6380 (6.0.0) - 21.07.2026 08:15

*   Sürüm 6381 (6.0.0) - 21.07.2026 08:25

*   Sürüm 6382 (6.0.0) - 21.07.2026 13:58

*   Sürüm 6383 (6.0.0) - 21.07.2026 15:48

*   Sürüm 6384 (6.0.0) - 21.07.2026 15:51

*   Sürüm 6385 (6.0.0) - 21.07.2026 16:33

*   Sürüm 6386 (6.0.0) - 21.07.2026 17:29

*   Sürüm 6387 (6.0.0) - 21.07.2026 17:38

*   Sürüm 6388 (6.0.0) - 21.07.2026 17:46

*   Sürüm 6389 (6.0.0) - 21.07.2026 17:51

*   Sürüm 6390 (6.0.0) - 21.07.2026 17:57

*   Sürüm 6391 (6.0.0) - 21.07.2026 18:11

*   Sürüm 6393 (6.3.920) - 21.07.2026 18:56

*   Sürüm 6394 (6.3.920) - 21.07.2026 19:44

*   Sürüm 6395 (6.3.920) - 21.07.2026 19:47

*   Sürüm 6396 (6.3.920) - 21.07.2026 20:41

*   Sürüm 6398 (6.3.921) - 21.07.2026 23:43

*   Sürüm 6399 (6.3.921) - 21.07.2026 23:57

*   Sürüm 6400 (6.3.921) - 22.07.2026 00:01

*   Sürüm 6402 (6.3.921) - 22.07.2026 00:13

*   Sürüm 6403 (6.3.921) - 22.07.2026 00:21

*   Sürüm 6404 (6.3.921) - 22.07.2026 00:33

*   Sürüm 6405 (6.3.921) - 22.07.2026 09:27

*   Sürüm 6406 (6.3.921) - 22.07.2026 09:31

*   Sürüm 6407 (6.3.921) - 22.07.2026 10:08

*   Sürüm 6408 (6.3.921) - 22.07.2026 10:39

*   Sürüm 6409 (6.3.921) - 22.07.2026 10:41

*   Sürüm 6410 (6.3.921) - 22.07.2026 12:17

*   Sürüm 6411 (6.3.921) - 22.07.2026 12:31

*   Sürüm 6412 (6.3.921) - 22.07.2026 12:36
