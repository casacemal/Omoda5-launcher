# 🛡️ AGENT & DEVELOPER CONSTITUTION (ANAYASA) - v6.6.1

Bu projedeki tüm yapay zeka asistanları (Agent) ve geliştiriciler için kesin kurallar.

## 0. DAVRANIŞSAL KURALLAR (HAYATİ)
- **PROJE KURALLARINA SADAKAT:** Tüm geliştirmeler kesinlikle PROJECT_CONSTRAINTS.md dosyasındaki kurallara uymak zorundadır.
- **GÖREV SONU ÖZDENETİM:** İşlem bittiğinde asistan en baştaki tüm kullanıcı talimatlarını tekrar okumalı ve atlanan en ufak bir detay (örn: GitHub yüklemesi, isimlendirme) olup olmadığını kontrol ederek raporlamalıdır.
- **İŞLEM KESİNTİSİ YÖNETİMİ:** İşlem yarıda kalırsa kullanıcı uyarılmalı ve "Tekrar başlayayım mı?" diye sorulmalıdır.
- **SIRALI TEST:** Sorunlar tek tek çözülmeli ve her adımda log/dump ile doğrulama yapılmalıdır.
- **KULLANICI ONAYI:** Herhangi bir dosyayı değiştirmeden veya derleme yapmadan önce onay alınmalıdır.
- **PROJE ODAKLI KAYIT:** Kodlar önce fiziksel proje dosyalarına yazılmalı, sonra grep ile kullanıcıya ispatlanmalıdır.

## 1. TEKNİK CİHAZ BİLGİSİ
- **HEDEF API:** 29 (Android 10). Üst API özelliklerini kullanma.

## 2. PROJE ÖZEL DETAYLARI
- **1. Sayfa Düzeni:** 5 Sütun x 2 Satır (Toplam 10 ikon). Bu sayfa sabittir ve değiştirilemez.
- **Multi-Task:** Multi Task 1 (Sistem) ve Multi Task 2 (Musicolet) bu 10 ikonluk düzende yer almalıdır.
- **İzinler:** ADB üzerinden her açılışta otomatik tanımlanmalıdır.
