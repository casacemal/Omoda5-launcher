# DUMPSYS MİMARİSİ VE KESİN KURALLAR PROTOKOLÜ

Bu belge, Android Car VHAL (Vehicle Hardware Abstraction Layer) verilerini okumak için geliştirilen `dumpsys` stratejisinin neden zorunlu olduğunu, nasıl çalıştığını ve bu mimarinin **ASLA BOZULMAMASI** gerektiğini teknik detayları ve tarihçesiyle açıklar.

## 1. Problem ve Neden Dumpsys?

Omoda 5 gibi gelişmiş Android Automotive OS araçlarında, üçüncü parti uygulamaların doğrudan `CarPropertyManager` üzerinden RPM (Motor Devri), Vites (Gear), Hız (Speed) veya Yakıt (Fuel) gibi CAN BUS verilerini dinlemesi OEM (Semidrive/Chery) tarafından işletim sistemi seviyesinde kısıtlanmıştır (Örn: `SELinux` engelleri, `Signature` seviyesi izin kısıtlamaları).

Klasik yöntemle `CarPropertyManager.registerCallback` yapıldığında:
*   Hız verisi (0x11600207) API üzerinden gelebilir (Çünkü Media/Navigasyon uygulamaları için açıktır).
*   Fakat RPM (0x11600305), Vites (0x21402006) ve Yakıt (0x11600307) gibi kritik veriler güvenlik duvarına takılır ve callback asla tetiklenmez.

**Çözüm:** Android'in kendi sistem servis raporlama aracı olan `dumpsys car_service` kullanılarak, VHAL içerisindeki tüm verilerin bellekteki son durumu (cache) kaba kuvvetle (shell üzerinden) çekilmiş ve `grep` gibi terminal araçlarıyla süzülerek UI'a aktarılmıştır.

---

## 2. Dumpsys Mimarisi ve İzinler

### A. Alınması Gereken Kritik İzin (DUMP İzni)
`dumpsys` komutunun standart bir uygulama içinden çalışabilmesi (Java `Runtime.getRuntime().exec` üzerinden) için **KESİNLİKLE** `android.permission.DUMP` iznine sahip olunması gerekir.
Eğer bu izin yoksa, Android `Permission denied (error 13)` fırlatır.

*   **Manifest Kaydı:** `AndroidManifest.xml` içerisine `<uses-permission android:name="android.permission.DUMP" />` eklenmiştir.
*   **Yetkilendirme:** Android'in standart İzin Yöneticisi (Popup) bu yetkiyi veremez (Çünkü bu bir `<permission android:protectionLevel="signatureOrSystem"/>` iznidir).
*   **Komut Satırı (ADB/Root) Zorunluluğu:** Uygulama kurulduktan sonra KESİNLİKLE aşağıdaki komutla izin zorla verilmelidir:
    ```bash
    pm grant com.omoda.lanc android.permission.DUMP
    ```
    *(Not: Uygulama içindeki PermissionManager.kt dosyasına bu kontrol ve `pm grant` komutu otomatik onarım için eklenmiştir).*

### B. Mimari Tasarım Kuralı: "isApiConnected" Tuzağı
Tarihsel süreçte yapılan en büyük hatalardan biri:
```kotlin
// YANLIŞ VE YASAKLI YAKLAŞIM
if (!isApiConnected) {
    pollDumpsysData() 
}
```
`CarPropertyManager` sadece Hız (Speed) verisine bağlanıp "Başarılı" (isApiConnected = true) yanıtı döndürdüğünde, uygulama API'ye bağlandığını zannederek `dumpsys` okumasını durduruyordu. Sonuç olarak RPM ve Vites verileri 0'a sabitleniyordu.

**MUTLAK KURAL:** `dumpsys` okuması (Polling) **ASLA** CarPropertyManager'ın bağlantı durumuna (`isApiConnected`) bağlanamaz. API çalışsa dahi, RPM ve Vites verileri API'den gelmediği için `dumpsys` döngüsü (`pollDumpsysData`) her zaman bağımsız bir coroutine içinde çalışmak **ZORUNDADIR**.

---

## 3. Tarihsel Süreç: Geliştirme ve Hata Ayıklama Sohbetinin Özeti

Bu kusursuz mimariye ulaşana kadar yaşanan sürecin adım adım özeti (Tarih: 28-29 Temmuz 2026):

