# Omoda 5 - v9.4.3 Derin Sorun Analizi ve Otopsi Raporu

**Tarih:** 02 Haziran 2026
**Analiz Edilen Durum:** Home tuşu ve Klima çalışıyor, ancak "Veriler" (Gösterge) ekranı boş/hatalı.

---

## 🔍 1. Neresi Çalışıyor, Neresi Bozuk?

### **✅ Başarılı Olanlar (Kontrol Hattı Sağlam):**
- **Home Tuşu:** `CheryAccessibilityService` -> `AccessibilityEvent` -> `Intent.ACTION_MAIN` hattı aktif. Android sistemi servisimize güveniyor.
- **Klima (Chery):** `exec("am start -n com.chery.hvac...")` komutu çalışıyor. Bu, `AdbBridgeService`'in temel komut gönderme (Execute) yeteneğinin sağlam olduğunu kanıtlar.

### **❌ Başarısız Olanlar (Veri Akış Hattı Kopuk):**
- **Gösterge (Veriler):** Ekranda değerler ya 0 ya da hiç gelmiyor.
- **Analiz:** Sorun komut göndermede değil, **"Cevap Alıp İşleme"** kısmında.

---

## 🧬 2. Veri Neden "Gösterge"ye Ulaşmıyor? (4 Kritik Nokta)

### **A. ADB Akış Kesintisi (En Güçlü İhtimal)**
`dumpsys car_service` komutu bir kez gönderiliyor ancak cihaz bazen bu akışı (stream) kapatıyor.
- **Belirti:** "ADB Stream önce çalışıyordu şimdi durdu" mesajın bunu doğrular.
- **Neden:** Socket zaman aşımı veya ünitenin güvenlik duvarı.

### **B. Buffer Çakışması (Line-Buffer)**
v9.4.2 ile eklediğimiz `lineBuffer`, eğer cihazdan hiç `\n` (satır sonu) gelmezse veriyi sonsuza kadar içinde tutar ve yayınlamaz.
- **Risk:** Cihaz logları `\r` veya başka bir karakterle bitiriyorsa buffer dolmaz.

### **C. Parser (Ayıştırıcı) Hassasiyeti**
`VhalManager` içindeki Regex, loglardaki ufacık bir boşluk değişiminde (`[` yerine ` [`) veriyi ıskalıyor olabilir.
- **Gözlem:** `numericVal` ayıklarken kullanılan filtreleme çok katı olabilir.

### **D. Broadcast Kararması**
`LOG_BROADCAST` gönderiliyor ancak `VhalManager` bunu yakalayamıyor olabilir (Permission veya Exported flag sorunu).

---

## 🛠️ 3. v9.4.3 "Süper-Yayın" Onarım Planı

1. **Line-Buffer Esnetme:** Eğer buffer çok büyürse (1024 karakter) ve hala satır sonu gelmediyse, veriyi "zorla" yayınlayacak (`Force Flush`).
2. **Global VHAL Yayını:** `VhalManager` artık sadece uygulama içine değil, tüm sisteme `com.omoda5.launcher.VHAL_PURE_DATA` adında, hiçbir şifreleme/karmaşa içermeyen ham sayıları fırlatacak.
3. **Diagnostik Lab "Canlı Dinleme":** Bu sayfa açıldığı an gizli bir "Yenile" komutu göndererek donmuş olan ADB akışını tekmeleyip uyandıracak.

---

## 📝 4. Bugünün Teknik Notu
"Klima (Chery) tuşu çalışıyor" demek, bizim ünitedeki **Shell yetkimiz %100 var** demektir. Sorun sadece cihazın ağzından çıkan kelimeleri (logları) bizim kulaklarımızın (parser) tam anlayamamasıdır.

Bu analiz ışığında `VhalManager` ve `AdbBridgeService` arasındaki o "ince bağı" kuvvetlendiriyoruz.
