package com.omoda.lanc.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.omoda.lanc.core.CompassManager
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.network.WeatherManager
import java.util.*
import kotlinx.coroutines.delay
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.foundation.Image
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.foundation.Canvas
import androidx.compose.ui.draw.blur
import androidx.compose.ui.geometry.Offset


import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import com.omoda.lanc.ui.theme.OmodaCyan

@Composable
fun SylvieScreen(
    viewModel: MediaControllerViewModel = viewModel(),
    onBack: () -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        // --- 1. SYLVIE SIDEBAR (Darkest) ---
        SylvieSidebar(onHomeClick = onBack)

        // --- 2. MAIN GRID ---
        Column(
            modifier = Modifier
                .fillMaxSize()
                .padding(16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Top Header
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text("SYLVIE", color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold, letterSpacing = 2.sp)
                Text("📶", color = Color.White.copy(alpha = 0.5f), fontSize = 14.sp)
            }

            Row(
                modifier = Modifier.weight(1f),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                Column(
                    modifier = Modifier.weight(2f),
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    Row(
                        modifier = Modifier.weight(1f),
                        horizontalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        SylvieClockWidget(Modifier.weight(1.2f))
                        SylvieWeatherWidget(Modifier.weight(0.8f))
                    }
                    SylvieMediaWidget(viewModel, Modifier.weight(1f))
                }

                SylvieCompassWidget(Modifier.weight(1f).fillMaxHeight())
            }
        }
    }
}

@Composable
private fun SylvieSidebar(onHomeClick: () -> Unit) {
    Column(
        modifier = Modifier
            .width(64.dp)
            .fillMaxHeight()
            .background(Color(0xFF080808))
            .padding(vertical = 20.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        Column(verticalArrangement = Arrangement.spacedBy(20.dp)) {
            SidebarIcon("💡")
            SidebarIcon("📹")
            SidebarIcon("🔊")
            SidebarIcon("ᛒ")
            SidebarIcon("📻")
        }
        Column(verticalArrangement = Arrangement.spacedBy(20.dp)) {
            SidebarIcon("⠿")
            SidebarIcon("⚙️")
            SidebarIcon("🏠", onClick = onHomeClick)
        }
    }
}

@Composable
private fun SidebarIcon(icon: String, onClick: () -> Unit = {}) {
    Text(
        text = icon,
        color = Color.White.copy(alpha = 0.6f),
        fontSize = 20.sp,
        modifier = Modifier.clickable { onClick() }.padding(8.dp)
    )
}

@Composable
private fun SylvieClockWidget(modifier: Modifier) {
    var time by remember { mutableStateOf(Calendar.getInstance()) }
    LaunchedEffect(Unit) {
        while (true) {
            time = Calendar.getInstance()
            delay(1000)
        }
    }
    val timeStr = "%02d:%02d".format(time.get(Calendar.HOUR_OF_DAY), time.get(Calendar.MINUTE))
    val dateStr = java.text.SimpleDateFormat("EEEE, MMMM d", Locale.ENGLISH).format(time.time)

    Box(
        modifier = modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(8.dp))
            .background(Color(0xFF0F0F0F))
            .border(0.5.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(8.dp))
            .padding(24.dp),
        contentAlignment = Alignment.BottomStart
    ) {
        Column {
            Text(timeStr, color = Color.White, fontSize = 64.sp, fontWeight = FontWeight.Light)
            Text(dateStr, color = Color.Gray, fontSize = 14.sp)
        }
    }
}

@Composable
private fun SylvieWeatherWidget(modifier: Modifier) {
    val state by WeatherManager.weatherState.collectAsState()
    Box(
        modifier = modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(8.dp))
            .background(Color(0xFF0F0F0F))
            .border(0.5.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(8.dp))
            .padding(24.dp),
        contentAlignment = Alignment.BottomStart
    ) {
        Column {
            Text(state?.conditionIcon ?: "☁️", fontSize = 48.sp)
            Spacer(Modifier.height(8.dp))
            Text("${state?.temperature ?: "--"}°C", color = Color.White, fontSize = 32.sp, fontWeight = FontWeight.Light)
            Text(state?.conditionLabel?.uppercase() ?: "UNKNOWN", color = Color.Gray, fontSize = 10.sp, letterSpacing = 1.sp)
        }
    }
}

