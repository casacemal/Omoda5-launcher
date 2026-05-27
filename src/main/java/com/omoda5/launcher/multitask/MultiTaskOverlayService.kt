package com.omoda5.launcher.multitask

import android.app.Service
import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.graphics.PixelFormat
import android.graphics.Typeface
import android.media.MediaMetadata
import android.media.session.MediaController
import android.media.session.MediaSessionManager
import android.media.session.PlaybackState
import android.os.Build
import android.os.IBinder
import android.view.Gravity
import android.view.View
import android.view.WindowManager
import android.widget.Button
import android.widget.LinearLayout
import android.widget.TextView

class MultiTaskOverlayService : Service() {

    private var windowManager: WindowManager? = null
    private var overlayView: View? = null
    
    private lateinit var tvSongTitle: TextView
    private lateinit var tvArtist: TextView
    private lateinit var btnPlayPause: Button
    private var mediaController: MediaController? = null

    private val mediaCallback = object : MediaController.Callback() {
        override fun onMetadataChanged(metadata: MediaMetadata?) {
            updateMetadata(metadata)
        }
        override fun onPlaybackStateChanged(state: PlaybackState?) {
            updatePlaybackState(state)
        }
    }

    override fun onBind(intent: Intent?): IBinder? = null

    override fun onCreate() {
        super.onCreate()
        windowManager = getSystemService(Context.WINDOW_SERVICE) as WindowManager
        showOverlay()
        setupMediaSession()
    }

    private fun showOverlay() {
        val context = this
        val layout = LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setBackgroundColor(Color.parseColor("#EE111111")) // Yarı saydam koyu arka plan
            setPadding(30, 30, 30, 30)
            
            tvSongTitle = TextView(context).apply {
                text = "Müzik Bekleniyor..."
                setTextColor(Color.WHITE)
                textSize = 22f
                typeface = Typeface.DEFAULT_BOLD
                gravity = Gravity.CENTER
            }
            
            tvArtist = TextView(context).apply {
                text = "Sanatçı Bilgisi"
                setTextColor(Color.GRAY)
                textSize = 16f
                gravity = Gravity.CENTER
                setPadding(0, 5, 0, 30)
            }

            btnPlayPause = Button(context).apply {
                text = "OYNAT / DURDUR"
                setOnClickListener { togglePlayback() }
            }
            
            val btnClose = Button(context).apply {
                text = "KAPAT"
                setBackgroundColor(Color.RED)
                setTextColor(Color.WHITE)
                setOnClickListener { stopSelf() }
            }

            addView(tvSongTitle)
            addView(tvArtist)
            addView(btnPlayPause)
            addView(View(context).apply { layoutParams = LinearLayout.LayoutParams(1, 40) })
            addView(btnClose)
        }

        overlayView = layout

        val params = WindowManager.LayoutParams(
            (1920 * 0.4).toInt(), // Ekranın %40'ı
            WindowManager.LayoutParams.MATCH_PARENT,
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O)
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
            else
                WindowManager.LayoutParams.TYPE_PHONE,
            WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE or
                    WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN or
                    WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH,
            PixelFormat.TRANSLUCENT
        ).apply {
            gravity = Gravity.START or Gravity.TOP
            x = 235 // Sol barın bittiği yer
            y = 0
        }

        windowManager?.addView(overlayView, params)
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
        } catch (e: Exception) {
            tvSongTitle.text = "İzin Gerekli"
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

    override fun onDestroy() {
        super.onDestroy()
        overlayView?.let { windowManager?.removeView(it) }
        mediaController?.unregisterCallback(mediaCallback)
    }
}
