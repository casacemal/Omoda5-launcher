package com.omoda5.launcher

import android.app.Application
import android.content.res.Configuration

class DensityApplication : Application() {
    override fun attachBaseContext(base: android.content.Context) {
        val config = Configuration(base.resources.configuration)
        config.densityDpi = 160
        config.fontScale = 1f
        val customContext = base.createConfigurationContext(config)
        super.attachBaseContext(customContext)
    }

    override fun onCreate() {
        super.onCreate()
        // Ek garanti: resources metrics'ı da güncelle
        try {
            resources.displayMetrics.apply {
                density = 1f
                densityDpi = 160
            }
        } catch (_: Exception) {
        }
    }
}