# FILE_INDEX.md

*   Sürüm 6169 (6.0.0) - 11.07.2026
    *   `CODE_AUDIT_REPORT.md`: Kapsamlı kod audit raporu — 57 sorun tespit edildi (5 Kritik, 16 Yüksek, 22 Orta, 14 Düşük). Güvenlik, ağ, ses, durum yönetimi, kaynak yönetimi, ölü kod ve mimari kategorileri.
    *   `AGENTS.md`: Kod audit raporu referansı eklendi (Kapsamlı Kod Audit Raporu bölümü).

*   Sürüm 6077 (6.0.0) - 10.07.2026 20:00
    *   `SttManager.kt`: Mikrofon kazancı (Gain) 3.5'e yükseltildi, VAD parametreleri manifesto ile eşitlendi.
    *   `UI_MANIFESTO.md`: Ses ve mikrofon standartları eklenerek mühürlendi.
    *   `AGENTS.md`: Ses standartlarının korunması kuralı eklendi.

*   Sürüm 6076 (6.0.0) - 10.07.2026 19:30
    *   `MainActivity.kt`: 5x2 grid düzeni, Chery ikonları ve referans padding değerleri uygulandı.
    *   `GlassIcon.kt`: İkon boyutları referans manifesto değerlerine çekildi (110dp).
    *   `SettingsScreen.kt`: Sidebar genişliği (235dp) ve buton boyutları optimize edildi.
    *   `PairingManager.kt`: Varsayılan eşleşme kodu `OMODA5` yapıldı.
    *   `UI_MANIFESTO.md`: Yeni tasarım kuralları dosyası.

*   Sürüm 6075 (6.0.0) - 10.07.2026 18:30
    *   `SettingsScreen.kt`: Market (Güncelleme) sekmesi geri getirildi.

*   Sürüm 6077 (6.0.0) - 10.07.2026 21:14

*   Sürüm 6078 (6.0.0) - 10.07.2026 21:18

*   Sürüm 6079 (6.0.0) - 10.07.2026 21:22

*   Sürüm 6080 (6.0.0) - 10.07.2026 21:25

*   Sürüm 6081 (6.0.0) - 10.07.2026 21:27

*   Sürüm 6082 (6.0.0) - 10.07.2026 21:28

*   Sürüm 6083 (6.0.0) - 10.07.2026 21:33

*   Sürüm 6084 (6.0.0) - 10.07.2026 21:35

*   Sürüm 6085 (6.0.0) - 10.07.2026 21:38

*   Sürüm 6086 (6.0.0) - 10.07.2026 21:41

*   Sürüm 6087 (6.0.0) - 10.07.2026 21:42

*   Sürüm 6088 (6.0.0) - 10.07.2026 21:46

*   Sürüm 6089 (6.0.0) - 10.07.2026 21:47

*   Sürüm 6090 (6.0.0) - 10.07.2026 21:51

*   Sürüm 6091 (6.0.0) - 10.07.2026 22:00

*   Sürüm 6092 (6.0.0) - 10.07.2026 22:03

*   Sürüm 6093 (6.0.0) - 10.07.2026 22:05

*   Sürüm 6094 (6.0.0) - 10.07.2026 22:08

*   Sürüm 6095 (6.0.0) - 10.07.2026 22:10

*   Sürüm 6096 (6.0.0) - 10.07.2026 22:13

*   Sürüm 6097 (6.0.0) - 10.07.2026 22:20

*   Sürüm 6098 (6.0.0) - 10.07.2026 23:17

*   Sürüm 6099 (6.0.0) - 10.07.2026 23:53

*   Sürüm 6100 (6.0.0) - 10.07.2026 23:57

*   Sürüm 6101 (6.0.0) - 10.07.2026 23:59

*   Sürüm 6102 (6.0.0) - 11.07.2026 00:19

*   Sürüm 6103 (6.0.0) - 11.07.2026 00:21

*   Sürüm 6104 (6.0.0) - 11.07.2026 00:22

*   Sürüm 6105 (6.0.0) - 11.07.2026 00:24

*   Sürüm 6106 (6.0.0) - 11.07.2026 00:25

*   Sürüm 6107 (6.0.0) - 11.07.2026 00:28

*   Sürüm 6108 (6.0.0) - 11.07.2026 00:38

*   Sürüm 6109 (6.0.0) - 11.07.2026 00:46

