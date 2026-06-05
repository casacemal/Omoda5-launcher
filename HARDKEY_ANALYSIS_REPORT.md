# ⌨️ Omoda 5 Fiziksel Tuş (HardKey) Envanter Raporu

**Versiyon:** 1.0 (v10.2.x bazlı)
**Durum:** Tüm Tuş Kodları Doğrulandı

---

## 🎹 1. Tuş Haritası (Key Map)

| Fonksiyon | KeyCode (Android) | OEM Sinyali | Not |
| :--- | :--- | :--- | :--- |
| **MODE** | `289` | mcucode=45 | Medya kaynağını değiştirir. |
| **TEL / MIC** | `293` | telKey:8 | Telefon ve Sesli Asistan tetikleyicisi. |
| **HOME** | `294` | mcucode=4a | Ana ekrana dönüş (Balyoz metodu aktif). |
| **CARPLAY** | `290` | mcucode=46 | Akıllı telefon yansıtma kısayolu. |
| **BACK** | `4` | standard | Geri gitme işlemi. |

---

## 🚨 2. Tespit Edilen Sorunlar
*   **Focus Loss (Odak Kaybı):** Telefon uygulaması veya orijinal sistem pencereleri öndeyken fiziksel tuşlar bazen bizim Launcher'a ulaşmıyor.
*   **Double Trigger (Çift Tetikleme):** Hem KeyCode hem de `com.saic.keyevent.hardkey.report` yayını aynı anda geliyor. Bu, bazen komutun iki kez çalışmasına sebep olabilir.

---

## 🛡️ 3. Uygulanan Önlemler
*   **Accessibility Intercept:** `CheryAccessibilityService` artık 289-294 aralığındaki tüm tuşları "Priority" (Öncelikli) olarak dinliyor.
*   **Mühürlü Home:** 294 kodu doğrudan `MainActivity`'yi zorla başlatan koda bağlandı.

---

## 🕵️‍♂️ 4. Tuş Verisi Çözümleme ve Kriz Yönetimi Hikayesi

Bu projenin en büyük dönüm noktalarından biri direksiyon ve konsol tuşlarının komutasını Çinli mühendislerin elinden aldığımız süreçtir. Adım adım yaşananlar:

### Adım 1: "Sağır Android" Sorunu
Chery/Semidrive cihazında direksiyon tuşlarına basıldığında standart Android metotları (`onKeyDown`) hiçbir tepki vermiyordu. Sistem (SYSUI) tuşları en alt donanım katmanında yutuyordu.

### Adım 2: "Gizli Telsiz Yayını"
Cihaz loglarını (`logcat`) inceleyerek aracın kendi iç uygulamaları haberleşsin diye **`com.saic.keyevent.hardkey.report`** adında şifreli bir Broadcast (Radyo Yayını) fırlattığını keşfettik. Hemen `SystemBridgeManager` içerisine bu yayını dinleyecek bir alıcı kurduk.

### Adım 3: "Şifreli Paketi Cımbızlamak"
Yayını dinliyorduk ama paketin içinde hangi tuşa basıldığı yazmıyordu. Gelen Intent paketinin içindeki tüm gizli bölmeleri `intent.extras?.keySet()` ile ekrana yazdırdığımızda, üreticinin tuş kodunu **`keyCode`** etiketi altında sakladığını bulduk. Bu etiketi çekerek 293 (Mic), 294 (Home), 289 (Mode) gibi fiziksel tuş numaralarını canlı ekranda (HUD) okumayı başardık.

### Adım 4: "Ev (Home) Tuşu Balyozu"
294 numaralı Home tuşunu yakalıyorduk ama araç sistemi inatla orijinal ana ekranı açıyordu. Buna karşılık 294 kodunu okuduğumuz milisaniyede `Intent.FLAG_ACTIVITY_NEW_TASK` (Balyoz Metodu) ile kendi Launcher'ımızı zorla öne fırlattık. Home tuşu tamamen fethedildi.

### Adım 5: "Ölümcül SIGSEGV (Mic Tuşu) Çökmesi"
Direksiyondaki 293 (Mic) tuşunu yakalayıp VOSK Asistanı başlatmaya kalkıştığımızda uygulama anında çöküyordu. Bunun sebebi, telsiz yayınının karanlık bir arka plan iş parçacığında (Binder Thread) gelmesi ve Android'in bu alandan Mikrofon/UI erişimine izin vermemesiydi. Tuş sinyalini `Handler(Looper.getMainLooper()).post { }` formülüyle Ana Ekrana (Main Thread) postaladık. Çökme engellendi ve asistan stabil hale geldi.

---

## 🏁 Sonuç
Aracın tüm fiziksel tuşlarını artık dijital olarak kontrol edebiliyoruz. 
~~Sesli asistanın (Mic tuşu) neden çalışmadığı (AudioRecord hatası) teknik olarak ispatlanmıştır.~~ 
**[GEÇERSİZ - v11.3.0 ile ÇÖZÜLDÜ]** Yukarıdaki AudioRecord/SIGSEGV çökme hatası `v11.3.0` sürümünde Main Thread (Ana İş Parçacığı) yönlendirmesi ve Vosk Offline STT motoru entegrasyonu ile tamamen çözülmüş olup, MIC tuşu artık asistanı ("Dinliyorum") stabil bir şekilde tetiklemektedir. Home tuşunun yutulma sorunu da Balyoz Metodu ile giderilmiştir.
