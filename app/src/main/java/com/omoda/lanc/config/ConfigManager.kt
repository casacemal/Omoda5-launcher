package com.omoda.lanc.config

import android.content.Context
import com.google.gson.Gson
import java.io.File

class ConfigManager(val context: Context) {
    private val gson = Gson()
    private val configFile = File(context.filesDir, "app_config.json")

    fun loadConfig(): AppConfig {
        return if (configFile.exists()) {
            try {
                gson.fromJson(configFile.readText(), AppConfig::class.java) ?: AppConfig()
            } catch (e: Exception) {
                AppConfig()
            }
        } else {
            AppConfig()
        }
    }

    fun saveConfig(config: AppConfig) {
        try {
            configFile.writeText(gson.toJson(config))
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }
}
