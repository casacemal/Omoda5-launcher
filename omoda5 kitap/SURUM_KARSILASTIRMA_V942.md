# Omoda 5 Launcher - Sürüm Karşılaştırma Raporu (v9.3.7 vs v9.4.2)

Bu rapor, bugün yapılan tüm yapısal değişikliklerin "Eski Durum" ve "Yeni Durum" olarak teknik dökümünü içerir.

---

## 🏎️ 1. Araç Veri Yolu (VHAL)
**Eski (v9.3.7):**
- Veriler ADB üzerinden "Chunk" (parçalı) geliyordu. Sayılar (Örn: 24.5) yarım kalıyor, parser sapıtıyordu.
- Veri ayıklama her sayfada (VehicleData, HUD) ayrı ayrı yapılıyordu (Düşük performans).
- Hız verisi `0` kalıyor, vites ve kapı durumları ünitedeki log formatına uymuyordu.

**Yeni (v9.4.2):**
- **Line-Buffer Sistemi:** `AdbBridgeService` artık tam satır (`\n`) gelene kadar veriyi biriktiriyor. Sayılar asla kesilmiyor.
- **VhalManager (Merkezi Beyin):** Tüm ayıklama tek bir `object` içinde yapılıyor. UI sadece temizlenmiş veriyi dinliyor.
- **Kesin Kalibrasyon:** 
    - Hız: m/s -> km/h dönüşümü sabitlendi.
    - Isı: İç sıcaklık (Sol/Sağ) sensörleri eklendi.
    - Vites: Noktalı değer temizleme (`1.0` -> `1`) eklendi.
    - Kapı: AreaID (1,4,16,64,536...) bazlı nokta atışı döküm (Örn: Bagaj Açık).

---

## 🎧 2. Medya Dinleme (MediaListener)
**Eski (v9.3.7):**
- `MediaNotificationListener` servis olarak vardı ama içi boştu. Hiçbir bildirimi okumuyordu.
- Sadece `MediaSession` üzerinden veri çekilmeye çalışılıyordu (Semidrive'da çoğu zaman çalışmaz).

**Yeni (v9.4.2):**
- **Aktif Dinleme:** Spotify, Musicolet ve YT Music bildirimlerini yakalayan fonksiyonlar eklendi.
- **Hibrit ViewModel:** Sistem hem "Session"ı hem de "Bildirim"i aynı anda dinliyor. Hangisinde veri varsa onu ekrana basıyor.
- **Kaynak Göstergesi:** Widget üzerinde "Source: Notif" veya "Source: Session" yazarak verinin nereden geldiği teyit edilebiliyor.

---

## 🖼️ 3. Çoklu Görev (Multi-Task)
**Eski (v9.3.7):**
- Sayfa siyah arka planlıydı. Butona basınca mavi çizgi çıkıyor ama arkadaki Haritalar görünmüyordu.
- Orta çubuğu sürüklemek için alan çok dardı, yakalaması zordu.

**Yeni (v9.4.2):**
- **Saydam Mod (Translucent):** `MultiTaskActivity` artık tamamen saydam. Mavi çizgiyi ve [X] Kapat butonunu görüyorsun ama arkadaki uygulamalar cam gibi görünüyor.
- **Geniş Dokunmatik Alan:** Sürükleme çubuğunun hassasiyeti 60dp'ye çıkarıldı.

---

## 🌐 4. Ağ ve Sistem Kararlılığı
**Eski (v9.3.7):**
- Tailscale ve ADB izin komutları açılışta "Watchdog" olarak sürekli çalışıyor ve wlan0 (WiFi) kartını yorup bağlantıyı koparıyordu.
- ADB Stream bir kez durduğunda uygulama kapanana kadar tekrar gelmiyordu.

**Yeni (v9.4.2):**
- **Otomatik Görev Anahtarı:** Ayarlar'a "OTOMATİK GÖREVLER" switch'i eklendi. Sen açmadıkça sistem ağda gizli iş yapmaz.
- **Auto-Reconnect:** Veri akışı durursa, AdbBridge 5 saniye içinde sessizce tekrar bağlanmayı dener.
- **Tam Reboot:** Cihazı ve Launcher'ı ayrı ayrı yeniden başlatan acil durum butonları eklendi.

---

## 📦 Dosya Değişiklikleri Özeti
1. `AdbBridgeService.kt`: Line-buffer ve auto-reconnect eklendi.
2. `VhalManager.kt`: **[YENİ]** Tüm VHAL verilerini işleyen merkezi beyin.
3. `MediaNotificationListener.kt`: Boş olan fonksiyonlar dolduruldu.
4. `DiagnosticLabActivity.kt`: **[YENİ]** Raw vs Parsed veri izleme ekranı.
5. `SettingsActivity.kt`: Reboot ve Otomatik Görev kontrolü eklendi.
6. `AndroidManifest.xml`: MultiTaskActivity teması "Translucent" yapıldı.
