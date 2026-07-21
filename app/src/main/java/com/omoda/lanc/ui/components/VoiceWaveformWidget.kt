package com.omoda.lanc.ui.components

import androidx.compose.animation.AnimatedVisibility
import androidx.compose.animation.core.*
import androidx.compose.animation.fadeIn
import androidx.compose.animation.fadeOut
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.layout.fillMaxWidth
import androidx.compose.foundation.layout.height
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.unit.dp
import com.omoda.lanc.core.GlobalState
import kotlin.math.sin

@Composable
fun VoiceWaveformWidget(modifier: Modifier = Modifier) {
    val isListening by GlobalState.isListening.collectAsState()
    val enabled by GlobalState.waveformEnabled.collectAsState()

    AnimatedVisibility(
        visible = isListening && enabled,
        enter = fadeIn(animationSpec = tween(500)),
        exit = fadeOut(animationSpec = tween(500)),
        modifier = modifier
    ) {
        val infiniteTransition = rememberInfiniteTransition()
        val phase by infiniteTransition.animateFloat(
            initialValue = 0f,
            targetValue = (2 * Math.PI).toFloat(),
            animationSpec = infiniteRepeatable(
                animation = tween(1500, easing = LinearEasing),
                repeatMode = RepeatMode.Restart
            )
        )

        Canvas(modifier = Modifier.fillMaxWidth().height(60.dp)) {
            val width = size.width
            val height = size.height
            val midY = height / 2

            // 3 farklı dalga çizelim (Siri benzeri katmanlı görünüm)
            val waves = listOf(
                WaveConfig(Color(0xFF69E2D3).copy(alpha = 0.8f), amplitudeRatio = 0.8f, phaseOffset = 0f, speed = 1f, strokeWidth = 4f),
                WaveConfig(Color(0xFF4CAF50).copy(alpha = 0.5f), amplitudeRatio = 0.5f, phaseOffset = 1f, speed = 1.5f, strokeWidth = 3f),
                WaveConfig(Color.White.copy(alpha = 0.3f), amplitudeRatio = 0.3f, phaseOffset = 2f, speed = 0.8f, strokeWidth = 2f)
            )

            for (wave in waves) {
                val path = Path()
                path.moveTo(0f, midY)

                val step = 10f // Çözünürlük
                for (x in 0..(width.toInt()) step step.toInt()) {
                    val normalizedX = x / width
                    
                    // Uçlara doğru dalgayı yumuşatmak için parabolik bir çarpan
                    val damping = 1f - Math.pow(((normalizedX - 0.5f) * 2).toDouble(), 2.0).toFloat()
                    
                    val currentPhase = phase * wave.speed + wave.phaseOffset
                    val y = midY + sin((normalizedX * 4 * Math.PI) + currentPhase).toFloat() * (height / 2) * wave.amplitudeRatio * damping
                    
                    path.lineTo(x.toFloat(), y)
                }

                drawPath(
                    path = path,
                    color = wave.color,
                    style = Stroke(width = wave.strokeWidth)
                )
            }
        }
    }
}

private data class WaveConfig(
    val color: Color,
    val amplitudeRatio: Float,
    val phaseOffset: Float,
    val speed: Float,
    val strokeWidth: Float
)
