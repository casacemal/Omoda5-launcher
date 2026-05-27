package com.omoda5.launcher.multitask

import android.os.Bundle
import android.view.Gravity
import android.widget.GridLayout
import android.widget.LinearLayout
import android.widget.TextView
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.omoda5.launcher.multitask.PureKotlinUI.createDataCard
import com.omoda5.launcher.multitask.PureKotlinUI.createRootContainer
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch

/**
 * ARAÇ VERİLERİ SAYFASI (SAF KOTLIN)
 * Sürüş güvenliğine uygun, yüksek FPS ve modern UI.
 */
class VehicleDataPureActivity : AppCompatActivity() {

    private var isRunning = true

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Root Container (SIFIR XML)
        val root = createRootContainer(this)
        
        val contentLayout = LinearLayout(this).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER_HORIZONTAL
            setPadding(40, 40, 40, 40)
        }

        val header = TextView(this).apply {
            text = "ARAÇ ANALİZ VE VERİ MERKEZİ"
            setTextColor(android.graphics.Color.WHITE)
            textSize = 28f
            typeface = android.graphics.Typeface.DEFAULT_BOLD
            setPadding(0, 0, 0, 60)
        }

        // Grid Düzeni (2 Sütun)
        val grid = GridLayout(this).apply {
            columnCount = 2
            alignmentMode = GridLayout.ALIGN_BOUNDS
        }

        // Veri Kartları
        grid.addView(createDataCard(this, "HIZ", "km/h"))
        grid.addView(createDataCard(this, "DEVİR", "RPM"))
        grid.addView(createDataCard(this, "YAKIT", "%"))
        grid.addView(createDataCard(this, "DIŞ SICAKLIK", "°C"))

        contentLayout.addView(header)
        contentLayout.addView(grid)
        root.addView(contentLayout)

        setContentView(root)
        
        startDataSimulation() // Şimdilik simülasyon, VHAL entegrasyonu v6.4.7'de
    }

    private fun startDataSimulation() {
        lifecycleScope.launch {
            while (isRunning) {
                // Burada VHAL'den gelen veriler PureKotlinUI'daki 'tag' üzerinden güncellenebilir
                delay(4000)
            }
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        isRunning = false
    }
}
