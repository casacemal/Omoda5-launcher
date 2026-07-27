# ROADMAP.md - Geliştirme Planı

## Faz 1-12: Temel Mimari ve Özellikler (Tamamlandı)
- [x] Altyapı, Event Modeli ve Core Logic
- [x] VHAL, Telemetri ve Sensör Yönetimi
- [x] AI Client (Hermes), STT/TTS Altyapısı
- [x] UI/UX, Wallpaper ve App Store Entegrasyonu
- [x] OTA Güncelleme Sistemi

## Faz 13: Ağ ve Servis Konsolidasyonu (GÜNCELLENDİ)
- [x] **Karma IP Mimarisi:** MQTT, Bridge ve Hermes servisleri `192.168.1.14` adresine konsolide edildi; Edge TTS ve Groq bağımsız IP'lerde bırakıldı.
- [x] **Bulut Bağımlılığı Temizliği:** Groq sistemden kaldırıldı. Edge TTS yerel sunucuya (10201) taşındı.
- [x] **Port Yönetimi:** 20128 (API) ve 1883 (MQTT) portları standartlaştırıldı.
- [x] **Kalıcı Ayarlar:** Sunucu IP adresinin kaydedilmesi ve yüklenmesi stabil hale getirildi.
- [x] **UI Sadeleştirme:** Gereksiz motor ve servis seçimleri arayüzden temizlendi.
- [x] **VPN Durum İzleme:** Tailscale bağlantı durumu UI'a (LED göstergesi) eklendi.

## Faz 14: Stabilizasyon ve Hata Toleransı (Tamamlandı)
- [x] Command Firewall (Merkezi Karar Birimi) ile güvenli komut yönetimi.
- [x] Yerel (Hermes) -> Sistem (Android) fallback zinciri.
- [x] Telemetri verilerinin yerel sunucuya kesintisiz akışı.
- [x] GPS ve Araç Durumu araçlarının (tools) AI tarafından kullanımı.

