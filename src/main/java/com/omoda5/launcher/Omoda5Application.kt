package com.omoda5.launcher

import android.app.Application
import android.content.Context
import com.omoda5.launcher.common.LocaleHelper

class Omoda5Application : Application() {

    override fun attachBaseContext(base: Context) {
        val language = LocaleHelper.getPersistedLanguage(base)
        val context = LocaleHelper.setLocale(base, language)
        super.attachBaseContext(context)
    }

    override fun onCreate() {
        super.onCreate()
        // Türkçe dil ayarı burada uygulanır
        setDefaultLanguage()
    }

    private fun setDefaultLanguage() {
        val language = "tr" // Türkçe varsayılan dil
        LocaleHelper.persistLanguage(this, language)

        // Sistem dilini Türkçe olarak ayarla
        val locale = LocaleHelper.setLocale(this, language)
        val config = locale.resources.configuration
        locale.resources.updateConfiguration(config, locale.resources.displayMetrics)
    }
}