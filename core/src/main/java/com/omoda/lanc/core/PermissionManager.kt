package com.omoda.lanc.core

import android.Manifest
import android.content.Context
import android.content.Intent
import android.content.pm.PackageManager
import android.os.Build
import android.provider.Settings
import androidx.core.content.ContextCompat
import com.omoda.lanc.network.AdbClient
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asStateFlow
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * PermissionManager - Merkezi İzin ve Yetki Yöneticisi
 * Tüm Android ve Sistem izinlerini takip eder, görsel durum bildirir ve ADB ile onarır.
 */
object PermissionManager {
    private const val TAG = "PermissionManager"

    data class PermissionStatus(
        val id: String,
        val label: String,
        val isGranted: Boolean,
        val type: PermissionType,
        val adbCommand: String? = null
    )

    enum class PermissionType { ANDROID, APP_OP, SECURE_SETTING, SYSTEM_SERVICE }

    private val _permissions = MutableStateFlow<List<PermissionStatus>>(emptyList())
    val permissions = _permissions.asStateFlow()

    private val _isRooted = MutableStateFlow(false)
    val isRooted = _isRooted.asStateFlow()

    fun checkAll(context: Context) {
        val packageName = context.packageName
        android.util.Log.d(TAG, "İzinler kontrol ediliyor... Paket: $packageName")
        val list = mutableListOf<PermissionStatus>()

        // 1. Standart Android İzinleri
        val androidPerms = mapOf(
            Manifest.permission.RECORD_AUDIO to "Mikrofon Erişimi",
            Manifest.permission.ACCESS_FINE_LOCATION to "Hassas Konum (GPS)",
            Manifest.permission.WRITE_EXTERNAL_STORAGE to "Dosya Yazma Yetkisi",
            "android.car.permission.CAR_SPEED" to "Araç Hız Verisi",
            Manifest.permission.DUMP to "Dumpsys Sistem Okuma (VHAL)"
        )
        androidPerms.forEach { (perm, label) ->
            list.add(PermissionStatus(perm, label, isGranted(context, perm), PermissionType.ANDROID, "pm grant $packageName $perm"))
        }

        // 2. Özel Sistem Yetkileri (AppOps)
        list.add(PermissionStatus("SYSTEM_ALERT_WINDOW", "Ekran Üzerinde Gösterim", Settings.canDrawOverlays(context), PermissionType.APP_OP, "appops set $packageName SYSTEM_ALERT_WINDOW allow"))
        list.add(PermissionStatus("GET_USAGE_STATS", "Uygulama Kullanım Verileri", isAppOpGranted(context, "android:get_usage_stats"), PermissionType.APP_OP, "appops set $packageName GET_USAGE_STATS allow"))
        
        // Android 10'da QUERY_ALL_PACKAGES her zaman granted'dır. Ancak UI için durum bildiriyoruz.
        val isQueryAllGranted = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.R) isAppOpGranted(context, "android:query_all_packages") else true
        list.add(PermissionStatus("QUERY_ALL_PACKAGES", "Tüm Paketleri Sorgulama", isQueryAllGranted, PermissionType.APP_OP, "appops set $packageName QUERY_ALL_PACKAGES allow"))

        // 3. Erişilebilirlik ve Bildirim Servisleri
        list.add(PermissionStatus("ACCESSIBILITY", "Erişilebilirlik Servisleri", isAccessibilityEnabled(context), PermissionType.SECURE_SETTING, "settings put secure enabled_accessibility_services $packageName/com.hermesandroid.bridge.service.BridgeAccessibilityService:$packageName/com.omoda.lanc.service.CheryAccessibilityService"))
        list.add(PermissionStatus("NOTIFICATION_LISTENER", "Bildirim Dinleyici", isNotificationListenerEnabled(context), PermissionType.SECURE_SETTING, "settings put secure enabled_notification_listeners $packageName/com.hermesandroid.bridge.service.BridgeNotificationListener:$packageName/com.omoda.lanc.service.MediaNotificationListener"))

        // 4. Kritik Sistem Yetkileri
        list.add(PermissionStatus("WRITE_SECURE_SETTINGS", "Güvenli Ayarları Değiştirme", isGranted(context, Manifest.permission.WRITE_SECURE_SETTINGS), PermissionType.ANDROID, "appops set $packageName WRITE_SECURE_SETTINGS allow"))
        list.add(PermissionStatus("MANAGE_ACTIVITY_STACKS", "Harita Gömme (Stack)", isGranted(context, "android.permission.MANAGE_ACTIVITY_STACKS"), PermissionType.ANDROID, "pm grant $packageName android.permission.MANAGE_ACTIVITY_STACKS"))
        list.add(PermissionStatus("INTERNAL_SYSTEM_WINDOW", "Sistem Penceresi Yetkisi", isGranted(context, "android.permission.INTERNAL_SYSTEM_WINDOW"), PermissionType.ANDROID, "pm grant $packageName android.permission.INTERNAL_SYSTEM_WINDOW"))

