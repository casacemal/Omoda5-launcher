package com.omoda.lanc.config

import android.content.Context
import android.os.Environment
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
                if (plainText.isBlank()) {
                    android.util.Log.e("ConfigManager", "Decrypted config is blank")
                    return AppConfig()
                }
                gson.fromJson(plainText, AppConfig::class.java)?.sanitized() ?: AppConfig()
            } catch (e: Exception) {
                android.util.Log.e("ConfigManager", "Load config error: ${e.message}")
                AppConfig()
            }
        } else {
            android.util.Log.i("ConfigManager", "Config file not found, using defaults")
            AppConfig()
        }
    }

    fun saveConfig(config: AppConfig) {
        try {
            val plainText = gson.toJson(config.sanitized())
            val encryptedText = encrypt(plainText)
            configFile.writeText(encryptedText)
            android.util.Log.i("ConfigManager", "Config saved successfully")
        } catch (e: Exception) {
            android.util.Log.e("ConfigManager", "Save config error: ${e.message}")
            e.printStackTrace()
        }
    }

    private fun getPublicOmodaDir(): File {
        // SDCard/Omoda format (Legacy and Scoped Storage compatible if permission granted)
        val omodaDir = File(Environment.getExternalStorageDirectory(), "Omoda")
        if (!omodaDir.exists()) omodaDir.mkdirs()
        return omodaDir
    }

    fun backupConfig(): Boolean {
        return try {
            val targetFile = File(getPublicOmodaDir(), "config_backup.json")
            
            if (configFile.exists()) {
                configFile.copyTo(targetFile, overwrite = true)
                android.util.Log.i("ConfigManager", "Backup successful to ${targetFile.absolutePath}")
                true
            } else {
                android.util.Log.e("ConfigManager", "Source config file missing, creating one from current state")
                false
            }
        } catch (e: Exception) {
            android.util.Log.e("ConfigManager", "Backup failed: ${e.message}")
            // Fallback to app-specific external storage
            try {
                val backupFile = File(context.getExternalFilesDir(null), "config_backup.json")
                configFile.copyTo(backupFile, overwrite = true)
                true
            } catch (e2: Exception) { false }
        }
    }

    fun restoreConfig(): Boolean {
        return try {
            val publicFile = File(getPublicOmodaDir(), "config_backup.json")
            val privateFile = File(context.getExternalFilesDir(null), "config_backup.json")
            
            val sourceFile = if (publicFile.exists()) publicFile else privateFile

            if (sourceFile.exists()) {
                sourceFile.copyTo(configFile, overwrite = true)
                android.util.Log.i("ConfigManager", "Restore successful from ${sourceFile.absolutePath}")
                true
            } else {
                android.util.Log.e("ConfigManager", "No backup file found in any location")
                false
            }
        } catch (e: Exception) {
            android.util.Log.e("ConfigManager", "Restore failed: ${e.message}")
            false
        }
    }

    private fun encrypt(input: String): String {
        val key = "omoda4078".toByteArray()
        val data = input.toByteArray()
        val output = ByteArray(data.size)
        for (i in data.indices) {
            output[i] = (data[i].toInt() xor key[i % key.size].toInt()).toByte()
        }
        return android.util.Base64.encodeToString(output, android.util.Base64.DEFAULT)
    }

    private fun decrypt(input: String): String {
        val decoded = try {
            android.util.Base64.decode(input, android.util.Base64.DEFAULT)
        } catch (e: Exception) {
            return input // Eski format uyumluluğu için ham metni döndür
        }
        val key = "omoda4078".toByteArray()
        val output = ByteArray(decoded.size)
        for (i in decoded.indices) {
            output[i] = (decoded[i].toInt() xor key[i % key.size].toInt()).toByte()
        }
        return String(output)
    }

    private fun AppConfig.sanitized(): AppConfig {
        fun String.clean(): String = trim().replace("\r", "").replace("\n", "")
        fun String.cleanOr(defaultValue: String): String = clean().ifBlank { defaultValue }
        val defaults = AppConfig()

        return copy(
            serverIp = serverIp.cleanOr(defaults.serverIp),
            bridgeServerIp = bridgeServerIp.cleanOr(defaults.bridgeServerIp),
            bridgeType = bridgeType.cleanOr(defaults.bridgeType),
            hermesPort = hermesPort.cleanOr(defaults.hermesPort),
            sttPort = sttPort.cleanOr(defaults.sttPort),
            ttsPort = ttsPort.cleanOr(defaults.ttsPort),
            sttMode = sttMode.cleanOr(defaults.sttMode),
            ttsEngine = ttsEngine.cleanOr(defaults.ttsEngine),
            vehicleId = vehicleId.cleanOr(defaults.vehicleId),
            sessionKey = sessionKey.cleanOr(defaults.sessionKey),
            githubToken = githubToken?.cleanOr(defaults.githubToken ?: "") ?: defaults.githubToken,
            hermesApiKey = hermesApiKey?.cleanOr(defaults.hermesApiKey ?: "") ?: defaults.hermesApiKey,
            ninerouterApiKey = ninerouterApiKey?.cleanOr(defaults.ninerouterApiKey ?: "") ?: defaults.ninerouterApiKey,
            edgeTtsToken = edgeTtsToken?.cleanOr(defaults.edgeTtsToken ?: "") ?: defaults.edgeTtsToken
        )
    }
}
