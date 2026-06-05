package com.omoda5.launcher.common
import android.content.Context
import android.content.SharedPreferences
class PreferencesManager(context: Context) {
    private val prefs = context.getSharedPreferences("launcher_prefs", Context.MODE_PRIVATE)
    var wallpaperIndex: Int get() = prefs.getInt("wallpaper_idx", 0); set(v) = prefs.edit().putInt("wallpaper_idx", v).apply()
    var wallpaperAlpha: Float get() = prefs.getFloat("wp_alpha", 0.02f); set(v) = prefs.edit().putFloat("wp_alpha", v).apply()
    var isLeftBarHidden: Boolean get() = prefs.getBoolean("left_bar_hidden", false); set(v) = prefs.edit().putBoolean("left_bar_hidden", v).apply()
    var isRightBarHidden: Boolean get() = prefs.getBoolean("right_bar_hidden", false); set(v) = prefs.edit().putBoolean("right_bar_hidden", v).apply()
    var selectedMtPackage: String get() = prefs.getString("selected_mt_pkg", "com.google.android.apps.maps") ?: "com.google.android.apps.maps"; set(v) = prefs.edit().putString("selected_mt_pkg", v).apply()
    var isKeyMonitoringEnabled: Boolean get() = prefs.getBoolean("key_monitoring", false); set(v) = prefs.edit().putBoolean("key_monitoring", v).apply()
    var isDataMonitoringEnabled: Boolean get() = prefs.getBoolean("data_monitoring", false); set(v) = prefs.edit().putBoolean("data_monitoring", v).apply()
    var homeInterceptMethod: Int get() = prefs.getInt("home_intercept_method", 1); set(v) = prefs.edit().putInt("home_intercept_method", v).apply()
    var hiddenPackages: Set<String> get() = prefs.getStringSet("hidden_pkgs", emptySet()) ?: emptySet(); set(v) = prefs.edit().putStringSet("hidden_pkgs", v).apply()
    var favoritePackages: Set<String> get() = prefs.getStringSet("favorite_pkgs", emptySet()) ?: emptySet(); set(v) = prefs.edit().putStringSet("favorite_pkgs", v).apply()

    // HUD & Notification Settings
    var isHudEnabled: Boolean get() = prefs.getBoolean("hud_enabled", true); set(v) = prefs.edit().putBoolean("hud_enabled", v).apply()
    var isTailscaleWatchdogEnabled: Boolean get() = prefs.getBoolean("ts_watchdog", true); set(v) = prefs.edit().putBoolean("ts_watchdog", v).apply()
    var isAutoTasksEnabled: Boolean get() = prefs.getBoolean("auto_tasks", false); set(v) = prefs.edit().putBoolean("auto_tasks", v).apply()

    // Multi-Task Engine Settings
    var multitaskEngine: Int get() = prefs.getInt("mt_engine", 3); set(v) = prefs.edit().putInt("mt_engine", v).apply()
    var splitRatio: Float get() = prefs.getFloat("split_ratio", 0.5f); set(v) = prefs.edit().putFloat("split_ratio", v).apply()

    // Legacy Split History Integration
    var splitLeftHistory: Set<String> get() = prefs.getStringSet("split_left_hist", emptySet()) ?: emptySet(); set(v) = prefs.edit().putStringSet("split_left_hist", v).apply()
    var splitRightHistory: Set<String> get() = prefs.getStringSet("split_right_hist", emptySet()) ?: emptySet(); set(v) = prefs.edit().putStringSet("split_right_hist", v).apply()

    fun addToSplitHistory(pkg: String, isLeft: Boolean) {
        val s = (if(isLeft) splitLeftHistory else splitRightHistory).toMutableSet()
        if (s.size > 5) s.remove(s.first()) // Keep last 5
        s.add(pkg)
        if(isLeft) splitLeftHistory = s else splitRightHistory = s
    }

    fun hidePackage(p: String) { val s = hiddenPackages.toMutableSet(); s.add(p); hiddenPackages = s }
    fun showPackage(p: String) { val s = hiddenPackages.toMutableSet(); s.remove(p); hiddenPackages = s }
    fun toggleFavorite(p: String) { val s = favoritePackages.toMutableSet(); if (s.contains(p)) s.remove(p) else s.add(p); favoritePackages = s }

    /**
     * v9.5.0 SETTINGS BACKUP
     * Export all preferences to a JSON file
     */
    fun backupSettings(context: android.content.Context) {
        try {
            val file = java.io.File(context.getExternalFilesDir(null), "settings_backup.json")
            val json = org.json.JSONObject()
            prefs.all.forEach { (k, v) -> json.put(k, v) }
            java.io.FileOutputStream(file).use { it.write(json.toString(4).toByteArray()) }
            LogManager.addLog("BACKUP: Ayarlar kaydedildi -> ${file.name}")
        } catch (e: Exception) { LogManager.addLog("ERR: Yedekleme başarısız") }
    }

    /**
     * v9.5.0 SETTINGS RESTORE
     */
    fun restoreSettings(context: android.content.Context) {
        try {
            val file = java.io.File(context.getExternalFilesDir(null), "settings_backup.json")
            if (!file.exists()) { LogManager.addLog("ERR: Yedek dosyası bulunamadı"); return }
            val json = org.json.JSONObject(file.readText())
            val editor = prefs.edit()
            json.keys().forEach { k ->
                val v = json.get(k)
                when(v) {
                    is Int -> editor.putInt(k, v)
                    is Float -> editor.putFloat(k, v.toFloat())
                    is Boolean -> editor.putBoolean(k, v)
                    is String -> editor.putString(k, v)
                    is org.json.JSONArray -> {
                        val set = mutableSetOf<String>()
                        for(i in 0 until v.length()) set.add(v.getString(i))
                        editor.putStringSet(k, set)
                    }
                }
            }
            editor.apply()
            LogManager.addLog("RESTORE: Ayarlar yüklendi. Launcher'ı sıfırlayın.")
        } catch (e: Exception) { LogManager.addLog("ERR: Geri yükleme başarısız: ${e.message}") }
    }
}
