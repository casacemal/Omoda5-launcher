# Sistem İyileştirme ve Hata Düzeltme Planı

Bu plan, medya bilgisi okuma, multi-task işlevselliği, güncelleme sistemi ve akıllı bilgilendirme (HUD) çakışmalarını çözmeyi amaçlar. Tüm değişiklikler `AGENTS.md` kurallarına (API 29 uyumluluğu, parça parça kod sunumu) sadık kalarak yapılacaktır.

## Önerilen Değişiklikler

### 1. Medya Sistemi (MediaControllerViewModel)
Medya bilgilerinin okunmamasını çözmek için MediaSession listener mekanizması güçlendirilecek.

#### [MediaControllerViewModel.kt](file:///media/cemal/depo/lancher proje/app/app/src/main/java/com/omoda5/launcher/media/MediaControllerViewModel.kt)
- `MediaSessionManager` oturumlarını daha agresif yenileyecek bir `refreshSession` mekanizması eklenecek.
- Terminale gönderilen loglar `LogManager` üzerinden merkezi hale getirilecek.

### 2. Multi-Task Sistemi (MultiTaskActivity)
Multi-task'ın çalışmaması veya gecikmeli çalışması sorununu gidermek için `am stack resize` zamanlaması optimize edilecek.

#### [MultiTaskActivity.kt](file:///media/cemal/depo/lancher proje/app/app/src/main/java/com/omoda5/launcher/ui/MultiTaskActivity.kt)
- `am stack resize` komutları öncesinde paketlerin gerçekten başladığından emin olmak için dinamik kontrol veya optimize edilmiş gecikmeler eklenecek.
- Hata durumunda log bildirimleri eklenecek.

### 3. Güncelleme Sistemi (UpdateManager)
Güncelleme sürecinde bilgilendirme eksikliğini gidermek ve yükleme mantığını sağlamlaştırmak için geliştirmeler yapılacak.

#### [UpdateManager.kt](file:///media/cemal/depo/lancher proje/app/app/src/main/java/com/omoda5/launcher/common/UpdateManager.kt)
- Güncelleme kontrolü ve indirme aşamalarında `LogManager` üzerinden kullanıcıya detaylı durum bilgisi aktarılacak (örn: "İndirme başlatıldı", "APK yükleniyor").
- `installApk` fonksiyonu, ADB servisi üzerinden daha güvenli bir şekilde çağrılacak.

### 4. Akıllı Bilgilendirme (HUD & HudManager)
HUD mesajlarının çakışmasını veya kaybolmasını önlemek için kuyruk yapısı veya durum kontrolü eklenecek.

#### [HudManager.kt](file:///media/cemal/depo/lancher proje/app/app/src/main/java/com/omoda5/launcher/common/HudManager.kt)
- Mesajların üst üste binmesini engelleyen bir basit kilitleme/öncelik mekanizması eklenecek.

---

## Doğrulama Planı

### Otomatik Testler
- Gradle derlemesi: `./gradlew :app:assembleDebug`

### Manuel Doğrulama
1. **Medya:** Musicolet veya Chery Media başlatıldığında launcher üzerinde parça adı ve sanatçı görünürlüğü kontrol edilecek.
2. **Multi-Task:** Ayarlardan seçilen bir uygulama ile haritanın bölünmüş ekranda açılıp açılmadığı test edilecek.
3. **Güncelleme:** Ayarlar ekranındaki "GÜNCELLE" butonuna basıldığında terminaldeki log akışı ve HUD bildirimleri izlenecek.
4. **HUD:** Birden fazla işlem (örn: ADB komutu + VPN kontrolü) aynı anda HUD tetiklediğinde mesajların okunabilirliği kontrol edilecek.
