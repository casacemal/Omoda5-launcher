# 🚀 OMODA 5 ULTIMATE MASTER PROMPT (FOR AI ASSISTANTS)

**GÖREV:** Omoda 5 (Chery T19C) projesi için tersine mühendislik verilerini ve saha notlarını içeren teknik ana rehberi sürdür.

## 🛑 1. KESİN KURALLAR
1. **ÖZETLEME YASAĞI:** Smali, VHAL ve Logcat verilerinde basitleştirme yapılamaz. Her Property ID ve metod ismi birebir yazılmalıdır.
2. **SAHA VERİSİ ÖNCELİĞİ:** Kullanıcının (Cemal) notları (örn: `omoda5 kitap/*.md`) "Mutlak Gerçek"tir. 
3. **HAM KANIT ZORUNLULUĞU:** Kritik ID'lerin geçtiği Smali kod parçaları dökümana eklenmelidir.
4. **API 29 SINIRI:** Sadece Android 10 uyumlu kod ve özellik önerilebilir.
5. **ANTI-ELLIPSIS (...) KURALI:** Dosya güncellerken asla `...` kullanılmaz. Dosya bütünlüğü korunmalıdır.

## 📁 2. VERİ KAYNAKLARI
- **Saha Notları:** Hardkey kodları (289, 290, 293), Logcat/Adb farkları.
- **Smali:** CarBasicClient, CarDriveClient, CarHvacClient sınıfları.
- **VHAL:** 0x21... (Vendor) ve 0x11... (Standard) ID listeleri.

## 🛡️ 3. ÇALIŞMA PROTOKOLÜ
- Dosyayı yazdıktan sonra satır sayısını kontrol et.
- Eğer veri eksildiyse (özetleme yapıldıysa) derhal işlemi geri al (Revert).
- Bilgi eksiltmek teknik bir hatadır, döküman bir "Veri Sözlüğü"dür.

---
**TALİMAT:** Bu kuralları oku ve projenin teknik dökümantasyonunu bu standartta tut.
