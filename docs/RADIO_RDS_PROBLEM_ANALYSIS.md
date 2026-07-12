# Chery Omoda 5 - Radyo RDS Sorunu Analiz & Çözüm Rehberi

**Hazırlanma Tarihi:** 3 Mart 2026  
**Proje:** FM Radio RDS (Radio Data System) Desteği Ekleme  
**Problem:** Original radyo programı kanal adlarını ve RDS bilgilerini göstermeme

---

## 1. RDS NEDİR?

### 1.1 Tanım
**RDS (Radio Data System)** FM radyo frekansında 57 kHz'de gönderilen digital verilerdir:

```
FM Radyo Sinyali
├─ 88-108 MHz ← Analog ses (Main signal)
│
└─ RDS Subcarrier (57 kHz)
   ├─ Station Name (PS) - kanal adı
   ├─ Program Type (PTY) - program türü
   ├─ Program Service Name (PS)
   ├─ Radio Text (RT) - şarkı adı, sanatçı
   ├─ Alternative Frequencies (AF)
   ├─ Time/Date info
   └─ Traffic information
```

### 1.2 RDS Örnek Veriler

```
FM 101.2 MHz Tuned
RDS Data Received:
├─ Station Name: "PowerFM Turkey"
├─ Program Type: "Pop"
├─ Radio Text: "Now Playing: Smooth Criminal - Michael Jackson"
├─ Alternative Freq: 101.2, 102.4 MHz
├─ Traffic Info: "Minimal traffic on TEM"
└─ Time: 14:35 (UTC+3)
```

### 1.3 Chery Omoda 5'te Durum

```
❌ Problem:
┌─────────────────────────────────────────────┐
│ media.apk (Chery Radio App)                 │
├─────────────────────────────────────────────┤
│ FM Frequencies gösteriyor (101.2)           │
│ Ses yapıyor                                 │
│ AMA: Station name başka göstermiyor        │
│ AMA: Song info göstermiyor                 │
│ AMA: Traffic info yok                       │
└─────────────────────────────────────────────┘

Neden?
├─ RDS decoder devre dışı olabilir
├─ Permission issue
├─ Radio HAL'ında RDS support yok
├─ OEM tarafından intentionally kaldırılmış
└─ Encoding/Decoding problemi
```

---

## 2. ROOT CAUSE ANALİZİ

### 2.1 Backup Dosyalarında Kontrol Yapılması Gereken Yerler

#### A. Original Radio APK Inceleme
```bash
# APK'yı decompile et
apktool d backup/apps/*.apk -o radio_decompiled

# Dosya yapısı
radio_decompiled/
├── AndroidManifest.xml
│   ├─ android.hardware.radio.fm permission var mı?
│   ├─ android.permission.ACCESS_NETWORK_STATE
│   └─ Com.android.permission.FM_TUNER açık mı?
│
├── res/
│   └── strings.xml
│       ├─ RDS string'leri
│       └─ Station name formatı
│
├── smali/ (Decompiled Java code)
│   └── com/yfve/radio/
│       ├─ RadioService.smali
│       ├─ RdsListener.smali (var mı?)
│       ├─ FmTuner.smali (RDS desteği?)
│       └─ RadioActivity.smali
│
└── lib/ (Native libraries)
    └─ armeabi-v7a, arm64-v8a
        └─ libradio_hal.so (RDS codec?)
```

#### B. Radio HAL Servisleri (Vendor)
```bash
# HAL service'leri kontrol
grep -r "radio\|fm\|rds" backup/vendor/vendor/etc/init/

# Expected files
backup/vendor/vendor/etc/init/
├─ android.hardware.radio@1.0-service.rc
├─ android.hardware.broadcastradio@2.0-service.rc (varsa)
└─ vendor.yfve.hardware.fmradio@1.0-service.rc (varsa)
```

#### C. VINTF Manifest (HAL capabilities)
```xml
<!-- backup/vendor/vendor/etc/vintf/manifest.xml -->
<hal format="hidl">
    <name>android.hardware.broadcastradio</name>
    <version>2.0</version>
    <interface>
        <name>IBroadcastRadio</name>
        <!-- RDS support declared here? -->
    </interface>
</hal>
```

#### D. Audio Configuration
```xml
<!-- backup/vendor/vendor/etc/car_audio_configuration.xml -->
<zone name="front">
    <!-- FM radyo ses output mapping -->
    <!-- RDS text output? -->
</zone>
```

### 2.2 Olası Sorunlar

