# ROADMAP: Sesli Asistan (Hermes) Entegrasyonu ve Araç Kontrolü

Bu yol haritası, Hermes yapay zeka asistanının araç sensörlerine erişimi, medya kontrolü ve VHAL üzerinden donanım (camlar, klima) yönetimini kapsar.

## 1. Mevcut Durum (Tamamlananlar)
- [x] **VHAL Komutları:** `ActionExecutor` (Core) üzerinden Klima (AC, Fan, Sıcaklık) ve Cam/Sunroof kontrolü ADB dumpsys car_service ile sağlandı.
- [x] **Medya Bilgileri:** `MediaNotificationListener` ile şarkı adı, sanatçı ve albüm kapağı yakalama aktif.
- [x] **Pusula ve Konum:** `CompassManager` ile canlı yön ve GPS koordinatları takibi kuruldu.
- [x] **Relay Bağlantısı:** `RelayClient` (Port 8766) üzerinden Hermes Relay sunucusu ile çift yönlü WebSocket iletişimi kuruldu.
- [x] **Çalma Listesi (Queue):** Medya bildirimlerinden mevcut çalma listesinin (queue) yakalanması sağlandı.

## 2. Planlanan Geliştirmeler

### A. Context Awareness (Bağlamsal Farkındalık)
- [x] **State Reporting:** `RelayClient`'ın her 30 saniyede bir Hermes'e araç durumunu (Hız, Sıcaklık, Çalan Şarkı, Yakıt, Medya Listesi) raporlaması sağlandı.
- [x] **Media List Sync:** Medya bildirimlerinden çekilen çalma listesi (queue) `get_media_queue` komutuyla asistanın erişimine açıldı.

### B. Sesli Komut Yetenekleri (Hermes API 8642)
- [x] **Cam Kontrolü:** "Camları %50 aç", "Sunroof'u kapat" komutları `set_window_position` fonksiyonuna bağlandı.
- [x] **Klima Kontrolü:** VHAL üzerinden hassas sıcaklık ve fan hızı kontrolü sağlandı.
- [x] **Medya Navigasyonu:** İleri/Geri/Duraklat ve çalma listesi sorgulama entegrasyonu tamamlandı.

### C. Bağlantı Sağlamlaştırma (Hermes-Bridge)
- [x] **Command Routing:** `CommandDispatcher`'ın yüksek seviyeli araç komutlarını `core.ActionExecutor`'a yönlendirmesi sağlandı.
- [x] **Relay Context:** Hermes Bridge artık sadece bir alıcı değil, aynı zamanda bir bilgi sağlayıcı (Informant) olarak çalışıyor.


## 3. Teknik Veri Haritası (Hermes Tarafından Kullanılacak)
| Komut | Parametre | Açıklama |
| :--- | :--- | :--- |
| `hvac_on` | - | Klimayı açar |
| `set_hvac_temp` | `temperature` (Float) | Hedef sıcaklığı ayarlar |
| `set_window_position` | `target` (window/sunroof), `position` (0-100) | Cam/Sunroof açar |
| `media_control` | `action` (next/prev/play_pause) | Medya oynatımını kontrol eder |
| `get_vehicle_status` | - | Mevcut hız, rpm ve sıcaklık bilgisini döner |

---
**Tarih:** 17.07.2026  
**Sürüm:** 6.1.0 (Integration Phase)
