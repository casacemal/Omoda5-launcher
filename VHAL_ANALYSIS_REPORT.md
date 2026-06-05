# 📄 Omoda 5 VHAL Derin Analiz ve Saha Raporu

**Versiyon:** 1.0 (v10.2.x bazlı)
**Durum:** Saha Analizi Tamamlandı

---

## 🔑 1. Kontak ve Güç Durumu (Power/Ignition)
Aracın çalışma durumunu belirleyen kritik veriler.

*   **Property ID:** `0x11400401`
*   **Tespit Edilen Değerler:**
    *   `1`: **OFF** (Kontak Kapalı)
    *   `2`: **ACC** (Aksesuar Modu)
    *   `3`: **ON** (Yarım Kontak)
    *   `4`: **STARTING** (Motor Çalışıyor / Marş)
*   **Analiz:** Loglarda görülen `[4]` değeri, test sırasında aracın motorunun aktif olduğunu kanıtlıyor.

---

## ⚙️ 2. Vites Sistemi (Gear Map)
Omoda 5'in vites değerleri standart Android dökümanlarından farklılık gösteriyor.

*   **Property ID:** `0x11400400`
*   **Kesinleşen Harita:**
    *   `4`: **P (Park)**
    *   `2`: **R (Geri - Beklemede)**
    *   `5`: **R (Geri - Aktif Hareket)**
    *   `1`: **N (Boş)**
    *   `8`: **D (Sürüş)**
*   **Gözlem:** Sistem bazen vites bilgisini `0x11400a03` (100) olarak da geçiyor, bu OEM spesifik bir kontrol olabilir.

---

## 🚪 3. Kapı Bölge Analizi (AreaIDs)
Verilerin "yanlış" görünmesinin temel sebebi, her kapının aynı ID üzerinden farklı bir "Area" koduyla gelmesi.

*   **Property ID:** `0x16400b00`
*   **Bölge Kodları:**
    *   `1` (0x1): **Sol Ön**
    *   `4` (0x4): **Sağ Ön**
    *   `16` (0x10): **Sol Arka**
    *   `64` (0x40): **Sağ Arka**
    *   `536870912` (0x20000000): **Bagaj**
*   **Sorun:** Tek bir "KAPI" kutusu kullanıldığında, son gelen veri (örn: Bagaj Kapalı) önceki veriyi (örn: Sol Ön Açık) siliyor.
*   **Çözüm:** Ekrandaki kapı kutuları bu 5 bölgeye göre ayrıştırılmalı.

---

## 🌡️ 4. Sıcaklık ve Konfor (HVAC)
*   **Dış Isı (`0x11600703`):** `25.0 °C` (Doğrulandı)
*   **Klima Hedef Isısı:** `27 °C` (Sistemden okunan `mTempDegree`)
*   **İç Isı Sensörleri:**
    *   `0x15600502`: Sol İç
    *   `0x15600503`: Sağ İç

---

## 🚨 5. Teknik Arıza: Veri Akışı Neden Kesiliyor? (Regex Sorunu)
*   **Hata Mesajı Örneği:** `Property:0x11400401, floatValues: [], int32Values: [4]`
*   **Neden Görünmüyor?** Kod, boş olan `floatValues: []` kısmına takılıp kalıyor.
*   **Düzeltme Stratejisi:** `Regex("\\[([\\d.,\\s-]+)\\]")` kullanılarak, parantezlerin içi boşsa atlanacak ve içinde rakam olan ilk grup (`[4]`) yakalanacak.

---

## 🏁 Sonuç ve Öneriler
1.  **Hız Verisi:** `0.0` gelmesinin sebebi araç duruyor olması değilse, m/s -> km/h dönüşümünde float hassasiyeti artırılmalı.
2.  **Yakıt:** `%15000.0` verisi ham bir değerdir. Depo kapasitesine göre oranlanmalı.
3.  **Klima:** `com.chery.hvac` paketiyle olan bağ korundu, buton artık çalışır durumda.