        // 5. OEM Servisleri (Klima vb.)
        val isHvacEnabled = try {
            context.packageManager.getApplicationInfo("com.yfve.hvac", 0).enabled
        } catch (e: Exception) { false }
        list.add(PermissionStatus("HVAC_SERVICE", "OEM Klima Hizmeti", isHvacEnabled, PermissionType.SYSTEM_SERVICE, "pm enable com.yfve.hvac; am start -n com.yfve.hvac/com.yfve.hvac.MainActivity"))

        // 6. T-Box / GPS Durumu
        val isGpsEnabled = (context.getSystemService(Context.LOCATION_SERVICE) as android.location.LocationManager)
            .isProviderEnabled(android.location.LocationManager.GPS_PROVIDER)
        list.add(PermissionStatus("GPS_PROVIDER", "T-Box GPS Sinyali", isGpsEnabled, PermissionType.SYSTEM_SERVICE, "settings put secure location_mode 3"))

        _permissions.value = list
        checkRootStatus()
    }

    private fun isGranted(context: Context, permission: String): Boolean =
        ContextCompat.checkSelfPermission(context, permission) == PackageManager.PERMISSION_GRANTED

    private fun isAppOpGranted(context: Context, op: String): Boolean {
        val appOps = context.getSystemService(Context.APP_OPS_SERVICE) as android.app.AppOpsManager
        return try {
            val mode = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                appOps.unsafeCheckOpNoThrow(op, android.os.Process.myUid(), context.packageName)
            } else {
                appOps.checkOpNoThrow(op, android.os.Process.myUid(), context.packageName)
            }
            mode == android.app.AppOpsManager.MODE_ALLOWED
        } catch (e: Exception) { false }
    }

    private fun isAccessibilityEnabled(context: Context): Boolean {
        val enabledServices = Settings.Secure.getString(context.contentResolver, Settings.Secure.ENABLED_ACCESSIBILITY_SERVICES) ?: ""
        return enabledServices.contains(context.packageName)
    }

    private fun isNotificationListenerEnabled(context: Context): Boolean {
        val enabledListeners = Settings.Secure.getString(context.contentResolver, "enabled_notification_listeners") ?: ""
        return enabledListeners.contains(context.packageName)
    }
    
    private fun checkRootStatus() {
        _isRooted.value = false // Default to false
        try {
            val suPaths = arrayOf("/system/bin/su", "/system/xbin/su", "/sbin/su")
            for (suPath in suPaths) {
                if (java.io.File(suPath).exists()) {
                    val process = Runtime.getRuntime().exec(arrayOf(suPath, "-c", "id"))
                    val reader = BufferedReader(InputStreamReader(process.inputStream))
                    val output = reader.readLine()
                    if (output != null && output.contains("uid=0")) {
                        _isRooted.value = true
                        return
                    }
                }
            }
        } catch (e: Exception) {
            android.util.Log.e(TAG, "Root check failed", e)
        }
    }

    fun fixPermission(context: Context, status: PermissionStatus) {
        status.adbCommand?.let { cmd ->
            android.widget.Toast.makeText(context, "${status.label} onarılıyor...", android.widget.Toast.LENGTH_SHORT).show()
            val intent = Intent("com.omoda.lanc.ACTION_EXECUTE_SHELL").apply {
                setPackage(context.packageName)
                putExtra("command", cmd)
            }
            context.startForegroundService(intent)
        }
    }

    fun requestRoot(context: Context) {
        android.widget.Toast.makeText(context, "Root denemesi başlatıldı...", android.widget.Toast.LENGTH_SHORT).show()
        val intent = Intent("com.omoda.lanc.ACTION_EXECUTE_SHELL").apply {
            setPackage(context.packageName)
            putExtra("command", "setprop service.adb.tcp.port 5555; stop adbd; start adbd")
        }
        context.startForegroundService(intent)

        AdbClient.executeCommand("id") { line ->
             _isRooted.value = line.contains("uid=0")
             android.widget.Toast.makeText(context, "Root sonucu: $line", android.widget.Toast.LENGTH_LONG).show()
        }
    }
}
