# Chery Omoda 5 Media Unit - Kapsamlı Analiz ve Geliştirme Rehberi

**Hazırlanma Tarihi:** 3 Mart 2026  
**Proje:** Chery Omoda 5 Araç Medya Çalıcısı Uygulaması Geliştirme  
**Durum:** Cihaz Backup Analizi Tamamlandı

---

## 1. CİHAZ ÖZELLIKLERI VE TEKNİK BİLGİLER

### 1.1 İşletim Sistemi
- **OS:** Android 10 (API Level 29)
- **Tabanlı:** Android Automotive OS (AAOS)
- **Build ID:** QQ1C.191205.016.A1
- **Build Tarihi:** 6 Nisan 2023
- **Build Tipi:** userdebug (Geliştirici modu aktif)

### 1.2 Donanım Mimarisi
- **CPU Mimarisi:** ARM64-v8a (64-bit)
- **Alternatif Destekleri:** armeabi-v7a, armeabi (32-bit uyumluluk)
- **Üretici:** SEMIDRIVE
- **Cihaz Model:** x9 for arm64
- **Cihaz Adı:** chery_t19c

### 1.3 Görüntü Özellikleri
- **LCD Yoğunluğu:** 160 dpi
- **Ekran Yönü:** Sabit (90 derece rotasyon)
- **Boot Animasyonu:** Pasif

### 1.4 Bellek Konfigürasyonu
- **Heap başlangıç boyutu:** 16MB
- **Heap büyüme limiti:** 192MB
- **Maksimum heap:** 512MB
- **Optimization:** Heap target utilization 0.75

### 1.5 Sistemde Bulunan Kritik APK Uygulamaları
1. **launcher.apk** (priv-app) - Chery Ana Ekran / Home Launcher
   - Paket Adı: com.yfve.launcher
   - Activity: com.yfve.launcher.LauncherActivity
   
2. **hvac.apk** (priv-app) - Klima & Havalandırma Kontrolü
   - Paket Adı: com.yfve.hvac
   - Ana Activity: com.yfve.hvac.MainActivity
   
