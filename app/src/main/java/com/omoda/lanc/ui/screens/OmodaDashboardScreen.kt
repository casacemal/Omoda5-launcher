package com.omoda.lanc.ui.screens

import androidx.compose.animation.core.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.*
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.viewmodel.compose.viewModel
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.SplitManager
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.ui.components.*
import com.omoda.lanc.ui.theme.*
import com.omoda.lanc.network.WeatherManager
import kotlinx.coroutines.delay
import java.util.*

/**
 * Architecture 2.0: Omoda 5 Premium Coolwalk Dashboard
 * Replacing the Bento design with Mini-AA inspired split-screen layout.
 */
@Composable
fun OmodaDashboardScreen(
    vehicleState: VehicleState,
    viewModel: MediaControllerViewModel = viewModel(),
    onOpenApps: () -> Unit,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val mediaState by viewModel.mediaState.collectAsState()
    OmodaDashboardScreenContent(
        vehicleState = vehicleState,
        mediaState = mediaState,
        onTogglePlayback = { viewModel.togglePlayback() },
        onSkipNext = { viewModel.skipToNext() },
        onSkipPrevious = { viewModel.skipToPrevious() },
        onOpenApps = onOpenApps,
        onBack = onBack,
        modifier = modifier
    )
}

@Composable
fun OmodaDashboardScreenContent(
    vehicleState: VehicleState,
    mediaState: MediaControllerViewModel.MediaUiState,
    onTogglePlayback: () -> Unit,
    onSkipNext: () -> Unit,
    onSkipPrevious: () -> Unit,
    onOpenApps: () -> Unit,
    onBack: () -> Unit,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    var isMapOpen by remember { mutableStateOf(false) }

    Column(
        modifier = modifier
            .fillMaxSize()
            .background(Color.Black)
    ) {
        Row(modifier = Modifier.weight(1f)) {
            // --- 1. SIDEBAR (Left Rail) ---
            DashboardSidebar(
                onMapClick = {
                    isMapOpen = true
                    SplitManager.launchCoolwalkSplit(context, SplitManager.MAPS_YANDEX)
                },
                onSettingsClick = { /* Navigate to settings? */ },
                onOpenApps = onOpenApps
            )

            // --- 2. MAIN AREA ---
            Row(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(top = 16.dp, end = 16.dp, bottom = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Left Panel: Weather/Clock + Media
                Column(
                    modifier = Modifier.weight(0.4f).fillMaxHeight(),
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    // Small Weather and Clock at the top
                    DashboardTopStatus(Modifier.height(80.dp))

                    CoolwalkMediaCard(
                        uiState = mediaState,
                        onTogglePlayback = onTogglePlayback,
                        onSkipNext = onSkipNext,
                        onSkipPrevious = onSkipPrevious,
                        modifier = Modifier.weight(1f)
                    )
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
                                    SplitManager.launchCoolwalkSplit(context, SplitManager.MAPS_YANDEX)
                                },
                                text = "Navigasyonu Başlat",
                                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF4285F4))
                            )
                        }
                    }
                }
            }
        }
    }
}

@Composable
private fun DashboardSidebar(onMapClick: () -> Unit, onSettingsClick: () -> Unit, onOpenApps: () -> Unit) {
    Column(
        modifier = Modifier
            .width(100.dp)
            .fillMaxHeight()
            .padding(vertical = 16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        SidebarIconItem("⚙️", onClick = onSettingsClick)
        SidebarIconItem("🎧")
        Spacer(Modifier.height(8.dp))
        SidebarIconItem("📍", onClick = onMapClick)
        SidebarIconItem("Ⓐ")
        SidebarIconItem("🌡️")
        
        Spacer(Modifier.weight(1f))
        
        // App Drawer (Menu) Button at the bottom left corner
        Box(
            modifier = Modifier
                .size(72.dp)
                .clip(RoundedCornerShape(20.dp))
                .background(Color(0xFF2C2C2C))
                .clickable { onOpenApps() },
            contentAlignment = Alignment.Center
        ) {
            Text("⠿", color = Color.White, fontSize = 36.sp)
        }
    }
}

@Composable
private fun SidebarIconItem(icon: String, onClick: () -> Unit = {}) {
    Box(
        modifier = Modifier
            .size(72.dp)
            .clip(CircleShape)
            .background(Color.White.copy(alpha = 0.05f))
            .clickable { onClick() },
        contentAlignment = Alignment.Center
    ) {
        Text(icon, color = Color.White, fontSize = 32.sp)
    }
}

@Composable
private fun DashboardTopStatus(modifier: Modifier = Modifier) {
    var currentTime by remember { mutableStateOf(Calendar.getInstance()) }
    val weatherState by WeatherManager.weatherState.collectAsState()

    LaunchedEffect(Unit) {
        while(true) {
            currentTime = Calendar.getInstance()
            delay(1000)
        }
    }

    val timeStr = "%02d:%02d".format(currentTime.get(Calendar.HOUR_OF_DAY), currentTime.get(Calendar.MINUTE))

    Row(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(24.dp))
            .background(Color(0xFF1A1C1E))
            .padding(horizontal = 20.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        // Clock
        Text(
            text = timeStr,
            color = Color.White,
            fontSize = 32.sp,
            fontWeight = FontWeight.Bold
        )

        // Weather
        Row(verticalAlignment = Alignment.CenterVertically) {
            Text(weatherState?.conditionIcon ?: "☁️", fontSize = 32.sp)
            Spacer(Modifier.width(12.dp))
            Text(
                text = "${weatherState?.temperature ?: 13}°",
                color = Color.White,
                fontSize = 28.sp,
                fontWeight = FontWeight.Medium
            )
        }
    }
}

@Preview(showBackground = true, device = "spec:width=1280dp,height=800dp,orientation=landscape")
@Composable
fun OmodaDashboardScreenPreview() {
    AppTheme {
        OmodaDashboardScreenContent(
            vehicleState = VehicleState(speed = 65f),
            mediaState = MediaControllerViewModel.MediaUiState(
                title = "Gülümse Kaderine",
                artist = "Tarkan",
                isPlaying = true,
                progress = 0.4f
            ),
            onTogglePlayback = {},
            onSkipNext = {},
            onSkipPrevious = {},
            onOpenApps = {},
            onBack = {}
        )
    }
}
