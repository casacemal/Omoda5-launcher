package com.omoda.lanc

import android.content.Context
import android.content.SharedPreferences

class SettingsManager(context: Context) {
    private val prefs: SharedPreferences = context.getSharedPreferences("asistan_prefs", Context.MODE_PRIVATE)

    var sttEngine: String
        get() = prefs.getString("stt_engine", "VOSK") ?: "VOSK"
        set(value) = prefs.edit().putString("stt_engine", value).apply()

    var ttsEngine: String
        get() = prefs.getString("tts_engine", "LOCAL") ?: "LOCAL"
        set(value) = prefs.edit().putString("tts_engine", value).apply()

    var isSttBroadcastEnabled: Boolean
        get() = prefs.getBoolean("stt_broadcast_enabled", true)
        set(value) = prefs.edit().putBoolean("stt_broadcast_enabled", value).apply()

    var isFloatingUiEnabled: Boolean
        get() = prefs.getBoolean("floating_ui_enabled", true)
        set(value) = prefs.edit().putBoolean("floating_ui_enabled", value).apply()

    var isTtsReadEnabled: Boolean
        get() = prefs.getBoolean("tts_read_enabled", true)
        set(value) = prefs.edit().putBoolean("tts_read_enabled", value).apply()

    var sttUrl: String
        get() = prefs.getString("stt_url", "https://api.openai.com/v1/audio/transcriptions") ?: ""
        set(value) = prefs.edit().putString("stt_url", value).apply()

    var sttApiKey: String
        get() = prefs.getString("stt_api_key", "") ?: ""
        set(value) = prefs.edit().putString("stt_api_key", value).apply()

    fun getAppClickCount(packageName: String): Int {
        return prefs.getInt("click_count_$packageName", 0)
    }

    fun incrementAppClickCount(packageName: String) {
        val current = getAppClickCount(packageName)
        prefs.edit().putInt("click_count_$packageName", current + 1).apply()
    }

    var ttsUrl: String
        get() = prefs.getString("tts_url", "https://api.openai.com/v1/chat/completions") ?: ""
        set(value) = prefs.edit().putString("tts_url", value).apply()

    var ttsApiKey: String
        get() = prefs.getString("tts_api_key", "") ?: ""
        set(value) = prefs.edit().putString("tts_api_key", value).apply()

    var isAutoTasksEnabled: Boolean
        get() = prefs.getBoolean("auto_tasks_enabled", true)
        set(value) = prefs.edit().putBoolean("auto_tasks_enabled", value).apply()

    var wallpaperIdx: Int
        get() = prefs.getInt("wallpaper_idx", 0)
        set(value) = prefs.edit().putInt("wallpaper_idx", value).apply()
}
