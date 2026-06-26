package com.omoda.lanc.overlay

import android.content.Context
import android.graphics.Canvas
import android.graphics.Color
import android.graphics.Paint
import android.graphics.RectF
import android.util.AttributeSet
import android.view.View

class WaveOverlayView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : View(context, attrs, defStyleAttr) {

    private val paint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.GREEN
        style = Paint.Style.FILL
    }
    
    private val textPaint = Paint(Paint.ANTI_ALIAS_FLAG).apply {
        color = Color.GREEN
        textSize = 42f
        textAlign = Paint.Align.CENTER
    }

    private val maxBars = 15
    private val amplitudes = FloatArray(maxBars)
    private var textToDisplay = "🎙️ Dinleniyor..."
    private var isListening = false

    fun updateAmplitude(amplitude: Int) {
        for (i in 0 until maxBars - 1) {
            amplitudes[i] = amplitudes[i + 1]
        }
        val normalized = (amplitude / 32767f).coerceIn(0f, 1f)
        val boosted = Math.pow(normalized.toDouble(), 0.5).toFloat() * 0.8f + 0.1f
        amplitudes[maxBars - 1] = if (isListening) boosted else 0f
        invalidate()
    }

    fun setStateText(text: String, listening: Boolean, textColor: Int = Color.GREEN) {
        textToDisplay = text
        isListening = listening
        textPaint.color = textColor
        if (!listening) {
            for (i in amplitudes.indices) {
                amplitudes[i] = 0f
            }
        }
        invalidate()
    }

    override fun onDraw(canvas: Canvas) {
        super.onDraw(canvas)
        val width = width.toFloat()
        val height = height.toFloat()

        canvas.drawText(textToDisplay, width / 2f, height - 30f, textPaint)

        if (isListening) {
            val barWidth = width / (maxBars * 2)
            val spacing = barWidth
            val maxBarHeight = height - 80f
            val startX = (width - (maxBars * (barWidth + spacing) - spacing)) / 2f
            
            for (i in 0 until maxBars) {
                val barHeight = amplitudes[i] * maxBarHeight
                val rect = RectF(
                    startX + i * (barWidth + spacing),
                    (maxBarHeight - barHeight) / 2f + 10f,
                    startX + i * (barWidth + spacing) + barWidth,
                    (maxBarHeight + barHeight) / 2f + 10f
                )
                canvas.drawRoundRect(rect, barWidth / 2f, barWidth / 2f, paint)
            }
        }
    }
}
