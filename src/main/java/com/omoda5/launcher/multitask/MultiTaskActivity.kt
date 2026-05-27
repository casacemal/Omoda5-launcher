package com.omoda5.launcher.multitask

import android.content.Intent
import android.graphics.Color
import android.graphics.Typeface
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Bundle
import android.view.Gravity
import android.widget.Button
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import com.omoda5.launcher.multitask.PureKotlinUI.createRootContainer

/**
 * MULTI-TASK KONTEYNER (SAF KOTLIN)
 * Google Maps ve Medya Paneli'ni yan yana tutan programatik Activity.
 */
class MultiTaskActivity : AppCompatActivity() {

    private lateinit var tvSongTitle: TextView
    private lateinit var tvArtist: TextView
    private lateinit var btnPlayPause: Button
    private var mediaController: MediaController? = null

    private val callback = object : MediaController.Callback() {
        override fun onMetadataChanged(metadata: MediaMetadata?) {
            updateMetadata(metadata)
        }
        override fun onPlaybackStateChanged(state: PlaybackState?) {
            updatePlaybackState(state)
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Root Container (SIFIR XML)
        val root = createRootContainer(this)
        
        val horizontalSplit = LinearLayout(this).apply {
            orientation = LinearLayout.HORIZONTAL
            layoutParams = FrameLayout.LayoutParams(FrameLayout.LayoutParams.MATCH_PARENT, FrameLayout.LayoutParams.MATCH_PARENT)
        }

        // Sol Panel: Medya Kontrol Test Ekranı (%40)
        val leftInfoPanel = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.MATCH_PARENT, 0.4f)
            setBackgroundColor(Color.parseColor("#111111"))
            setPadding(20, 20, 20, 20)
            
            tvSongTitle = TextView(this@MultiTaskActivity).apply {
                text = "Müzik Bekleniyor..."
                setTextColor(Color.WHITE)
                textSize = 24f
                typeface = Typeface.DEFAULT_BOLD
                gravity = Gravity.CENTER
            }
            
            tvArtist = TextView(this@MultiTaskActivity).apply {
                text = "Sanatçı Bilgisi"
                setTextColor(Color.GRAY)
                textSize = 18f
                gravity = Gravity.CENTER
                setPadding(0, 10, 0, 40)
            }

            btnPlayPause = Button(this@MultiTaskActivity).apply {
                text = "OYNAT / DURDUR"
                textSize = 16f
                setOnClickListener { togglePlayback() }
            }

            addView(tvSongTitle)
            addView(tvArtist)
            addView(btnPlayPause)
        }

        // Sağ Panel: Harita Alanı (%60)
        val rightMapContainer = FrameLayout(this).apply {
            layoutParams = LinearLayout.LayoutParams(0, LinearLayout.LayoutParams.MATCH_PARENT, 0.6f)
            setBackgroundColor(Color.BLACK)
            
            val mapPlaceholder = TextView(this@MultiTaskActivity).apply {
                text = "Google Maps Alanı\n(Adjacent Launch)"
                setTextColor(Color.DKGRAY)
                gravity = Gravity.CENTER
                textSize = 18f
            }
            addView(mapPlaceholder)
        }

        horizontalSplit.addView(leftInfoPanel)
        horizontalSplit.addView(rightMapContainer)
        root.addView(horizontalSplit)

        setContentView(root)
        
        setupMediaSession()
        launchMapsAdjacent()
    }

    private fun setupMediaSession() {
        val sessionManager = getSystemService(MEDIA_SESSION_SERVICE) as MediaSessionManager
        try {
            val controllers = sessionManager.getActiveSessions(null)
            if (controllers.isNotEmpty()) {
                mediaController = controllers[0]
                mediaController?.registerCallback(callback)
                updateMetadata(mediaController?.metadata)
                updatePlaybackState(mediaController?.playbackState)
            }
        } catch (e: Exception) {
            tvSongTitle.text = "Medya İzni Gerekli"
        }
    }

    private fun updateMetadata(metadata: MediaMetadata?) {
        tvSongTitle.text = metadata?.getString(MediaMetadata.METADATA_KEY_TITLE) ?: "Bilinmeyen Şarkı"
        tvArtist.text = metadata?.getString(MediaMetadata.METADATA_KEY_ARTIST) ?: "Bilinmeyen Sanatçı"
    }

    private fun updatePlaybackState(state: PlaybackState?) {
        val isPlaying = state?.state == PlaybackState.STATE_PLAYING
        btnPlayPause.text = if (isPlaying) "DURAKLAT" else "OYNAT"
    }

    private fun togglePlayback() {
        mediaController?.let { controller ->
            if (controller.playbackState?.state == PlaybackState.STATE_PLAYING) {
                controller.transportControls.pause()
            } else {
                controller.transportControls.play()
            }
        }
    }

    private fun launchMapsAdjacent() {
        val mapsIntent = packageManager.getLaunchIntentForPackage("com.google.android.apps.maps")
        if (mapsIntent != null) {
            mapsIntent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT)
            startActivity(mapsIntent)
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        mediaController?.unregisterCallback(callback)
    }
}
