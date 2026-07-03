# ROADMAP.md - Geliştirme Planı

## Faz 1-12: Temel Mimari ve Özellikler (Tamamlandı)
- [x] Altyapı, Event Modeli ve Core Logic
- [x] VHAL, Telemetri ve Sensör Yönetimi
- [x] AI Client (Hermes), STT/TTS Altyapısı
- [x] UI/UX, Wallpaper ve App Store Entegrasyonu
- [x] OTA Güncelleme Sistemi

## Faz 13: Ağ ve Servis Konsolidasyonu (GÜNCELLENDİ)
- [x] **Tek IP Mimarisi:** Tüm servisler `100.95.239.119` adresine taşındı.
- [x] **Bulut Bağımlılığı Temizliği:** Groq ve Edge TTS sistemden tamamen kaldırıldı.
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
- [x] **Bridge API Entegrasyonu:** `192.168.1.14` (Wyoming) ve `192.168.1.29` (Whisper) köprüleri eklendi.
- [x] **Hibrit Protokol Desteği:** JSON/Base64 (Wyoming) ve Multipart (OpenAI) protokolleri desteklendi.
- [x] **Sürüm 229 Yayında:** Yeni IP ve köprü yapılandırması araca yüklendi.
- [ ] Yerel sunucu (Hermes) yanıt hızının optimize edilmesi.
- [x] **Sesli Komut Çevrimdışı Kapasitesi:** CommandRouter Regex motoru (Cam/Sunroof) genişletildi.
- [x] **Multimedya Kontrolü:** Spotify/YouTube için `search_and_play` aracı eklendi.
- [ ] Araç içi multimedya (Spotify/YouTube) kontrol araçlarının genişletilmesi.
