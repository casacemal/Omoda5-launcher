# Omoda 5 Teknik Arşiv - Sistem Röntgeni ve Onarım Raporu

**Tarih:** 02 Haziran 2026
**Sürüm:** v9.4.2-Stability
**Durum:** Kritik Onarımlar Tamamlandı

---

## 🛠️ 1. Veri Akışı ve ADB "Chunking" Onarımı
### **Bulgu:**
Cihazdan (VHAL) gelen verilerin (Hız, Isı, Kapı) neden sık sık "0" göründüğü veya bozulduğu tespit edildi. ADB üzerinden gelen veriler bazen `[24.` (ilk paket) ve `5]` (ikinci paket) şeklinde parçalanarak geliyordu. Eski parser bu parçaları tek tek işlediği için sayısal değerleri okuyamıyordu.

### **Çözüm (Line-Buffer):**
`AdbBridgeService` içine bir **Satır Biriktirici (StringBuilder)** eklendi. Artık sistem, tam bir satır sonu karakteri (`\n`) görene kadar bekliyor. Bu sayede veriler her zaman tam paket (Örn: `[24.5]`) olarak işleniyor.

---

## 🎧 2. Medya Dinleyicisi (Kulak) Nakli
### **Bulgu:**
`MediaNotificationListener.kt` dosyasının içi boştu. Servis sisteme kayıtlı olmasına rağmen bildirimleri yakalayacak fonksiyonel "kulaklara" sahip değildi. Bu yüzden ne YouTube ne de Spotify bilgisi ekrana düşmüyordu.

### **Çözüm:**
Dosya baştan yazıldı. Spotify, YouTube Music, Musicolet ve Chery Media paketleri için özel filtreler eklendi. Gelen bildirimden başlık ve sanatçı bilgisi "cımbızla" çekilip `MEDIA_UPDATE` yayınıyla Widget'a bağlandı. Artık Widget üzerinde verinin kaynağı (Session veya Notif) görülebiliyor.

---

## 🖼️ 3. Multi-Task "Hayalet" Sorunu ve Saydamlık
### **Bulgu:**
Multi-Task butonlarına basıldığında mavi çizgi görünüyor ama uygulamalar görünmüyordu. Bunun sebebi, `MultiTaskActivity`'nin siyah bir perde gibi en öne geçmesiydi. Mavi çizgi bu perdenin üzerindeydi, ancak uygulamalar perdenin arkasında kalıyordu.

### **Çözüm (Translucent UI):**
`MultiTaskActivity` tamamen **SAYDAM (Translucent)** hale getirildi. Artık o mavi çizgi yine orada duruyor, ancak arkadaki Haritalar ve Müzik uygulamaları net bir şekilde görülebiliyor.

---

## 🌐 4. Ağ Kararsızlığı ve Otomasyon Kontrolü
### **Bulgu:**
Açılışta otomatik olarak çalışan Tailscale ve izin enjeksiyon komutlarının, ünitenin ağ kartını (wlan0) aşırı yorduğu ve cihazın ağdan düşmesine neden olduğu anlaşıldı.

### **Çözüm:**
Tüm otomatik görevler Ayarlar sayfasındaki **"OTOMATİK GÖREVLER"** anahtarına bağlandı. Varsayılan olarak kapalıdır; bu sayede bağlantı stabil kalır. Kullanıcı istediği zaman bu anahtarı açarak otomasyonu tetikleyebilir.

---

## ⚡ 5. Güç ve Sürekli Veri Akışı
### **Bulgu:**
Veri akışının (Stream) bazen sessizce durması ve cihazın kilitlenmesi durumları için acil müdahale gerektiği görüldü.

### **Çözüm:**
- **Tam Reboot:** Cihazı tamamen yeniden başlatan buton eklendi.
- **Auto-Reconnect:** ADB veri akışı koptuğunda, sistem 5 saniye içinde otomatik olarak yeniden bağlanma döngüsüne giriyor.

---
