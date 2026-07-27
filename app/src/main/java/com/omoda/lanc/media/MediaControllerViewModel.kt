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
        val source: String = "Sistem",
        val albumArt: android.graphics.Bitmap? = null,
        val pkg: String = ""
    )


    private val _mediaState = MutableStateFlow(MediaUiState())
    val mediaState: StateFlow<MediaUiState> = _mediaState.asStateFlow()

    private var activeController: MediaController? = null
    private val sessionManager = application.getSystemService(Context.MEDIA_SESSION_SERVICE) as MediaSessionManager
    private val handler = Handler(Looper.getMainLooper())

    private val sessionListener = MediaSessionManager.OnActiveSessionsChangedListener { controllers ->
        val playing = controllers?.firstOrNull { it.playbackState?.state == PlaybackState.STATE_PLAYING }
        val withMeta = controllers?.firstOrNull { it.metadata != null }
        val target = playing ?: withMeta ?: controllers?.firstOrNull()
        
        target?.let { attachToController(it) } ?: run {
            activeController = null
            _mediaState.value = MediaUiState()
        }
    }

    private val mediaCallback = object : MediaController.Callback() {
        override fun onMetadataChanged(metadata: MediaMetadata?) { updateMetadata(metadata) }
        override fun onPlaybackStateChanged(state: PlaybackState?) { updatePlaybackState(state) }
    }

    private val progressUpdater = object : Runnable {
        private var ticks = 0
        override fun run() {
            ticks++
            // Her 3 saniyede bir aktif session'u tekrar kontrol et
            if (ticks % 3 == 0) refreshSession()
            
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
            try {
                val component = ComponentName(application, MediaNotificationListener::class.java)
                sessionManager.addOnActiveSessionsChangedListener(sessionListener, component, handler)
            } catch (e: SecurityException) {
                Log.e("OmodaMedia", "Medya kontrol yetkisi eksik (Notification Access): ${e.message}")
            }
            
            // Source of Truth: MediaBridge (Fed by MediaNotificationListener)
            viewModelScope.launch {
                MediaBridge.mediaState.collect { info ->
                    if (info.pkg.isNotEmpty()) {
                        _mediaState.value = _mediaState.value.copy(
                            title = info.title.ifBlank { "Bilinmeyen Şarkı" },
                            artist = info.artist.ifBlank { "Bilinmeyen Sanatçı" },
                            source = info.pkg,
                            isPlaying = info.isPlaying,
                            albumArt = info.albumArt,
                            pkg = info.pkg
                        )
                        // If we don't have an active controller, try to find one for this package
                        if (activeController == null || activeController?.packageName != info.pkg) {
                            refreshSession()
                        }
                    }
                }
            }

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
            val playing = sessions.firstOrNull { it.playbackState?.state == PlaybackState.STATE_PLAYING }
            val withMeta = sessions.firstOrNull { it.metadata != null && it.metadata?.getString(MediaMetadata.METADATA_KEY_TITLE) != null }
            val target = playing ?: withMeta ?: sessions.firstOrNull()
            target?.let { attachToController(it) }
        } catch (e: Exception) { 
            Log.e("OmodaMedia", "refreshSession hatasi: ${e.message}")
        }
    }

    private fun attachToController(controller: MediaController) {
        if (activeController?.packageName == controller.packageName) return
        activeController?.unregisterCallback(mediaCallback)
        activeController = controller
        controller.registerCallback(mediaCallback)
        updateMetadata(controller.metadata)
        updatePlaybackState(controller.playbackState)
        _mediaState.value = _mediaState.value.copy(
            source = "Session: ${controller.packageName}",
            pkg = controller.packageName
        )
    }

    private fun updateMetadata(metadata: MediaMetadata?) {
        val title = metadata?.getString(MediaMetadata.METADATA_KEY_TITLE) ?: "Omoda 5 Media"
        val artist = metadata?.getString(MediaMetadata.METADATA_KEY_ARTIST) ?: "Sistem Hazır"
        val dur = metadata?.getLong(MediaMetadata.METADATA_KEY_DURATION) ?: 0L
        
        // Try multiple metadata keys for album art
        val art = metadata?.getBitmap(MediaMetadata.METADATA_KEY_ALBUM_ART)
            ?: metadata?.getBitmap(MediaMetadata.METADATA_KEY_ART)
            ?: metadata?.getBitmap(MediaMetadata.METADATA_KEY_DISPLAY_ICON)
            
        Log.d("OmodaMedia", "Metadata Güncellendi: $title - $artist, Art: ${art != null}")
            
        _mediaState.value = _mediaState.value.copy(
            title = title, 
            artist = artist, 
            duration = dur,
            albumArt = art
        )
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
            activeController?.unregisterCallback(mediaCallback)
        } catch (e: Exception) {}
        handler.removeCallbacks(progressUpdater)
        super.onCleared()
    }
}
