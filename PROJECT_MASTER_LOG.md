# 📓 Omoda 5 Launcher - Proje Teknik Hafızası & Günlüğü

---

## 🗓️ 02 Haziran 2026 - v10.0.0 "SIMULATION & TEST" [BAŞLATILDI]

### 🟢 **1. VHAL Simülatörü ve Test Araçları [YENİ]**
*   **Sorun:** Emülatörde gerçek araç verisi (Hız, Kapı vb.) olmadığı için launcher test edilemiyordu.
*   **Çözüm:** 
    - `tools/OmodaSimulator.py` geliştirildi. PC üzerinden emülatöre otomatik hız ve ısı verisi basar.
    - `tools/OmodaControlPanel.html` hazırlandı. Butonlarla manuel vites/kapı verisi gönderilmesini sağlar.
*   **Teknik:** Komutlar `adb shell log` üzerinden enjekte edilir. Launcher'daki `AdbBridgeService` bu logları yakalayıp `VhalManager`'a iletir.

### 🟢 **2. v9.5.0 Survival & Voice Birleştirmesi [TAMAMLANDI]**
*   **Voice:** Offline Türkçe Ses Tanıma (tr-TR) altyapısı kuruldu.
*   **Voice Education:** "Yardım" veya "Eğitim" komutuyla açılan sesli komut rehberi (`VoiceEducationActivity`) eklendi.
*   **Recovery:** 3 crash sonrası otomatik açılan Kurtarma Paneli eklendi.

### 🟢 **3. v10.0.0 Ultimate System Bridge [TAMAMLANDI]**
*   **Merkezi Köprü:** `SystemBridgeManager` (Singleton) oluşturuldu. Tüm VHAL, Media ve HardKey verileri bu merkezde toplanıyor.
*   **Sayfa Geçiş Koruması:** ViewModel'ler artık merkezi StateFlow'u dinliyor, bu sayede sayfa değişimlerinde veri kaybı (Medya başlığı gitmesi vb.) tamamen çözüldü.
*   **OEM HardKey Analizi:** Sistemin kendi yayını olan `com.saic.keyevent.hardkey.report` köprüye bağlandı.

### 🟢 **5. v10.1.0 Dinamik Ses Mimarisi [TAMAMLANDI]**
*   **Küçük APK:** 35MB'lık dil modeli APK içinden çıkarıldı. APK boyutu tekrar 10MB altına düşürüldü.
*   **Dinamik Yükleyici:** `VoiceModelDownloader` eklendi. "İNDİR" butonu ile model direkt GitHub/Server'dan çekilip `/sdcard` üzerindeki uygulama dizinine açılıyor.
*   **Yol Bağlantısı:** `VoiceAssistantManager` artık modeli assets yerine dış klasörden yüklüyor.
*   **Eksik Giderimi:** Home tuşu ve Gesture sorunlarının analizi sürdürülüyor, Socket optimizasyonu ile CPU yükü düşürülecek.
*   **Backup:** Launcher ayarlarını JSON olarak yedekleyen motor mühürlendi.

### 🟢 **6. v10.1.2 Home Tuşu & Gestures Mühürlendi [BAŞARILI]**
*   **Sistem Kandırma:** `AndroidManifest.xml` üzerinde `priority="1000"` ve `LAUNCHER`, `MONKEY` kategorileri eklenerek sistemin orijinal launcher arayışı bizim üzerimize yönlendirildi.
*   **Balyoz Metodu:** `CheryAccessibilityService` üzerinden yapılan Home tetiklemesi, artık sadece sinyal göndermiyor, ismen `MainActivity`'yi en öne gelmesi için zorluyor.
*   **Gezginler (Gestures):** Sağ kenar ve alt alan koordinatları Overscan değerlerine göre optimize edildi, stabilite sağlandı.
*   **İzin Enjeksiyonu:** Tüm sistem izinleri (Overlay, Accessibility, Hidden API Policy) mühürlendi ve "Otomatik Görevler" üzerinden kalıcı hale getirildi.

| Veri Tipi | ID | Formül / Karşılık |
| :--- | :--- | :--- |
| **Hız** | `0x11600207` | `(Value * 3.6)` km/h |
| **Vites** | `0x11400400` | `1:N, 2:R, 4:P, 8:D` |
| **Kapı** | `0x16400b00` | `AreaID: 1:L-F, 4:R-F, 16:L-R, 64:R-R, 536M:Bagaj` |
