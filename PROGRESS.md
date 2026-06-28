# PROGRESS.md

## Son Durum
*   **Gelişmiş Telemetri:** GPS, uygulama listesi, medya ve cihaz bilgileri Hermes AI prompt'una dahil edildi.
*   **Jest Yönetimi:** Ekran jestleri (Back/Home) ve `BackHandler` entegrasyonu tamamlandı.
*   **Otomatik İzinler:** ADB üzerinden otomatik izin yönetimi ve varsayılan launcher kurulumu geri getirildi.
*   **UI Güncellemeleri:** SMART HUD ve asistan kontrol butonları (Mikrofon/Ayarlar) modernize edildi.
*   **Medya:** Medya butonları büyütüldü ve navigasyon kanalı entegrasyonu sağlandı.

*   **LLM Karar Motoru (Decision Engine):** Asistanın araç üzerindeki kontrol yetenekleri artırıldı. Klima, ses ve medya kontrolü için yeni fonksiyonlar (tools) eklendi. Sistem talimatları, asistanın araç verilerine dayalı daha proaktif ve çözüm odaklı yanıtlar vermesi için optimize edildi.
*   **Aksiyon Yürütücü (ActionExecutor):** Yeni LLM araçlarını (media_control vb.) destekleyecek şekilde güncellendi.

*   **Faz 9: Driving Analysis Engine:** Sürüş verilerini takip eden ve sürüş sonunda özet (süre, mesafe, skor) sunan analiz motoru entegre edildi. Sert fren tespiti ve sürüş puanlama mantığı eklendi. Sürüş bitiminde asistan artık otomatik olarak sürüş özetini anons ediyor.
*   **Kod Temizliği ve Optimizasyon:** `Problems` sekmesindeki tüm kritik uyarılar (deprecated API kullanımı, gereksiz constructor parametreleri, hardcoded stringler) giderildi. AndroidManifest dosyasında API 29 uyumluluğu için düzenlemeler yapıldı.
*   **Ekran Uyumluluğu:** Xiaomi Mi 13 ve dar ekranlı cihazlar için dinamik grid ve ölçeklendirme mantığı eklendi.
*   **Duvar Kağıdı Yönetimi:** Wallpaper klasöründeki resimler projeye dahil edildi, anasayfaya hızlı değişim butonu eklendi ve seçimler kalıcı hale getirildi.
*   **Asistan STT Yapılandırması:** Varsayılan STT modu "BULUT" (Groq) olarak ayarlandı ve 401 hataları için log iyileştirmesi yapıldı.
*   **Ağ Yapılandırması (REVERT & FIX):** Yanlışlıkla yerel IP'ye yönlendirilen Groq ve Cloud TTS URL'leri orijinal internet adreslerine (`api.groq.com`, `api.openai.com`) geri döndürüldü.
*   **Bağlantı Sorunu Çözüldü:** Yerel sunucu (119) üzerindeki `8642` portu için yanlış eklenen `/v2/` path'i temizlendi, orijinal Hermes API standartlarına dönüldü.
*   **WakeWord & STT İyileştirmesi:** "altyazı m.k." gibi fısıltı/gürültü kaynaklı halüsinasyonlar için filtre eklendi.
*   **ADB Bridge Fix:** ADB handshake başarısız olduğunda sistem izinleri için otomatik fallback mekanizması düzeltildi.
*   **Jest Yönetimi İyileştirmesi:** AAOS standartlarına uygun geri (kenardan sağa çekme) ve ana sayfa (alttan yukarı çekme) jestleri `MainActivity` düzeyinde optimize edildi.
*   **VHAL Hata Giderimi:** `dumpsys` üzerinden okunan araç verilerinin (hız, vites vb.) 0'da takılı kalma sorunu giderildi. Property ID'lerine `0x` öneki eklendi ve Semidrive T9 formatına uygun regex tabanlı yeni parserlar (`CarSource`, `DumpsysSource`) devreye alındı.
*   **Kod Standartları:** `ActionExecutor` içindeki lint uyarıları giderildi.
*   **Mobil Uyumluluk:** Uygulama arayüzü 6 inç cep telefonlarına ve küçük ekranlı cihazlara uyumlu hale getirildi. Dinamik grid, ölçeklenebilir ikonlar ve adaptif padding mantığı eklendi.

