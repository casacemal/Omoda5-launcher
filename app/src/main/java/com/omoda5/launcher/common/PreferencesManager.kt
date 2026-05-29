package com.omoda5.launcher.common

import android.content.Context
import android.content.SharedPreferences

class PreferencesManager(context: Context) {
    private val prefs: SharedPreferences = context.getSharedPreferences("omoda5_prefs", Context.MODE_PRIVATE)

    var lastUpdateCheck: Long
        get() = prefs.getLong("last_update_check", 0L)
        set(value) = prefs.edit().putLong("last_update_check", value).apply()

    var isLeftBarHidden: Boolean
        get() = prefs.getBoolean("left_bar_hidden", false)
        set(value) = prefs.edit().putBoolean("left_bar_hidden", value).apply()

    var isRightBarHidden: Boolean
        get() = prefs.getBoolean("right_bar_hidden", false)
        set(value) = prefs.edit().putBoolean("right_bar_hidden", value).apply()

    var isAutoStartHvacEnabled: Boolean
        get() = prefs.getBoolean("auto_hvac", true)
        set(value) = prefs.edit().putBoolean("auto_hvac", value).apply()

    var wallpaperIndex: Int
        get() = prefs.getInt("wallpaper_idx", 0)
        set(value) = prefs.edit().putInt("wallpaper_idx", value).apply()

    var isFirstRun: Boolean
        get() = prefs.getBoolean("first_run", true)
        set(value) = prefs.edit().putBoolean("first_run", value).apply()

    var downloadedUpdatePath: String?
        get() = prefs.getString("update_path", null)
        set(value) = prefs.edit().putString("update_path", value).apply()

    fun getClickCount(pkg: String): Int = prefs.getInt("clicks_$pkg", 0)
    fun incrementClickCount(pkg: String) {
        val count = getClickCount(pkg)
        prefs.edit().putInt("clicks_$pkg", count + 1).apply()
    }
}