| Problem | Belirti | Root Cause |
|---------|--------|----------|
| **RDS Decoder Devre Dışı** | Sadece frekans gösteriyor | Hardware RDS decoderi disable |
| **Permission Issue** | IllegalStateException | `android.permission.FM_TUNER` missing |
| **HAL Version Eski** | API support yok | `android.hardware.radio@1.x` (RDS = 2.0+) |
| **OS-Level Blocking** | Even if code exists, no data | SELinux policy radio access blocked |
| **Kernel Driver Missing** | Hardware level | FM tuner driver yüklü değil |
| **RDS Data Not Broadcast** | Valid freq ama 0 RDS | Transmitter'da RDS yok (lokalde) |

### 2.3 Chery Original App'da RDS Neden Çalışmıyor?

**Most likely causes:**
1. ✋ **Deliberate OEM decision** - Chery, RDS'yi disable etmiş olabilir
   - Cost reduction (RDS decoder complex)
   - Privacy concerns (RDS tracks listener behavior)
   
2. 🔌 **Hardware limitation** - FM tuner RDS decodiyah desteklemiyor
   - Budget FM radio chip
   - RDS decoders premium feature
   
3. 🔐 **Permission/SELinux** - System-level blocking
   - `android.permission.FM_TUNER` granted değil
   - SELinux policy radio access sınırlandırmış

---

## 3. ÇÖZÜM STRATEJİSİ

### 3.1 Tanı Adımları (Diagnostic)

#### Step 1: APK Decompile & Analyze
```bash
# Original radio APK'yı decompile et (media.apk = Chery radyo uygulaması)
cd /home/cemal/Belgeler/apps/omoda5
apktool d backup/apps/media.apk -o radio_source

# RDS-related code ara
grep -r "RDS\|rds\|radioText\|stationName" radio_source/

# Permission check
grep "FM_TUNER\|RADIO" radio_source/AndroidManifest.xml

# HAL listener ara
grep -r "BroadcastRadio\|FmTuner\|RadioMetadata" radio_source/smali/
```

#### Step 2: HAL Service Kontrolü
```bash
# Radio HAL init script kontrol et
cat backup/vendor/vendor/etc/init/android.hardware.broadcastradio@2.0-service.rc

# Expected output
service android.hardware.broadcastradio@2.0-service /vendor/bin/hw/android.hardware.broadcastradio@2.0-service
    class hal
    user system
    group system
```

#### Step 3: VINTF Manifest Kontrolü
```bash
grep -A 20 "broadcastradio\|radio" backup/vendor/vendor/etc/vintf/manifest.xml

# Check hal format, interface names
```

#### Step 4: Runtime Permission Check
```bash
# Device'te test et
adb shell dumpsys radio
adb shell dumpsys broadcastradio

# Current RDS capabilities
adb shell getprop ro.hardware.fm_tuner
adb shell getprop ro.vendor.radio.rds_support
```

### 3.2 Çözüm Yöntemleri

#### Method 1: Original App'a RDS Desteği Ekleme
```
Complexity: HIGH (APK modding, risisky)
Risk: 60% crash olma ihtimali
Time: 2-3 hafta

Adımlar:
1. APK decompile
2. RDS listener implementation
3. BroadcastRadio 2.0 API entegrasyonu
4. UI update'leri (station name, radio text gösterimi)
5. Repackage & sign
6. Test
```

#### Method 2: Custom Radio Application (Önerilen)
```
Complexity: MEDIUM
Risk: 10% (clean implementation)
Time: 2-3 hafta

Adımlar:
1. Yeni radio app oluştur (Kotlin)
2. BroadcastRadio 2.0 HAL integrate
3. RDS listener implement
4. UI/UX design (Chery style)
5. Home screen'den erişilebilir yap
6ödül Test & deploy
```

#### Method 3: Widget with RDS Info
```
Complexity: LOW
Risk: 5%
Time: 1 hafta

Adımlar:
1. media.apk (Chery radyo uygulaması) çalışırken
2. Widget'te RDS data göster
3. MediaSession callback'i kullan (radyo = media player)
4. Station name widget'te göster
```

---

## 4. TECHNICAL IMPLEMENTATION DETAIL

### 4.1 Android BroadcastRadio API (2.0)

