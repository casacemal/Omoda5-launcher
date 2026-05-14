package com.omoda5.launcher.common

import android.content.Context
import android.content.SharedPreferences

class PreferencesManager(context: Context) {

    private val prefs: SharedPreferences =
        context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)

    companion object {
        private const val PREFS_NAME = "launcher_prefs"

        // Sidebar
        const val KEY_SIDEBAR_VISIBLE = "sidebar_visible"
        const val KEY_SIDEBAR_HIDDEN_APPS = "sidebar_hidden_apps"
        const val KEY_SIDEBAR_AUTO_HIDE = "sidebar_auto_hide"

        // Launcher
        const val KEY_FAVORITE_APPS = "favorite_apps"
        const val KEY_FIRST_RUN = "first_run"
        const val KEY_WALLPAPER_INDEX = "wallpaper_index"

        // Split Screen
        const val KEY_SPLIT_LEFT_APP = "split_screen_left_app"
        const val KEY_SPLIT_RIGHT_APP = "split_screen_right_app"
        const val KEY_SPLIT_ACTIVE = "split_screen_active"
        const val KEY_SPLIT_LEFT_HISTORY = "split_screen_left_history"
        const val KEY_SPLIT_RIGHT_HISTORY = "split_screen_right_history"
        const val KEY_SPLIT_RATIO = "split_screen_ratio"
        const val KEY_SPLIT_COMPATIBLE_APPS = "split_screen_compatible_apps"
        const val KEY_SPLIT_INCOMPATIBLE_APPS = "split_screen_incompatible_apps"
        const val KEY_SPLIT_DEFAULT_LEFT_APP = "split_screen_default_left_app"
        const val KEY_SPLIT_DEFAULT_RIGHT_APP = "split_screen_default_right_app"

        // ADB Settings
        const val KEY_ADB_ENABLED = "adb_enabled"
        const val KEY_ADB_PORT = "adb_port"
        const val KEY_ADB_MODE = "adb_mode" // "usb" or "tcp"
        const val KEY_ADB_AUTHENTICATION = "adb_authentication"
        const val KEY_ADB_ALLOWED_IPS = "adb_allowed_ips"
        const val KEY_ADB_TIMEOUT = "adb_timeout"
    }

    // ── Sidebar görünürlüğü ──────────────────────────────────────

    var isSidebarVisible: Boolean
        get() = prefs.getBoolean(KEY_SIDEBAR_VISIBLE, true)
        set(value) = prefs.edit().putBoolean(KEY_SIDEBAR_VISIBLE, value).apply()

    // Sidebar'ın belirli uygulamalarda otomatik gizlenmesi
    var isAutoHideEnabled: Boolean
        get() = prefs.getBoolean(KEY_SIDEBAR_AUTO_HIDE, false)
        set(value) = prefs.edit().putBoolean(KEY_SIDEBAR_AUTO_HIDE, value).apply()

    // Sidebar'ın gizleneceği uygulama paket adları
    var hiddenApps: Set<String>
        get() = prefs.getStringSet(KEY_SIDEBAR_HIDDEN_APPS, emptySet()) ?: emptySet()
        set(value) = prefs.edit().putStringSet(KEY_SIDEBAR_HIDDEN_APPS, value).apply()

    fun addHiddenApp(packageName: String) {
        hiddenApps = hiddenApps.toMutableSet().also { it.add(packageName) }
    }

    fun removeHiddenApp(packageName: String) {
        hiddenApps = hiddenApps.toMutableSet().also { it.remove(packageName) }
    }

    fun isAppHidden(packageName: String): Boolean = packageName in hiddenApps

    // ── Favori uygulamalar ───────────────────────────────────────

    var favoriteApps: Set<String>
        get() = prefs.getStringSet(KEY_FAVORITE_APPS, emptySet()) ?: emptySet()
        set(value) = prefs.edit().putStringSet(KEY_FAVORITE_APPS, value).apply()


    // ── İlk çalışma ──────────────────────────────────────────────

    var isFirstRun: Boolean
        get() = prefs.getBoolean(KEY_FIRST_RUN, true)
        set(value) = prefs.edit().putBoolean(KEY_FIRST_RUN, value).apply()

    // ── Duvar kağıdı indeksi ─────────────────────────────────────

    /** Sırayla geçiş yapılan duvar kağıdı listesindeki mevcut konum. */
    var wallpaperIndex: Int
        get() = prefs.getInt(KEY_WALLPAPER_INDEX, -1)
        set(value) = prefs.edit().putInt(KEY_WALLPAPER_INDEX, value).apply()

    // ── Split Screen ─────────────────────────────────────────────

    var splitLeftApp: String?
        get() = prefs.getString(KEY_SPLIT_LEFT_APP, null)
        set(value) = prefs.edit().putString(KEY_SPLIT_LEFT_APP, value).apply()

    var splitRightApp: String?
        get() = prefs.getString(KEY_SPLIT_RIGHT_APP, null)
        set(value) = prefs.edit().putString(KEY_SPLIT_RIGHT_APP, value).apply()

    var isSplitActive: Boolean
        get() = prefs.getBoolean(KEY_SPLIT_ACTIVE, false)
        set(value) = prefs.edit().putBoolean(KEY_SPLIT_ACTIVE, value).apply()

    var splitLeftHistory: Set<String>
        get() = prefs.getStringSet(KEY_SPLIT_LEFT_HISTORY, emptySet()) ?: emptySet()
        set(value) = prefs.edit().putStringSet(KEY_SPLIT_LEFT_HISTORY, value).apply()

    var splitRightHistory: Set<String>
        get() = prefs.getStringSet(KEY_SPLIT_RIGHT_HISTORY, emptySet()) ?: emptySet()
        set(value) = prefs.edit().putStringSet(KEY_SPLIT_RIGHT_HISTORY, value).apply()

    var splitRatio: Float
        get() = prefs.getFloat(KEY_SPLIT_RATIO, 0.5f)
        set(value) = prefs.edit().putFloat(KEY_SPLIT_RATIO, value.coerceIn(0.3f, 0.7f)).apply()

    var splitCompatibleApps: Set<String>
        get() = prefs.getStringSet(KEY_SPLIT_COMPATIBLE_APPS, emptySet()) ?: emptySet()
        set(value) = prefs.edit().putStringSet(KEY_SPLIT_COMPATIBLE_APPS, value).apply()

    var splitIncompatibleApps: Set<String>
        get() = prefs.getStringSet(KEY_SPLIT_INCOMPATIBLE_APPS, emptySet()) ?: emptySet()
        set(value) = prefs.edit().putStringSet(KEY_SPLIT_INCOMPATIBLE_APPS, value).apply()

    var splitDefaultLeftApp: String?
        get() = prefs.getString(KEY_SPLIT_DEFAULT_LEFT_APP, null)
        set(value) = prefs.edit().putString(KEY_SPLIT_DEFAULT_LEFT_APP, value).apply()

    var splitDefaultRightApp: String?
        get() = prefs.getString(KEY_SPLIT_DEFAULT_RIGHT_APP, null)
        set(value) = prefs.edit().putString(KEY_SPLIT_DEFAULT_RIGHT_APP, value).apply()

    // ── ADB Settings ─────────────────────────────────────────────

    var isAdbEnabled: Boolean
        get() = prefs.getBoolean(KEY_ADB_ENABLED, true) // Temporarily enabled for testing
        set(value) = prefs.edit().putBoolean(KEY_ADB_ENABLED, value).apply()

    var adbPort: Int
        get() = prefs.getInt(KEY_ADB_PORT, 5555)
        set(value) = prefs.edit().putInt(KEY_ADB_PORT, value).apply()

    var adbMode: String
        get() = prefs.getString(KEY_ADB_MODE, "tcp") ?: "tcp"
        set(value) = prefs.edit().putString(KEY_ADB_MODE, value).apply()

    var isAdbAuthenticationEnabled: Boolean
        get() = prefs.getBoolean(KEY_ADB_AUTHENTICATION, true)
        set(value) = prefs.edit().putBoolean(KEY_ADB_AUTHENTICATION, value).apply()

    var adbAllowedIps: Set<String>
        get() = prefs.getStringSet(KEY_ADB_ALLOWED_IPS, setOf("*")) ?: setOf("*")
        set(value) = prefs.edit().putStringSet(KEY_ADB_ALLOWED_IPS, value).apply()

    var adbTimeout: Int
        get() = prefs.getInt(KEY_ADB_TIMEOUT, 300000) // 5 minutes in milliseconds
        set(value) = prefs.edit().putInt(KEY_ADB_TIMEOUT, value).apply()

    // ── Değişiklik dinleyicisi ────────────────────────────────────

    fun registerListener(listener: SharedPreferences.OnSharedPreferenceChangeListener) {
        prefs.registerOnSharedPreferenceChangeListener(listener)
    }

    fun unregisterListener(listener: SharedPreferences.OnSharedPreferenceChangeListener) {
        prefs.unregisterOnSharedPreferenceChangeListener(listener)
    }
}
