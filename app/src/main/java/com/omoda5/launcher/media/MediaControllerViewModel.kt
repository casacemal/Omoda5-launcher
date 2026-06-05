package com.omoda5.launcher.media

import android.app.Application
import android.content.*
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.omoda5.launcher.common.LogManager
import com.omoda5.launcher.common.SystemBridgeManager
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

/**
 * v9.3.8 ULTIMATE - HYBRID MEDIA CONTROLLER (Session + Notification)
 */
class MediaControllerViewModel(application: Application) : AndroidViewModel(application) {

    data class MediaUiState(
        val title: String = "Medya Bekleniyor...",
        val artist: String = "Omoda 5 Hazır",
        val isPlaying: Boolean = false,
        val progress: Float = 0f,
        val duration: Long = 0L,
        val source: String = "Sistem"
    )

    private val _mediaState = MutableStateFlow(MediaUiState())
    val mediaState: StateFlow<MediaUiState> = _mediaState.asStateFlow()

    private var activeController: MediaController? = null
    private val sessionManager = application.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager
    private val handler = Handler(Looper.getMainLooper())

    // v22.0.0: Bu broadcast receiver Legacy olarak işaretlendi.
    // Yeni sistem SystemBridgeManager.mediaState akışını kullanır.
    // GERİ DÖNÜŞ İÇİN: Bu bloktaki yorumu kaldır, aşağıdaki broadcast register kodunu da aktif et.
    private val mediaUpdateReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val title = intent?.getStringExtra("title") ?: return
            val artist = intent?.getStringExtra("artist") ?: ""
            val pkg = intent?.getStringExtra("package") ?: ""
            