```kotlin
// RDS listener implementation
import android.hardware.radio.RadioManager
import android.hardware.radio.RadioTuner
import android.hardware.radio.ProgramSelector

class RdsListener : RadioTuner.Callback {
    
    // RDS Data Listener
    override fun onProgramInfoChanged(info: RadioManager.ProgramInfo?) {
        info?.let {
            // Station name (RDS)
            val stationName = it.metadata?.getString(
                RadioManager.METADATA_KEY_RDS_PS // Program Service name
            ) ?: "Unknown"
            
            // Song/Program info (RDS Radio Text)
            val radioText = it.metadata?.getString(
                RadioManager.METADATA_KEY_RDS_RT // Radio Text
            ) ?: ""
            
            // Program Type
            val programType = it.metadata?.getString(
                RadioManager.METADATA_KEY_RDS_PTY
            ) ?: ""
            
            // Update UI
            updateStationName(stationName)
            updateRadioText(radioText)
            updateProgramType(programType)
        }
    }
    
    override fun onError(status: Int) {
        Log.e("Radio", "RDS Error: $status")
    }
}

// RadioTuner'ı başlat
val radioManager = context.getSystemService(Context.RADIO_SERVICE) 
    as RadioManager
val tuner = radioManager.openTuner(
    0, // tuner ID
    programSelector, 
    true, // withAudio
    rdsListener
)

// Specific frequency'ye tune et ve RDS dinle
tuner.tune(programSelector)
```

### 4.2 Required Permissions

```xml
<!-- AndroidManifest.xml -->
<uses-permission android:name="android.permission.RADIO" />
<uses-permission android:name="android.permission.ACCESS_FM_RADIO" />
<uses-permission android:name="android.permission.FM_TUNER" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />

<!-- Chery-specific -->
<uses-permission android:name="com.yfve.permission.FM_TUNER" />
```

### 4.3 UI Components für RDS Display

```xml
<!-- res/layout/radio_player.xml -->
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:background="#0A0E27">
    
    <!-- Frequency Display -->
    <TextView
        android:id="@+id/frequency"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="101.2 FM"
        android:textSize="48sp"
        android:textColor="#00D4FF"
        android:textStyle="bold" />
    
    <!-- Station Name (RDS) -->
    <TextView
        android:id="@+id/station_name"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="PowerFM Turkey"
        android:textSize="28sp"
        android:textColor="#FFFFFF"
        android:layout_marginTop="16dp" />
    
    <!-- Program Type (RDS) -->
    <TextView
        android:id="@+id/program_type"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Pop Music"
        android:textSize="16sp"
        android:textColor="#CCCCCC" />
    
    <!-- Radio Text (RDS) -->
    <TextView
        android:id="@+id/radio_text"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Now: Smooth Criminal - Michael Jackson"
        android:textSize="18sp"
        android:textColor="#FFD700"
        android:layout_marginTop="20dp"
        android:textAlignment="center"
        android:scrollbars="vertical" />
    
    <!-- Controls -->
    <LinearLayout
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:orientation="horizontal"
        android:gravity="center"
        android:layout_marginTop="30dp">
        
        <Button
            android:id="@+id/btn_prev_freq"
            android:layout_width="56dp"
            android:layout_height="56dp"
            android:text="◀"
            android:textSize="24sp" />
        
        <Button
            android:id="@+id/btn_play_stop"
            android:layout_width="56dp"
            android:layout_height="56dp"
            android:text="⏹"
            android:textSize="24sp"
            android:layout_marginHorizontal="20dp" />
        
        <Button
            android:id="@+id/btn_next_freq"
            android:layout_width="56dp"
            android:layout_height="56dp"
            android:text="▶"
            android:textSize="24sp" />
    </LinearLayout>
</LinearLayout>
```

---

## 5. RDS VERİ AKIŞI

### 5.1 Architecture

```
┌─────────────────────────────────────────────┐
│ FM Radio Signal (88-108 MHz)               │
├────────────┬────────────────────────────────┤
│ Analog Ses │ RDS Subcarrier (57 kHz)       │
│            │ ├─ Station Name (PS)           │
│            │ ├─ Radio Text (RT)             │
│            │ ├─ Program Type (PTY)          │
│            │ └─ Alternative Freqs (AF)      │
└────────────┴────────────────────────────────┘
              ↓
     FM Radio Tuner (Hardware)
     (Decodes RDS)
              ↓
  BroadcastRadio HAL 2.0 (System Service)
              ↓
  RadioManager.ProgramInfo
  (contains RDS metadata)
              ↓
  Custom Radio App / Widget
  (displays station name, song, etc)
```

### 5.2 Data Types

