package com.omoda.lanc.service

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.util.Log
import com.omoda.lanc.network.OtaUpdateManager
import java.io.File

class OtaInstallReceiver : BroadcastReceiver() {
    override fun onReceive(context: Context, intent: Intent) {
        val apkPath = intent.getStringExtra("apk_path") ?: return
        val expectedSize = intent.getLongExtra("expected_size", -1L)
        Log.d("OtaInstallReceiver", "Yükleme denetleniyor: $apkPath")
        
        val file = File(apkPath)
        try {
            val canonicalPath = file.canonicalPath
            val allowedPath = context.getExternalFilesDir(null)?.canonicalPath
            if (allowedPath == null || !canonicalPath.startsWith(allowedPath)) {
                Log.e("OtaInstallReceiver", "Güvenlik İhlali: APK dizini geçersiz! ($canonicalPath)")
                return
            }
        } catch (e: Exception) {
            Log.e("OtaInstallReceiver", "Path doğrulama hatası", e)
            return
        }
        if (file.exists()) {
            if (expectedSize > 0 && file.length() != expectedSize) {
                Log.e("OtaInstallReceiver", "Eksik APK algılandı! Beklenen: $expectedSize, Mevcut: ${file.length()}")
                file.delete()
                // Kullanıcıya bilgi verilebilir (Toast veya Notification)
                return
            }
            
            Log.d("OtaInstallReceiver", "Bütünlük doğrulandı, yükleme başlatılıyor.")
            val updateManager = OtaUpdateManager(context)
            updateManager.installPackage(file)
        } else {
            Log.e("OtaInstallReceiver", "APK dosyası bulunamadı: $apkPath")
        }
    }
}
