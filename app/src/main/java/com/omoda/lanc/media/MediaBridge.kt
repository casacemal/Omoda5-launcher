package com.omoda.lanc.media

import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow

object MediaBridge {
    data class MediaInfo(
        val title: String = "",
        val artist: String = "",
        val pkg: String = ""
    )

    private val _mediaState = MutableStateFlow(MediaInfo())
    val mediaState: StateFlow<MediaInfo> = _mediaState

    fun updateMedia(title: String, artist: String, pkg: String) {
        _mediaState.value = MediaInfo(title, artist, pkg)
    }
}
