package com.omoda5.launcher.common

import android.app.usage.UsageStatsManager
import android.content.Context
import android.os.Handler
import android.os.Looper

/**
 * Ön planda hangi uygulamanın çalıştığını UsageStats ile izler.
 * API 29'da AccessibilityService gerekmeden çalışır.
 * PACKAGE_USAGE_STATS izni gerektirir (Manifest'te tanımlı).
 */
class AppWatcher(private val context: Context) {

    interface Listener {
        fun onForegroundAppChanged(packageName: String)
    }

    private val handler = Handler(Looper.getMainLooper())
    private var listener: Listener? = null
    private var lastPackage: String = ""
    private var isRunning = false

    companion object {
        private const val CHECK_INTERVAL_MS = 1000L // Her 1 saniyede kontrol et
    }

    private val checkRunnable = object : Runnable {
        override fun run() {
            val current = getForegroundPackage()
            if (current != null && current != lastPackage) {
                lastPackage = current
                listener?.onForegroundAppChanged(current)
            }
            if (isRunning) handler.postDelayed(this, CHECK_INTERVAL_MS)
        }
    }

    fun setListener(l: Listener) {
        listener = l
    }

    fun start() {
        if (isRunning) return
        isRunning = true
        handler.post(checkRunnable)
    }

    fun stop() {
        isRunning = false
        handler.removeCallbacks(checkRunnable)
    }

    private fun getForegroundPackage(): String? {
        return try {
            val usm = context.getSystemService(Context.USAGE_STATS_SERVICE) as UsageStatsManager
            val now = System.currentTimeMillis()
            val stats = usm.queryUsageStats(
                UsageStatsManager.INTERVAL_DAILY,
                now - 30_000, // 30 saniyelik pencere — düşük aktivitede null olmasını önler
                now
            )
            stats?.maxByOrNull { it.lastTimeUsed }?.packageName
        } catch (e: Exception) {
            null
        }
    }
}