*   **Ağ Yapılandırması:** Hermes Gateway adresi `100.95.239.119:8642` olarak kesinleştirildi ve uygulama başlatıldığında bu adresin zorunlu olarak kullanılması sağlandı.

*   **Ağ ve VPN Optimizasyonu:** Uygulama trafiği ayrıştırıldı. Sadece Hermes Gateway (`100.95.239.119`) VPN üzerinden, diğer servisler (Groq, Edge) normal internet üzerinden çalışacak şekilde routing kuralları güncellendi.
*   **STT Stabilizasyonu:** Groq 429 hataları için retry mekanizması iyileştirildi ve varsayılan mod Hermes'e çekildi.

*   **Hermes STT Hata Giderimi:** Groq rate limit (429) sorunları nedeniyle sistemin kilitlendiği tespit edildi. `WakeWordManager` ve `HermesClient` kaynak projedeki (`omodaassist_v2`) stabil mantıkla senkronize edildi.
*   **Zaman Aşımı Ayarları:** Ağ kararsızlıklarını önlemek için OkHttp zaman aşımları kaynak projedeki gibi 30 saniyeye geri çekildi.
*   **Mod Zorlama:** Groq limiti dolduğu için `sttMode` geçici olarak `HERMES` moduna zorlandı.

## Tamamlananlar
*   [x] Hermes Gateway adresi `100.95.239.119:8642` olarak kalıcı hale getirildi.
*   [x] `MainActivity` ve `HomeScreen` mobil cihazlar için dinamik layout desteğine kavuşturuldu.
*   [x] `GlassIcon` bileşeni küçük ekranlarda okunabilirliği koruyacak şekilde ölçeklendirildi.
*   [x] `MediaControlWidget` mobil ekran genişliklerine göre yeniden yapılandırıldı.
*   [x] `ActionExecutor` TAG değişkeni isimlendirme hatası düzeltildi.
*   [x] `VehicleController` toplu okuma komutları `0x` hex formatına dönüştürüldü.
*   [x] `CarSource` ve `DumpsysSource` sınıfları Semidrive T9 / AAOS 10 dump formatına göre modernize edildi.
*   [x] Wallpaper klasöründeki 4 adet resim (`wp_purple`, `wp_flare`, `wp_red`, `wp_nature`) `res/drawable` altına taşındı.
*   [x] `SettingsManager`'a `wallpaperIdx` özelliği eklenerek seçilen duvar kağıdının kalıcı olması sağlandı.
*   [x] `MainActivity` Launcher grid'ine "Duvar Kağıdı" ikonu eklendi.
*   [x] Tıklama ile dinamik duvar kağıdı değişimi (dahili + harici /sdcard/Omoda/Wallpapers) optimize edildi.
*   [x] Proje temizliği yapıldı: Gereksiz dosyalar (loglar, scriptler, Claude yedekleri) ARCHIVE klasörüne taşındı.
*   [x] Kullanılmayan kaynak kodları (Stub/Test sınıfları) temizlendi.
*   [x] Derleme testi yapıldı (app:assembleDebug) - Başarılı.
*   [x] Karar Motoru (Hermes) ayarları şifreli kilit altına alındı (Şifre: 4078).
*   [x] Uygulama konfigürasyon dosyası (app_config.json) XOR+Base64 ile şifrelendi.
*   [x] MQTT Sunucu IP'si 100.121.172.79 olarak güncellendi.
*   [x] AndroidManifest.xml'e `android.permission.DUMP` eklendi (VHAL erişimi için).
*   [x] VehicleController redundant motor verileri temizlendi.
*   [x] AgentManager mod geçiş kontrolleri (Sohbet/Asistan/İzleme) kaynak projeye göre güncellendi.
*   [x] VoiceAssistantService WakeWord (Hey Omoda) entegrasyonu kaynak projeye göre sağlandı.
*   [x] 1-5. Core Altyapı ve Event Modeli - TAMAMLANDI.
*   [x] 6-8. Telemetri ve Komut Yönetimi - TAMAMLANDI.
*   [x] STT ve TTS Stabilizasyonu (Groq -> Hermes -> Edge) - TAMAMLANDI.
*   [x] Launcher UI & Media Widget (Manifesto v9.3.0) - TAMAMLANDI.
*   [x] Overlay ve Gesture Entegrasyonu - TAMAMLANDI.
*   [x] Gelişmiş Telemetri (GPS, Apps, Device) - TAMAMLANDI.
*   [x] ADB Otomatik Görevler - TAMAMLANDI.
*   [x] Faz 8: LLM Karar Motoru (Gelişmiş Fonksiyon Çağırma) - TAMAMLANDI.
*   [x] Faz 9: Driving Analysis Engine - TAMAMLANDI.
*   [x] Kod Temizliği ve Lint Uyarılarının Giderilmesi - TAMAMLANDI.
*   [x] Ekran Uyumluluğu ve Başarılı Derleme - TAMAMLANDI.
*   [x] CommandRouter kullanılmayan değişken temizliği.
*   [x] Saat/Tarih gösterimi (Launcher).
*   [x] Tailscale (TSNet) Entegrasyonu & TLS.
*   [x] Ayarlar Sayfası Görsel Güncelleme (Sidebars).
*   [x] **TTS Altyapısı Yenilendi:** `TTSManager` arayüzü ile standartlaştırıldı. Edge TTS entegrasyonu sağlandı ve UI üzerinden dinamik perde/hız ayarları eklendi.
*   [x] **Yapay Zeka Yetkileri Genişletildi:** `AgentManager`'a saat senkronizasyonu (`fix_system_time`) ve cihaz genelinde resmi Tailscale VPN uygulamasını bağlama/koparma (`connect_vpn`, `disconnect_vpn`) araçları öğretildi.
*   [x] **Otomatik VPN Başlatma:** Uygulama açılışında (`MainActivity`) ayarlara göre Tailscale uygulamasını otomatik başlatan `am broadcast` ADB tetikleyicisi kuruldu.
*   [x] **OTA Güncelleme Sistemi:** Github üzerinden APK sürüm kontrolü ve uygulama içi (AppStoreSection) indirme mantığı kuruldu.
*   [x] **Overlay / AI Bildirim Ekranı (REVERT & FIX):** Eski `omodaassist_v2` projesi incelenerek Overlay'in kapanma mantığı düzeltildi. Gelen ve giden asistan metinlerinin, STT bittikten sonra hemen kaybolmaması sağlandı.
*   [x] **Ses Kanalı İyileştirmesi:** Omoda donanımı ve standart telefonlar (Mi 13) için dinamik `AudioAttributes` kanal seçimi yapıldı.

