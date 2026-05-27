package com.omoda5.launcher.multitask

import android.graphics.Color
import android.graphics.Typeface
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Bundle
import android.util.Log
import android.view.Gravity
import android.view.KeyEvent
import android.widget.GridLayout
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.omoda5.launcher.multitask.PureKotlinUI.createRootContainer

/**
 * PROFESYONEL TUŞ TAKIMI VE MEDYA ANALİZ MERKEZİ (v6.5.3)
 * AAOS 10 Sürüş Güvenliği Standartlarına Uygundur.
 */
class KeypadPureActivity : AppCompatActivity() {

    private lateinit var tvLastKeyCode: TextView
    private lateinit var tvKeyName: TextView
    private lateinit var tvMediaInfo: TextView
    private val keyViews = mutableMapOf<Int, TextView>()
    
    private var mediaController: MediaController? = null

    private val mediaCallback = object : MediaController.Callback() {
        override fun onMetadataChanged(metadata: MediaMetadata?) { updateMediaDisplay(metadata) }
        override fun onPlaybackStateChanged(state: PlaybackState?) { updateMediaDisplay(mediaController?.metadata) }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        // Saf Kotlin UI Motoru (1920x720, 235px Bar Exclusion)
        val root = createRootContainer(this)
        val content = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_HORIZONTAL
            setPadding(80, 40, 80, 40)
        }

        val header = TextView(this).apply {
            text = "DONANIMSAL TUŞ VE MEDYA KONTROLÜ"
            setTextColor(Color.WHITE)
            textSize = 32f
            typeface = Typeface.DEFAULT_BOLD
            setPadding(0, 0, 0, 50)
        }

        // 🎵 Canlı Medya Kartı (Genişletilmiş)
        val mediaCard = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setBackgroundColor(Color.parseColor("#0D2A30"))
            setPadding(40, 25, 40, 25)
            layoutParams = LinearLayout.LayoutParams(1100, 150).apply { setMargins(0, 0, 0, 50) }
        }

        tvMediaInfo = TextView(this).apply {
            text = "Aktif Medya Aranıyor..."
            setTextColor(Color.parseColor(PureKotlinUI.COLOR_PRIMARY))
            textSize = 24f // Daha büyük font
            typeface = Typeface.DEFAULT_BOLD
            gravity = Gravity.CENTER
        }
        mediaCard.addView(tvMediaInfo)

        // ⌨️ Tuş Durum Kartı
        val statusCard = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
            setBackgroundColor(Color.parseColor("#1A1A1A"))
            setPadding(40, 20, 40, 20)
            layoutParams = LinearLayout.LayoutParams(900, 140).apply { setMargins(0, 0, 0, 50) }
        }

        tvLastKeyCode = TextView(this).apply {
            text = "ID: --"
            setTextColor(Color.parseColor(PureKotlinUI.COLOR_PRIMARY))
            textSize = 38f
            typeface = Typeface.MONOSPACE
            setPadding(0, 0, 40, 0)
        }

        tvKeyName = TextView(this).apply {
            text = "TUŞA BASIN..."
            setTextColor(Color.WHITE)
            textSize = 28f
            typeface = Typeface.DEFAULT_BOLD
        }

        statusCard.addView(tvLastKeyCode)
        statusCard.addView(tvKeyName)

        // 🔘 Görsel Tuş Takımı (6 Sütunlu Matris)
        val grid = GridLayout(this).apply {
            columnCount = 6
            alignmentMode = GridLayout.ALIGN_BOUNDS
        }

        val importantKeys = mapOf(
            3 to "HOME", 4 to "BACK", 24 to "VOL+", 25 to "VOL-", 294 to "STAR", 82 to "MENU",
            19 to "UP", 20 to "DOWN", 21 to "LEFT", 22 to "RIGHT", 66 to "ENTER", 85 to "PLAY",
            87 to "NEXT", 88 to "PREV", 26 to "PWR", 65 to "SEARCH", 27 to "CAM", 84 to "NAVI"
        )

        importantKeys.forEach { (code, name) ->
            val keyBox = TextView(this).apply {
                text = name
                gravity = Gravity.CENTER
                setTextColor(Color.GRAY)
                setBackgroundColor(Color.parseColor("#222222"))
                textSize = 14f
                typeface = Typeface.DEFAULT_BOLD
                layoutParams = GridLayout.LayoutParams().apply {
                    width = 160
                    height = 90
                    setMargins(10, 10, 10, 10)
                }
            }
            keyViews[code] = keyBox
            grid.addView(keyBox)
        }

        content.addView(header)
        content.addView(mediaCard)
        content.addView(statusCard)
        content.addView(grid)
        root.addView(content)

        setContentView(root)
        setupMediaSession()
    }

    private fun setupMediaSession() {
        val sessionManager = getSystemService(MEDIA_SESSION_SERVICE) as MediaSessionManager
        try {
            val controllers = sessionManager.getActiveSessions(null)
            if (controllers.isNotEmpty()) {
                mediaController = controllers[0]
                mediaController?.registerCallback(mediaCallback)
                updateMediaDisplay(mediaController?.metadata)
            }
        } catch (e: Exception) { Log.e("Keypad", "Medya hatası: ${e.message}") }
    }

    private fun updateMediaDisplay(metadata: MediaMetadata?) {
        val title = metadata?.getString(MediaMetadata.METADATA_KEY_TITLE) ?: "Medya Çalmıyor"
        val artist = metadata?.getString(MediaMetadata.METADATA_KEY_ARTIST) ?: "Bilinmeyen Sanatçı"
        tvMediaInfo.text = "🎵 $title - $artist"
    }

    override fun onKeyDown(keyCode: Int, event: KeyEvent?): Boolean {
        tvLastKeyCode.text = "ID: $keyCode"
        tvKeyName.text = nameForKeyCode(keyCode)
        
        keyViews[keyCode]?.apply {
            setBackgroundColor(Color.parseColor(PureKotlinUI.COLOR_PRIMARY))
            setTextColor(Color.BLACK)
        }

        // Global Medya Kontrolü
        when (keyCode) {
            294, 85 -> togglePlayback()
            22, 87 -> nextTrack()
            21, 88 -> prevTrack()
        }
        return true
    }

    private fun nameForKeyCode(code: Int): String {
        return when(code) {
            294 -> "YILDIZ (CUSTOM)"
            else -> KeyEvent.keyCodeToString(code).replace("KEYCODE_", "")
        }
    }

    private fun togglePlayback() {
        mediaController?.let { 
            if (it.playbackState?.state == PlaybackState.STATE_PLAYING) it.transportControls.pause() else it.transportControls.play()
        }
    }

    private fun nextTrack() = mediaController?.transportControls?.skipToNext()
    private fun prevTrack() = mediaController?.transportControls?.skipToPrevious()

    override fun onKeyUp(keyCode: Int, event: KeyEvent?): Boolean {
        keyViews[keyCode]?.apply {
            setBackgroundColor(Color.parseColor("#222222"))
            setTextColor(Color.GRAY)
        }
        return true
    }

    override fun onDestroy() {
        super.onDestroy()
        mediaController?.unregisterCallback(mediaCallback)
    }
}
