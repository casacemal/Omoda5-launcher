# Chery Omoda 5 - Split-Screen Media UI Tasarımı (Android Auto Tarzı)

**Hazırlanma Tarihi:** 3 Mart 2026  
**Proje:** Modern Split-Screen Media Player + Mini Navigation  
**Tasarım:** Android Auto Style (Sol: Müzik | Sağ: Mini Harita) + Telefon Kontrolü  
**Display:** Display 0 Tek Ekran (1024 x 600, Landscape - Fixed)

---

## 1. GENEL KONSEPT

### 1.1 Ana Fikir
Chery Omoda 5 **Display 0** üzerinde **Media ekranında** split layout tasarlaması:

```
┌─────────────────────────────────────────────────────────┐
│               STATUS BAR (Saat, Sinyaller)              │
├──────────────────┬──────────────────────────────────────┤
│                  │                                      │
│  SOL PANEL (50%) │   SAĞ PANEL (50%)                   │
│  🎵 Müzik Çalar  │   🗺️ Mini Navigasyon (Google Maps) │
│                  │                                      │
│  - Album Art     │   - Live GPS Map                    │
│  - Başlık        │   - ETA / Bilgi                     │
│  - Artist        │   - Hedef                           │
│  - Kontroller    │   - [↗ Full Screen]                │
│                  │                                      │
├──────────────────┴──────────────────────────────────────┤
│     BOTTOM TAB BAR: Music | Phone | Settings           │
└─────────────────────────────────────────────────────────┘
```

### 1.2 Ekran Detayları
- **Boyut:** 1024 x 600 px
- **DPI:** 160 dpi
- **Orientation:** Landscape Fixed
- **Bölünme:** 50/50 split (512 px her panel)
- **Status Bar:** 60 dp
- **Bottom Bar:** 80 dp
- **Content Area:** 460 dp yükseklik

### 1.3 Kapsam
✅ **Yapılacak:**
- Media ekranında split layout
- Sol panel: Müzik çalar
- Sağ panel: Mini navigasyon harita
- Telefon araması PopUp
- Tab navigation (Music, Phone, Settings)

❌ **Yapılmayacak:**
- Video playback (not included)
- cluster Display (Display 1) - Ayrı tasarlanırım
- Vehicle dashboard - Navigation ile değiştirildi

---

## 2. LAYOUT DETORI (DISPLAY 0 - TEK EKRAN)

### 2.1 Full Layout Görünümü (Media Tab)

```
┌───────────────────────────────────────────────────────┐
│ 14:35        [GPS✓][4G◉◉◉][BT✓]    [🔊8][🔋85%][☀️] │ 60px
├──────────────────┬────────────────────────────────────┤
│                  │                                    │
│   LEFT PANEL     │      RIGHT PANEL                   │
│   ┌────────────┐ │  ┌──────────────────────┐         │
│   │ Album Art  │ │  │   Google Maps        │         │
│   │  200x200   │ │  │   Mini View          │         │
│   │            │ │  │   [Zoom +/-]         │         │
│   └────────────┘ │  └──────────────────────┘         │
│                  │                                    │
│ Smooth Criminal  │  📍 Home                           │
│ Michael Jackson  │     23 mins, 15 km                 │
│                  │     Navigating...                  │
│ 0:00─●────4:18   │                                    │
│                  │  🔹 Right turn ahead               │
│ [⏮][⏸][⏭]       │     in 800 meters                  │
│ [🔊] [❤️]        │                                    │
│                  │  [↗ Full Screen Nav]               │
│                  │                                    │
├──────────────────┴────────────────────────────────────┤
│  [ 🎵 MUSIC* ]  [ 📱 PHONE ]  [ ⚙️ SETTINGS ]        │  80px
│  [ ◀ PREV ]  [ NEXT ▶ ]  [Navigation controls]       │
└───────────────────────────────────────────────────────┘
```

---

## 3. LEFT PANEL - MÜZİK ÇALAR (Sol 50%)

### 3.1 Layout

```
┌─────────────────────┐
│ 🎵 Now Playing      │ ← Header (32sp bold)
├─────────────────────┤
│                     │
│   ┌─────────────┐   │
│   │ Album Art   │   │ 200x200 dp
│   │  (Cover)    │   │ Rounded corners
│   │   Image     │   │
│   └─────────────┘   │
│                     │
│ Smooth Criminal     │ 24sp bold (Song name)
│ Michael Jackson     │ 18sp regular (Artist)
│                     │
│ 0:00 ─●───── 4:18   │ Progress seekbar
│                     │
│ [⏮ Prev]           │
│ [⏸ Play]           │
│ [⏭ Next]           │ 48 dp buttons
│                     │
│ [🔊 Volume 8/15]   │ Additional controls
│ [❤️ Favorite]       │
│                     │
│ ◀ Album ▶           │ Swipe indicator
│ [Song] [Queue]      │
└─────────────────────┘
```