            // v11.4.0 Fix: Oynatılıyor olsa bile başlık bilgisini güncelle (Şarkı değişimi takibi)
            _mediaState.value = _mediaState.value.copy(
                title = title,
                artist = artist,
                source = "Notif: $pkg"
            )
            LogManager.addLog("MEDIA_UI: Notification verisi uygulandı ($title)")
        }
    }

    private val sessionListener = MediaSessionManager.OnActiveSessionsChangedListener { controllers ->
        LogManager.addLog("SYSTEM: Aktif Medya Oturumları Değişti (${controllers?.size ?: 0})")
        controllers?.firstOrNull()?.let { attachToController(it) } ?: run {
            activeController = null
            _mediaState.value = MediaUiState()
        }
    }

    private val mediaCallback = object : MediaController.Callback() {
        override fun onMetadataChanged(metadata: MediaMetadata?) { updateMetadata(metadata) }
        override fun onPlaybackStateChanged(state: PlaybackState?) { updatePlaybackState(state) }
    }

    private val progressUpdater = object : Runnable {
        override fun run() {
            activeController?.playbackState?.let { state ->
                if (state.state == PlaybackState.STATE_PLAYING) {
                    val pos = state.position
                    val dur = _mediaState.value.duration
                    if (dur > 0) _mediaState.value = _mediaState.value.copy(progress = pos.toFloat() / dur.toFloat())
                }
            }
            handler.postDelayed(this, 1000)
        }
    }

    init {
        try {
            val component = ComponentName(application, com.omoda5.launcher.services.MediaNotificationListener::class.java)
            sessionManager.addOnActiveSessionsChangedListener(sessionListener, component, handler)
            
            // v10.0.0 Bridge: Initial sync with Data Manager
            val initial = SystemBridgeManager.mediaState.value
            if (initial.pkg.isNotEmpty()) {
                _mediaState.value = _mediaState.value.copy(
                    title = initial.title,
                    artist = initial.artist,
                    source = "Bridge: ${initial.pkg}"
                )
            }

            // v10.0.0 Bridge: Observe Data Manager Flow
            viewModelScope.launch {
                SystemBridgeManager.mediaState.collect { info ->
                    if (info.pkg.isNotEmpty()) {
                        _mediaState.value = _mediaState.value.copy(
                            title = info.title,
                            artist = info.artist,
                            source = "Bridge: ${info.pkg}"
                        )
                    }
                }
            }

            // v22.0.0 Legacy Recovery: SystemBridgeManager yanına yedek amaçlı Intent de eklendi
            val filter = IntentFilter("com.omoda5.launcher.MEDIA_UPDATE")
            if (android.os.Build.VERSION.SDK_INT >= 33) {
                application.registerReceiver(mediaUpdateReceiver, filter, Context.RECEIVER_NOT_EXPORTED)
            } else {
                application.registerReceiver(mediaUpdateReceiver, filter)
            }
            
            refreshSession()
            handler.post(progressUpdater)
            LogManager.addLog("SYSTEM: Hibrit Medya Denetleyici Başlatıldı")
        } catch (e: Exception) {
            LogManager.addLog("ERR: Medya Denetleyici Başlatılamadı")
        }
    }

    fun refreshSession() {
        try {
            val component = ComponentName(getApplication(), com.omoda5.launcher.services.MediaNotificationListener::class.java)
            val sessions = sessionManager.getActiveSessions(component)
            sessions.firstOrNull()?.let { attachToController(it) }
        } catch (e: Exception) { }
    }

    private fun attachToController(controller: MediaController) {
        if (activeController?.packageName == controller.packageName) return
        activeController?.unregisterCallback(mediaCallback)
        activeController = controller
        controller.registerCallback(mediaCallback)
        updateMetadata(controller.metadata)
        updatePlaybackState(controller.playbackState)
        _mediaState.value = _mediaState.value.copy(source = "Session: ${controller.packageName}")
        LogManager.addLog("MEDIA: Bağlanıldı -> ${controller.packageName}")
    }

    private fun updateMetadata(metadata: MediaMetadata?) {
        val title = metadata?.getString(MediaMetadata.METADATA_KEY_TITLE) ?: "Omoda 5 Media"
        val artist = metadata?.getString(MediaMetadata.METADATA_KEY_ARTIST) ?: "Sistem Hazır"
        val dur = metadata?.getLong(MediaMetadata.METADATA_KEY_DURATION) ?: 0L
        _mediaState.value = _mediaState.value.copy(title = title, artist = artist, duration = dur)
    }

    private fun updatePlaybackState(state: PlaybackState?) {
        val isPlaying = state?.state == PlaybackState.STATE_PLAYING
        _mediaState.value = _mediaState.value.copy(isPlaying = isPlaying)
    }

    private fun sendMediaKey(keyCode: Int) {
        val audioManager = getApplication<Application>().getSystemService(Context.AUDIO_SERVICE) as android.media.AudioManager
        val eventDown = android.view.KeyEvent(android.view.KeyEvent.ACTION_DOWN, keyCode)
        val eventUp = android.view.KeyEvent(android.view.KeyEvent.ACTION_UP, keyCode)
        audioManager.dispatchMediaKeyEvent(eventDown)
        audioManager.dispatchMediaKeyEvent(eventUp)
    }

    private var lastMediaActionTime = 0L
    private val DEBOUNCE_MS = 500L

    private fun isDebounced(): Boolean {
        val now = System.currentTimeMillis()
        if (now - lastMediaActionTime < DEBOUNCE_MS) {
            android.util.Log.d("OmodaMedia", "DEBOUNCE: Cok hizli, yok sayiliyor!")
            return false
        }
        lastMediaActionTime = now
        return true
    }

    private fun executeShellCommand(cmd: String) {
        try {
            Runtime.getRuntime().exec(arrayOf("sh", "-c", cmd))
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    fun togglePlayback() {
        if (!isDebounced()) return
        android.util.Log.d("OmodaMedia", ">>> PLAY/PAUSE TUSUNA BASILDI! isPlaying=${_mediaState.value.isPlaying}")
        val globalCtrl = com.omoda5.launcher.services.MediaNotificationListener.globalController
        android.util.Log.d("OmodaMedia", "globalCtrl=$globalCtrl, activeController=$activeController")
        
        // Sadece en güvenilir 1 yöntem: GlobalController transport
        val ctrl = globalCtrl ?: activeController
        if (ctrl != null) {
            if (_mediaState.value.isPlaying) ctrl.transportControls.pause()
            else ctrl.transportControls.play()
        } else {
            // Fallback: shell keyevent
            executeShellCommand("input keyevent 85")
        }
        
        _mediaState.value = _mediaState.value.copy(isPlaying = !_mediaState.value.isPlaying)
    }

    fun skipToNext() {
        if (!isDebounced()) return
        android.util.Log.d("OmodaMedia", ">>> NEXT TUSUNA BASILDI!")
        val ctrl = com.omoda5.launcher.services.MediaNotificationListener.globalController ?: activeController
        if (ctrl != null) ctrl.transportControls.skipToNext()
        else executeShellCommand("input keyevent 87")
    }

    fun skipToPrevious() {
        if (!isDebounced()) return
        android.util.Log.d("OmodaMedia", ">>> PREV TUSUNA BASILDI!")
        val ctrl = com.omoda5.launcher.services.MediaNotificationListener.globalController ?: activeController
        if (ctrl != null) ctrl.transportControls.skipToPrevious()
        else executeShellCommand("input keyevent 88")
    }

    override fun onCleared() {
        try {
            sessionManager.removeOnActiveSessionsChangedListener(sessionListener)
            // v22.0.0: Legacy receiver yorumda. GERİ DÖNÜŞ İÇİN: aktif et.
            // getApplication<Application>().unregisterReceiver(mediaUpdateReceiver)
            activeController?.unregisterCallback(mediaCallback)
        } catch (e: Exception) {}
        handler.removeCallbacks(progressUpdater)
        super.onCleared()
    }
}
