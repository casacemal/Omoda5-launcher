# Panel Controller — launcher_v2 Adaptasyonu

> Kaynak: "Scalable UI in Android Automotive OS: The Panel Controller" (Daniel Georg, ProAndroidDev, Jun 2026)
> Hedef: launcher_v2 (com.omoda.lanc) — Omoda5 AAOS10 / 1920×720

---

## Kritik Uyumluluk Analizi

| Makale (CarSystemUI) | launcher_v2 Durumu | Durum |
|---|---|---|
| `DecorPanelControllerBase` — SurfaceControl'da tek View çizer | `OverlayManager` — WindowManager overlay + ComposeView | ⚠️ Farklı katman, aynı amaç |
| `BaseTaskPanelController` — Activity RootTaskStack içinde çalıştırır | Split-screen BLOKALI (ActivityView hidden API, CarPlayCommServ crash) | ❌ Kullanılamaz |
| RRO panel XML — deklaratif panel tanımı | App-level XML resources mevcut | ✅ DSL'e uyarlanabilir |
| Dagger @WMSingleton scope | Proje Hilt/Manuel DI yok, basit singleton pattern | ⚠️ Farklı scope |
| `EventDispatcher` event-driven variant geçişleri | `EventBus` + `GlobalState` StateFlow | ✅ Mevcut, güçlü temel |
| `AutoSurfaceTransaction` — surface boyutlandırma | `WindowManager.updateViewLayout` | ⚠️ Kısıtlı ama yeterli |

