package com.omoda5.launcher.multitask

import android.content.Intent
import android.graphics.Color
import android.graphics.Typeface
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Bundle
import android.util.Log
import android.view.Gravity
import android.view.MotionEvent
import android.view.View
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import com.omoda5.launcher.multitask.PureKotlinUI.createRootContainer

/**
 * PROFESYONEL MULTI-TASK KONTEYNER (v6.5.3)
 * AAOS 10 (API 29) Mimari Standartlarına Uygun.
 * Sol: Gelişmiş Medya Kontrolü | Sağ: Dinamik Harita Alanı
 */
class MultiTaskActivity : AppCompatActivity() {

    private lateinit var tvSongTitle: TextView
    private lateinit var tvArtist: TextView
    private lateinit var btnPlayPause: Button
    private lateinit var divider: View
    private lateinit var leftPanel: LinearLayout
    private lateinit var rightPanel: FrameLayout
    
    private var mediaController: MediaController? = null
    private var currentSplitRatio = 0.45f // Sürüş güvenliği için optimize edildi

    private val mediaCallback = object : MediaController.Callback() {
        override fun onMetadataChanged(metadata: MediaMetadata?) { updateMetadata(metadata) }
        override fun onPlaybackStateChanged(state: PlaybackState?) { updatePlaybackState(state) }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Saf Kotlin UI Motoru (1920x720, 235px Bar Exclusion)
        val root = createRootContainer(this)
        val mainLayout = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }

        // 🎵 Medya Paneli (Sol)
        leftPanel = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setBackgroundColor(Color.parseColor("#0F0F0F"))
            setPadding(50, 40, 50, 40)
        }

        tvSongTitle = TextView(this).apply {
            text = "Medya Dinleniyor..."
            setTextColor(Color.WHITE)
            textSize = 32f // Sürüş güvenliği için büyük font
            typeface = Typeface.DEFAULT_BOLD
            gravity = Gravity.CENTER
        }
        
        tvArtist = TextView(this).apply {
            text = "Sanatçı Bilgisi"
            setTextColor(Color.parseColor("#888888"))
            textSize = 22f
            setPadding(0, 15, 0, 80)
            gravity = Gravity.CENTER
        }

        val controls = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            gravity = Gravity.CENTER
        }

        // Devasa Kontrol Butonları
        val btnStyle = { btn: Button -> 
            btn.textSize = 35f
            btn.setTextColor(Color.WHITE)
            btn.setBackgroundColor(Color.TRANSPARENT)
            btn.layoutParams = LinearLayout.LayoutParams(180, 180).apply { setMargins(20, 0, 20, 0) }
        }

        val btnPrev = Button(this).apply { text = "⏮"; btnStyle(this); setOnClickListener { mediaController?.transportControls?.skipToPrevious() } }
        btnPlayPause = Button(this).apply { text = "▶"; btnStyle(this); setOnClickListener { togglePlayback() } }
        val btnNext = Button(this).apply { text = "⏭"; btnStyle(this); setOnClickListener { mediaController?.transportControls?.skipToNext() } }

        controls.addView(btnPrev)
        controls.addView(btnPlayPause)
        controls.addView(btnNext)

        leftPanel.addView(tvSongTitle)
        leftPanel.addView(tvArtist)
        leftPanel.addView(controls)

        // 📏 Akıllı Ayırıcı (Divider)
        divider = View(this).apply {
            layoutParams = LinearLayout.LayoutParams(10, LinearLayout.LayoutParams.MATCH_PARENT)
            setBackgroundColor(Color.parseColor(PureKotlinUI.COLOR_PRIMARY))
            setOnTouchListener { _, event ->
                if (event.action == MotionEvent.ACTION_MOVE) {
                    val newRatio = (event.rawX - 235) / (1920 - 235)
                    updateSplitRatio(newRatio.coerceIn(0.25f, 0.75f))
                }
                true
            }
        }

        // 🗺️ Harita Konteynırı (Sağ)
        rightPanel = FrameLayout(this).apply {
            setBackgroundColor(Color.BLACK)
            // Gelecek v6.5.4'te buraya MapsActivity entegrasyonu gelecek
            val placeholder = TextView(this@MultiTaskActivity).apply {
                text = "HARITA ALANI\n(Multi-Task Modu Aktif)"
                setTextColor(Color.DKGRAY)
                textSize = 20f
                gravity = Gravity.CENTER
            }
            addView(placeholder)
        }

        mainLayout.addView(leftPanel)
        mainLayout.addView(divider)
        mainLayout.addView(rightPanel)
        root.addView(mainLayout)

        setContentView(root)
        updateSplitRatio(currentSplitRatio)
        setupMediaSession()
    }

    private fun updateSplitRatio(ratio: Float) {
        currentSplitRatio = ratio
        leftPanel.layoutParams = (leftPanel.layoutParams as LinearLayout.LayoutParams).apply { weight = ratio }
        rightPanel.layoutParams = (rightPanel.layoutParams as LinearLayout.LayoutParams).apply { weight = 1.0f - ratio }
    }

    private fun setupMediaSession() {
        val sessionManager = getSystemService(MEDIA_SESSION_SERVICE) as MediaSessionManager
        try {
            val controllers = sessionManager.getActiveSessions(null)
            if (controllers.isNotEmpty()) {
                mediaController = controllers[0]
                mediaController?.registerCallback(mediaCallback)
                updateMetadata(mediaController?.metadata)
                updatePlaybackState(mediaController?.playbackState)
            }
        } catch (e: Exception) { Log.e("MultiTask", "MediaSession Hatası: ${e.message}") }
    }

    private fun updateMetadata(metadata: MediaMetadata?) {
        tvSongTitle.text = metadata?.getString(MediaMetadata.METADATA_KEY_TITLE) ?: "Müzik Bekleniyor..."
        tvArtist.text = metadata?.getString(MediaMetadata.METADATA_KEY_ARTIST) ?: "Sanatçı Bilgisi"
    }

    private fun updatePlaybackState(state: PlaybackState?) {
        val isPlaying = state?.state == PlaybackState.STATE_PLAYING
        btnPlayPause.text = if (isPlaying) "⏸" else "▶"
    }

    private fun togglePlayback() {
        mediaController?.let { 
            if (it.playbackState?.state == PlaybackState.STATE_PLAYING) it.transportControls.pause() else it.transportControls.play() 
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        mediaController?.unregisterCallback(mediaCallback)
    }
}