### 3.2 Components

| Element | Boyut | Detay |
|---------|-------|-------|
| Header | 40 dp | "Now Playing" başlığı |
| Album Art | 200x200 dp | Kapalı köşeler (16dp radius) |
| Song Title | 24 sp | Bold, white, centered |
| Artist | 18 sp | Regular, #CCCCCC (secondary text) |
| Progress Bar | Full width | Seekable (draggable) |
| Play Buttons | 48 dp | Min touch targets |
| Additional | 40 dp | Volume, Favorite |
| Swipe Indicator | 20 dp | Alt kısım gösterge |

### 3.3 İnteraksiyon

- **Tap Play/Pause:** Müzik oynat/duraklat
- **Tap Next/Prev:** Şarkı değiştir
- **Drag Seekbar:** Müzik ileri/geri sar
- **Tap Volume:** Ses kontrol paneli (PopUp)
- **Tap Heart:** Favorilere ekle/çıkar
- **Swipe Left/Right:** Playlist/Recommendations görüntüle

---

## 4. RIGHT PANEL - MİNİ NAVIGASYON (Sağ 50%)

### 4.1 Layout

```
┌──────────────────────┐
│ 🗺️ Navigation        │ ← Header
├──────────────────────┤
│                      │
│ ┌──────────────────┐ │
│ │  Google Maps     │ │ Live GPS
│ │  Mini Embed      │ │ Zoom kontrolleri
│ │  [Z+] [Z-]       │ │
│ └──────────────────┘ │
│                      │
│ 📍 Home              │ Destination name
│ 23 mins | 15 km      │ ETA ve distance
│ Via Osmanbey St      │ Route name
│                      │
│ 🔹 Turn right ahead  │ Next instruction
│    in 800 meters     │ (turn-by-turn)
│                      │
│ [↗ Full Nav]         │ Full-screen buton
│                      │
├──────────────────────┤
│ ◀ Mini Map ▶         │ Swipe indicator
└──────────────────────┘
```

### 4.2 Components

| Element | Boyut | Detay |
|---------|-------|-------|
| Header | 40 dp | "Navigation" başlığı |
| Map Container | Full | Embedded Google Maps |
| Zoom Buttons | 36 dp | "+", "-" buttons |
| Destination | 16 sp | Bold destination name |
| ETA/Distance | 14 sp | "23 mins, 15 km" |
| Route | 12 sp | "Via Osmanbey St" |
| Instruction | 18 sp | "Turn right ahead in 800m" |
| Full Screen Button | 40 dp | "[↗ Full Nav]" |

### 4.3 İnteraksiyon

- **Map Pan/Zoom:** Haritayı kaydır/büyüt (two-finger)
- **Tap [↗ Full Nav]:** Full-screen Google Maps'a geç
- **Swipe:** Mini harita bilgilerini geç (alternatif bilgiler)
- **Auto-Update:** GPS her 1 saniyede güncelle

### 4.4 Full-Screen Navigation Mode

Kullanıcı **[↗ Full Nav]** butonuna tıklarsa:

```
┌─────────────────────────────────────────┐
│ [← Back to Split]  🗺️ Full Navigation  │
├─────────────────────────────────────────┤
│                                         │
│   ┌─────────────────────────────────┐  │
│   │     Google Maps FULL SCREEN     │  │
│   │     (Pan, Zoom, Interact)       │  │
│   │     Live GPS Navigation         │  │
│   │                                 │  │
│   │     [Search] [Favorite] [More]  │  │
│   └─────────────────────────────────┘  │
│                                         │
│  Turn right ahead in 800 meters         │
│  Via Osmanbey Street                    │
│  [Mute] [Speaker] [Close Instructions] │
│                                         │
└─────────────────────────────────────────┘

Clicking [← Back to Split] → Returns to split layout
```

---

## 5. STATUS BAR (Üst - 60 dp)

### 5.1 Layout