**Sonuç:** CarSystemUI Panel Controller doğrudan kullanılamaz (SystemUI'e compile edilmeli). Ama **mimari pattern** tamamen uygulanabilir.

---

## Adaptasyon Planı — 4 Aşama

### Aşama 1: PanelController Interface + Variant Sistemi
> Makaleden: "Every panel can be backed by a Panel Controller... resolves via Class.forName from controller XML"

**Mevcut:** `DashboardWidget` sadece `Content()` veriyor — lifecycle, event, variant yok.
**Hedef:** Her widget'ın bir controller'ı olsun, variant geçişlerini yönetsin.

**Yeni dosyalar:**
```
ui/panel/PanelController.kt       — Interface (lifecycle + variant management)
ui/panel/PanelVariant.kt          — Variant data class (visible/hidden/minimized)
ui/panel/PanelTransition.kt       — Transition definition (event → variant)
ui/panel/PanelRegistry.kt         — Controller map + registry
```

**PanelController interface:**
```kotlin
interface PanelController {
    val panelId: String
    val currentVariant: StateFlow<PanelVariant>

    fun onEvent(event: String, tokens: Map<String, String> = emptyMap())
    fun onAttach()    // dashboard visible olduğunda
    fun onDetach()    // dashboard saklandığında

    @Composable
    fun Content()    // variant-aware wrapper
}
```

**Variant sistemi:**
```kotlin
data class PanelVariant(
    val id: String,
    val layer: Int = 0,
    val alpha: Float = 1f,
    val isVisible: Boolean = true,
    val bounds: PanelBounds? = null  // null = fill parent
)

data class PanelBounds(val leftDp: Int, val topDp: Int, val rightDp: Int, val bottomDp: Int)

data class PanelTransition(
    val onEvent: String,
    val fromVariant: String? = null,  // null = her durumdan
    val toVariant: String,
    val durationMs: Int = 300
)
```

### Aşama 2: Event-Driven Variant Geçişleri
> Makaleden: `<Transition onEvent="_System_TaskOpenEvent" onEventTokens="panelId=panel_app_grid" toVariant="@id/visible" duration="500"/>`

**Mevcut:** `EventBus.events` akıyor, ama widget'lar variant geçişi yapmıyor.
**Hedef:** EventBus event'leri → variant değişimi → Compose animasyonlu geçiş.

**Mevcut EventBus ile bağlantı:**
```kotlin
// PanelRegistry.init() içinde:
EventBus.events.collect { event ->
    val eventName = when(event) {
        is Event.UIEvent.ShowOverlay -> "show_overlay"
        is Event.UIEvent.HideOverlay -> "hide_overlay"
        is Event.VehicleEvent -> "vehicle_update"
        else -> event::class.simpleName
    }
    controllers.values.forEach { controller ->
        controller.matchTransitions(eventName)
    }
}
```

**Omoda5 için tanımlanacak event'ler:**
| Event | Kaynak | Etki |
|---|---|---|
| `voice_activated` | VoiceAssistantService | VoicePanel → visible, Hud → visible |
| `voice_inactive` | 30sn timeout | VoicePanel → hidden |
| `nav_launched` | App launch intent | NavigationWidget → fullPanel variant |
| `climate_tapped` | UI touch | ClimateWidget → expanded variant |
| `sensor_debug` | Developer toggle | SensorOverlay → visible |

### Aşama 3: Bounds + Layer Sistemi (1920×720 Optimizasyonu)
> Makaleden: `<Bounds left="0dp" top="0dp" right="1408dp" bottom="792dp"/>` + `<Layer layer="16"/>`

**Omoda5 ekran:** 1920×720, landscape-only, sidebar ~235dp

**Panel yerleşim sistemi:**
```kotlin
object PanelLayout {
    // Omoda5 sabitleri
    const val SCREEN_W = 1920
    const val SCREEN_H = 720
    const val SIDEBAR_W = 235  // GlobalState.sidebarWidth

    // Layer sıralaması (makaledeki gibi)
    const val LAYER_BASE = 0      // Ana widget'lar
    const val LAYER_WIDGET = 5    // Widget içeriği
    const val LAYER_OVERLAY = 10  // HUD, sensor overlay
    const val LAYER_DECOR = 16    // Blur, glow, scrim (DecorPanel)
    const val LAYER_MODAL = 20    // Modal dialog
}
```

**Mevcut LayoutEngine'e eklenecek:**
- Widget z-ordering (layerBased layout)
- Bounds constraint (min/max boyut)
- Responsive variant'lar (küçük/büyük ekran)

### Aşama 4: Deklaratif Panel Tanımı (DSL Genişletme)
> Makaleden: RRO XML'de panel tanımı — `controller="@xml/flame_decor_controller"`

**Mevcut DSL:**
```kotlin
val OmodaPremiumDashboard = dashboard("omoda_5_premium") {
    left(weight = 0.6f) { widget(NavigationWidget()) }
    right(weight = 0.4f) { widget(MediaWidget()) }
    bottom { app("com.chery.media") }
    overlays { widget(SensorOverlayWidget()) }
}
```

**Hedef DSL (extend edilmiş):**
```kotlin
val OmodaPremiumDashboard = dashboard("omoda_5_premium") {
    left(weight = 0.6f) {
        panel(
            id = "navigation",
            controller = NavigationPanelController::class,
            defaultVariant = "compact",
            bounds = PanelBounds(0, 0, 1152, 640)
        ) {
            variant("compact", layer = 0, alpha = 1f)
            variant("full", layer = 0, alpha = 1f)
            transition(onEvent = "nav_launched", to = "full", durationMs = 400)
            transition(onEvent = "nav_home", from = "full", to = "compact", durationMs = 300)
        }
    }

    right(weight = 0.4f) {
        panel(
            id = "media",
            controller = MediaPanelController::class,
            defaultVariant = "visible"
        ) {
            variant("visible", layer = 5)
            variant("minimized", layer = 5, alpha = 0.3f)
            transition(onEvent = "voice_activated", to = "minimized")
            transition(onEvent = "voice_inactive", from = "minimized", to = "visible")
        }
    }

    overlays {
        panel(id = "hud", controller = HudPanelController::class, defaultVariant = "hidden") {
            variant("hidden", isVisible = false)
            variant("visible", layer = 10, alpha = 0.85f)
            transition(onEvent = "voice_activated", to = "visible")
            transition(onEvent = "voice_inactive", to = "hidden")
        }
    }
}
```

---

## Dosya Değişiklik Özeti

| Dosya | İşlem | Açıklama |
|---|---|---|
| `ui/panel/PanelController.kt` | **YENİ** | Interface — variant management |
| `ui/panel/PanelVariant.kt` | **YENİ** | Variant + Bounds + Transition data classes |
| `ui/panel/PanelRegistry.kt` | **YENİ** | Controller registry + EventBus bridge |
| `ui/panel/PanelScope.kt` | **YENİ** | DSL builder extension |
| `ui/dashboard/DashboardDsl.kt` | **DEĞİŞTİR** | `panel()` builder fonksiyonu ekle |
| `ui/dashboard/DashboardHost.kt` | **DEĞİŞTİR** | Layer-based rendering + variant-aware |
| `ui/layout/LayoutEngine.kt` | **DEĞİŞTİR** | Layer z-ordering ekle |
| `ui/widgets/` (mevcut) | **DEĞİŞTİR** | Controller implementasyonu ekle (minimal) |

**Değişmeyenler:** EventBus, GlobalState, OverlayManager, core modülleri.

---

## Omoda5 Cihaz Kısıtları ve Etkiler

| Kısıt | Etki | Çözüm |
|---|---|---|
| Split-screen bloklu | TaskPanel (Activity hosting) kullanılamaz | Sadece DecorPanel pattern (Compose widget) |
| 1920×720 landscape-only | Landscape bounds sabit, portrait variant gereksiz | `PanelBounds` hardcoded landscape |
| Sidebar ~235dp | Sol panel bounds start = 235dp | `PanelLayout.SIDEBAR_W` sabiti |
| Root erişimi var | WindowManager override mümkün | Gelecekte `SYSTEM_ALERT_WINDOW` → `INTERNAL_SYSTEM_WINDOW` upgrade |
| Semidrive X9 GPU | AGSL RuntimeShader desteklenebilir mi? → Test gerekli | DecorPanel glow/blur shader'ları Compose ile |

---

## Uygulama Sırası ve Öncelik

1. **PanelController interface + Variant** → temel, her şey buna bağlı
2. **EventBus → Variant bridge** → mevcut event'leri kullanır
3. **PanelRegistry** → controller instantiation + lifecycle
4. **DSL genişletme** → mevcut dashboard tanımına uyum
5. **Layer-based rendering** → DashboardHost güncelleme
6. **Mevcut widget migration** → MediaWidget, HudWidget vb. variant desteği

---

## Doğrulama Adımları

Her aşama sonrası:
1. `adb install` ile Omoda5'e deploy
2. Dashboard ekranını aç, widget'ların görünürlüğünü kontrol et
3. Voice asistanı aktifleştir → variant geçişlerini gözlemle
4. Logcat'te `PanelRegistry` tag'ini filtrele → transition event'lerini doğrula
5. Performans: Compose recomposition sayısını Hilt Compose Preview ile kontrol et
