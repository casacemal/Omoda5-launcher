package com.omoda.lanc.overlay

import android.content.Context
import android.content.Intent
import android.graphics.Color
import android.graphics.PixelFormat
import android.util.Log
import android.view.Gravity
import android.view.WindowManager
import androidx.compose.ui.platform.ComposeView
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.LifecycleOwner
import androidx.lifecycle.LifecycleRegistry
import androidx.lifecycle.ViewModelStore
import androidx.lifecycle.ViewModelStoreOwner
import androidx.lifecycle.setViewTreeLifecycleOwner
import androidx.lifecycle.setViewTreeViewModelStoreOwner
import androidx.savedstate.SavedStateRegistry
import androidx.savedstate.SavedStateRegistryController
import androidx.savedstate.SavedStateRegistryOwner
import androidx.savedstate.setViewTreeSavedStateRegistryOwner
import com.omoda.lanc.core.*
import com.omoda.lanc.ui.theme.AppTheme
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class OverlayManager(private val context: Context) : LifecycleOwner, ViewModelStoreOwner, SavedStateRegistryOwner {
    private val wm = context.getSystemService(Context.WINDOW_SERVICE) as WindowManager
    private var composeView: ComposeView? = null
    private val serviceScope = CoroutineScope(SupervisorJob() + Dispatchers.Main)

    private val lifecycleRegistry = LifecycleRegistry(this)
    private val _viewModelStore = ViewModelStore()
    private val savedStateRegistryController = SavedStateRegistryController.create(this)

    override val lifecycle: Lifecycle = lifecycleRegistry
    override val viewModelStore: ViewModelStore = _viewModelStore
    override val savedStateRegistry: SavedStateRegistry = savedStateRegistryController.savedStateRegistry

    init {
        savedStateRegistryController.performRestore(null)
        lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_CREATE)
        observeEvents()
    }

    private fun observeEvents() {
        serviceScope.launch {
            EventBus.events.collectLatest { event ->
                when (event) {
                    is Event.UIEvent.ShowOverlay -> show()
                    is Event.UIEvent.HideOverlay -> hide()
                    is Event.UIEvent.UpdateOverlayState -> updateState(event.text, false)
                    is Event.UIEvent.UpdateOverlayAmplitude -> updateAmplitude(event.amplitude)
                    else -> {}
                }
            }
        }
    }

    fun show() {
        serviceScope.launch(Dispatchers.Main) {
            if (composeView != null) return@launch
            
            val windowType = if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
                WindowManager.LayoutParams.TYPE_APPLICATION_OVERLAY
            } else {
                @Suppress("DEPRECATION")
                WindowManager.LayoutParams.TYPE_PHONE
            }

            val params = WindowManager.LayoutParams(
                WindowManager.LayoutParams.WRAP_CONTENT,
                WindowManager.LayoutParams.WRAP_CONTENT,
                windowType,
                WindowManager.LayoutParams.FLAG_NOT_TOUCH_MODAL or 
                WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH or
                WindowManager.LayoutParams.FLAG_LAYOUT_IN_SCREEN or
                WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE,
                PixelFormat.TRANSLUCENT
            ).apply { 
                gravity = Gravity.CENTER
                x = 0
                y = 0 
            }

            try {
                composeView = ComposeView(context).apply {
                    setViewTreeLifecycleOwner(this@OverlayManager)
                    setViewTreeViewModelStoreOwner(this@OverlayManager)
                    setViewTreeSavedStateRegistryOwner(this@OverlayManager)
                    
                    setContent {
                        AppTheme {
                            AssistantOverlayUI(
                                onClose = { hide() },
                                onStop = { 
                                    context.sendBroadcast(Intent("com.omoda.assistant.STOP_LISTENING"))
                                }
                            )
                        }
                    }
                }

                lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_START)
                lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_RESUME)
                
                wm.addView(composeView, params)
            } catch (e: Exception) {
                LoggerProvider.log("Overlay Hatası: ${e.message}")
                composeView = null
            }
        }
    }

    fun updateState(text: String, isListening: Boolean) {
        show()
        GlobalState.assistantResponse.value = text
        GlobalState.isListening.value = isListening
    }

    fun updateAmplitude(amp: Int) {
    }

    fun hide() {
        serviceScope.launch(Dispatchers.Main) {
            composeView?.let { 
                try {
                    lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_PAUSE)
                    lifecycleRegistry.handleLifecycleEvent(Lifecycle.Event.ON_STOP)
                    wm.removeView(it)
                } catch (e: Exception) {
                    LoggerProvider.log("Overlay Kaldırma Hatası: ${e.message}")
                }
            }
            composeView = null
        }
    }
}