@Composable
private fun SylvieMediaWidget(viewModel: MediaControllerViewModel, modifier: Modifier) {
    val uiState by viewModel.mediaState.collectAsState()
    Box(
        modifier = modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(8.dp))
            .background(Color(0xFF141414))
            .border(0.5.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(8.dp))
    ) {
        // Album Art Background
        uiState.albumArt?.let {
            Image(
                bitmap = it.asImageBitmap(),
                contentDescription = null,
                modifier = Modifier.fillMaxSize().blur(20.dp),
                contentScale = ContentScale.Crop,
                alpha = 0.3f
            )
        }

        Column(
            modifier = Modifier.fillMaxSize().padding(24.dp),
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            Column {
                Text("NOW PLAYING", color = Color.White.copy(alpha = 0.3f), fontSize = 10.sp, fontWeight = FontWeight.Bold)
                Spacer(Modifier.height(8.dp))
                Text(uiState.title.ifEmpty { "Not Playing" }, color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                Text(uiState.artist.ifEmpty { "Omoda 5" }, color = Color.Gray, fontSize = 14.sp)
            }

            // Simple line progress
            Box(Modifier.fillMaxWidth().height(2.dp).background(Color.White.copy(alpha = 0.1f))) {
                Box(Modifier.fillMaxWidth(uiState.progress).height(2.dp).background(Color.White))
            }

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.Center,
                verticalAlignment = Alignment.CenterVertically
            ) {
                IconButton(onClick = { viewModel.skipToPrevious() }) { Text("⏪", color = Color.White, fontSize = 20.sp) }
                Spacer(Modifier.width(32.dp))
                Box(
                    modifier = Modifier.size(56.dp).clip(CircleShape).background(Color.White).clickable { viewModel.togglePlayback() },
                    contentAlignment = Alignment.Center
                ) {
                    Text(if (uiState.isPlaying) "⏸" else "▶", color = Color.Black, fontSize = 24.sp)
                }
                Spacer(Modifier.width(32.dp))
                IconButton(onClick = { viewModel.skipToNext() }) { Text("⏩", color = Color.White, fontSize = 20.sp) }
            }
        }
    }
}

@Composable
private fun SylvieCompassWidget(modifier: Modifier) {
    val bearing by CompassManager.bearing.collectAsState()
    val location by CompassManager.location.collectAsState()

    Box(
        modifier = modifier
            .fillMaxSize()
            .clip(RoundedCornerShape(8.dp))
            .background(Color(0xFF0F0F0F))
            .border(0.5.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(8.dp))
            .padding(24.dp)
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text("COMPASS", modifier = Modifier.align(Alignment.Start), color = Color.White.copy(alpha = 0.3f), fontSize = 10.sp, fontWeight = FontWeight.Bold)
            
            Box(modifier = Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) {
                // Outer ring
                Canvas(modifier = Modifier.size(220.dp)) {
                    drawCircle(color = Color.White.copy(alpha = 0.05f), style = Stroke(1.dp.toPx()))
                }
                
                // Rotating Ring with Cardinal Points
                Box(modifier = Modifier.size(220.dp).graphicsLayer { rotationZ = -bearing }) {
                    Canvas(modifier = Modifier.fillMaxSize()) {
                        val radius = size.minDimension / 2
                        val center = Offset(size.width / 2, size.height / 2)
                        
                        // Draw degree marks
                        for (i in 0 until 360 step 30) {
                            val angleRad = Math.toRadians(i.toDouble() - 90).toFloat()
                            val start = Offset(
                                center.x + Math.cos(angleRad.toDouble()).toFloat() * (radius - 10.dp.toPx()),
                                center.y + Math.sin(angleRad.toDouble()).toFloat() * (radius - 10.dp.toPx())
                            )
                            val end = Offset(
                                center.x + Math.cos(angleRad.toDouble()).toFloat() * radius,
                                center.y + Math.sin(angleRad.toDouble()).toFloat() * radius
                            )
                            drawLine(color = Color.White.copy(alpha = 0.2f), start = start, end = end, strokeWidth = 1.dp.toPx())
                        }
                    }
                    
                    Text("N", Modifier.align(Alignment.TopCenter).padding(top = 12.dp), color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                    Text("S", Modifier.align(Alignment.BottomCenter).padding(bottom = 12.dp), color = Color.White.copy(alpha = 0.6f), fontSize = 12.sp)
                    Text("E", Modifier.align(Alignment.CenterEnd).padding(end = 12.dp), color = Color.White.copy(alpha = 0.6f), fontSize = 12.sp)
                    Text("W", Modifier.align(Alignment.CenterStart).padding(start = 12.dp), color = Color.White.copy(alpha = 0.6f), fontSize = 12.sp)
                }
                
                // Fixed Center Arrow (Pointer)
                Icon(
                    imageVector = Icons.Default.KeyboardArrowUp,
                    contentDescription = null,
                    tint = Color.White,
                    modifier = Modifier.size(40.dp).graphicsLayer { translationY = -10f }
                )
                
                // Degree Text in center
                Text(
                    text = "${bearing.toInt()}°",
                    color = Color.White,
                    fontSize = 24.sp,
                    fontWeight = FontWeight.Light,
                    modifier = Modifier.align(Alignment.Center).padding(top = 40.dp)
                )
            }

            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                Column {
                    Text("LATITUDE", color = Color.White.copy(alpha = 0.3f), fontSize = 8.sp, fontWeight = FontWeight.Bold)
                    Text("%.4f° N".format(location?.latitude ?: 39.7579), color = Color.White, fontSize = 11.sp)
                }
                Column(horizontalAlignment = Alignment.End) {
                    Text("LONGITUDE", color = Color.White.copy(alpha = 0.3f), fontSize = 8.sp, fontWeight = FontWeight.Bold)
                    Text("%.4f° W".format(location?.longitude ?: 33.5108), color = Color.White, fontSize = 11.sp)
                }
            }
        }
    }
}

