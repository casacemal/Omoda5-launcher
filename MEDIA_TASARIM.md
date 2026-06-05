# MEDIA_TASARIM.md — Medya Widget Mimarisi
**Versiyon:** 9.0.0 | **Son Güncelleme:** 2026-05-22

AAOS Launcher için Adaptive Media Control Widget geliştirme rehberi.
Mevcut kod tabanını değiştirmeden `MediaModule` olarak izole çalışır.

---

## 1. Geliştirme Yol Haritası

| Faz | Odak | Aksiyon |
|-----|------|---------|
| Faz 1 | İzolasyon | Ayrı `MediaModule` Gradle modülü oluştur |
| Faz 2 | Servis katmanı | `MediaBrowserServiceCompat` ile veri çek |
| Faz 3 | UI katmanı | `BoxWithConstraints` ile dar/geniş mod |
| Faz 4 | Güvenlik | 48dp dokunma alanları, sürüş kısıtlamaları |
| Faz 5 | Entegrasyon | Home Assistant callback bağlantısı |

---

## 2. Mimari Kurallar

- **İzolasyon zorunlu:** Mevcut Entity listeleri, HA otomasyon kodu ve Launcher ana servisi **değiştirilmez**
- **Paket:** `MediaModule` adında ayrı Gradle modülü
- **Pattern:** `MediaControllerViewModel` + `StateFlow` + Jetpack Compose
- **AAOS UX:** Tüm butonlar minimum **48×48dp**
- **Responsive:** `BoxWithConstraints` — `maxWidth < 300dp` ise compact mod

---

## 3. UI Modları

### Compact Mod (`maxWidth < 300dp`)
- Albüm kapağı
- Şarkı adı
- Play/Pause butonu

### Expanded Mod
- Compact elemanlar +
- Progress bar
- Önceki / Sonraki butonlar
- Kaynak seçici (source selector)

Mod geçişi: `animateContentSize()` ile yumuşatılır.

---

## 4. Temel Kod Yapısı

### ViewModel

```kotlin
class MediaControllerViewModel(application: Application) : AndroidViewModel(application) {

    data class MediaUiState(
        val title: String = "Çalınan Medya Yok",
        val artist: String = "",
        val isPlaying: Boolean = false,
        val progress: Float = 0f
    )

    private val _mediaState = MutableStateFlow(MediaUiState())
    val mediaState: StateFlow<MediaUiState> = _mediaState

    fun togglePlayback() { /* transport controls */ }
    fun skipToNext() { /* transport controls */ }
    fun skipToPrevious() { /* transport controls */ }
}
```

### Compose Widget

```kotlin
@Composable
fun MediaControlWidget(viewModel: MediaControllerViewModel) {
    val uiState by viewModel.mediaState.collectAsState()
    var isExpanded by remember { mutableStateOf(false) }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxWidth()
            .animateContentSize()
            .padding(8.dp)
            .background(Color.DarkGray, RoundedCornerShape(16.dp))
            .clickable { isExpanded = !isExpanded }
    ) {
        val showFullControls = isExpanded && maxWidth >= 300.dp

        Column(modifier = Modifier.padding(16.dp)) {
            // Compact: albüm + şarkı + play/pause
            Row(verticalAlignment = Alignment.CenterVertically) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(uiState.title, color = Color.White)
                    Text(uiState.artist, color = Color.LightGray)
                }
                IconButton(
                    onClick = { viewModel.togglePlayback() },
                    modifier = Modifier.size(48.dp)
                ) {
                    Text(if (uiState.isPlaying) "⏸" else "▶", color = Color.White)
                }
            }

            // Expanded: progress + önceki/sonraki
            if (showFullControls) {
                LinearProgressIndicator(
                    progress = { uiState.progress },
                    modifier = Modifier.fillMaxWidth()
                )
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    IconButton(
                        onClick = { viewModel.skipToPrevious() },
                        modifier = Modifier.size(48.dp)
                    ) { Text("⏮", color = Color.White) }

                    IconButton(
                        onClick = { viewModel.skipToNext() },
                        modifier = Modifier.size(48.dp)
                    ) { Text("⏭", color = Color.White) }
                }
            }
        }
    }
}
```

---

## 5. AndroidManifest İzinleri

```xml
<uses-permission android:name="android.permission.MEDIA_CONTENT_CONTROL" />
<uses-permission android:name="android.permission.BIND_NOTIFICATION_LISTENER_SERVICE" />
```

---

## 6. Home Assistant Entegrasyonu

`MediaState` değiştiğinde HA otomasyonları tetiklenebilir. Ancak callback **HA otomasyon kodlarının dışında** yazılmalı:

```kotlin
// MediaModule içinde — mevcut HA koduna dokunulmaz
mediaState.onEach { state ->
    if (state.isPlaying) onMediaStarted?.invoke()
}.launchIn(viewModelScope)
```