*   Sürüm 6110 (6.0.0) - 11.07.2026 00:53
    *   `ScreenRecorder.kt`: API 31+ constructor kullanımı API 29 uyumlu hale getirildi.
    *   `AndroidManifest.xml`: Sistem izinleri (DUMP, LOGS vb.) için lint koruması eklendi, `uses-feature` tanımları yapıldı.
    *   `ActionExecutor.kt`: API 30 screenshot callback uyarısı suppress edildi.
    *   `OtaUpdateService.kt` & `PackageReplacedReceiver.kt`: Bildirim izinleri lint uyarıları giderildi.
    *   `WakeWordManager.kt`, `SherpaAsrManager.kt`, `SttManager.kt`, `NetworkMonitor.kt`: Mikrofon ve ağ izinleri lint uyarıları giderildi.

*   Sürüm 6112 (6.0.0) - 11.07.2026 01:50
    *   `CommandRouter.kt`: Firewall doğrulama mantığı eklendi, yetkisiz komutlar engelleniyor.
    *   `EdgeOnlineTTSManager.kt`: Hata yönetimi düzeltilerek TTS fallback zinciri onarıldı.
    *   `AssistantOverlayUI.kt`: HUD metin boyutları büyütüldü ve ses genliği görselleştirmesi eklendi.

*   Sürüm 6112 (6.0.0) - 11.07.2026 03:42

*   Sürüm 6114 (6.0.0) - 11.07.2026 02:15
    *   `SensorMonitorScreen.kt`: Yeni sensör izleme ekranı (Hız, RPM, Yakıt, HVAC vb.).
    *   `MainActivity.kt`: Sensör ekranına geçiş için "VERİ" FAB butonu ve navigasyon mantığı eklendi.

*   Sürüm 6114 (6.0.0) - 11.07.2026 10:49

*   Sürüm 6115 (6.0.0) - 11.07.2026 11:12

*   Sürüm 6116 (6.0.0) - 11.07.2026 11:14

*   Sürüm 6117 (6.0.0) - 11.07.2026 11:22

*   Sürüm 6118 (6.0.0) - 11.07.2026 11:25

*   Sürüm 6119 (6.0.0) - 11.07.2026 11:26
    *   `SettingsScreen.kt` & `SettingsComponents.kt`: Mobil cihazlar için kompakt görünüm (`isCompact`) desteği eklendi.
    *   `SensorMonitorScreen.kt`: Omoda 5 VHAL verilerinin izlendiği dinamik ekran tamamlandı.
    *   `MainActivity.kt`: "VERİ" butonu ile sensör ekranına navigasyon eklendi.

*   Sürüm 6120 (6.0.0) - 11.07.2026 11:42

*   Sürüm 6121 (6.0.0) - 11.07.2026 11:44

*   Sürüm 6122 (6.0.0) - 11.07.2026 12:12

*   Sürüm 6123 (6.0.0) - 11.07.2026 12:13

*   Sürüm 6124 (6.0.0) - 11.07.2026 12:47

*   Sürüm 6125 (6.0.0) - 11.07.2026 12:56

*   Sürüm 6126 (6.0.0) - 11.07.2026 13:04

*   Sürüm 6127 (6.0.0) - 11.07.2026 13:10
    *   `ConfigManager.kt`: Ayarları SD karta yedekleme ve geri yükleme (Backup/Restore) desteği eklendi.
    *   `GlobalState.kt` & `AssistantApplication.kt`: API anahtarları flow tabanlı reaktif yapıya geçirildi.
    *   `SettingsScreen.kt`: Backup/Restore butonları ve dinamik API anahtarı giriş alanları eklendi.
    *   `EdgeOnlineTTSManager.kt`: Sabit token yerine dinamik `GlobalState` token'ı kullanımı aktifleştirildi.

*   Sürüm 6128 (6.0.0) - 11.07.2026 13:46

*   Sürüm 6129 (6.0.0) - 11.07.2026 13:47

*   Sürüm 6153 (6.0.0) - 11.07.2026 17:05
    *   `SettingsScreen.kt`: Alt bar kaldırıldı, Kaydet/İptal üst bara taşındı, mobil yatay mod optimizasyonu yapıldı.
    *   `MainActivity.kt`: Uygulama yükleme arka plana (IO) alındı, FAB butonları `LazyRow` ile kaydırılabilir yapıldı.
    *   `AdbConnectionMonitor.kt`: Port 5555 kontrolü sessizleştirildi (log temizliği).
    *   `MediaControllerViewModel.kt`: `SecurityException` koruması eklendi.

*   Sürüm 6131 (6.0.0) - 11.07.2026 14:15

*   Sürüm 6130 (6.0.0) - 11.07.2026 13:48

