# PROGRESS.md

## Son Durum (Sürüm 231)
*   **Ayarlar Kalıcılığı ve Geçerliliği Düzeltildi:** `ConfigManager` içindeki sabit değer zorlamaları kaldırıldı. Artık IP, Port, Köprü Modu ve MQTT durumu ayarları doğru şekilde kaydediliyor ve uygulama genelinde anında etkili oluyor.
*   **Dinamik Konfigürasyon Güncelleme:** Ayarlar kaydedildiğinde asistan motorları (HermesClient, AgentManager) ve MQTT istemcisi yeni değerlerle otomatik olarak yeniden başlatılıyor.
*   **Hermes SSE Entegrasyonu:** Chat ve asistan yanıtları artık tamamen SSE (Server-Sent Events) üzerinden akışkan (streaming) olarak alınıyor.

## Sırada Ne Var?
*   **Bağlantı Kararlılığı:** Araç ünitesinin (Tailscale üzerinden) sık kopma sorunu incelenecek.
*   **Hız Optimizasyonu:** Yerel sunucu yanıt süreleri analiz edilecek.

## Tamamlananlar
*   [x] **Config Sanitization Fix:** `ConfigManager`'ın kullanıcı ayarlarını ezmesi engellendi.
*   [x] **Bridge & MQTT Persistence:** Köprü modu ve MQTT aktiflik durumu config'e eklendi.
*   [x] **Dinamik Client Yenileme:** `VoiceAssistantService` üzerinde IP/Port/Bridge değişimleri için reaktif izleyici güçlendirildi.
*   [x] **Tailscale IP Güncellemesi:** Servisler yeni Tailscale IP'lerine (`192.168.1.14` ve `192.168.1.29`) taşındı.
*   [x] **Wyoming Bridge Entegrasyonu:** `192.168.1.14:5000` üzerinden yeni STT/TTS protokolü (JSON + Base64) eklendi.
*   [x] **Protokol Seçici:** Ayarlar ekranına Wyoming ve Whisper (OpenAI) arasında geçiş yapmayı sağlayan seçim arayüzü eklendi.
*   [x] **Port Standardizasyonu:** Tüm yerel sunucu portları `20128` olarak güncellendi.
*   [x] **Bridge API Entegrasyonu:** `192.168.1.29:5000` adresi üzerinden STT ve TTS desteği eklendi.
*   [x] **TTS Ses Güncellemesi:** Bridge modunda `tr_TR-dfki-medium` sesi aktif edildi.
*   [x] **STT MIME Type:** Ses gönderim formatı `audio/wav` olarak standartlaştırıldı.
*   [x] **Dinamik URL Yönetimi:** `AssistantApplication` üzerinden Bridge ve Ana Sunucu arasında geçiş mekanizması kuruldu.
*   [x] **Sürüm 215 Yayında:** APK yüklendi ve tüm yeni özellikler (Telemetri, VPN LED, Cam/Sunroof) aktif edildi.
*   [x] **Multimedya:** `search_and_play` (Medya arama ve oynatma) desteği eklendi.
*   [x] **Hız Optimizasyonu:** Asistan modu prompt sadeleştirmesi yapıldı.
*   [x] **Çevrimdışı Kapasite:** Sunroof ve Cam kontrolleri Regex motoruna eklendi.
*   [x] **Ağ Kararlılığı:** `NetworkModule` zaman aşımları optimize edildi (10s connect).
*   [x] **STT Hata Yönetimi:** Sunucu erişilemediğinde "Ses çözümleniyor" takılması giderildi, hızlı hata dönüldü.
*   [x] **Gelişmiş Health Check:** `NetworkMonitor` artık ICMP ping yerine doğrudan soket bağlantısı (port 20128) ile durum kontrolü yapıyor.
*   [x] Sunucu IP adresi `100.95.239.119` olarak sabitlendi.
*   [x] Groq ve Edge TTS sistemden tamamen temizlendi.
*   [x] `ConfigManager` şifreleme ve sanitizasyon mantığı düzeltildi.
*   [x] `SettingsScreen` "Kaydet" butonu ve IP kalıcılığı sorunu giderildi.
*   [x] `AssistantController` TTS akışı sadeleştirildi (Edge kaldırıldı).
*   [x] `WakeWordManager` ve `HermesClient` yeni IP mimarisine uyarlandı.
*   [x] `AGENTS.md` yeni teknik kısıtlarla güncellendi.
*   [x] (Eski maddeler arşivlendi...)
