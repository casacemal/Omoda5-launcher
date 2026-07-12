package com.omoda.lanc.tts

import android.content.Context
import android.util.Log
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.voice.SherpaOnnxSpeechManager

class AppTtsManager(private val context: Context) : TTSManager {
    private val TAG = "App-TTSManager"
    
    private val edgeManager by lazy { EdgeOnlineTTSManager(context) }
    private val nineRouterManager by lazy { NineRouterTTSManager(context) }
    private val nativeManager by lazy { AndroidSystemTtsManager(context) }
    private val sherpaManager by lazy { SherpaOnnxSpeechManager(context) }

    override fun speak(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        val selectedEngine = GlobalState.ttsEngine.value
        Log.i(TAG, "Speak: $selectedEngine -> $text")

        when (selectedEngine) {
            "EDGE" -> trySpeakEdge(text, onComplete, onError)
            "9ROUTER" -> trySpeakNineRouter(text, onComplete, onError)
            "SHERPA" -> sherpaManager.speak(text, onComplete, onError)
            "LOCAL", "NATIVE" -> nativeManager.speak(text, onComplete, onError)
            else -> trySpeakEdge(text, onComplete, onError)
        }
    }

    private fun trySpeakEdge(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        edgeManager.speak(text, onComplete, onError = {
            trySpeakNineRouter(text, onComplete, onError)
        })
    }

    private fun trySpeakNineRouter(text: String, onComplete: (() -> Unit)?, onError: (() -> Unit)?) {
        nineRouterManager.speak(text, onComplete, onError = {
            sherpaManager.speak(text, onComplete, onError = {
                nativeManager.speak(text, onComplete, onError)
            })
        })
    }

    override fun stop() {
        edgeManager.stop()
        nineRouterManager.stop()
        nativeManager.stop()
        sherpaManager.stop()
    }

    override fun shutdown() {
        edgeManager.shutdown()
        nineRouterManager.shutdown()
        nativeManager.shutdown()
        sherpaManager.shutdown()
    }

    override fun isSpeaking(): Boolean = edgeManager.isSpeaking() || nineRouterManager.isSpeaking() || 
                                          nativeManager.isSpeaking() || sherpaManager.isSpeaking()
}
