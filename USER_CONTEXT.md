# USER_CONTEXT.md - KULLANICI PROFİLİ VE SÜPER BELLEK 🧠

Bu dosya, projenin ana geliştiricisi ve sahibi (Cemal) hakkındaki tüm kişisel teknik tercihleri, çalışma alışkanlıklarını ve otonom ajanlardan beklentileri içeren "Süper Bellek" kaydıdır.

## 👤 Kullanıcı Kimliği & DNA
- **İsim/Rumuz:** Cemal (Master Architect)
- **Rol:** Karar Verici, Donanım Uzmanı, Proje Sahibi.
- **İletişim Dili:** Kesinlikle Türkçe (Kod hariç tüm raporlama ve dokümantasyon).
- **Çalışma Tarzı:** Hızlı, sonuç odaklı, "laf değil log" isteyen, dürüstlük ve şeffaflığı her şeyin önünde tutan bir disiplin.

## 🛠️ Teknik Tercihler & Hassasiyetler
1.  **Donanım Önceliği:** Soyut (abstract) yazılım katmanlarından ziyade, donanımın doğrudan dilini (Dumpsys, VHAL, Socket) tercih eder. "Daha profesyonel görünen" ama donanımda takılan çözümlerden nefret eder.
2.  **Garantici Yaklaşım:** Karmaşık polling sistemleri yerine, gerekirse kaba kuvvet ama "garantici" döküm (`dumpsys --vhal`) yöntemlerini daha güvenilir bulur.
3.  **Hafıza ve Kurumsal Süreç:** AI ajanların her şeyi hatırlamasını, "ben zaten sana bunu demiştim/yazmıştın" demek zorunda kalmamayı bekler. `PROJE_KITABI.md` onun için kutsal bir "Süper Bellek"tir.
4.  **Log Analizi:** Hataların "tahmin" edilmesinden hoşlanmaz. Hatayı logcat satır numarasıyla görmek ve fiziksel kanıtla (ekran görüntüsü) teyit etmek ister.
5.  **Disk Önceliği:** Kodun önce fiziksel dosyaya (`write_file`) yazılmasını, sonra "yazdım" denilmesini ister. Hafızada (memory) kod tutulmasına izin vermez.

## 🚀 Beklentiler & Kurallar (Ajanlar İçin)
- **Gaslighting Yasağı:** Hata yapıldığında veya bir işlem zaman aşımına uğradığında "sistem kapattı" gibi bahaneler kabul etmez. "Ben kapattım/başaramadım" dürüstlüğünü bekler.
- **Zaman Yönetimi:** Süre kısıtlıysa (örneğin "10 dk var") ajan en verimli ve en garanti çözümü (Hot-fix) uygulayıp raporlamalıdır.
- **Protokol Sadakati:** `AGENTS.md` ` okunmadan işe başlanmasını "ezbere iş" olarak görür ve reddeder.
- **Referans Takibi:** Kendi eski başarılı kodlarını veya işaret ettiği referans projeleri (`omodaassist`ikkatle incelemeyen ajanı dikkatsiz" olarak nitelendirir.

## 📱 Donanım Parkuru
- **Ana Cihaz:** Omoda 5 AAOS 10 Ünitesi (100.121.172.79)
- **Sunucu:** Yerel Debian/DietPi Sunucu (192.168.1.14)
- **Test Cihazı:** Xiaomi Mi 13 (Gerektiğinde)
- **Simülatör:** AES App (`aes_app/main.py`) - Terminal scriptlerine tercih eder.

---
*Bu "Süper Bellek" dosyası her etkileşimde güncellenir ve kullanıcıyı tanımak için ajanların ilk okuması gereken dosyadır.*
