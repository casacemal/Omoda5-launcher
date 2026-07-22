package com.omoda.lanc.ui.screens

import android.content.Context
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.lifecycle.viewmodel.compose.viewModel
import androidx.compose.foundation.Image
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.draw.blur
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.SplitManager
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.ui.theme.*
import com.omoda.lanc.ui.components.BottomNavBar
import com.omoda.lanc.ui.components.GlassCard
import com.omoda.lanc.ui.widgets.vehicle.PremiumCarWidget
import com.omoda.lanc.ui.components.CompactClockWidget

@Composable
fun DashboardScreen(
    viewModel: MediaControllerViewModel = viewModel(),
    onBack: () -> Unit
) {
    val context = LocalContext.current
    var vehicleState by remember { mutableStateOf(com.omoda.lanc.core.VehicleController.getInstance(context).getVehicleState()) }

    val configuration = LocalConfiguration.current
    val isHandheld = configuration.screenWidthDp < 600
    val isPortrait = configuration.orientation == android.content.res.Configuration.ORIENTATION_PORTRAIT

    LaunchedEffect(Unit) {
        com.omoda.lanc.core.EventBus.events.collect { event ->
            if (event is com.omoda.lanc.core.Event.VehicleEvent.StateUpdated) {
                vehicleState = event.state
            }
        }
    }

    Box(modifier = Modifier.fillMaxSize().background(DarkPurpleBg)) {
        Column(modifier = Modifier.fillMaxSize()) {
            
            // MAIN CONTENT
            if (isHandheld && isPortrait) {
                // PHONE PORTRAIT LAYOUT
                val scrollState = rememberScrollState()
                Column(
                    modifier = Modifier
                        .weight(1f)
                        .padding(16.dp)
                        .verticalScroll(scrollState),
                    verticalArrangement = Arrangement.spacedBy(16.dp)
                ) {
                    // Car View on top
                    Box(modifier = Modifier.fillMaxWidth().height(450.dp)) {
                        PremiumCarWidget().Content()
                    }
                    
                    // Cards stacked vertically
                    CompactClockWidget(modifier = Modifier.fillMaxWidth().height(100.dp))
                    DashboardInfoCard()
                    DashboardBatteryCard(vehicleState)
                    DashboardMapCard(context)
                    DashboardMediaWidgetSmall(viewModel, Modifier.fillMaxWidth().height(200.dp))
                }
            } else {
                // TABLET / CAR LANDSCAPE LAYOUT
                Row(
                    modifier = Modifier
                        .weight(1f)
                        .padding(8.dp),
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    // LEFT PANEL: Premium Car View
                    Box(modifier = Modifier.weight(0.4f)) {
                        PremiumCarWidget().Content()
                    }

                    // RIGHT PANEL: Grid of GlassCards
                    Column(
                        modifier = Modifier.weight(0.6f),
                        verticalArrangement = Arrangement.spacedBy(16.dp)
                    ) {
                        // Top Row
                        Row(
                            modifier = Modifier.weight(1f),
                            horizontalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            Column(modifier = Modifier.weight(1f), verticalArrangement = Arrangement.spacedBy(16.dp)) {
                                CompactClockWidget(modifier = Modifier.fillMaxWidth().height(100.dp))
                                DashboardInfoCard(modifier = Modifier.weight(1f).fillMaxWidth())
                            }
                            DashboardMapCard(context, modifier = Modifier.weight(1f))
                        }

                        // Bottom Row
                        Row(
                            modifier = Modifier.weight(1f),
                            horizontalArrangement = Arrangement.spacedBy(16.dp)
                        ) {
                            DashboardBatteryCard(vehicleState, modifier = Modifier.weight(1f))
                            DashboardMediaWidgetSmall(viewModel, Modifier.weight(1f))
                        }
                    }
                }
            }

            // BOTTOM NAVIGATION BAR
            BottomNavBar(
                driverTemp = vehicleState.acTemperatureDriver,
                passengerTemp = vehicleState.acTemperaturePassenger,
                onMenuClick = onBack
            )
        }
    }
}