1.  **Sorun Tespiti:** Kullanıcı, uygulamada hız (speed) değerinin donduğunu ve Vites/RPM verilerinin gelmediğini belirtti. Logcat incelemesinde VHAL (Vehicle Hardware Abstraction Layer) verilerinin API üzerinden hiç tetiklenmediği anlaşıldı.
2.  **Fallback (Dumpsys) Aktivasyonu:** Ajan (Yapay Zeka), API'nin çalışmadığı durumlarda `dumpsys car_service get-property-value` komutunu çalıştıracak bir fallback mekanizması kurguladı.
3.  **Root (su) ve Permission Denied Sorunu:** Dumpsys komutu çağrıldığında `error=13, Permission denied` alındı. Ajan, komutu `su -c` ile (root üzerinden) çalıştırmayı denedi. Ancak `AdbClient` içindeki `su` yetkisi, aracın sisteminde sorun yarattığı için komutlar başarısız oldu.
4.  **İzin Stratejisinin Değişmesi:** Root ile savaşmak yerine, uygulamaya doğrudan DUMP yetkisinin ADB üzerinden (`pm grant com.omoda.lanc android.permission.DUMP`) verilmesine karar verildi. İzin verildikten sonra uygulama içi Java `exec` komutu sorunsuz çalışmaya başladı.
5.  **isApiConnected Mantık Hatasının Çözülmesi:** Veriler gelmeye başladıktan hemen sonra tekrar kesildi. Yapılan incelemede, API sadece "Hız" bilgisini okuyup bağlandığı için uygulamanın `isApiConnected = true` durumuna geçtiği ve bu yüzden dumpsys döngüsünü kendi kendine durdurduğu tespit edildi. Kod refaktör edilerek `if (!isApiConnected)` engeli kaldırıldı.
6.  **Gerçek Veri Akışı ve Log Kanıtı:** Sistemden şu loglar başarıyla alındı:
    ```
    [VHAL-SYNC] 11600703 -> 25,0°C
    [VHAL-SYNC] 11600305 -> 0 RPM
    [VHAL-SYNC] 11600307 -> 15,0 L
    [VHAL-SYNC] 11600207 -> 0,0 km/h
    [VHAL-SYNC] 21402006 -> P
    ```
7.  **UI (Arayüz) Hatası ("App ama ekran aynı"):** Veriler kusursuz akmasına rağmen, kullanıcı "hız rpm yok" veya "ekran aynı" şeklinde geri bildirim verdi. Yapılan incelemede, aracın park halinde olmasından dolayı değerlerin `(0 km/h, P, 0 RPM)` geldiği, uygulamanın UI'daki sahte (placeholder) değerlerinin de birebir aynı olması nedeniyle görsel bir değişim hissedilmediği anlaşıldı.
    *   **En büyük UI İhmali:** `TeslaCarWidget` ve `VehicleWidget` Compose UI dosyalarında, gelen RPM verisini ekrana çizecek (Render edecek) hiçbir `Text` objesinin (kodunun) yazılmadığı tespit edildi.
    *   **Çözüm:** İlgili Widget'lara `Text(text = rpm, ...)` objeleri eklenerek turkuaz renkte RPM verisinin gösterimi sağlandı.

---

## 4. Gelecekteki Yapay Zeka Ajanları İçin Kırmızı Çizgiler (RED LINES)

1.  **Dumpsys Parser (Ayrıştırıcı) Asla Değiştirilemez:** `VehicleController.kt` içerisindeki `parseAndApplyLine` fonksiyonu Regex kullanarak `Property:0x([0-9a-fA-F]+)` formatını ayrıştırır. Bu string formatı cihazın native çıktısıdır, "daha modern yapalım" veya "JSON'a çevirelim" denilerek bozulamaz.
2.  **DUMP Yetkisi Kesinlikle Kaldırılamaz:** Manifest'ten DUMP iznini kaldıran veya `pm grant` zorunluluğunu es geçen her güncelleme aracı kör (verisiz) bırakacaktır.
3.  **UI ve GlobalState Senkronizasyonu:** UI widget'ları (`TeslaCarWidget`, `VehicleWidget` vb.) `GlobalState.vehicleDataValues` içerisindeki string MAP'i ("HIZ", "RPM", "DEVİR", "VİTES" vb. keyler ile) dinler. Dumpsys'ten gelen `propId` (örn: 11600207) bu keylere manuel eşitlenmektedir. Bu köprü (mapping) silinemez.
4.  **Shell Komutu Yapısı:** `dumpsys car_service get-property-value 0x11600305 0` komutu tam donanımlı olmalıdır. Sadece `dumpsys car_service` yazıp tüm çıktıyı parse etmeye çalışmak (Full Dump) uygulamanın CPU'sunu %100'e çıkarır ve cihazı çökertir (OOM - Out of Memory). Sadece hedeflenen PID'ler sorgulanmalıdır.
