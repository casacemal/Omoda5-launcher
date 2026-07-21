# Olay Raporu: ActivityView Offset Kaynaklı Sistem Çökmesi (Black Screen / Soft-Brick)

## Özet
**Tarih:** 14 Temmuz 2026
**Sorun:** Omoda Launcher uygulamasında, harita (`ActivityView`) barındıran `DashboardScreen` bileşeninin ekran dışına taşınarak (10.000dp offset) arka planda tutulmaya çalışılması, Android Automotive (Chery) araç donanımında kritik bir grafik arabirimi (SurfaceFlinger) çökmesine neden oldu. Cihaz kilitlendi (siyah ekran) ve fiziksel müdahale gerektiren bir duruma (Soft-Brick) düştü.

## Kök Neden Analizi (Root Cause Analysis)
*   **İhtiyaç:** Kullanıcı, Ana Ekran ile Ayarlar/Sensör sekmeleri arasında geçiş yaparken Haritanın (Yandex Navi) tamamen kapanıp sıfırdan açılmasını istemediğini, arka planda canlı kalması gerektiğini belirtti ("kapanıp açılmasın").
*   **Uygulanan Çözüm (Hatalı):** Jetpack Compose mimarisinde, `DashboardScreen` bileşenini Composition (bellek) hiyerarşisinde tutmaya devam edip, ekranda görünmemesi için `Modifier.offset(x = 10000.dp)` ile fiziksel ekran sınırlarının çok dışına (yaklaşık 15.000+ piksel uzağa) taşıma yöntemi uygulandı.
*   **Tetikleyici:** Normal Compose UI bileşenleri (Button, Text) bu yöntemle güvenle gizlenebilirken; `ActivityView`, sistem seviyesinde donanımsal bir **`Surface`** oluşturur ve doğrudan `SurfaceFlinger` (Pencere Yöneticisi) tarafından yönetilir.
*   **Çökme (Crash):** Android Window Manager, 10.000dp (veya daha büyük) X koordinatında devasa bir donanımsal doku (Texture/Surface) allocate etmeye çalıştı. Bu değer, cihazın GPU bellek / doku limitlerini (genellikle 4096x4096px veya 8192x8192px) aştığı için `SurfaceFlinger` anında çöktü. Cihazın ana görüntü birimi kilitlendiği için ekran siyaha düştü, hiçbir donanımsal tuş (dokunmatik) algılanmadı ve ağ (ADB/Tailscale) servisi koptu.

## Kurtarma İşlemleri
*   Cihazı Hard Reset (Fiziksel tuşa uzun basma / Güç kesintisi ile Derin Uyku moduna sokma) ile donanımsal olarak yeniden başlatmak şart oldu.
*   Uygulamanın başlangıçta (boot) tekrar çökmesini önlemek için USB ADB bağlantısı ile hatalı paket (`adb uninstall com.omoda.lanc`) sistemden temizlendi.
*   Sorunlu `offset` kodu tespit edilip, V6250 sürümünde geri alınarak (Revert) temiz bir derleme sunucuya bırakıldı.

## Çıkarılan Dersler ve Mimari Kısıtlar (Lessons Learned)
Bu olaydan çıkarılan dersler proje anayasasına kalıcı bir "Kritik Kısıt" olarak eklenmiştir:
> [!CAUTION]
> **ActivityView ve Surface Kısıtlamaları:** `ActivityView` ve `SurfaceView` içeren hiçbir Android bileşeni, ekrandan dışarı taşınarak (aşırı büyük offset veya padding) gizlenemez! Bu, donanım seviyesinde bellek taşmasına sebep olur.

> [!TIP]
> **Güvenli Arka Plan Mantığı:** ActivityView barındıran bir ekran gizlenecekse, `Modifier.alpha(0f)` ve zIndex müdahalesi ile aynı koordinatta görünmez yapılmalı VEYA `graphicsLayer(scaleX = 0.001f, scaleY = 0.001f)` gibi 1 piksel boyutlarına küçültülmelidir.

> [!WARNING]
> **Hata Yanılsaması:** Logcat'te açıkça bir Java exception düşmüyor olabilir. Ekran doğrudan siyaha düşüyorsa (Freeze) ve ADB kopuyorsa, native C++ katmanında bir `SurfaceFlinger` çökmesi vardır. Yaptığınız son layout değişikliklerini gözden geçirin.

## Sonraki Adım
Kullanıcının "harita kapanıp açılmasın" talebi için, haritanın bulunduğu Container'ın boyutu değiştirilmeyen ve offsetlenmeyen farklı, "Güvenli Arka Plan" (Background Retention) Compose stratejileri (`Modifier.alpha(0f)` gibi) araştırılacak ve dikkatle test edilecektir.