```
┌──────────────────────────────────────────────┐
│ 14:35      [GPS✓][4G◉◉◉][BT✓][WiFi✓]|      │
│            [Signal indicators] Chery Omoda 5 │
│                               [🔊8][🔋85%][☀️]│
└──────────────────────────────────────────────┘

Sol:    Saat + Device Signals
Ortası: Cihaz Adı
Sağ:    Ses seviyesi + Pil + Brightness
```

### 5.2 Elements

```xml
Left:
- Time (14:35) - 18sp bold
- GPS indicator (✓ = Active)
- 4G signal (◉◉◉ = Bars)
- Bluetooth (✓ = Connected)
- WiFi (✓ = Connected)

Center:
- Device Name ("Chery Omoda 5")

Right:
- Volume indicator (🔊8)
- Battery % (🔋85%)
- Brightness icon (☀️)
```

---

## 6. BOTTOM NAVIGATION BAR (80 dp)

### 6.1 Layout

```
┌────────────────────────────────────────┐
│ [ 🎵 MUSIC* ] [ 📱 PHONE ] [ ⚙️ SET ] │ Top row (Tabs)
│ [Active]      [Inactive]  [Inactive]   │
├────────────────────────────────────────┤
│ [ ◀ PREV ]  [ NEXT ▶ ]  [Navigation]  │ Bottom row (Controls)
│ [Between pages scroll]                │
└────────────────────────────────────────┘
```

### 6.2 Tabs

| Tab | Icon | İşlev |
|-----|------|-------|
| **MUSIC** | 🎵 | Media ekranı (Split layout) - **Active** |
| **PHONE** | 📱 | Telefon/Contacts/Recent calls |
| **SETTINGS** | ⚙️ | Sistem ayarları |

### 6.3 Controls

| Button | İşlev |
|--------|-------|
| [◀ PREV] | Sol panel swipe ile önceki sayıya geç |
| [NEXT ▶] | Sağ panel swipe ile sonraki sayıya geç |

### 6.4 Tab Seçimi

