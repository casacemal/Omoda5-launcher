package com.omoda.lanc.ui.components

import androidx.compose.animation.core.*
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.Image
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.blur
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.network.WeatherManager

@Composable
fun CoolwalkMediaCard(viewModel: MediaControllerViewModel, modifier: Modifier = Modifier) {
    val uiState by viewModel.mediaState.collectAsState()
    CoolwalkMediaCard(
        uiState = uiState,
        onTogglePlayback = { viewModel.togglePlayback() },
        onSkipNext = { viewModel.skipToNext() },
        onSkipPrevious = { viewModel.skipToPrevious() },
        modifier = modifier
    )
}

@Composable
fun CoolwalkMediaCard(
    uiState: MediaControllerViewModel.MediaUiState,
    onTogglePlayback: () -> Unit,
    onSkipNext: () -> Unit,
    onSkipPrevious: () -> Unit,
    modifier: Modifier = Modifier
) {
    Box(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(24.dp))
            .background(Color(0xFF1E1E1E))
    ) {
        // Blurred Album Art Background
        uiState.albumArt?.let {
            Image(
                bitmap = it.asImageBitmap(),
                contentDescription = null,
                modifier = Modifier.fillMaxSize().blur(40.dp),
                contentScale = ContentScale.Crop,
                alpha = 0.5f
            )
            // Overlay gradient to make text readable
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(
                        Brush.verticalGradient(
                            colors = listOf(Color.Transparent, Color.Black.copy(alpha = 0.8f))
                        )
                    )
            )
        } ?: run {
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(
                        Brush.verticalGradient(
                            colors = listOf(Color(0xFF2C3E50), Color(0xFF111111))
                        )
                    )
            )
        }

        Column(
            modifier = Modifier.fillMaxSize().padding(24.dp),
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(20.dp)
                ) {
                    // Larger Album Art
                    Box(
                        modifier = Modifier
                            .size(120.dp)
                            .clip(RoundedCornerShape(16.dp))
                            .background(Color.White.copy(alpha = 0.1f)),
                        contentAlignment = Alignment.Center
                    ) {
                        uiState.albumArt?.let {
                            Image(
                                bitmap = it.asImageBitmap(),
                                contentDescription = null,
                                modifier = Modifier.fillMaxSize(),
                                contentScale = ContentScale.Crop
                            )
                        } ?: run {
                            Text("🎵", fontSize = 48.sp)
                        }
                    }

                    Column {
                        Text(
                            text = uiState.title.ifEmpty { "Çalınan Şarkı" },
                            color = Color.White,
                            fontSize = 28.sp,
                            fontWeight = FontWeight.Bold,
                            maxLines = 2
                        )
                        Text(
                            text = uiState.artist.ifEmpty { "Sanatçı" },
                            color = Color.LightGray,
                            fontSize = 20.sp
                        )
                    }
                }
            }

            Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                // Progress Bar
                Slider(
                    value = uiState.progress,
                    onValueChange = {},
                    modifier = Modifier.height(20.dp),
                    colors = SliderDefaults.colors(
                        thumbColor = Color.White,
                        activeTrackColor = Color(0xFFFF8C00),
                        inactiveTrackColor = Color.White.copy(alpha = 0.2f)
                    )
                )

                // Controls
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.SpaceEvenly,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = onSkipPrevious, modifier = Modifier.size(64.dp)) {
                        Text("⏮", color = Color.White, fontSize = 36.sp)
                    }
                    
                    Box(
                        modifier = Modifier
                            .size(88.dp)
                            .clip(CircleShape)
                            .background(Color(0xFFFF8C00))
                            .clickable { onTogglePlayback() },
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            if (uiState.isPlaying) "⏸" else "▶",
                            color = Color.White,
                            fontSize = 44.sp
                        )
                    }
                    
                    IconButton(onClick = onSkipNext, modifier = Modifier.size(64.dp)) {
                        Text("⏭", color = Color.White, fontSize = 36.sp)
                    }
                }
            }
        }
    }
}

@Composable
fun CoolwalkRadioCard(vehicleState: com.omoda.lanc.model.VehicleState, modifier: Modifier = Modifier) {
    Box(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(24.dp))
            .background(Brush.verticalGradient(listOf(Color(0xFFE91E63), Color(0xFF880E4F)))) // Radio theme
            .padding(24.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Column {
                Text(
                    text = if (vehicleState.radioFrequency > 0) "%.1f MHz".format(vehicleState.radioFrequency) else "87.5 MHz",
                    color = Color.White,
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Black
                )
                Text(
                    text = vehicleState.radioStationName.ifEmpty { "RDS Bulunamadı" },
                    color = Color.White.copy(alpha = 0.8f),
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Medium
                )
            }
            
            // Radio Icon
            Text("📻", fontSize = 48.sp)
        }
    }
}

@Composable
fun CoolwalkWeatherCard(modifier: Modifier = Modifier) {
    val weatherState by WeatherManager.weatherState.collectAsState()
    
    Box(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(24.dp))
            .background(Color(0xFF262831)) // Dark slate gray from screenshot
            .padding(24.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                // Weather icon (cloud emoji as placeholder)
                Text(weatherState?.conditionIcon ?: "☁️", fontSize = 64.sp)
                Spacer(Modifier.width(24.dp))
                Text(
                    text = "${weatherState?.temperature ?: 13}°",
                    color = Color.White,
                    fontSize = 64.sp,
                    fontWeight = FontWeight.Medium
                )
            }
            
            Column(horizontalAlignment = Alignment.End) {
                Text("14° 12°", color = Color.Gray, fontSize = 18.sp, fontWeight = FontWeight.SemiBold)
            }
        }
    }
}

@Composable
fun CoolwalkSpeedometerWidget(speed: Float, modifier: Modifier = Modifier) {
    // Glow bar and idle animation
    val infiniteTransition = rememberInfiniteTransition(label = "speed_pulse")
    val alpha by infiniteTransition.animateFloat(
        initialValue = 0.5f,
        targetValue = 1f,
        animationSpec = infiniteRepeatable(
            animation = tween(1000, easing = LinearEasing),
            repeatMode = RepeatMode.Reverse
        ),
        label = "alpha"
    )

    Box(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(24.dp))
            .background(Color(0xFF1E1E1E))
            .padding(24.dp),
        contentAlignment = Alignment.Center
    ) {
        // Simple glow bar based on speed
        Canvas(modifier = Modifier.fillMaxSize()) {
            val strokeWidth = 12.dp.toPx()
            val maxSpeed = 160f
            val sweepAngle = (speed / maxSpeed).coerceIn(0f, 1f) * 180f
            
            // Background arc
            drawArc(
                color = Color.DarkGray,
                startAngle = 180f,
                sweepAngle = 180f,
                useCenter = false,
                style = Stroke(width = strokeWidth, cap = StrokeCap.Round)
            )
            
            // Active glow arc
            drawArc(
                brush = Brush.horizontalGradient(
                    colors = listOf(Color(0xFFFF8C00), Color.Red)
                ),
                startAngle = 180f,
                sweepAngle = sweepAngle,
                useCenter = false,
                style = Stroke(width = strokeWidth, cap = StrokeCap.Round),
                alpha = if (speed > 0f) 1f else alpha
            )
        }
        
        Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.padding(top = 40.dp)) {
            Text(
                text = speed.toInt().toString(),
                color = Color.White,
                fontSize = 56.sp,
                fontWeight = FontWeight.Bold
            )
            Text(
                text = "km/h",
                color = Color.Gray,
                fontSize = 16.sp
            )
        }
    }
}
