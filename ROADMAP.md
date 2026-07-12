# ROADMAP.md - Geliştirme Planı

## Faz 1-12: Temel Mimari ve Özellikler (Tamamlandı)
- [x] Altyapı, Event Modeli ve Core Logic
- [x] VHAL, Telemetri ve Sensör Yönetimi
- [x] AI Client (Hermes), STT/TTS Altyapısı
- [x] UI/UX, Wallpaper ve App Store Entegrasyonu
- [x] OTA Güncelleme Sistemi

## Faz 13: Ağ ve Servis Konsolidasyonu (GÜNCELLENDİ)
- [x] **Tek IP Mimarisi:** Tüm servisler `100.95.239.119` adresine taşındı.
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
- [x] **Sürüm 229 Yayında:** Yeni IP ve köprü yapılandırması araca yüklendi.
- [x] **Edge TTS Fix:** 403 Forbidden hatası için Sec-MS-GEC token algoritması ve audio streaming ayrıştırıcısı güncellendi.
- [x] **MultiTask Dashboard:** Harita ve Medya split-screen desteği ve Dashboard ekranı entegre edildi.
- [x] **Sesli Komut Çevrimdışı Kapasitesi:** CommandRouter Regex motoru (YouTube Follow-up) genişletildi.
- [x] **Multimedya Kontrolü:** Spotify/YouTube için `search_youtube` aracı eklendi.
- [x] **UI İnce Ayarlar:** Overlay metin çiftleme sorunu giderildi.
- [ ] Araç içi multimedya (Spotify/YouTube) kontrol araçlarının genişletilmesi.
- [x] **UI İnce Ayarlar:** Ana ekran sol boşluğu (235dp) ve ikon boyutları (160dp) optimize edildi.
- [x] **Bridge & Simulator Split:** VHAL Simülatör ve MQTT Köprü kontrolleri birbirinden ayrıldı ve ADB Panel butonu eklendi.
- [x] **GitHub OTA & Backup Fix:** GitHub token yetkilendirme ve yedekleme sistemi veri kaybı sorunları giderildi.
- [x] **MQTT Presence:** Cihazın çevrimiçi durumunu bildiren `omoda/status` mesaj sistemi eklendi.
- [x] **Sistem Kontrolü:** Varsayılan launcher atama ve HVAC hızlı başlatma araçları eklendi.
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