*   Sürüm 6131 (6.0.0) - 11.07.2026 14:26

*   Sürüm 6132 (6.0.0) - 11.07.2026 14:28

*   Sürüm 6133 (6.0.0) - 11.07.2026 14:35

*   Sürüm 6134 (6.0.0) - 11.07.2026 14:39

*   Sürüm 6135 (6.0.0) - 11.07.2026 14:42

*   Sürüm 6136 (6.0.0) - 11.07.2026 14:56

*   Sürüm 6137 (6.0.0) - 11.07.2026 15:31

*   Sürüm 6138 (6.0.0) - 11.07.2026 15:40

*   Sürüm 6139 (6.0.0) - 11.07.2026 15:41

*   Sürüm 6140 (6.0.0) - 11.07.2026 15:51

*   Sürüm 6141 (6.0.0) - 11.07.2026 15:54

*   Sürüm 6142 (6.0.0) - 11.07.2026 16:11

*   Sürüm 6143 (6.0.0) - 11.07.2026 16:13

*   Sürüm 6144 (6.0.0) - 11.07.2026 16:22

*   Sürüm 6145 (6.0.0) - 11.07.2026 16:23

*   Sürüm 6146 (6.0.0) - 11.07.2026 16:30

*   Sürüm 6147 (6.0.0) - 11.07.2026 16:31

*   Sürüm 6148 (6.0.0) - 11.07.2026 16:38

*   Sürüm 6149 (6.0.0) - 11.07.2026 16:39

*   Sürüm 6150 (6.0.0) - 11.07.2026 16:40

*   Sürüm 6151 (6.0.0) - 11.07.2026 16:40

*   Sürüm 6152 (6.0.0) - 11.07.2026 16:41

*   Sürüm 6153 (6.0.0) - 11.07.2026 17:05

*   Sürüm 6154 (6.0.0) - 11.07.2026 17:13

*   Sürüm 6155 (6.0.0) - 11.07.2026 17:21

*   Sürüm 6156 (6.0.0) - 11.07.2026 17:23

*   Sürüm 6157 (6.0.0) - 11.07.2026 17:34

*   Sürüm 6158 (6.0.0) - 11.07.2026 17:39

*   Sürüm 6159 (6.0.0) - 11.07.2026 17:42

*   Sürüm 6160 (6.0.0) - 11.07.2026 18:00

*   Sürüm 6161 (6.0.0) - 11.07.2026 18:12

*   Sürüm 6162 (6.0.0) - 11.07.2026 18:23

*   Sürüm 6163 (6.0.0) - 11.07.2026 18:41

*   Sürüm 6164 (6.0.0) - 11.07.2026 18:45
    *   `OtaUpdateManager.kt`: GitHub token formatı "token [KEY]" olarak güncellendi, yetkilendirme sorunları çözüldü.
    *   `ConfigManager.kt`: Yedekleme yolu `/sdcard/Omoda` olarak sabitlendi, ByteArray tabanlı XOR şifreleme ile veri bütünlüğü sağlandı.
    *   `RelayClient.kt`: Varsayılan bağlantı parametreleri (192.168.1.14 & OMODA5) eklendi.
    *   `MqttPublisher.kt`: `omoda/status` konusuna online/retained durum mesajı gönderimi eklendi.
    *   `SettingsScreen.kt`: Yatay modda sol bar (sidebar) desteği ve kompakt UI bileşenleri eklendi.

*   Sürüm 6165 (6.0.0) - 11.07.2026 18:50

*   Sürüm 6166 (6.0.0) - 11.07.2026 18:59

*   Sürüm 6167 (6.0.0) - 11.07.2026 19:16

*   Sürüm 6168 (6.0.0) - 11.07.2026 19:54

*   Sürüm 6169 (6.0.0) - 11.07.2026 21:04

*   Sürüm 6170 (6.0.0) - 11.07.2026 21:15

*   Sürüm 6171 (6.0.0) - 11.07.2026 21:24

*   Sürüm 6172 (6.0.0) - 11.07.2026 22:14

*   Sürüm 6173 (6.0.0) - 11.07.2026 23:14

*   Sürüm 6174 (6.0.0) - 11.07.2026 23:29

*   Sürüm 6175 (6.0.0) - 11.07.2026 23:50

*   Sürüm 6176 (6.0.0) - 11.07.2026 23:53

*   Sürüm 6177 (6.0.0) - 11.07.2026 23:56

*   Sürüm 6178 (6.0.0) - 12.07.2026 00:02

*   Sürüm 6179 (6.0.0) - 12.07.2026 00:26
