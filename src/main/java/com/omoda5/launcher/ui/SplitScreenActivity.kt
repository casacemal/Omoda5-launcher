package com.omoda5.launcher.ui

import android.os.Bundle
import android.app.ActivityOptions
import android.content.Intent
import android.graphics.Rect
import android.os.Build
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.common.SplitScreenManager
import com.omoda5.launcher.databinding.ActivitySplitScreenBinding

class SplitScreenActivity : AppCompatActivity() {

    private lateinit var binding: ActivitySplitScreenBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var splitScreenManager: SplitScreenManager

    companion object {
        private const val TAG = "SplitScreenActivity"
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivitySplitScreenBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        splitScreenManager = SplitScreenManager(prefs)
        
        Log.d(TAG, "SplitScreenActivity başlatıldı.")
        launchSelectedAppsIntoSplit()

        binding.btnExit.setOnClickListener {
            Log.d(TAG, "Çıkış butonuna basıldı.")
            splitScreenManager.isActive = false
            finish()
        }
    }

    private fun launchSelectedAppsIntoSplit() {
        val (leftApp, rightApp) = splitScreenManager.getSelectedApps()
        Log.d(TAG, "Seçili uygulamalar - Sol: $leftApp, Sağ: $rightApp")
        
        if (!leftApp.isNullOrBlank()) {
            launchToSide(leftApp, true)
        } else {
            Log.w(TAG, "Sol uygulama seçili değil!")
        }
        
        if (!rightApp.isNullOrBlank()) {
            launchToSide(rightApp, false)
        } else {
            Log.w(TAG, "Sağ uygulama seçili değil!")
        }
        
        // Önemli: finish() çağrısı uygulamalar başlatıldıktan sonra yapılmalı.
        // Ancak startActivity asenkron olduğu için bazen çok hızlı finish yapmak sorun çıkarabilir.
        // finish() // Şimdilik logları görmek için finish'i manuel yönetebiliriz.
    }

    private fun launchToSide(packageName: String, left: Boolean) {
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName)
        if (launchIntent == null) {
            Log.e(TAG, "Launch intent bulunamadı: $packageName")
            return
        }

        Log.d(TAG, "Başlatılıyor: $packageName (Sol mu: $left)")
        
        val options = ActivityOptions.makeBasic()
        val dm = resources.displayMetrics
        val w = dm.widthPixels
        val h = dm.heightPixels
        val splitX = (w * prefs.splitRatio.coerceIn(0.3f, 0.7f)).toInt()
        
        // Ekran sınırlarını belirle
        val bounds = if (left) {
            Rect(0, 0, splitX, h)
        } else {
            Rect(splitX, 0, w, h)
        }
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            options.launchBounds = bounds
        }

        try {
            // Android Automotive ve Multi-window modları için windowing mode ayarı
            // 3: WINDOWING_MODE_MULTI_WINDOW
            val setLaunchWindowingModeMethod = ActivityOptions::class.java
                .getMethod("setLaunchWindowingMode", Int::class.javaPrimitiveType)
            setLaunchWindowingModeMethod.invoke(options, 3)
            Log.d(TAG, "Windowing mode ayarlandı.")
        } catch (e: Exception) {
            Log.w(TAG, "setLaunchWindowingMode metoduna erişilemedi: ${e.message}")
        }

        launchIntent.addFlags(
            Intent.FLAG_ACTIVITY_NEW_TASK or
            Intent.FLAG_ACTIVITY_MULTIPLE_TASK or
            Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT
        )
        
        try {
            startActivity(launchIntent, options.toBundle())
            Log.d(TAG, "$packageName başarıyla tetiklendi.")
        } catch (e: Exception) {
            Log.e(TAG, "$packageName başlatılırken hata oluştu: ${e.message}")
        }
    }
}