```kotlin
data class RdsData(
    val stationName: String,      // PS - "PowerFM"
    val radioText: String,         // RT - "Song - Artist"
    val programType: String,       // PTY - "Pop"
    val alternativeFreqs: List<Int>, // AF - [101.2, 102.4]
    val trafficInfo: String,       // TA/TP
    val timeDate: Long             // UTC timestamp
)

// Example
RdsData(
    stationName = "PowerFM Turkey",
    radioText = "Smooth Criminal - Michael Jackson",
    programType = "Pop",
    alternativeFreqs = listOf(101, 102, 103),
    trafficInfo = "Heavy on TEM highway",
    timeDate = System.currentTimeMillis()
)
```

---

## 6. IMPLEMENTATION PLAN (Metodolojik)

### Phase 1: Diagnosis (Hafta 1)

```
├─ Original radio APK decompile
├─ RDS-related code ara
├─ HAL service kontrol
├─ Runtime permission check
├─ Hardware capability test
└─ Root cause belirle
```

#### Diagnostic Commands

```bash
# Step 1: APK analiz (media.apk = Chery radyo uygulaması)
apktool d backup/apps/media.apk -o radio_src
grep -r "RDS\|RadioTuner\|ProgramInfo" radio_src/

# Step 2: HAL kontrol
dumpsys broadcastradio

# Step 3: Permission check
adb shell dumpsys package com.yfve.radio | grep permission

# Step 4: Runtime test
adb shell am start -n com.yfve.radio/.RadioActivity
# Tune to 101.2 FM
# Check logcat for RDS data
adb logcat | grep -i "rds\|program"
```

### Phase 2: Solution Decision (Hafta 1)

**Evaluate 3 methods:**
```
Method 1: Mod original app
├─ Risk: HIGH (60%)
├─ Time: 2-3 weeks
└─ Feasibility: 30%

Method 2: Custom radio app ✅ RECOMMENDED
├─ Risk: MEDIUM (10%)
├─ Time: 2-3 weeks
└─ Feasibility: 95%

Method 3: Widget only
├─ Risk: LOW (5%)
├─ Time: 1 week
└─ Feasibility: 80%
```

**Decision:** Combine Method 2 + Method 3
- Custom radio app (primary)
- Widget for quick access (secondary)

### Phase 3: Development (Hafta 2-3)

```
┌─ Widget Development
│  ├─ RDS info display
│  ├─ Real-time update
│  └─ Test with original radio
│
├─ Custom Radio App
│  ├─ RadioTuner integration
│  ├─ RDS listener
│  ├─ UI/UX design
│  ├─ Preset storing
│  └─ Bluetooth speaker control
│
└─ Integration
   ├─ Launcher integration
   └─ System app status
```

### Phase 4: Testing (Hafta 3-4)

```
├─ Unit tests (RDS listener)
├─ Integration tests (HAL integration)
├─ Device tests (Real FM signal)
├─ Battery tests (Background service)
├─ Edge cases (No RDS signal, etc)
└─ Production deployment
```

---

## 7. TEST PLAN

### 7.1 Test Scenarios

#### Test 1: RDS Data Reception
```
Setup:
├─ Device near FM transmitter
├─ Radio app running
└─ Tune to strong station (101.2 FM)

Verification:
├─ ✓ Station name appears
├─ ✓ Radio text updates
├─ ✓ Program type shows
├─ ✓ No crash
└─ ✓ Clean logcat (no errors)

Expected Result: 🟢 PASS
```

#### Test 2: RDS Update Frequency
```
Measurement:
├─ Station name changes → Log timestamp
├─ Radio text changes → Log timestamp
├─ Count updates per minute

Expected:
├─ Station name: 1x per minute (stable)
├─ Radio text: 0-4x per minute (dynamic)
└─ No update stuck > 5 minutes
```

#### Test 3: Multiple Frequencies
```
Steps:
1. Tune to 95.2 FM (station A)
   ├─ Verify RDS A shows
2. Tune to 101.2 FM (station B)
   ├─ Verify RDS B shows (RDS A cleared)
3. Tune back to 95.2 FM
   ├─ Verify RDS A shows again

Expected: Correct RDS for each frequency
```

#### Test 4: No RDS Signal
```
Edge Case: Tune to weak/silent frequency
├─ No crash
├─ Show "No RDS" gracefully
├─ Frequency still playable

Expected: Graceful degradation
```

