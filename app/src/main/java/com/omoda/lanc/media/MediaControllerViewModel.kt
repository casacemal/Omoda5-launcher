package com.omoda.lanc.media

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
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.service.MediaNotificationListener
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch

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

    private val mediaUpdateReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val title = intent?.getStringExtra("title") ?: return
            val artist = intent?.getStringExtra("artist") ?: ""
            val pkg = intent?.getStringExtra("package") ?: ""
            
            _mediaState.value = _mediaState.value.copy(
                title = title,
                artist = artist,
                source = "Notif: $pkg"
            )
        }
    }

    private val sessionListener = MediaSessionManager.OnActiveSessionsChangedListener { controllers ->
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
            val component = ComponentName(application, MediaNotificationListener::class.java)
            sessionManager.addOnActiveSessionsChangedListener(sessionListener, component, handler)
            
            // Bridge Sync
            viewModelScope.launch {
                MediaBridge.mediaState.collect { info ->
                    if (info.pkg.isNotEmpty()) {
                        _mediaState.value = _mediaState.value.copy(
                            title = info.title,
                            artist = info.artist,
                            source = "Bridge: ${info.pkg}"
                        )
                    }
                }
            }

            val filter = IntentFilter(MediaNotificationListener.ACTION_MEDIA_UPDATE)
            application.registerReceiver(mediaUpdateReceiver, filter)
            
            refreshSession()
            handler.post(progressUpdater)
            Log.d("OmodaMedia", "Medya denetleyici başlatıldı")
        } catch (e: Exception) {
            Log.e("OmodaMedia", "Başlatma hatası: ${e.message}")
        }
    }

    fun refreshSession() {
        try {
            val component = ComponentName(getApplication(), MediaNotificationListener::class.java)
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

    fun togglePlayback() {
        val ctrl = MediaNotificationListener.globalController ?: activeController
        if (ctrl != null) {
            if (_mediaState.value.isPlaying) ctrl.transportControls.pause()
            else ctrl.transportControls.play()
        } else {
            executeShellCommand("input keyevent 85")
        }
    }

    fun skipToNext() {
        val ctrl = MediaNotificationListener.globalController ?: activeController
        if (ctrl != null) ctrl.transportControls.skipToNext()
        else executeShellCommand("input keyevent 87")
    }

    fun skipToPrevious() {
        val ctrl = MediaNotificationListener.globalController ?: activeController
        if (ctrl != null) ctrl.transportControls.skipToPrevious()
        else executeShellCommand("input keyevent 88")
    }

    private fun executeShellCommand(cmd: String) {
        val intent = Intent(getApplication(), com.omoda.lanc.service.AdbBridgeService::class.java).apply {
            action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", cmd)
        }
        getApplication<Application>().startService(intent)
    }

    override fun onCleared() {
        try {
            sessionManager.removeOnActiveSessionsChangedListener(sessionListener)
            getApplication<Application>().unregisterReceiver(mediaUpdateReceiver)
            activeController?.unregisterCallback(mediaCallback)
        } catch (e: Exception) {}
        handler.removeCallbacks(progressUpdater)
        super.onCleared()
    }
}
