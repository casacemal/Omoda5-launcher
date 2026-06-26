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
                val encryptedText = configFile.readText()
                val plainText = decrypt(encryptedText)
                gson.fromJson(plainText, AppConfig::class.java) ?: AppConfig()
            } catch (e: Exception) {
                AppConfig()
            }
        } else {
            AppConfig()
        }
    }

    fun saveConfig(config: AppConfig) {
        try {
            val plainText = gson.toJson(config)
            val encryptedText = encrypt(plainText)
            configFile.writeText(encryptedText)
        } catch (e: Exception) {
            e.printStackTrace()
        }
    }

    // Basit XOR tabanlı şifreleme ve Base64 (Kaynak: omoda_v2 güvenlik protokolü)
    private fun encrypt(input: String): String {
        val key = "omoda4078"
        val output = StringBuilder()
        for (i in input.indices) {
            output.append((input[i].code xor key[i % key.length].code).toChar())
        }
        return android.util.Base64.encodeToString(output.toString().toByteArray(), android.util.Base64.DEFAULT)
    }

    private fun decrypt(input: String): String {
        val decoded = String(android.util.Base64.decode(input, android.util.Base64.DEFAULT))
        val key = "omoda4078"
        val output = StringBuilder()
        for (i in decoded.indices) {
            output.append((decoded[i].code xor key[i % key.length].code).toChar())
        }
        return output.toString()
    }
}