## Sırada Ne Var?
*   **Piper STT Entegrasyonu:** Yerel testlerde başarıyla çalışan Piper STT, ana sisteme entegre edilecek.
*   **Sherpa TTS Optimizasyonu:** İşlemciyi kilitlediği (CPU tıkadığı) için geçici olarak devre dışı bırakılan/baypas edilen Sherpa TTS yapısı, performans sorunları çözüldükten sonra aktif edilecek. Bu kısımdaki baypas mantığına o zamana kadar dokunulmayacak.
*   Kullanıcı testleri ve ince ayarlar.
*   Performans optimizasyonları.

*   **Ag Mimarisi Kesinlesti (28 Haziran 2026):** 4 kuralli ag yapisi dokumante edildi:
    1. Hermes API -> Tailscale (100.95.239.119:8642)
    2. Groq STT -> direkt (api.groq.com, VPN disi)
    3. Edge TTS -> Hermes API uzerinden, VPN disi LAN
    4. VPN kopunca -> otomatik dene + bildirim
*   **sttMode Duzeltmesi:** Eskiden HERMES moduna zorlanan STT, BULUT moduna alindi (Groq direkt). HERMES modu ileride Hermes kendi STT/TTS sunucusu hazir olunca kullanilmak uzere ayrildi.
*   **Dokumantasyon:** AGENTS.md ve docs/AG-MIMARISI.md'ye ag mimarisi eklendi.
