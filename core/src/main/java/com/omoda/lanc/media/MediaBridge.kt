package com.omoda.lanc.media

import android.graphics.Bitmap
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

object MediaBridge {
    data class MediaInfo(
        val title: String = "",
        val artist: String = "",
        val pkg: String = "",
        val isPlaying: Boolean = false,
        val albumArt: Bitmap? = null,
        val queue: List<String> = emptyList()
    )

    private val _mediaState = MutableStateFlow(MediaInfo())
    val mediaState: StateFlow<MediaInfo> = _mediaState

    fun updateMedia(title: String, artist: String, pkg: String, isPlaying: Boolean = false, albumArt: Bitmap? = null, queue: List<String> = emptyList()) {
        _mediaState.value = MediaInfo(title, artist, pkg, isPlaying, albumArt, queue)
    }

}