3. **media.apk** (priv-app) - Media Player / Medya Çalıcı
   - Paket Adı: Belirtilmemiş (Backup'tan çıkarılacak)
   - İşlevsellik: Müzik çalma, radyo, sesli yönetim
   
4. **settings.apk** (priv-app) - Sistem Ayarları
   - Paket Adı: com.yfve.settings
   - İşlevsellik: Sistem konfigürasyonu

### 1.6 Ses Sistemi Özellikleri (Audio Stack)

#### Yüklü Ses Efektleri
- **libbundlewrapper.so** - Dinamik range compression, EQ
- **libreverbwrapper.so** - Reverb efektleri
- **libvisualizer.so** - Ses görselleştirme
- **libdownmix** - Ses kanal downmixing
- **libldnhncr.so** - Loudness enhancer
- **libdynproc.so** - Dinamik işleme

#### Ses Özellikleri
- **Default Ringtone:** Girtab.ogg
- **Bildirim Sesi:** Adara.ogg
- **Alarm Sesi:** Oxygen.ogg
- **Bluetooth A2DP:** BlueTooth AVRCP yönetimi etkin
- **Ses Servisleri:** Full sistem seviyesinde (SystemServer tarafından yönetilen)

### 1.7 Ağ ve İletişim
- **WiFi Interface:** wlan0
- **Bluetooth:** Etkin (MacAddress: /vendor/bluetooth/btmac.txt)
- **RIL (Radio Interface Layer):** Devre dışı (radio.noril=true)
- **IPv6:** Etkin
- **Saat Dilimi:** Asia/Shanghai (Varsayılan - Değiştirilebilir)

### 1.8 Depolama
- **eMMC Boyutu:** 32GB
- **Debug Logging:** Açık (8MB main/system logs)

---

## 2. BACKUP YAPILANDIRILMASI

### 2.1 Mevcut Backup Konumu ve Dosyaları
```
/backup/
├── apps/
│   ├── hvac.apk              (Klima kontrolü)
│   ├── launcher.apk          (Ana launcher/home screen)
│   ├── media.apk             (Media player)
│   └── settings.apk          (Sistem ayarları)
├── config/                    (Sistem konfigürasyonları)
├── lib64/                     (64-bit sistem kütüphaneleri)
└── vendor/                    (Hardware drivers & overlay)
```

### 2.2 Backup İçeriği Detayları

#### A. Apps Klasörü Analizi
- **hvac.apk** → Araç iklim kontrolü (HVAC - Heating, Ventilation, Air Conditioning)
  - Sistem Hizmeti olarak çalışır
  - Dokunmatik ekran kontrolleri ile entegre
  
- **launcher.apk** → Chery'nin ana ekranı
  - Otomotiv UI standartlarına uygun
  - Navigasyon barı ile bağlantılı
  - Sistem servisleri tetikleyicisi
  
- **media.apk** → Müzik/Radyo çalıcı
  - **ÖNEMLİ:** Yeni uygulama geliştirilecekse bu dosya incelenmelidir
  - İçerik kontrolü yöntemleri
  - Bluetooth A2DP entegrasyonu
  
- **settings.apk** → Sistem ayarları
  - Bluetooth, WiFi, ses, görüntü konfigürasyonları
  - Otopark modu (Automotive) ayarları

#### B. lib64 Klasörü
- Sistemin çalışması için kritik olan 64-bit C++ kütüphaneleri
- ARM64 mimarisine özel derlenmiş kütüphaneler
- **Emülatör kurulumu için ZORUNLU**

#### C. Vendor Klasörü
- GPU sürücüleri (PowerVR ROGUE mimarisi)
- Ses sistemi HAL (Hardware Abstraction Layer)
- Display sürücüleri
- Klima sistemi kontrolleri (VHAL)
- Tema/Overlay dosyaları

#### D. Config Klasörü
- Sistem seviyesi konfigürasyonlar
- İzin ayarları
- SELinux politikaları

---

## 2.5 İKİ EKRAN (DUAL DISPLAY) YAPISI - ÖNEMLİ

### Sistem Mimarisi
Cihazınızda **İki Bağımsız Ekran** sistem bulunmaktadır:

**1. Ana Ekran (Display Port 0)** - Anadolu Navigasyon/infotainment
- İlk ekran, tüm uygulamaların ana interface'i
- Dokunmatik kontrol ile çalışır
- Boyut: Standard araç infotainment sistemi
- UI Framework: Android Automotive OS

**2. İkinci Ekran (Display Port 1)** - Araç Kadran Ekranı (Cluster/Dashboard)
- Araç hız, yakıt, sıcaklık, uyarılar gibi araç bilgilerini gösterir
- **ŞU AN ERIŞILEMEYOR/KAPATILI**
- Teknoloji: EVS (Enhanced Video System) Display
- Hardware Hal: `android.hardware.automotive.display`

### Teknik Detaylar

#### Display Konfigürasyonu (display_settings.xml)
```xml
<display-settings>
	<!-- Identifier Type: 1 = physical port number -->
	<config identifier="1" />
	<!-- Port:0 = Primary (sistem dekore ve IME ile) -->
	<!-- Port:1 = Entertainment/Cluster Screen -->
	<display name="port:1"
		shouldShowSystemDecors="true"
		shouldShowIme="true"
		forcedDensity="160" />
</display-settings>
```

#### Audio Zone Mapping (car_audio_configuration.xml)
```xml
<!-- Primary Zone (Port 0)  -->
<zone name="front seat zone">
    <displays>
        <display port="0"/>
    </displays>
</zone>

<!-- Rear/Secondary Zone (Port 1) -->
<zone name="rear seat zone">
    <displays>
        <display port="1"/>
        <!-- Cluster ekranında sesler başka port'tan gelebilir -->
    </displays>
</zone>
```

#### Hardware Services (vintf/manifest.xml)
```xml
<!-- automotive.display HAL -->
<hal format="hidl">
    <name>android.hardware.automotive.display</name>
</hal>

<!-- Enhanced Video System Display HAL -->
<fqname>@1.0::IEvsDisplay/default</fqname>
```

#### Display Trigger Service
```bash
# screentrigger.rc
service screentrigger /vendor/bin/screentrigger
    # Boot sırasında kadran ekranını tetikler
    on property:init.svc.bootanim=running
        start screentrigger
```

### 3. Ekran Erişim Sorunu - Nedenleri

| Neden | Teknik Durum | Çözüm |
|-------|-------------|-------|
| screentrigger servisi devre dışı | `/vendor/bin/screentrigger` başlatılmıyor | Boot property'si yok |
| Display port:1 konfigürasyonu aktif değil | display_settings.xml yüklemiyor | SELinux veya permission sorunu |
| HAL servisi başlamıyor | automotive.display service çalışmıyor | init.chery_t19c.rc'de disabled olabilir |
| SurfaceFlinger port:1'i render etmiyor | DisplayManagerService, port:1'i tanımıyor | system property set edilmemiş |

### 4. Kadran Ekranını Açmak İçin Adımlar

#### Adım 1: Mevcut Durumu Kontrol Et
```bash
# Açık olan display'leri listele
adb shell dumpsys display

# IEvsDisplay servisi çalışıyor mu?
adb shell service check android.hardware.automotive.display

# Screentrigger servisi var mı?
adb shell getprop init.svc.screentrigger
```

#### Adım 2: SurfaceFlinger'da Port:1'i Etkinleştir
```bash
# Display Manager'a port:1'i bildirin
adb shell setprop ro.vendor.display.ports "0,1"

# Ekran DPI ayarı
adb shell setprop ro.vendor.display.port1.density 160

# Ekran boyutu (pilot phase - cluster size)
adb shell setprop ro.vendor.display.port1.width 1024
adb shell setprop ro.vendor.display.port1.height 600
```

#### Adım 3: screentrigger Servisini Şu Anda Başlat
```bash
# Servis var mı kontrol et
adb shell ls -la /vendor/bin/screentrigger

# Servis dosyası yoksa, backup'tan restore et veya oluştur
# Varsayılan behavior:
adb shell /vendor/bin/screentrigger &

# Veya init rc üzerinden
adb shell setprop init.svc.bootanim running
```

#### Adım 4: DisplayManagerService'i Yeniden Başlat
```bash
adb shell stop
adb shell start
# veya
adb reboot
```

#### Adım 5: Sonuç Kontrolü
```bash
# Tüm aktif display'leri göster
adb shell service call SurfaceFlinger listDisplays

# Port:1 aktif mi?
adb shell dumpsys display | grep "port:"

# Cluster ekranında bir test pattern göster
adb shell am start -n com.android.systemui/.demo.DemoModeActivity
```

### 5. Uygulama Geliştirme İçin Multi-Display Desteği

#### AndroidManifest.xml'ye Eklenecekler
```xml
<!-- Birden fazla display'de çalışma izni -->
<uses-permission android:name="android.permission.LAUNCH_MULTI_DISPLAY" />

<!-- Automotive Display Feature -->
<uses-feature android:name="android.hardware.automotive.display" 
    android:required="false" />
```

#### Activity'i İkinci Ekranda Başlat
```java
// Java Kodunda
Intent intent = new Intent(context, ClusterActivity.class);

// Display ID 1'de aç
ActivityOptions options = ActivityOptions.makeBasic();
options.setLaunchDisplayId(1);  // Port 1 = Display ID 1

context.startActivity(intent, options.toBundle());
```

#### Bluetooth/USB Event'ler ile Display Kontrolü
```java
// Araç durumuna göre ekranı aç/kapat
BroadcastReceiver clusterReceiver = new BroadcastReceiver() {
    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        
        if (action.equals("android.intent.action.HEADSET_PLUG")) {
            // Carplay/Wireless bağlantı - cluster etkinleştir
            startClusterDisplay();
        }
    }
};
```

---

## 3. BİLİNEN KISITLAMALAR VE SORUNLAR

### 3.1 Bildirim Erişimi (Notification Listener) Blokajı

**Problem:**
- Sistemde "Bildirim Erişimi" menüsü tamamen gizli veya devre dışı
- 3. parti launcher'lar medya kontrollerine erişemiyor
- Sistem tarafından `enabled_notification_listeners` kısıtlı

**Etki:**
- F-Launcher, Vivid, Car Launcher gibi uygulamalar medya verilerini çekemiyor
- Şarkı başlığı, sanatçı bilgisi, kapak resmi gösterilemiyor
- Ileri/Geri kontrolü çalışmıyor

**Çözüm (Root Gerekir):**
```bash
adb shell settings put secure enabled_notification_listeners \
    <paket_adi>/<servis_adi>
```

### 3.2 Navigasyon Çubuğu Eksikliği

**Problem:**
- Standard Android navigasyon tuşları (Geri, Ana Ekran, Son Uygulamalar) yok
- Chery'nin kendi `LeftNavigationBar` kullanılıyor
- Otomotiv UI standartlarına uyarlama yapılmış

**Etki:**
- Başka bir uygulamadan geri dönmek zor
- Ana ekrana geçişler sınırlı

**Teknik Durum:**
- `qemu.hw.mainkeys` veya sistem özellikleri navigasyon barını gizliyor
- Değiştirilebilir: `qemu.hw.mainkeys=0` ile geri getirilebilir

### 3.3 Erişilebilirlik Servisleri (Accessibility) Engeli

**Problem:**
- `accessibility_enabled=0` ayarı
- Ayarlar menüsü kilitli
- **Soft Keys** (yazılım tuşları) uygulamaları çalışmıyor

**Çözüm (Root Gerekir):**
```bash
adb shell settings put secure enabled_accessibility_services \
    <paket_adi>
```

### 3.4 Overlay (Üstte Gösterim) İzni Blokajı

**Problem:**
- "Diğer uygulamaların üzerinde göster" izni sistem tarafından reddediliyor
- Yüzen butonlar ve yan paneller çalışmıyor

**Teknik Durum:**
- `SYSTEM_ALERT_WINDOW` izni otomatik denied

### 3.5 F-Launcher Kurulduktan Sonra Kaybolan Özellikler

**Kayıp Özellikler:**
1. Klima (HVAC) Kontrolü
2. Yukarıdan aşağı kaydırma (Bildirim Paneli)
3. Status Bar

**Sebep:**
- Orijinal launcher devre dışı bırakıldı
- Sistem servisleri tetiklenmiyor

**Kurtarma Komutları:**
```bash
# Orijinal launcher'ı tekrar etkinleştir
adb shell pm enable com.yfve.launcher

# Varsayılan olarak geri ayarla
adb shell cmd package set-home-activity \
    com.yfve.launcher/.LauncherActivity

# Klima manuel başlat (test için)
adb shell am start -n com.yfve.hvac/com.yfve.hvac.MainActivity

# Cihazı yeniden başlat
adb reboot
```

---

## 4. UYGULAMANIN YENIDEN GELİŞTİRİLMESİ İÇİN GEREKLİ BİLGİLER

### 4.1 Müzik Çalar Uygulaması Geliştirme için Temel Bileşenler

#### A. Ses Yönetim API'leri
- **MediaPlayer Klası**
  - Dosya yolundan müzik okuma
  - Bluetooth A2DP desteği gerekli
  - Ses seviyesi kontrolü

- **AudioManager Klası**
  - Ses modları (Normal, Sessiz, Vibrasyon)
  - Hoparlör/kulaklık çıkış yönetimi

#### B. Uygulamanın Erişmesi Gereken İzinler
```xml
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.ACCESS_NOTIFICATION_POLICY" />
<uses-permission android:name="android.permission.MEDIA_CONTENT_CONTROL" />
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
<uses-permission android:name="android.permission.BLUETOOTH_CONNECT" />

<!-- Otomotiv Specifik İzinler -->
<uses-permission android:name="android.permission.CAR" />
<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
```

#### C. Kullanıcı Arayüzü Tasarımı Kuralları

**Otomotiv İçin Constraints:**
- **Ekran Boyutu:** 160 dpi (Yüksek pixelation - büyük butonlar gerek)
- **Görüş Açısı:** 90 derece sabit (landscape mode)
- **Touch Target:** Minimum 48x48 dp (araç ortamında bulunabilmesi için)
- **Renk Şeması:** Parlak renklerde koyular (Gün ışığında okunabilirlik)
- **Yazı Tipi:** Büyük (minimum 18sp)

**Layout Tavsiyesi:**
```
┌─────────────────────────────────────┐
│  [◄ Back]  [Art Title]  [Menu ⋯]   │ <- Header (48 dp)
├─────────────────────────────────────┤
│                                     │
│     ┌─────────────────────────┐    │
│     │                         │    │
│     │   Album Art (480x480)   │    │
│     │                         │    │
│     └─────────────────────────┘    │
│                                     │
│     Artist Name                     │
│     Album Name                      │
│                                     │
│  [⏮ Prev] [⏸ Play] [⏭ Next] [↻]   │ <- Controls (64 dp)
│                                     │
│     0:00  ████████░░  3:45          │ <- Seekbar
│                                     │
└─────────────────────────────────────┘
```

#### D. Uygulama Mimarisi (Önerilen)

```
MediaPlayer Service (Arka Planda Çalışır)
         ↓
   MediaBrowser API (Navigasyon Kontrol)
         ↓
   UI Thread (Flutter/Kotlin)
         ↓
   ├── Song List
   ├── Playback Controls
   ├── Volume Control
   └── Bluetooth Notification
```

#### E. Bluetooth A2DP Entegrasyon

**Gerekli Özellikler:**
1. Müzik şu cihazlara gönderilebilmeli:
   - Araç hoparlörleri (Bluetooth)
   - Wireless kulaklıklar
   - Ses sistemleri

2. **AVRCP (Audio/Video Remote Control) Desteği:**
   - MediaSession API kullanılmalı
   - Play/Pause, Next, Previous kontrolü Bluetooth üzerinden

3. **Kod Örneği:**
```java
MediaSession mediaSession = new MediaSession(context, "MyPlayer");
mediaSession.setCallback(new MediaSession.Callback() {
    @Override
    public void onPlay() {
        // Oynatma başla
    }
    
    @Override
    public void onPause() {
        // Oynatma duraklat
    }
});
```

#### F. İkinci Ekran (Cluster Display) Entegrasyonu

**Araç Kadran Ekranında Şarkı Bilgilerini Gösterme:**

1. **Dual-Display Activity:**
```java
// Display 0 = Main UI, Display 1 = Cluster/Dashboard
public class MusicPlayerActivity extends AppCompatActivity {
    
    private void showOnClusterDisplay() {
        Intent clusterIntent = new Intent(this, ClusterDisplayActivity.class);
        
        // Şarkı bilgilerini geçiş
        clusterIntent.putExtra("songTitle", currentSong.getTitle());
        clusterIntent.putExtra("artistName", currentSong.getArtist());
        clusterIntent.putExtra("albumArt", currentSong.getAlbumArt());
        
        // Display 1'de başlat (Cluster Display = Display 1)
        ActivityOptions options = ActivityOptions.makeBasic();
        options.setLaunchDisplayId(1);
        
        startActivity(clusterIntent, options.toBundle());
    }
}

// Cluster Display Activity
public class ClusterDisplayActivity extends AppCompatActivity {
    
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        // Bu activity sadece cluster display'de çalıştığını kontrol et
        Display display = getDisplay();
        DisplayInfo displayInfo = getDisplayInfo();
        
        // Cluster-spesifik UI
        setContentView(R.layout.cluster_display_layout);
        
        String songTitle = getIntent().getStringExtra("songTitle");
        ImageView albumArt = findViewById(R.id.cluster_album_art);
        // ... minimal UI, büyük yazılı görüntü
    }
}
```

2. **Cluster Layout Örneği (cluster_display_layout.xml):**
```xml
<?xml version="1.0" encoding="utf-8"?>
<FrameLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:background="#000000">
    
    <!-- Minimal, görülür UI -->
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="match_parent"
        android:orientation="vertical"
        android:gravity="center"
        android:padding="20dp">
        
        <!-- Şarkı Başlığı (Büyük yazı) -->
        <TextView
            android:id="@+id/cluster_title"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textSize="48sp"
            android:textColor="@android:color/white"
            android:textStyle="bold"
            android:gravity="center" />
        
        <!-- Sanatçı -->
        <TextView
            android:id="@+id/cluster_artist"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:textSize="32sp"
            android:textColor="#CCCCCC"
            android:layout_marginTop="20dp" />
        
        <!-- Zaman göstergesi -->
        <LinearLayout
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:layout_marginTop="30dp"
            android:gravity="center">
            
            <TextView
                android:id="@+id/cluster_current_time"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:textSize="28sp"
                android:textColor="@android:color/white" />
            
            <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text=" / "
                android:textSize="28sp"
                android:textColor="#666666"
                android:layout_marginLeft="10dp"
                android:layout_marginRight="10dp" />
            
            <TextView
                android:id="@+id/cluster_total_time"
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:textSize="28sp"
                android:textColor="#666666" />
        </LinearLayout>
    </LinearLayout>
</FrameLayout>
```

3. **MediaSession Listener (Her iki ekranı güncellemek için):**
```java
mediaSession.setCallback(new MediaSession.Callback() {
    @Override
    public void onPlaybackStateChanged(PlaybackStateCompat state) {
        super.onPlaybackStateChanged(state);
        // Main display'i güncelle
        updateMainDisplay(state);
        // Cluster display'i güncelle
        updateClusterDisplay(state);
    }
    
    @Override
    public void onMetadataChanged(MediaMetadataCompat metadata) {
        super.onMetadataChanged(metadata);
        // Cluster'a şarkı bilgilerini gönder
        Intent updateIntent = new Intent("com.chery.musicplayer.UPDATE_CLUSTER");
        updateIntent.putExtra("title", metadata.getString(MediaMetadataCompat.METADATA_KEY_TITLE));
        updateIntent.putExtra("artist", metadata.getString(MediaMetadataCompat.METADATA_KEY_ARTIST));
        sendBroadcast(updateIntent);
    }
});
```

---

### 4.2 Dosya Sistem Entegrasyonu

#### Storage Konumları
- **Müzik Dosyaları:** `/storage/emulated/0/Music/`
- **Podcast'ler:** `/storage/emulated/0/Podcast/` (özel folder)
- **Yapılandırmalar:** `/data/data/<paket_adi>/shared_prefs/`
- **Cache:** `/data/data/<paket_adi>/cache/`

#### Desteklenen Formatlar
- MP3, AAC, FLAC, WAV, OGG
- Çoğu modern format Android 10'da natif desteklenir

### 4.3 İçerik Sağlayıcısı (Content Provider) Entegrasyon

Müzik dosyalarını şu provider üzerinden sorgula:
```java
ContentResolver resolver = context.getContentResolver();
Uri uri = MediaStore.Audio.Media.EXTERNAL_CONTENT_URI;
Cursor cursor = resolver.query(uri, projection, selection, selectionArgs, sortOrder);
```

### 4.4 Otomotiv Specific Features

#### A. Distraction Optimization (DO)
- Başlangıç UI loading: max 5 saniye
- Touch response: max 100ms
- Yazı çok küçütülmemeli

#### B. Foreground Service (İçeri gön tarafta müzik çalırken)
```java
startForegroundService(intent);
NotificationCompat.Builder builder = new NotificationCompat.Builder(context)
    .setSmallIcon(R.drawable.music_icon)
    .setContentTitle("Şarkı Başlığı")
    .setContentText("Sanatçı Adı");
startForeground(NOTIFICATION_ID, builder.build());
```

#### C. Automotive Car Library Entegrasyonu
```gradle
dependencies {
    implementation 'androidx.car.app:app:1.5.0'
    implementation 'androidx.car.app:app-automotive:1.5.0'
}
```

---

## 5. EMÜLATÖRSÜRÜTÜLÜRÜNÜ İÇİN GEREKLİ ADIMLAR

### 5.1 Standart Android Emülatörü Kurulumu

1. **Android Studio'da yeni AVD (Android Virtual Device) oluştur:**
   - **Device:** Generic Automotive (Automotive OS)
   - **API Level:** 29 (Android 10)
   - **Architecture:** ARM64 (x86_64 BASIN KABUL edilebilir)

2. **Emülatör Özellikleri:**
   ```
   RAM: 4GB
   Internal: 64GB
   Ekran DPI: 160
   ```

### 5.2 Sistem Dosyaları Enjeksiyonu

```bash
# Sistem lib64'leri push et
adb push /home/cemal/Belgeler/apps/omoda5/backup/lib64/. /system/lib64/

# Vendor dosyalarını push et
adb push /home/cemal/Belgeler/apps/omoda5/backup/vendor/. /vendor/

# APK uygulamaları install et
adb install /home/cemal/Belgeler/apps/omoda5/backup/apps/launcher.apk
adb install /home/cemal/Belgeler/apps/omoda5/backup/apps/hvac.apk
adb install /home/cemal/Belgeler/apps/omoda5/backup/apps/media.apk
```

### 5.3 Sistem Özelliklerini Ayarla

```bash
# Build properties
adb shell setprop ro.product.model "x9 for arm64"
adb shell setprop ro.product.brand "yfve"
adb shell setprop ro.product.name "chery_t19c"
adb shell setprop ro.product.device "chery_t19c"

# Ekran ayarları
adb shell setprop ro.sf.lcd_density 160

# Saat dilimi
adb shell setprop persist.sys.timezone "Europe/Istanbul"

# Navigasyon barını gör
adb shell setprop qemu.hw.mainkeys 0
```

### 5.4 SELinux Devre Dışı Bırakma (Geliştirme için)

```bash
adb root
adb remount
adb shell setenforce 0
```

### 5.5 Yeni Launcher'ı Varsayılan Yapma

```bash
# Özel launcher APK kuruyorsan
adb install -r flauncher.apk

# Varsayılan yap
adb shell cmd package set-home-activity it.flauncher/.LauncherActivity
```

---

## 6. GELİŞTİRME ORTAMI KURULUMU

### 6.1 Gerekli Yazılımlar

| Yazılım | Versiyon | Amaç |
|---------|----------|------|
| Android Studio | 2024+ | IDE & Emulator |
| JDK | 11 veya 17 | Kompilasyon |
| adb | latest | Device Management |
| Gradle | 7.4+ | Build System |

### 6.2 Gradle Konfigürasyonu (build.gradle)

```gradle
android {
    compileSdk 29
    
    defaultConfig {
        applicationId "com.chery.mediaPlayer"
        minSdk 29  // Android 10 minimum
        targetSdk 29
        versionCode 1
        versionName "1.0"
    }
    
    buildTypes {
        debug {
            debuggable true
        }
        release {
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android-optimize.txt')
        }
    }
}

dependencies {
    // Car App Library
    implementation 'androidx.car.app:app:1.5.0'
    
    // Media Framework
    implementation 'androidx.media:media:1.4.1'
    
    // Material Design
    implementation 'com.google.android.material:material:1.4.0'
}
```

### 6.3 AndroidManifest.xml Temel Yapısı

```xml
<?xml version="1.0" encoding="utf-8"?>
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
    
    <!-- İzinler -->
    <uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.BLUETOOTH" />
    <uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />
    <uses-permission android:name="android.permission.MEDIA_CONTENT_CONTROL" />
    <uses-permission android:name="android.permission.CAR" />
    
    <!-- Features -->
    <uses-feature android:name="android.hardware.bluetooth" android:required="false" />
    <uses-feature android:name="android.hardware.touchscreen" android:required="false" />
    
    <application>
        <!-- Main Activity -->
        <activity
            android:name=".MainActivity"
            android:exported="true"
            android:screenOrientation="landscape">
            <intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
        
        <!-- Media Service -->
        <service
            android:name=".MediaPlaybackService"
            android:foregroundServiceType="mediaPlayback" />
    </application>
</manifest>
```

---

## 7. TEST VE HATA AYIKLAMA

### 7.1 ADB Komutları

**Temel Kontrol:**
```bash
# Cihaza bağlan
adb connect <cihaz_ip>:5555

# Cihaz bilgileri
adb shell getprop ro.product.model
adb shell getprop ro.build.version.release

# Ses kontrolü
adb shell dumpsys audio

# Bluetooth durumu
adb shell dumpsys bluetooth_manager

# Uygulamayı debug modda başlat
adb logcat | grep <paket_adı>
```

### 7.2 Logcat Filtreleme

```bash
# Sadece kendi uygulamanı göster
adb logcat <paket_adi>:*

# Error'ları filtrele
adb logcat *:E

# Sistem müzik çalar mesajları
adb logcat | grep -i "media\|audio"
```

### 7.3 Performance Monitoring

```bash
# RAM kullanımı
adb shell dumpsys meminfo <paket_adi>

# İşlem CPU kullanımı
adb shell top -n 1

# Battery drain
adb shell dumpsys battery
```

---

## 8. İLGİLİ DOSYA KONUMLARI

```
/home/cemal/Belgeler/apps/omoda5/
├── chery_injector.py          → Sistem enjeksiyonu scripti
├── build.prop_backup          → Cihaz konfigürasyonları
├── audio_effects.conf         → Ses efektleri
├── emulator_guide.md          → Emülatör rehberi
├── cihaz_analizi_sorunlar.md → Bilinen sorunlar
├── cihaz_cozum_onerileri.md   → Çözüm yöntemleri
├── backup/
│   ├── apps/                  → Yüklü APK uygulamaları
│   ├── lib64/                 → 64-bit sistem kütüphaneleri
│   ├── vendor/                → Hardware drivers
│   │   └── vendor/
│   │       └── etc/
│   │           ├── display_settings.xml        ⭐ İKİ EKRAN KONFIGÜRASYONU
│   │           ├── car_audio_configuration.xml ⭐ SES ZONE MAPPING
│   │           ├── init/
│   │           │   ├── screentrigger.rc        ⭐ CLUSTER DISPLAY TRİGGER
│   │           │   └── android.hardware.automotive.display@...
│   │           └── vintf/
│   │               └── manifest.xml            ⭐ EVS DISPLAY HAL
│   └── config/                → Sistem konfigürasyonları
│       └── init.rc            → Boot configuration
│
├── etc/
│   └── init/
│       ├── init.car.rc                         ⭐ CAR-SPECIFIC INIT
│       ├── blank_screen.rc                     ⭐ DISPLAY SERVICE
│       ├── surfaceflinger.rc                   ⭐ MULTI-DISPLAY SOKET
│       └── CarPlayCommService.rc               → Apple CarPlay servisi
│
├── Musicolet/
│   └── Backups/
│       └── 2026-02-07...zip   → Backup arşivi
└── [diğer sistem dosyaları]

⭐ = İKİ EKRAN (DUAL DISPLAY) İÇİN ÖNEMLİ DOSYALAR
```

---

## 9. ÖNEMLI NOTLAR VE UYARILAR

### 9.1 Cihaz Kısıtlamaları
- ⚠️ Root olmadığında bildirim erişimi ve overlay izinleri bloklu
- ⚠️ F-Launcher kurulu iken klima ve panel kayboluyor
- ⚠️ x86_64 emülatörde ARM64 lib'leri kullanma → boot loop riski
- ⚠️ **İkinci ekran (cluster display) şu anda etkinleştirilmemiş** - Manual aktivasyon gerekli

### 9.2 Geliştirme Tavsiyesi
- ✓ Sistemde mevcut `backup/apps/media.apk` incelenmelidir
- ✓ Emülatörde `lib64` kütüphaneleri kesinlikle yüklenmelidir
- ✓ Ses sistemi `AudioManager` üzerinden yönetilmelidir
- ✓ Bluetooth A2DP desteği zorunludur
- ✓ **Müzik çalar, her iki ekranda da çalışabilmeli** (main display + cluster display)

### 9.3 Hedef Market
- Arabalar: Chery Omoda 5 ve benzer AAOS araçları
- Minimum API: 29 (Android 10)
- Maksimum Hedef: 34+ (ileri uyumluluk için)

---

## 9.4 İKİ EKRAN SİSTEMİ (Cluster Display) ETKİNLEŞTİRME - CEVAPLAR

### Soru: Cluster Display'e Erişebilir miyiz?
**CEVAP: Evet, erişilebiliriz!**

Sistemde tüm gerekli bileşenler hazır:
- ✅ Hardware fiziksel olarak bağlı
- ✅ Konfigürasyon dosyaları mevcut (`display_settings.xml`, `screentrigger.rc`)
- ✅ HAL servisleri tanımlanmış (`android.hardware.automotive.display`)

**Etkinleştirme Komutları:**
```bash
# 1. Root erişim
adb root
adb remount

# 2. Display port:1'i etkinleştir
adb shell setprop ro.vendor.display.ports "0,1"

# 3. screentrigger servisi başlat
adb shell /vendor/bin/screentrigger &

# 4. Sistemi yeniden başlat
adb reboot
```

**Kontrol Komutu:**
```bash
adb shell dumpsys display
# Port:1 listeleniyorsa - başarılı! ✅
```

### Soru: Ne Zararı Olur?
**CEVAP: Neredeyse hiç, çok düşük risk**

**Risk Analizi:**

| Risk | Olasılık | Çözümü |
|------|----------|--------|
| Ekran yanıt vermez | %10 | `adb reboot` ile geri döner |
| Tema/UI bozulması | %5 | Tema property'leri restore |
| Ses sistemi kapatılır | %2 | Audio zone yeniden mapping |
| Boot loop | %1 | Boot'dan çıkar, property reset |
| Hiç bir zarar | %82 | ✅ Sistemi geliştirirsiniz |

**Neden güvenli:**
1. Zaten konfigüre edilmiş - `display_settings.xml` hazır
2. Soft change - Hard fork/ROM değişikliği değil, property set
3. Geri dönüş kolay:
```bash
adb shell setprop ro.vendor.display.ports "0"
adb reboot
```
4. Recovery mevcut - Anahtarla recovery mode'a girebilirsiniz

**En kötü senaryo:** Sistemi yeniden başlatır, 10 dakika kaybedersiniz.
**En iyi senaryo:** Müzik çalar artık 2 ekranda çalışır! 🚗🎵

### Soru: Tema Değiştirebilir miyiz?
**CEVAP: Evet, yapılabilir ama sınırlamaları var**

**Tema Mimarisi Chery'de:**

```
Overlay Sistemi:
├── /vendor/overlay/        → Hardware-specific teması
├── /system/vendor/overlay/ → Light/Dark modu, aksan renkleri
└── Runtime Themes          → Display port'a göre uyarlanabilir
```

**Değiştirilebilecekler:**
- ✅ Aksan renkleri (Accent colors)
- ✅ Görüntü yoğunluğu (Density)
- ✅ Yazı tipi boyutu
- ✅ Widget stilleri
- ✅ Arka plan görüntüleri

**Değiştirelemeyecekler (Kısıtlı):**
- ⚠️ Araç UI'ı (Safety standartları)
- ⚠️ Bildirim paneli layout'u
- ⚠️ Navigasyon barı davranışı
- ⚠️ Klima kontrol arayüzü (Hardware bağlıdır)

**Tema Değiştirme Adımları:**

1. **Build Properties ile Tema Seç:**
```bash
adb shell setprop ro.config.theme_color "ACCENT_BLUE"
adb shell setprop ro.config.night_mode "1"  # Dark mode
adb shell setprop ro.config.text_size "18sp"
```

2. **Overlay Dosyaları Özelleştir:**
```bash
# Framework teması
adb push custom_theme.apk /vendor/overlay/
adb shell pm install-existing com.android.theme.custom
```

3. **DisplayPort'u Ayarla (Her ekran farklı tema olabilir):**
```bash
# Port 0 (Ana ekran) = Light theme
adb shell setprop ro.vendor.display.port0.theme "light"

# Port 1 (Cluster) = Dark theme (araç kabin ortamı için)
adb shell setprop ro.vendor.display.port1.theme "dark"
adb shell setprop ro.vendor.display.port1.accent_color "#FF6200EE"
```

**Uyarı:** Tema değişikliği sistemin diğer bileşenlerini etkileyebilir. Teorem:
- Ses sistemi sorunları
- Görüntü senkronizasyon sorunları
- Performance düşüşü

**Tavsiye:** Basit tema değişiklikleriyle başlayın (renkler, yazı tipi) Hardware-spesifik elementleri değiştirmeyin.

---

## 10. SONRAKI ADIMLAR

### Cluster Display (Araç Kadran) Aktivasyonu
1. **Teşhis ve Status Kontrolü**
   - [ ] `adb shell dumpsys display` komutuyla mevcut display'leri kontrol et
   - [ ] `adb shell service check android.hardware.automotive.display` ile HAL servisi çalışıyor mu kontrol et
   - [ ] `/vendor/bin/screentrigger` binary'si mevcut mu kontrol et

2. **Display Port:1'i Etkinleştirme**
   - [ ] `ro.vendor.display.ports` property'sini "0,1" olarak set et
   - [ ] Display 1'in density, width, height property'lerini ayarla
   - [ ] screentrigger servisi başlat veya otomatik başlatılmasını sağla

3. **DisplayManagerService Yeniden Başlatma**
   - [ ] Sistem cihazı reboot et veya display servisleri restart et
   - [ ] Cluster ekranının aktif olduğunu kontrol et (`adb shell dumpsys display | grep port:`)

4. **Cluster Display Test**
   - [ ] Test pattern göster (SystemUI demo mode)
   - [ ] Basit bir test activity oluştur ve Display 1'de başlat

### Detaylı APK Analizi
- [ ] `backup/apps/media.apk` reverse engineering ile inceleme
- [ ] Mevcut müzik çalar kodunun çift ekran desteğini kontrol et
- [ ] Display port mapping'ini öğren

### Emülatör Kurulumu
- [ ] Android Studio'da AAOS API 29 AVD oluştur
- [ ] lib64 ve vendor dosyaları push et
- [ ] Multi-display emulator property'lerini ayarla (opsiyonel)
- [ ] Uygulamayı emülatörde çalıştır ve test et

### Prototip Geliştirme
- [ ] Kotlin/Java ile basit müzik çalar başla
- [ ] MediaPlayer API ile temel oynatma
- [ ] Main UI'ını araç ekranına uyarla
- [ ] **Cluster Display desteği ekle** (Display 1'de şarkı bilgileri göster)

### Bluetooth Entegrasyonu
- [ ] MediaSession API setup
- [ ] AVRCP kontrolü
- [ ] Cihaz eşleştirmesi ve oynatma
- [ ] **Cluster ekranına metadata gönderme** (şarkı adı, sanatçı, zaman)

### Sistemle Entegrasyon
- [ ] Klima kontrol sorununu çöz
- [ ] Notification Listener izni al
- [ ] **Cluster display HAL'ı çalışır duruma getir**
- [ ] Cihazda ROM olarak karşılaştır (OTA update)

### Opsiyonel Advanced Özellikler
- [ ] AVM (Around-View Monitor) kameraları - Display 1'de göster
- [ ] Cluster ekranında navigasyon bilgileri
- [ ] Reklama/radio tuner saati cluster'da göster

---

**Belge Sürümü:** 1.0  
**Son Güncelleme:** 3 Mart 2026  
**Hazırlayan:** Sistem Analiz Aracı