- Aktivasyon: Tap on tab icon
- Gösterge: Highlighted accent color (#00D4FF cyan)
- Animation: Smooth ripple effect

---

## 7. RENK ŞEMASI & TİPOGRAFİ

### 7.1 Color Palette (Dark Theme)

```xml
<!-- Primary -->
<color name="bg_primary">#0A0E27</color>      <!-- Deep blue-black -->
<color name="bg_secondary">#1F1F3D</color>    <!-- Card backgrounds -->
<color name="bg_tertiary">#2D2D4D</color>     <!-- Darker blue -->

<!-- Accent (Neon) -->
<color name="accent_primary">#00D4FF</color>  <!-- Cyan - Main highlight -->
<color name="accent_secondary">#FF6B9D</color><!-- Magenta -->
<color name="accent_tertiary">#FFD700</color> <!-- Gold -->

<!-- Status -->
<color name="status_success">#00FF00</color>  <!-- Neon Green -->
<color name="status_warning">#FFC107</color>  <!-- Amber -->
<color name="status_danger">#FF4444</color>   <!-- Red -->

<!-- Text -->
<color name="text_primary">#FFFFFF</color>    <!-- White -->
<color name="text_secondary">#CCCCCC</color>  <!-- Light Gray -->
<color name="text_tertiary">#888888</color>   <!-- Medium Gray -->

<!-- UI -->
<color name="border_light">#333333</color>    <!-- Dividers -->
<color name="border_active">#00D4FF</color>   <!-- Active borders -->
<color name="button_bg">#2D3D7A</color>       <!-- Button background -->
```

### 7.2 Typography

```
Headlines:     36sp bold (Accent color)
Titles:        24sp bold (Primary text)
Subtitles:     18sp medium (Secondary text)
Body:          16sp regular (Primary text)
Labels:        14sp regular (Tertiary text)
Small:         12sp regular (Tertiary text)
Buttons:       16sp bold (White)
```

### 7.3 Spacing (Base Unit: 8 dp)

```
Margins:       16 dp, 24 dp
Padding:       12 dp, 16 dp
Icons:         40 dp, 48 dp, 56 dp
Buttons:       48 dp min (touch target)
Card Radius:   12 dp
```

---

## 8. NAVIGASYON TUŞLARI (Fiziksel Tuşlar YOK)

### 8.1 Problem
- Araçta navigasyon tuşları (geri, home, recent) yok
- Dokunmatik ekran sürücü tarafından güvenli bir şekilde kullanılabilir

### 8.2 Çözüm: Tab-Based + Gesture Navigation

#### A. TabBar (Primary)
```
Dokunma → [📍 NAV] [🎵 MUSIC] [📱 PHONE] [⚙️ SETTINGS]
         Direct tab switching, instant navigation
```

#### B. Swipe Gestures (Inside Panels)
```
Sol Panel: Swipe left/right → Song playlist cycling
Sağ Panel: Pan/Zoom → Map interaction
```

#### C. Prev/Next Buttons (Fallback)
```
[◀ PREV] [NEXT ▶] → Manual page scrolling
Safe for driving environment
```

#### D. Long-Press (Advanced)
```
Long-press [Tab] → Context menu with options
Long-press [Button] → Hold-to-activate (opsiyonel)
```

---

## 9. TAB DETAYLARı

### Tab 1:🎵 MUSIC (Media Ekranı ile Split Layout)

```
LAYOUT:
┌──────────────────┬────────────────────┐
│  LEFT PANEL      │   RIGHT PANEL      │
│  Müzik Çalar     │   Mini Navigasyon  │
└──────────────────┴────────────────────┘

SUB-TABS (Sol panel içinde swipe):
├─ Now Playing (Album Art + Controls)
├─ Queue (Sırada bekleyenler)
├─ Library (Tüm şarkılar/Playlists)
└─ Recommendations (Önerilen şarkılar)
```

Detaylı layout: Bölüm 3 & 4 referans alınız.

### Tab 2: 📱 PHONE (Telefon & Kontaklar)

```
┌──────────────────────────────────────┐
│ 📱 Phone / Contacts                  │
├──────────────────────────────────────┤
│                                      │
│ ☎️ Mom (Home)         [> Call]      │
│    +90 212 5551234                   │
│    Last: Today 14:32                 │
│                                      │
│ ☎️ Dad (Mobile)       [> Call]      │
│    +90 532 5559876                   │
│    Last: 3 hours ago                 │
│                                      │
│ ☎️ Ali @ Work         [> Call]      │
│    +90 505 5557654                   │
│    Last: Monday 10:00                │
│                                      │
├──────────────────────────────────────┤
│ [ Recents ] [ Favorites ] [ All ]   │ ← Sub-tabs
│ [ ◀ PREV ]  [ NEXT ▶ ]               │
└──────────────────────────────────────┘
```

**Sub-tabs:**
- **Recents:** Son aramalar
- **Favorites:** Sık arayanlar
- **All Contacts:** Tüm rehber

### Tab 3: ⚙️ SETTINGS (Sistem Ayarları)

```
┌──────────────────────────────────────┐
│ ⚙️ Settings                          │
├──────────────────────────────────────┤
│                                      │
│ Display & Sound                      │
│  Brightness: ████████░░ 70%         │
│  Volume: ████░ 8/15                 │
│  Theme: 🌙 Dark (ON)                │
│  Screen: Landscape [Locked]         │
│                                      │
│ Connectivity                         │
│  Bluetooth: [ON/OFF]                │
│  WiFi: [Disconnect]                │
│  4G: Auto (Connected)               │
│  GPS: [Always ON]                   │
│                                      │
│ App Settings                         │
│  Music Service: Spotify             │
│  Navigation: Google Maps            │
│  Maps Cache: Clear now              │
│                                      │
│ About                                │
│  Version: 1.0                       │
│  Build: March 2026                  │
│                                      │
├──────────────────────────────────────┤
│ [ ◀ PREV ]  [ NEXT ▶ ]               │
└──────────────────────────────────────┘
```

---

## 10. TELEFON ARAMASI YÖNETİMİ

### 10.1 Incoming Call PopUp (Overlay)

Telefon araması gelince, tüm sayfanın üstünde PopUp olur:

```
┌──────────────────────────────────────┐
│                                      │
│      📞 INCOMING CALL                │
│                                      │
│    ╔═══════════════════╗             │
│    ║   Mom (Home)      ║             │
│    ║   +90 212 5551... ║             │
│    ╚═══════════════════╝             │
│                                      │
│    ☎️ Ringing...                     │
│                                      │
│                                      │
│  [ ✓ Answer ]  [ ✗ Reject ]         │
│                                      │
└──────────────────────────────────────┘
```

### 10.2 Active Call Screen

```
┌──────────────────────────────────────┐
│ 📞 Mom (Home) - 00:45 seconds       │
├──────────────────────────────────────┤
│                                      │
│           📞 CALL ACTIVE             │
│                                      │
│           Mom                        │
│      ☎️ Connected                    │
│      Duration: 0:45                  │
│                                      │
│      🔊 Speaker: ON                  │
│      🎤 Microphone: ON               │
│                                      │
│  [🔇 Mute] [↕️ Vol] [☎️ End]        │
│                                      │
└──────────────────────────────────────┘

Call duration updates every second
Auto-dismiss when call ends
```

### 10.3 Call Controls

| Button | Açıklama |
|--------|----------|
| [✓ Answer] | Aramayı cevapla |
| [✗ Reject] | Aramaı reddet (voicemail) |
| [🔇 Mute] | Mikrofonu kapat |
| [↕️ Volume] | Ses kontrol (slider) |
| [☎️ End] | Aramayı sonlandır |
| [🔊 Speaker] | Hoparlörden çal |

---

## 11. VERİ AKIŞI & ARCHİTECTURE

### 11.1 Fragment Structure

```
OverlayLauncherActivity (Main Container)
│
├─ StatusBarFragment
│  └─ StatusViewModel (GPS, 4G, BT, Battery, Time)
│
├─ SplitScreenContainer
│  ├─ LeftPanelFragment (ViewPager2 host)
│  │  └─ MusicPlayerFragment (Music data)
│  │
│  └─ RightPanelFragment (Fixed)
│     └─ NavigationMapFragment (Google Maps)
│        └─ NavigationViewModel (GPS, Maps)
│
├─ BottomNavigationFragment
│  ├─ MUSIC Tab
│  ├─ PHONE Tab
│  ├─ SETTINGS Tab
│  └─ Navigation controls
│
└─ CallIncomingOverlay (PopUp - On top of everything)
   └─ CallViewModel (Incoming call management)
```

### 11.2 Services (Background)

```
Services:
├─ MediaPlaybackService (Foreground)
│  └─ Acts as music player backend
│
├─ GpsLocationService (Foreground)
│  └─ Updates GPS every 1 second
│
├─ PhoneCallService (Sticky)
│  └─ BroadcastReceiver for incoming calls
│
└─ StatusBarService (Foreground)
   └─ Updates time, signals, battery
```

### 11.3 Data Flow

```
Music Data:
  Device MediaSession → MusicPlayerViewModel (LiveData)
                     → LeftPanelFragment (UI update)

Navigation Data:
  Location Manager (GPS) → NavigationViewModel (LiveData)
                        → RightPanelFragment (Map update)

Phone Data:
  TelephonyManager → PhoneCallReceiver (BroadcastReceiver)
                  → CallViewModel
                  → CallIncomingOverlay (PopUp trigger)
```

---

## 12. DEVELOPMENT ROADMAP

### Phase 1: Core Setup (Hafta 1-2)
- [ ] Project setup (Kotlin, MVVM, Hilt)
- [ ] OverlayLauncherActivity skeleton
- [ ] Fragment structure (Music, Phone, Settings)
- [ ] Bottom navigation bar
- [ ] Status bar fragment

### Phase 2: Music Player (Hafta 3-4)
- [ ] MediaSession listener
- [ ] Album art display
- [ ] Play/Pause/Next/Prev controls
- [ ] Progress seekbar
- [ ] Volume control

### Phase 3: Navigation (Hafta 5-6)
- [ ] Google Maps integration (mini view)
- [ ] GPS location tracking
- [ ] Full-screen navigation mode
- [ ] ETA/Route calculation
- [ ] Turn-by-turn narration

### Phase 4: Phone Management (Hafta 7)
- [ ] Call receiver implementation
- [ ] Incoming call overlay
- [ ] Recent calls list
- [ ] Contact integration
- [ ] Call control buttons

### Phase 5: Polish & Testing (Hafta 8-9)
- [ ] Animations & transitions
- [ ] Dark theme optimization
- [ ] Performance tuning
- [ ] Crash & error handling
- [ ] Device testing

---

## 13. İZİN LİSTESİ

```xml
<!-- Phone Calls -->
<uses-permission android:name="android.permission.READ_PHONE_STATE" />
<uses-permission android:name="android.permission.CALL_PHONE" />
<uses-permission android:name="android.permission.READ_CALL_LOG" />
<uses-permission android:name="android.permission.WRITE_CALL_LOG" />
<uses-permission android:name="android.permission.READ_CONTACTS" />
<uses-permission android:name="android.permission.WRITE_CONTACTS" />

<!-- Location & Maps -->
<uses-permission android:name="android.permission.ACCESS_FINE_LOCATION" />
<uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION" />

<!-- Media -->
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.MEDIA_CONTENT_CONTROL" />

<!-- Audio -->
<uses-permission android:name="android.permission.MODIFY_AUDIO_SETTINGS" />

<!-- Network -->
<uses-permission android:name="android.permission.INTERNET" />
<uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
<uses-permission android:name="android.permission.BLUETOOTH" />
<uses-permission android:name="android.permission.BLUETOOTH_ADMIN" />

<!-- System -->
<uses-permission android:name="android.permission.FOREGROUND_SERVICE" />
```

---

## 14. ACTIVITY & FRAGMENT YAPISI

### Main Components

```
Activities:
├─ OverlayLauncherActivity (Main container - Fragments host)
├─ CallIncomingActivity (PopUp overlay for calls)
└─ FullNavigationActivity (Full-screen maps - opsiyonel)

Fragments:
├─ StatusBarFragment (Key info display)
├─ LeftPanelFragment (Music player)
├─ RightPanelFragment (Navigation map)
├─ BottomNavigationFragment (Tab bar)
├─ PhoneFragment (Contacts/Recent calls)
├─ SettingsFragment (System settings)
└─ CallIncomingFragment (Call controls)
```

---

## 15. EKRAN ÖZETİ

| Ekran | Sol Panel | Sağ Panel | Note |
|-------|-----------|-----------|------|
| **Music** | 🎵 Müzik Çalar | 🗺️ Mini Harita | Split layout (Primary) |
| **Phone** | 📱 Contacts | - | Full-screen |
| **Settings** | ⚙️ Settings | - | Full-screen |

---

## 16. BAŞLAMAK İÇİN KOD YAPISI

```
com.chery.mediaui/
│
├── ui/
│   ├── activities/
│   │   └── OverlayLauncherActivity.kt
│   │
│   ├── fragments/
│   │   ├── StatusBarFragment.kt
│   │   ├── LeftPanelFragment.kt (Music)
│   │   ├── RightPanelFragment.kt (Mini Maps)
│   │   ├── PhoneFragment.kt
│   │   ├── SettingsFragment.kt
│   │   ├── BottomNavigationFragment.kt
│   │   └── CallIncomingFragment.kt
│   │
│   └── views/
│       ├── SplitScreenContainer.kt
│       ├── MusicPlayerView.kt
│       └── StatusBarView.kt
│
├── viewmodel/
│   ├── MusicPlayerViewModel.kt
│   ├── NavigationViewModel.kt
│   ├── StatusViewModel.kt
│   ├── PhoneViewModel.kt
│   ├── SettingsViewModel.kt
│   └── CallViewModel.kt
│
├── data/
│   ├── repository/
│   │   ├── MediaRepository.kt
│   │   ├── LocationRepository.kt
│   │   ├── PhoneRepository.kt
│   │   └── SettingsRepository.kt
│   │
│   └── model/
│       ├── Song.kt
│       ├── Contact.kt
│       ├── Location.kt
│       └── CallState.kt
│
├── service/
│   ├── MediaPlaybackService.kt
│   ├── GpsLocationService.kt
│   ├── PhoneCallReceiver.kt
│   └── StatusBarService.kt
│
└── di/
    └── AppModule.kt (Hilt)
```

---

## 17. IMPLEMENTATION PROMPT

Hazır mısın? Şimdi kod yazmaya başlayacağız:

1. **OverlayLauncherActivity.kt** - Main container
   - Fragment setup
   - Split screen ConstraintLayout
   - Lifecycle management

2. **LeftPanelFragment.kt** - Music player
   - MediaSession listener
   - Album art display
   - Play/Pause/Next/Prev controls
   - Progress seekbar

3. **RightPanelFragment.kt** - Mini navigation
   - Google Maps embedded
   - GPS updates
   - Full-screen mode trigger

4. **PhoneFragment.kt** - Contacts & recent calls
   - Contact list
   - Recent call history
   - Call action buttons

5. **SettingsFragment.kt** - System settings
   - Display settings (brightness)
   - Audio settings (volume)
   - Connectivity status
   - App info

6. **CallIncomingFragment.kt** - PopUp overlay
   - Incoming call UI
   - Answer/Reject buttons
   - Call duration tracking

Hangi fragment'ten başlamak istersin?

---

**Belge Sürümü:** 2.0 (Tek Ekran Versiyonu)  
**Tasarım Tarihi:** 3 Mart 2026  
**Durum:** Design Phase Complete - Ready for Implementation
