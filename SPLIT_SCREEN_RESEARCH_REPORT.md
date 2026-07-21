# Android Automotive OS 10 (Chery Omoda 5) Split-Screen ve ActivityView Araştırma Raporu

## 1. Cihaz ve Çevre Bağlamı
*   **Cihaz:** Chery Omoda 5 (T19C)
*   **İşletim Sistemi:** Android Automotive OS 10 (AAOS 10)
*   **Donanım / SoC:** SEMIDRIVE X9
*   **Ekran Çözünürlüğü:** 1920x720

Proje içerisindeki `docs/test_report_display_split.md` ve `cihaz_analizi_sorunlar (1).md` raporlarından anlaşıldığı üzere, bu donanım bazı kritik Android kısıtlamalarına sahiptir. Özellikle AAOS 10 versiyonunda standart Android telefonlardaki (Recents / Multi-Window) bölme işlemleri devre dışı bırakılmıştır.

## 2. ActivityView ve SurfaceFlinger Neden Çöküyor?
Android 10'da harici uygulamaları (Yandex Navi gibi) kendi uygulamamızın içine gömmek için kullanılan `ActivityView`, aslında sanal bir ekran (Virtual Display) oluşturur. 

Araştırmalara ve AOSP (Android Open Source Project) hata kayıtlarına göre:
*   **SurfaceFlinger Sınırları:** `ActivityView` donanımsal bir `Surface` katmanı çizer. Bu katmanı ekrandan çok uzağa (`10.000.dp` offset gibi) taşıdığımızda, Pencere Yöneticisi (Window Manager) GPU üzerinde devasa boyutlarda bir doku (texture) oluşturmaya çalışır. Semidrive X9 GPU'sunun veya SurfaceFlinger'ın bellek (buffer) tahsis sınırları aşıldığı an sistem tamamen donar ve siyah ekrana düşer.
*   **Çözüm:** `ActivityView` içeren Compose bileşenlerini gizlerken asla fiziksel sınırların dışına itmeyin. Boyutlarını sıfırlamak yerine `Modifier.alpha(0f)` kullanın veya üstünü tamamen başka bir siyah `Box` katmanı ile örtün.

## 3. Güvenli Split-Screen (Bölünmüş Ekran) Nasıl Yapılır?
Yapılan testlere ve Android 10 Automotive mimarisine göre `ActivityView` üzerinden manuel bir "Bölünmüş Ekran" oluşturmak hem riskli hem de yavaştır. Native (Sistemsel) Split-Screen için en geçerli ve donanım hızlandırmalı yollar şunlardır:

### Yöntem A: Omoda / Chery Özel Split-Partner Servisi (Tavsiye Edilen)
Proje `test_report_display_split.md` dosyasında da kanıtlandığı üzere, Chery bu araçta bölünmüş ekranı kendi bir servisi üzerinden yönetiyor:
*   **Servis:** `com.yfve.t19c.projection.carplay.service`
*   **Nasıl Kullanılır:** Bu servis aktifleştirildiğinde (örn: CarPlay dock açıldığında), sistem ekranı native olarak ikiye böler. Bizim Launcher, ekranın %50'sini işgal edecek şekilde "windowingMode 3" (Split Screen Mode) ile başlatılabilir.
*   **Komut:** `am start -n com.omoda.lanc/.MainActivity --windowingMode 3`

### Yöntem B: Android Native Windowing Mode 3
ActivityView kullanmak yerine, Android'in ana ekran yöneticisine Yandex'i Split modunda açmasını söylemek en güvenlisidir.
```bash
# Haritayı birincil bölünmüş ekrana (sol/sağ) zorla
am start -n ru.yandex.yandexnavi/ru.yandex.yandexnavi.MainActivity --windowingMode 3
```
Bu sayede donanımsal çökme (SurfaceFlinger Crash) yaşanmaz çünkü pencere yönetimini uygulamanız değil, Android'in bizzat kendisi (ActivityTaskManager) yapar.

### Yöntem C: Güvenli ActivityView (Eğer Kesinlikle Gerekliyse)
Eğer ActivityView kullanımına devam edilecekse:
1.  **Sürekli Boyut Değişimi Yasak:** Sürükleme çubuğu ile boyutu piksel piksel güncellemeyin. Bu, saniyede 60 kez Virtual Display'in yıkılıp yeniden oluşturulmasına sebep olur. Sürükleme işlemi bittiğinde (onDragEnd) boyutu TEK SEFERDE güncelleyin.
2.  **Arka Planda Yaşatma (Background Retention):** Navigation değiştiğinde DashboardScreen'i `offset` ile uzağa itmek yerine; `Modifier.alpha(0f)` ve `Modifier.pointerInput(Unit){}` kombinasyonu ile dokunmatiği kapatıp görünmez yapın. (Fakat boyutuna ve koordinatlarına dokunmayın).

## 4. Sonuç ve Eylem Planı
Yaşadığınız sistem çökmesi (Black Screen) donanımsal bir arıza değil, Android 10 Automotive'in iyi bilinen bir Surface limitine takılmasından ibarettir. 

Haritayı uygulamamız içine "gömülü" kullanmaktan ziyade, Chery'nin native servislerini (`com.yfve.t19c.projection.carplay.service`) tetikleyerek sistemi yasal bölünmüş ekran moduna geçirmek uzun vadede çok daha stabil ve performanslı olacaktır. Eğer bu mümkün değilse, mevcut kodda yazdığımız "animasyonsuz sabit boyutlama" ve "alpha ile gizleme" yöntemi kullanılmalıdır.