## Faz 15: Gelecek Planları & Geliştirme Köprüsü
- [x] **Bridge API Entegrasyonu:** `192.168.1.14` (Wyoming - Port 5000) ve `192.168.1.29` (Whisper) köprüleri eklendi.
- [x] **Bridge Fix:** Sunucudaki port 5000 Wyoming Bridge scripti onarıldı ve stabil hale getirildi.
- [x] **Hibrit Protokol Desteği:** JSON/Base64 (Wyoming) ve Multipart (OpenAI) protokolleri desteklendi.
- [x] **Sürüm Yayında:** Yeni IP ve köprü yapılandırması araca yüklendi.
- [x] **Edge TTS Fix:** 403 Forbidden hatası için Sec-MS-GEC token algoritması ve audio streaming ayrıştırıcısı güncellendi.
- [x] **MultiTask Dashboard:** Harita ve Medya split-screen desteği ve Dashboard ekranı entegre edildi.
- [x] **Sesli Komut Çevrimdışı Kapasitesi:** CommandRouter Regex motoru (YouTube Follow-up) genişletildi.
- [x] **Multimedya Kontrolü:** Spotify/YouTube için `search_youtube` aracı eklendi.
- [x] **UI İnce Ayarlar:** Overlay metin çiftleme sorunu giderildi.
- [x] **Architecture 2.0:** Tam fonksiyonel, DSL tabanlı, modüler AAOS Platformu tamamlandı.
- [x] **Akıllı Split:** 80 km/h hız duyarlı dinamik panel oranları aktif edildi.
- [x] **Model Otomasyonu:** Eksik ses dosyalarını otomatik indiren onarım motoru eklendi.
- [x] **TPMS Entegrasyonu:** Lastik basınç takip widget'ı Dashboard'a mühürlendi.
- [x] **Kod Denetim Raporu:** `CODE_AUDIT_REPORT` kapsamındaki 16 adet bulgu onarıldı (Race condition, güvenlik, bellek ve sızıntı yönetimi).
- [x] **VHAL UI Senkronizasyonu:** Multi-key indexing ve widget fallback mekanizması ile araç verilerinin tüm ekranlarda görünmesi sağlandı.
- [ ] Performans optimizasyonları ve stres testleri.
- [x] **Bridge & Simulator Split:** VHAL Simülatör ve MQTT Köprü kontrolleri birbirinden ayrıldı ve ADB Panel butonu eklendi.
- [x] **GitHub OTA & Backup Fix:** GitHub token yetkilendirme ve yedekleme sistemi veri kaybı sorunları giderildi.
- [x] **MQTT Presence:** Cihazın çevrimiçi durumunu bildiren `omoda/status` mesaj sistemi eklendi.
- [x] **Sistem Kontrolü:** Varsayılan launcher atama ve HVAC hızlı başlatma araçları eklendi.
- [x] **Klima Paketi Fix:** Omoda 5 `com.chery.hvac` uyumsuzluğu giderildi.
- [x] **Aktif Hermes Katmanı:** Pasif köprüden aktif asistan mimarisine geçiş yapıldı.
- [x] **Hibrit Çalışma Modları:** Sesli Sohbet (CHAT) ve Komut (ASSIST) modları entegre edildi.
- [x] **Araç Donanım Entegrasyonu:** AI'nın araç durumunu (Hız, Vites, Klima vb.) bilmesi sağlandı.
- [x] **Dinamik Veri Polling:** Ayarlanabilir frekanslı (2s/5s/10s) ve optimize edilmiş `dumpsys` araç veri izleme sistemi tamamlandı.
- [x] **Hey Omoda (Wake Word):** Bulut tabanlı uyandırma kelimesi ve "m.k" halüsinasyon filtresi aktifleştirildi.
- [x] **Firewall Stabilizasyonu:** CommandRouter firewall bypass hatası düzeltildi, engellenen komutlar artık doğru raporlanıyor.
- [x] **TTS Robustness:** Edge TTS fallback mekanizması onarıldı, hata durumunda alternatif motorlara geçiş sağlandı.
- [x] **HUD UI Optimization:** Overlay metin boyutları sürüş güvenliği için büyütüldü (16sp/24sp).
- [x] **Voice Visualization:** Overlay'e gerçek zamanlı ses genliği (amplitude) duyarlılığı eklendi.
- [x] **Sensor Monitor Screen:** Omoda 5 VHAL verilerinin (Hız, RPM, Yakıt vb.) 2sn periyotla izlendiği özel ekran eklendi.
- [x] **Premium Dashboard:** 80 km/h akıllı split ekran (20 km/h reset state), glassmorphism medya widget'ı ve tam ekran Dashboard (235dp kuralıyla) entegre edildi.
- [x] **Premium Bento Dashboard:** Tesla ve Cyber-HUD tarzı modüler Bento-box tasarımı ve dinamik RPM grafiği uygulandı.
- [x] **Health Watchdog:** Sunucu yanıt vermediğinde (Thinking/STT) kullanıcıyı uyaran zaman aşımı mekanizması eklendi.
- [x] **Local Voice Fallback:** Piper TTS ve Whisper STT motorları SD kart model desteği ile tam stabil hale getirildi.
- [x] **Split View Map Fix:** ActivityView "Active view not supported" hatası retry mantığıyla çözüldü.
- [x] **UI Restorasyonu:** Tüm arayüz standartlarına ve manifesto kurallarına geri döndürüldü.
- [x] **AAOS UI Refactor:** Settings ve Monitor alt ekranları 64dp Touch Target ve Focus (Rotary) desteğine kavuşturuldu.
- [x] **VHAL Motor Verileri UI Fix:** `VehicleController` verileri çoklu anahtar (Hex ID, Etiket, Kısaltmalar) ile haritalayacak şekilde güncellendi, widget'larda veri görünmeme sorunu çözüldü.
- [x] **VHAL Get/Set-Property Fix:** Tüm araç sorgulama ve komut ID'leri AAOS uyumlu decimal formatına taşındı.
- [x] **Dashboard Motor Verileri:** Ana ekrana RPM verisi eklendi ve TPMS veri akışı gerçek sensörlere bağlandı.
- [x] **Mini-AA Coolwalk Entegrasyonu:** Ana dashboard Bento-box tasarımdan, Mini-AA tarzı split-screen (Coolwalk) tasarımına taşındı.
- [x] **Teknik Ansiklopedi (Proje Kitabı):** Sistemin tüm katmanlarını, veri standartlarını ve geçmiş hata çözümlerini içeren kapsamlı `PROJE_KITABI.md` oluşturuldu.
- [x] **Mimari Sadeleştirme:** Gereksiz Köprü (Bridge) katmanı temizlendi, sunucu hatasında otomatik yerel fallback mekanizması kuruldu.
- [x] **OmodaDashboardScreen Preview & Refactor:** State-hoisting ile preview desteği ve APK derlemesi tamamlandı.
- [x] **VHAL Toplu Döküm (vHAL Restore):** Omoda donanımında ADB socket tıkanıklığını aşmak için \`dumpsys car_service get-property-value\` (Toplu) yöntemi geri getirildi.
- [x] **GitHub OTA Dağıtım:** Yavaş ADB yüklemesi yerine öncelikli dağıtım yolu olan GitHub Releases protokolüne geçildi.
- [x] **Mini-AA Tasarım Entegrasyonu:** Modern Android Auto ikonları ve otomotiv standartlarında UI iyileştirmeleri sağlandı.
