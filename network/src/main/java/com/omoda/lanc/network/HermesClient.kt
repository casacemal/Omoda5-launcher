package com.omoda.lanc.network

import android.util.Log
import com.omoda.lanc.core.GlobalState
import okhttp3.Call
import okhttp3.Callback
import okhttp3.MediaType.Companion.toMediaTypeOrNull
import okhttp3.MultipartBody
import okhttp3.Request
import okhttp3.RequestBody.Companion.asRequestBody
import okhttp3.RequestBody.Companion.toRequestBody
import okhttp3.Response
import org.json.JSONArray
import org.json.JSONObject
import java.io.File
import java.io.IOException

class HermesClient(private val baseUrl: String, private val apiKey: String) {
    private val TAG = "HermesClient"
    private val client = NetworkModule.robustClient

    fun checkConnection(onResult: (Boolean) -> Unit) {
        val request = Request.Builder()
            .url("${baseUrl.removeSuffix("/")}/models")
            .addHeader("Authorization", "Bearer $apiKey")
            .get()
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { onResult(false) }
            override fun onResponse(call: Call, response: Response) {
                response.use { resp ->
                    onResult(resp.isSuccessful)
                }
            }
        })
    }

    fun transcribe(audioFile: File, onResult: (String?) -> Unit) {
        val targetUrl = "${baseUrl.removeSuffix("/")}/audio/transcriptions"
        val requestBody = MultipartBody.Builder()
            .setType(MultipartBody.FORM)
            .addFormDataPart("file", audioFile.name, audioFile.asRequestBody("audio/wav".toMediaTypeOrNull()))
            .addFormDataPart("model", GlobalState.STT_MODEL)
            .addFormDataPart("language", "tr")
            .build()

        val request = Request.Builder()
            .url(targetUrl)
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .post(requestBody)
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { onResult(null) }
            override fun onResponse(call: Call, response: Response) {
                response.use { resp ->
                    if (resp.isSuccessful) {
                        try {
                            val text = JSONObject(resp.body?.string() ?: "{}").optString("text")
                            onResult(text)
                        } catch (e: Exception) {
                            Log.e(TAG, "transcribe JSON error: ${e.message}")
                            onResult(null)
                        }
                    } else onResult(null)
                }
            }
        })
    }

    /**
     * Hermes API: List active sessions.
     */
    fun listSessions(onResult: (JSONArray?) -> Unit) {
        val url = baseUrl.replace("/v1", "/api") + "/sessions"
        val request = Request.Builder()
            .url(url)
            .addHeader("Authorization", "Bearer $apiKey")
            .get()
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { onResult(null) }
            override fun onResponse(call: Call, response: Response) {
                response.use { resp ->
                    if (resp.isSuccessful) {
                        try {
                            val data = JSONObject(resp.body?.string() ?: "{}").optJSONArray("data")
                            onResult(data)
                        } catch (e: Exception) {
                            Log.e(TAG, "listSessions JSON error: ${e.message}")
                            onResult(null)
                        }
                    } else onResult(null)
                }
            }
        })
    }

    /**
     * Hermes API: Create a new session.
     */
    fun createSession(name: String, onResult: (String?) -> Unit) {
        val url = baseUrl.replace("/v1", "/api") + "/sessions"
        val body = JSONObject().apply { put("name", name) }
        val request = Request.Builder()
            .url(url)
            .addHeader("Authorization", "Bearer $apiKey")
            .post(body.toString().toRequestBody("application/json".toMediaTypeOrNull()))
            .build()

        client.newCall(request).enqueue(object : Callback {
            override fun onFailure(call: Call, e: IOException) { onResult(null) }
            override fun onResponse(call: Call, response: Response) {
                response.use { resp ->
                    if (resp.isSuccessful || resp.code == 201) {
                        try {
                            val id = JSONObject(resp.body?.string() ?: "{}")
                                .optJSONObject("session")?.optString("id")
                            onResult(id)
                        } catch (e: Exception) {
                            Log.e(TAG, "createSession JSON error: ${e.message}")
                            onResult(null)
                        }
                    } else onResult(null)
                }
            }
        })
    }

    /**
     * Hermes API: Session-based chat stream.
     */
    fun getSessionChatRequest(sessionId: String, message: String): Request {
        val url = baseUrl.replace("/v1", "/api") + "/sessions/$sessionId/chat/stream"
        val body = JSONObject().apply {
            put("message", message)
            put("stream", true)
        }
        return Request.Builder()
            .url(url)
            .addHeader("Authorization", "Bearer $apiKey")
            .addHeader("X-Hermes-Session-Key", GlobalState.sessionKey.value)
            .post(body.toString().toRequestBody("application/json".toMediaTypeOrNull()))
            .build()
    }
}
