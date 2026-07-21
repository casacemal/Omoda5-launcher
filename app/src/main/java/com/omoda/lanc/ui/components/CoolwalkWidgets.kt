package com.omoda.lanc.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.foundation.Image
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.draw.blur
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.network.WeatherManager
import com.omoda.lanc.ui.theme.OmodaCyan


@Composable
fun CoolwalkMediaCard(viewModel: MediaControllerViewModel, modifier: Modifier = Modifier) {
    val uiState by viewModel.mediaState.collectAsState()
    
    Box(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(24.dp))
            .background(Color(0xFF1A1C1E))
    ) {
        // Album Art Background
        uiState.albumArt?.let {
            Image(
                bitmap = it.asImageBitmap(),
                contentDescription = null,
                modifier = Modifier.fillMaxSize().blur(20.dp),
                contentScale = ContentScale.Crop,
                alpha = 0.4f
            )
        } ?: run {
            // Background Gradient fallback
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .background(
                        Brush.verticalGradient(
                            colors = listOf(Color(0xFF2C3E50), Color(0xFF000000))
                        )
                    )
            )
        }

        Column(
            modifier = Modifier.fillMaxSize().padding(20.dp),
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                // Small Album Art
                uiState.albumArt?.let {
                    Image(
                        bitmap = it.asImageBitmap(),
                        contentDescription = null,
                        modifier = Modifier.size(60.dp).clip(RoundedCornerShape(8.dp)),
                        contentScale = ContentScale.Crop
                    )
                }

                Column {
                    Text(
                        text = uiState.title.ifEmpty { "Beggie Beggie" },
                        color = Color.White,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Bold,
                        maxLines = 1
                    )
                    Text(
                        text = uiState.artist.ifEmpty { "Ayra Starr / CKay" },
                        color = Color.LightGray,
                        fontSize = 13.sp
                    )
                }
            }


            // Progress Slider
            Slider(
                value = uiState.progress,
                onValueChange = {},
                modifier = Modifier.height(10.dp),
                colors = SliderDefaults.colors(
                    thumbColor = Color.Transparent,
                    activeTrackColor = Color(0xFFFF9800),
                    inactiveTrackColor = Color.White.copy(alpha = 0.2f)
                )
            )

            // Controls
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { viewModel.skipToPrevious() }) {
                    Text("\u23ee", color = Color.White, fontSize = 24.sp)
                }
                Spacer(Modifier.width(16.dp))
                Box(
                    modifier = Modifier
                        .size(56.dp)
                        .clip(CircleShape)
                        .background(Color(0xFFFF9800))
                        .clickable { viewModel.togglePlayback() },
                    contentAlignment = Alignment.Center
                ) {
                    Text(
                        if (uiState.isPlaying) "\u23f8" else "\u25b6",
                        color = Color.White,
                        fontSize = 32.sp
                    )
                }
                Spacer(Modifier.width(16.dp))
                IconButton(onClick = { viewModel.skipToNext() }) {
                    Text("\u23ed", color = Color.White, fontSize = 24.sp)
                }
            }
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
            .background(Color(0xFF1E2229))
            .padding(16.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxSize(),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(weatherState?.conditionIcon ?: "☁️", fontSize = 48.sp)
                Spacer(Modifier.width(16.dp))
                Text(
                    text = "${weatherState?.temperature ?: 13}°",
                    color = Color.White,
                    fontSize = 48.sp,
                    fontWeight = FontWeight.Light
                )
            }
            
            Column(horizontalAlignment = Alignment.End) {
                Text("14° 12°", color = Color.Gray, fontSize = 14.sp)
            }
        }
    }
}
