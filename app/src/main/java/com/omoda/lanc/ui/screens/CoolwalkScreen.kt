package com.omoda.lanc.ui.screens

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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import com.omoda.lanc.core.SplitManager
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.ui.components.CoolwalkMediaCard
import com.omoda.lanc.ui.components.CoolwalkWeatherCard
import com.omoda.lanc.ui.components.CarButton
import com.omoda.lanc.ui.components.MinCarTouchTarget
import java.util.*
import kotlinx.coroutines.delay

@Composable
fun CoolwalkScreen(
    viewModel: MediaControllerViewModel = viewModel(),
    onOpenApps: () -> Unit,
    onBack: () -> Unit
) {
    val context = LocalContext.current
    var isMapOpen by remember { mutableStateOf(false) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        Row(modifier = Modifier.weight(1f)) {
            // --- 1. SIDEBAR (Left Rail) ---
            CoolwalkSidebar(
                onMapClick = {
                    isMapOpen = true
                    SplitManager.launchCoolwalkSplit(context, SplitManager.MAPS_GOOGLE)
                },
                onPlusClick = { /* Add widget? */ }
            )

            // --- 2. MAIN AREA ---
            Row(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(top = 16.dp, end = 16.dp, bottom = 8.dp),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Left Panel: Media + Weather
                Column(
                    modifier = Modifier.weight(0.4f).fillMaxHeight(),
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    CoolwalkMediaCard(viewModel, Modifier.weight(1.5f))
                    CoolwalkWeatherCard(Modifier.weight(1f))
                }

                // Right Panel: Maps Area
                Box(
                    modifier = Modifier
                        .weight(0.6f)
                        .fillMaxHeight()
                        .clip(RoundedCornerShape(32.dp))
                        .background(if (isMapOpen) Color.Transparent else Color(0xFF1A1C1E)),
                    contentAlignment = Alignment.Center
                ) {
                    if (!isMapOpen) {
                        Column(horizontalAlignment = Alignment.CenterHorizontally) {
                            Text("📍", fontSize = 64.sp)
                            Spacer(Modifier.height(24.dp))
                            CarButton(
                                onClick = {
                                    isMapOpen = true
                                    SplitManager.launchCoolwalkSplit(context, SplitManager.MAPS_GOOGLE)
                                },
                                text = "Google Maps'i Başlat",
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF4285F4))
                            )
                        }
                    }
                }
            }

        }

        // --- 3. BOTTOM BAR ---
        CoolwalkBottomBar(onOpenApps = onOpenApps, onBack = onBack)
    }
}

@Composable
private fun CoolwalkSidebar(onMapClick: () -> Unit, onPlusClick: () -> Unit) {
    Column(
        modifier = Modifier
            .width(88.dp)
            .fillMaxHeight()
            .padding(vertical = 24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(24.dp)
    ) {
        SidebarIconItem("⚙️")
        SidebarIconItem("🎧")
        Spacer(Modifier.height(24.dp))
        SidebarIconItem("📍", onClick = onMapClick)
        SidebarIconItem("Ⓐ")
        SidebarIconItem("+", onClick = onPlusClick)
    }
}

@Composable
private fun SidebarIconItem(icon: String, onClick: () -> Unit = {}) {
    Box(
        modifier = Modifier
            .size(MinCarTouchTarget)
            .clip(CircleShape)
            .background(Color.White.copy(alpha = 0.05f))
            .clickable { onClick() },
        contentAlignment = Alignment.Center
    ) {
        Text(icon, color = Color.White, fontSize = 28.sp)
    }
}

@Composable
private fun CoolwalkBottomBar(onOpenApps: () -> Unit, onBack: () -> Unit) {
    var currentTime by remember { mutableStateOf(Calendar.getInstance()) }
    
    LaunchedEffect(Unit) {
        while(true) {
            currentTime = Calendar.getInstance()
            delay(1000)
        }
    }

    val timeStr = "%02d:%02d".format(currentTime.get(Calendar.HOUR_OF_DAY), currentTime.get(Calendar.MINUTE))
    val dateStr = java.text.SimpleDateFormat("EEE, MMM d", Locale.ENGLISH).format(currentTime.time)

    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(88.dp)
            .padding(horizontal = 24.dp),
        verticalAlignment = Alignment.CenterVertically
    ) {
        // App Drawer Icon
        Box(
            modifier = Modifier
                .size(MinCarTouchTarget)
                .clip(RoundedCornerShape(12.dp))
                .background(Color(0xFF4D3D33))
                .clickable { onOpenApps() },
            contentAlignment = Alignment.Center
        ) {
            Text("⠿", color = Color.White, fontSize = 32.sp)
        }

        Spacer(Modifier.width(32.dp))

        // Time and Date
        Text(
            text = "$timeStr  $dateStr",
            color = Color.White,
            fontSize = 24.sp,
            fontWeight = FontWeight.Medium
        )
        
        Spacer(Modifier.weight(1f))
        
        // Back Button
        Box(
            modifier = Modifier
                .defaultMinSize(minWidth = MinCarTouchTarget, minHeight = MinCarTouchTarget)
                .clickable { onBack() }
                .padding(16.dp),
            contentAlignment = Alignment.Center
        ) {
            Text(
                text = "HOME",
                color = Color.Gray,
                fontSize = 20.sp,
                fontWeight = FontWeight.Bold
            )
        }
    }
}
