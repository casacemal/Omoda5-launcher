package com.hermesandroid.bridge.server

import android.util.Log
import com.omoda.lanc.core.LoggerProvider
import com.hermesandroid.bridge.executor.ActionExecutor
import com.google.gson.JsonObject

object CommandDispatcher {
    private const val TAG = "CommandDispatcher"

    suspend fun dispatch(
        method: String,
        path: String,
        params: JsonObject,
        body: JsonObject,
        authenticated: Boolean
    ): Pair<Any, Int> {
        if (!authenticated) return mapOf("error" to "Unauthorized") to 401
        
        return try {
            val result = when (path.removePrefix("/")) {
                "control/vehicle" -> {
                    val action = body.get("action")?.asString ?: ""
                    val value = body.get("value")?.asString ?: ""
                    LoggerProvider.log("AI Komutu: $action -> $value")
                    ActionExecutor.tapText(action)
                }
                "speak" -> {
                    val text = body.get("text")?.asString ?: ""
                    ActionExecutor.speak(text)
                }
                "stt" -> {
                    ActionExecutor.stt()
                }
                else -> {
                    when (path.removePrefix("/")) {
                        "tap" -> ActionExecutor.tap(params.get("x")?.asInt, params.get("y")?.asInt, params.get("nodeId")?.asString)
                        "swipe" -> ActionExecutor.swipe(body.get("direction")?.asString ?: "up")
                        "open_app" -> ActionExecutor.openApp(body.get("packageName")?.asString ?: "")
                        else -> mapOf("error" to "Path not found: $path")
                    }
                }
            }
            result to 200
        } catch (e: Exception) {
            mapOf("error" to e.message) to 500
        }
    }
}
