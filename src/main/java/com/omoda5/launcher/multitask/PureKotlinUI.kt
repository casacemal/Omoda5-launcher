package com.omoda5.launcher.multitask

import android.content.Context
import android.graphics.Color
import android.graphics.Typeface
import android.view.Gravity
import android.view.View
import android.widget.FrameLayout
import android.widget.LinearLayout
import android.widget.TextView
import com.omoda5.launcher.R

/**
 * OMODA 5 - SAF KOTLIN UI MOTORU
 * XML kullanmadan arayüz inşa eden mimari yardımcı sınıf.
 */
object PureKotlinUI {

    // Semidrive X9 Ekran Sabitleri
    const val SCREEN_W = 1920
    const val SCREEN_H = 720
    const val LEFT_BAR_W = 235
    const val USABLE_W = SCREEN_W - LEFT_BAR_W

    // Renk Paleti (Eski tasarıma sadık)
    const val COLOR_BG = "#0A0A0A"
    const val COLOR_PRIMARY = "#29D9F8"
    const val COLOR_TEXT = "#FFFFFF"

    /**
     * Sürüş güvenliğine uygun ana konteyner oluşturur.
     */
    fun createRootContainer(context: Context): FrameLayout {
        return FrameLayout(context).apply {
            layoutParams = FrameLayout.LayoutParams(SCREEN_W, SCREEN_H)
            setBackgroundColor(Color.parseColor(COLOR_BG))
            // Sol bar boşluğu (Padding)
            setPadding(LEFT_BAR_W, 0, 0, 0)
        }
    }

    /**
     * Şık ve modern bir veri kartı oluşturur.
     */
    fun createDataCard(context: Context, label: String, unit: String): LinearLayout {
        return LinearLayout(context).apply {
            orientation = LinearLayout.VERTICAL
            gravity = Gravity.CENTER
            setBackgroundResource(R.drawable.launcher_media_icon_bg) // Mevcut asset kullanımı
            layoutParams = LinearLayout.LayoutParams(400, 250).apply {
                setMargins(20, 20, 20, 20)
            }

            val titleView = TextView(context).apply {
                text = label
                setTextColor(Color.GRAY)
                textSize = 16f
                typeface = Typeface.DEFAULT_BOLD
            }

            val valueView = TextView(context).apply {
                tag = "value_$label" // Koddan erişmek için
                text = "--"
                setTextColor(Color.parseColor(COLOR_PRIMARY))
                textSize = 48f
                typeface = Typeface.create("sans-serif-condensed", Typeface.BOLD)
            }

            val unitView = TextView(context).apply {
                text = unit
                setTextColor(Color.WHITE)
                textSize = 14f
            }

            addView(titleView)
            addView(valueView)
            addView(unitView)
        }
    }
}