@Composable
fun DashboardInfoCard(modifier: Modifier = Modifier.fillMaxWidth().height(200.dp)) {
    GlassCard(modifier = modifier) {
        Column(modifier = Modifier.padding(16.dp)) {
            Text("Omoda Assistant", color = Color.White, fontWeight = FontWeight.Bold)
            Spacer(Modifier.height(16.dp))
            Text("READY", color = GlowGreen, fontSize = 32.sp, fontWeight = FontWeight.Black)
            Text("System Normal", color = TextMuted)
        }
    }
}

@Composable
fun DashboardMapCard(context: Context, modifier: Modifier = Modifier.fillMaxWidth().height(200.dp)) {
    GlassCard(modifier = modifier) {
        Box(modifier = Modifier.fillMaxSize().clickable { 
            SplitManager.launchSplitMaps(context, SplitManager.MAPS_YANDEX)
        }, contentAlignment = Alignment.Center) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text("\uD83D\uDDFD", fontSize = 48.sp) // Map icon fallback
                Spacer(Modifier.height(8.dp))
                Text("Open Maps", color = Color.White, fontWeight = FontWeight.Bold)
            }
        }
    }
}

@Composable
fun DashboardBatteryCard(vehicleState: com.omoda.lanc.model.VehicleState, modifier: Modifier = Modifier.fillMaxWidth().height(200.dp)) {
    GlassCard(modifier = modifier) {
        val batteryLevel = vehicleState.evBatteryLevel
        val range = vehicleState.rangeKm
        val isRunning = vehicleState.isEngineRunning

        Column(modifier = Modifier.padding(16.dp)) {
            Text("Status", color = Color.White, fontWeight = FontWeight.Bold)
            Spacer(Modifier.height(8.dp))
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(modifier = Modifier.height(40.dp).weight(1f).clip(RoundedCornerShape(8.dp)).background(Color.White.copy(0.1f))) {
                    Box(modifier = Modifier.fillMaxHeight().fillMaxWidth(if(batteryLevel > 0) batteryLevel/100f else 0.5f).background(if (isRunning) GlowGreen else GlowYellow))
                }
            }
            Spacer(Modifier.height(16.dp))
            Row(horizontalArrangement = Arrangement.SpaceBetween, modifier = Modifier.fillMaxWidth()) {
                Column {
                    Text("${range.toInt()} km", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                    Text("Range", color = TextMuted, fontSize = 12.sp)
                }
                Column {
                    Text("${batteryLevel.toInt()}%", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                    Text("Battery", color = TextMuted, fontSize = 12.sp)
                }
            }
        }
    }
}

@Composable
fun DashboardMediaWidgetSmall(viewModel: MediaControllerViewModel, modifier: Modifier) {
    val uiState by viewModel.mediaState.collectAsState()
    GlassCard(modifier = modifier) {
        // Album Art Background
        uiState.albumArt?.let {
            Image(
                bitmap = it.asImageBitmap(),
                contentDescription = null,
                modifier = Modifier.fillMaxSize().blur(15.dp),
                contentScale = ContentScale.Crop,
                alpha = 0.3f
            )
        }

        Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.padding(16.dp).fillMaxSize(), verticalArrangement = Arrangement.Center) {
            Text(uiState.title.ifEmpty { "Müzik Çalmıyor" }, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Bold, maxLines = 1)
            Text(uiState.artist.ifEmpty { "Omoda Media" }, color = TextMuted, fontSize = 14.sp)
            Spacer(Modifier.height(16.dp))
            Row(horizontalArrangement = Arrangement.SpaceEvenly, modifier = Modifier.fillMaxWidth()) {
                IconButton(onClick = { viewModel.skipToPrevious() }) { Text("\u23ee", color = Color.White, fontSize = 20.sp) }
                IconButton(onClick = { viewModel.togglePlayback() }) { Text(if (uiState.isPlaying) "\u23f8" else "\u25b6", color = GlowYellow, fontSize = 28.sp) }
                IconButton(onClick = { viewModel.skipToNext() }) { Text("\u23ed", color = Color.White, fontSize = 20.sp) }
            }
        }
    }
}