#### Test 5: Background Service
```
Test:
1. Radio playing
2. Switch to other app
3. Check if RDS still updates
4. Switch back
5. Verify RDS current state

Expected: RDS continues in background
```

#### Test 6: Performance & Battery
```
Measurement:
├─ CPU usage (foreground): < 5%
├─ CPU usage (background): < 2%
├─ Battery drain: < 2%/hour
├─ Memory: < 50MB

Test Duration: 1 hour
```

---

## 8. RISK & MITIGATION

### 8.1 Risks

| Risk | Severity | Mitigation |
|------|----------|-----------|
| RDS decoder not in hardware | CRITICAL | Fallback to frequency only UI |
| Permission denied at runtime | HIGH | Check permits early, request at startup |
| HAL service crash | HIGH | Exception handling, graceful fallback |
| Memory leak in background | MEDIUM | Lifecycle cleanup, WeakReference |
| Battery drain high | MEDIUM | Throttle update frequency, pause when off-screen |
| Data corruption | LOW | Input validation, checksum verify |

### 8.2 Mitigation Code

```kotlin
// Permission check at startup
fun checkRadioPermissions(): Boolean {
    val requiredPerms = arrayOf(
        android.Manifest.permission.RADIO,
        android.Manifest.permission.FM_TUNER
    )
    
    return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
        requiredPerms.all {
            ActivityCompat.checkSelfPermission(context, it) ==
            PackageManager.PERMISSION_GRANTED
        }
    } else {
        true // Pre-M: permissions granted at install
    }
}

// Graceful fallback
fun displayRdsOrDefault(rdsData: RdsData?) {
    if (rdsData == null) {
        stationNameView.text = "FM ${frequency / 100}.${frequency % 100}"
        radioTextView.text = "No RDS available"
    } else {
        stationNameView.text = rdsData.stationName
        radioTextView.text = rdsData.radioText
    }
}

// Exception handling
try {
    radioTuner.tune(programSelector)
} catch (e: IllegalStateException) {
    Log.e("Radio", "Tuner failed: ${e.message}")
    showErrorDialog("Radio tuning failed. Please try again.")
}
```

---

## 9. RDS İLE İLGİLİ NOTLAR

### 9.1 Chery'nin Neden RDS Disable Etmiş Olabilir

```
Possible Reasons:
├─ 1. Cost (RDS decoder is premium feature)
├─ 2. Privacy (RDS tracks listening behavior)
├─ 3. Technical (Budget FM chip, no RDS support)
├─ 4. Localization (RDS not used in China/Asia much)
└─ 5. Simplicity (Minimal UI design philosophy)
```

### 9.2 RDS Global Usage

```
High RDS Coverage:
├─ Europe: 95%+ stations broadcast RDS
├─ USA: 80%+ coverage
├─ Turkey: 70%+ coverage
└─ China/Asia: 20-30% coverage (low)

Implication for Chery:
└─ Being Chinese brand, RDS might not be priority
```

### 9.3 Modern Alternatives to RDS

```
Newer Systems (3G+):
├─ RBDS (North America version)
├─ HD Radio (USA)
├─ DAB (Digital Audio Broadcasting)
├─ DRM (Digital Radio Mondiale)
└─ Streaming services (Spotify, TuneIn)
```

---

## 10. SONUÇ & TAVSIYELER

### ✅ YAPILMALI

1. **Diagnostic Phase** (1 hafta)
   - Original app decompile
   - HAL service control
   - Permission check

2. **Custom Radio App** (2-3 hafta)
   - Clean implementation
   - Full RDS support
   - Modern UI

3. **Testing** (1 hafta)
   - 6 test scenarios
   - Performance measurement
   - Edge case validation

### ⚠️ RISKLI

- Original app'ı modify etmek (high crash risk)
- Widget-only approach (limited functionality)

### ❌ YAPILMAYACAK

- Original app APK modifying (too risky)
- Force RDS if hardware doesn't support (impossible)

### 📋 Timeline

```
Week 1: Diagnosis + Decision
Week 2-3: Custom Radio App + Widget
Week 4: Testing + Optimization
Week 5: Deployment
```

### 💡 Bonus Features

```
Custom Radio App'a eklenebilecekler:
├─ Preset stations (favorites)
├─ Recording functionality
├─ Sleep timer
├─ Equalizer
├─ Bluetooth speaker switching
└─ Home screen widget integration
```

---

**Belge Sürümü:** 1.0  
**Hazırlayan:** Radio RDS Analysis  
**Durum:** Ready for Diagnostic Phase
