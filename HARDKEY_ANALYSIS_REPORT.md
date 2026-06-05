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

## 🏁 Sonuç
Aracın tüm fiziksel tuşlarını artık dijital olarak kontrol edebiliyoruz. 
~~Sesli asistanın (Mic tuşu) neden çalışmadığı (AudioRecord hatası) teknik olarak ispatlanmıştır.~~ 
**[GEÇERSİZ - v11.3.0 ile ÇÖZÜLDÜ]** Yukarıdaki AudioRecord/SIGSEGV çökme hatası `v11.3.0` sürümünde Main Thread (Ana İş Parçacığı) yönlendirmesi ve Vosk Offline STT motoru entegrasyonu ile tamamen çözülmüş olup, MIC tuşu artık asistanı ("Dinliyorum") stabil bir şekilde tetiklemektedir. Home tuşunun yutulma sorunu da Balyoz Metodu ile giderilmiştir.
