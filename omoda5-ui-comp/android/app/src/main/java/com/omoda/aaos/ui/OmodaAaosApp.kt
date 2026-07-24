package com.omoda.aaos.ui

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*
import com.omoda.aaos.ui.screens.*

enum class AaosScreen {
    HOME,
    INSTRUMENT_CLUSTER,
    CARPLAY,
    VEHICLE_CONTROL,
    CLIMATE,
    APPS
}

@Composable
fun OmodaAaosApp() {
    var activeScreen by remember { mutableStateOf(AaosScreen.HOME) }
    var speedKmh by remember { mutableStateOf(72) }
    var cabinTempC by remember { mutableStateOf(22) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(AaosSurface)
    ) {
        // AAOS Top Status Header
        TopStatusBar(
            speedKmh = speedKmh,
            outsideTemp = 24,
            activeScreen = activeScreen,
            onScreenSelect = { activeScreen = it }
        )

        // Main Screen Viewport
        Box(
            modifier = Modifier
                .weight(1f)
                .fillMaxWidth()
        ) {
            when (activeScreen) {
                AaosScreen.HOME -> HomeScreen(
                    onNavigate = { activeScreen = it }
                )
                AaosScreen.INSTRUMENT_CLUSTER -> TeslaClusterScreen(
                    speedKmh = speedKmh,
                    onSpeedChange = { speedKmh = it }
                )
                AaosScreen.CARPLAY -> CarPlayDashboardScreen(
                    onReturnHome = { activeScreen = AaosScreen.HOME }
                )
                AaosScreen.VEHICLE_CONTROL -> VehicleControlScreen()
                AaosScreen.CLIMATE -> ClimateControlScreen(
                    temp = cabinTempC,
                    onTempChange = { cabinTempC = it }
                )
                AaosScreen.APPS -> AppsGridScreen()
            }
        }

        // AAOS Standardized Bottom Touch Dock (min 48dp touch target)
        AaosBottomDock(
            activeScreen = activeScreen,
            cabinTempC = cabinTempC,
            onScreenSelect = { activeScreen = it },
            onTempChange = { cabinTempC = it }
        )
    }
}

@Composable
fun TopStatusBar(
    speedKmh: Int,
    outsideTemp: Int,
    activeScreen: AaosScreen,
    onScreenSelect: (AaosScreen) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(52.dp)
            .background(AaosSurfaceContainer)
            .padding(horizontal = 16.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceBetween
    ) {
        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            Text(
                text = "OMODA 5 AAOS",
                fontWeight = FontWeight.Bold,
                fontSize = 14.sp,
                color = AaosPrimaryCyan
            )
            Box(
                modifier = Modifier
                    .background(AaosSurfaceContainerHigh, RoundedCornerShape(8.dp))
                    .padding(horizontal = 8.dp, vertical = 4.dp)
            ) {
                Text(
                    text = "$speedKmh KM/H",
                    fontWeight = FontWeight.Bold,
                    fontSize = 12.sp,
                    color = Color.White
                )
            }
        }

        Row(
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Text(
                text = "$outsideTemp°C Sunny",
                fontSize = 12.sp,
                color = AaosOnSurfaceVariant
            )
            Icon(
                imageVector = Icons.Default.Wifi,
                contentDescription = "Connected",
                tint = AaosPrimaryCyan,
                modifier = Modifier.size(18.dp)
            )
        }
    }
}

@Composable
fun AaosBottomDock(
    activeScreen: AaosScreen,
    cabinTempC: Int,
    onScreenSelect: (AaosScreen) -> Unit,
    onTempChange: (Int) -> Unit
) {
    Row(
        modifier = Modifier
            .fillMaxWidth()
            .height(72.dp)
            .background(Color(0xFF0A0E1A))
            .padding(horizontal = 16.dp),
        verticalAlignment = Alignment.CenterVertically,
        horizontalArrangement = Arrangement.SpaceEvenly
    ) {
        DockItem(
            icon = Icons.Default.Home,
            label = "Home",
            isSelected = activeScreen == AaosScreen.HOME,
            onClick = { onScreenSelect(AaosScreen.HOME) }
        )
        DockItem(
            icon = Icons.Default.Speed,
            label = "Tesla Gauges",
            isSelected = activeScreen == AaosScreen.INSTRUMENT_CLUSTER,
            onClick = { onScreenSelect(AaosScreen.INSTRUMENT_CLUSTER) }
        )
        DockItem(
            icon = Icons.Default.DirectionsCar,
            label = "Controls",
            isSelected = activeScreen == AaosScreen.VEHICLE_CONTROL,
            onClick = { onScreenSelect(AaosScreen.VEHICLE_CONTROL) }
        )
        
        // Climate Quick Pill
        Row(
            verticalAlignment = Alignment.CenterVertically,
            modifier = Modifier
                .clip(RoundedCornerShape(16.dp))
                .background(AaosSurfaceContainer)
                .padding(horizontal = 12.dp, vertical = 6.dp)
        ) {
            IconButton(
                onClick = { onTempChange(cabinTempC - 1) },
                modifier = Modifier.size(40.dp)
            ) {
                Text("-", fontSize = 20.sp, fontWeight = FontWeight.Bold, color = Color.White)
            }
            Text(
                text = "$cabinTempC°C",
                fontWeight = FontWeight.Bold,
                fontSize = 14.sp,
                color = AaosPrimaryCyan,
                modifier = Modifier
                    .clickable { onScreenSelect(AaosScreen.CLIMATE) }
                    .padding(horizontal = 8.dp)
            )
            IconButton(
                onClick = { onTempChange(cabinTempC + 1) },
                modifier = Modifier.size(40.dp)
            ) {
                Text("+", fontSize = 20.sp, fontWeight = FontWeight.Bold, color = Color.White)
            }
        }

        DockItem(
            icon = Icons.Default.Smartphone,
            label = "CarPlay",
            isSelected = activeScreen == AaosScreen.CARPLAY,
            onClick = { onScreenSelect(AaosScreen.CARPLAY) }
        )
        DockItem(
            icon = Icons.Default.Apps,
            label = "Apps",
            isSelected = activeScreen == AaosScreen.APPS,
            onClick = { onScreenSelect(AaosScreen.APPS) }
        )
    }
}

@Composable
fun DockItem(
    icon: ImageVector,
    label: String,
    isSelected: Boolean,
    onClick: () -> Unit
) {
    Column(
        horizontalAlignment = Alignment.CenterHorizontally,
        modifier = Modifier
            .clip(RoundedCornerShape(12.dp))
            .background(if (isSelected) AaosSurfaceContainerHigh else Color.Transparent)
            .clickable { onClick() }
            .padding(horizontal = 12.dp, vertical = 8.dp)
    ) {
        Icon(
            imageVector = icon,
            contentDescription = label,
            tint = if (isSelected) AaosPrimaryCyan else AaosOnSurfaceVariant,
            modifier = Modifier.size(24.dp)
        )
        Text(
            text = label,
            fontSize = 10.sp,
            fontWeight = FontWeight.Medium,
            color = if (isSelected) Color.White else AaosOnSurfaceVariant
        )
    }
}
