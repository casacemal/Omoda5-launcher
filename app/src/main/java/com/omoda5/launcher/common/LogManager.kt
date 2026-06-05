package com.omoda5.launcher.common

import android.content.Context
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.io.File
import java.io.FileOutputStream
import java.text.SimpleDateFormat
import java.util.*

/**
 * v9.5.0 ADVANCED LOG MANAGER
 * Handles UI Logs and Persistent Command History with 5MB Rotation.
 */
object LogManager {
    private val _logs = mutableListOf<String>()
    private val _logFlow = MutableStateFlow<List<String>>(emptyList())
    val logs: StateFlow<List<String>> = _logFlow.asStateFlow()
    
    private var context: Context? = null
    private val dateFormat = SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault())

    fun init(ctx: Context) {
        this.context = ctx
    }

    fun addLog(msg: String) {
        synchronized(_logs) {
            val timedMsg = "[${SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())}] $msg"
            _logs.add(0, timedMsg)
            if (_logs.size > 200) _logs.removeAt(200)
            _logFlow.value = _logs.toList()
            android.util.Log.v("OMODA_LOG", msg)
        }
    }

    /**
     * Persists special commands to a log file with rotation
     */
    fun logCommand(command: String) {
        val ctx = context ?: return
        val logFile = File(ctx.getExternalFilesDir(null), "omoda5_history.log")
        
        // Rotation check: If > 5MB, clear it
        if (logFile.exists() && logFile.length() > 5 * 1024 * 1024) {
            logFile.delete()
            addLog("LOG: 5MB sınırı aşıldı, dosya sıfırlandı.")
        }

        try {
            val entry = "${dateFormat.format(Date())} | CMD: $command\n"
            FileOutputStream(logFile, true).use { it.write(entry.toByteArray()) }
        } catch (e: Exception) {}
    }

    fun clear() {
        synchronized(_logs) {
            _logs.clear()
            _logFlow.value = emptyList()
        }
    }
}
