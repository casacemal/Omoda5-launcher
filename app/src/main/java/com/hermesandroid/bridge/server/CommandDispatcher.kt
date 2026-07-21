package com.hermesandroid.bridge.server

import android.util.Log
import com.omoda.lanc.core.LoggerProvider
import com.hermesandroid.bridge.executor.ActionExecutor as LowLevelExecutor
import com.omoda.lanc.core.ActionExecutor as HighLevelExecutor
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.media.MediaBridge
import com.google.gson.JsonObject
import com.google.gson.Gson

object CommandDispatcher {
    private const val TAG = "CommandDispatcher"
    private val gson = Gson()

    suspend fun dispatch(
        path: String,
        params: JsonObject,
        body: JsonObject,
        authenticated: Boolean
    ): Pair<Any, Int> {
        if (!authenticated) return mapOf("error" to "Unauthorized") to 401
        
        return try {
            val result: Any = when (path.removePrefix("/")) {
                "control/vehicle" -> {
                    val action = body.get("action")?.asString ?: ""
                    val value = body.get("value")?.asString ?: ""
                    LoggerProvider.log("AI Komutu: $action -> $value")
                    
                    val context = com.omoda.lanc.AssistantApplication.instance?.applicationContext
                    if (context != null) {
                        val executor = HighLevelExecutor(context)
                        executor.execute(action, body.toString())
                    } else {
                        mapOf("error" to "Context not available")
                    }
                }
                "state" -> {
                    val state = VehicleController.instance?.getVehicleState()
                    val media = MediaBridge.mediaState.value
                    mapOf(
                        "vehicle" to state,
                        "media" to mapOf(
                            "title" to media.title,
                            "artist" to media.artist,
                            "isPlaying" to media.isPlaying,
                            "queue" to media.queue
                        )
                    )
                }
                "speak" -> {
                    val text = body.get("text")?.asString ?: ""
                    LowLevelExecutor.speak(text)
                }
                "stt" -> {
                    LowLevelExecutor.stt()
                }
                "tap" -> LowLevelExecutor.tap(params.get("x")?.asInt, params.get("y")?.asInt, params.get("nodeId")?.asString)
                "swipe" -> LowLevelExecutor.swipe(body.get("direction")?.asString ?: "up")
                "open_app" -> LowLevelExecutor.openApp(body.get("packageName")?.asString ?: "")
                else -> mapOf("error" to "Path not found: $path")
            }
            result to 200
        } catch (e: Exception) {
            Log.e(TAG, "Dispatch hatası ($path):", e)
            mapOf("error" to e.message) to 500
        }
    }
}
