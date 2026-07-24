package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*
import com.omoda.aaos.ui.AaosScreen

@Composable
fun HomeScreen(onNavigate: (AaosScreen) -> Unit) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text(
            text = "OMODA 5 COCKPIT DASHBOARD",
            fontSize = 18.sp,
            fontWeight = FontWeight.Bold,
            color = Color.White
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Navigation Widget Tile
            BentoWidget(
                modifier = Modifier.weight(1.5f),
                title = "Navigation",
                subtitle = "Turn Right onto Grand Ave",
                icon = Icons.Default.Navigation,
                badge = "1.2 km",
                cardColor = AaosSurfaceContainer,
                onClick = { onNavigate(AaosScreen.HOME) }
            )

            // Tesla Minimal Cluster Quick Tile
            BentoWidget(
                modifier = Modifier.weight(1f),
                title = "Tesla Gauges",
                subtitle = "Digital Speed & ADAS",
                icon = Icons.Default.Speed,
                badge = "Mode 3",
                cardColor = Color(0xDA121826),
                onClick = { onNavigate(AaosScreen.INSTRUMENT_CLUSTER) }
            )
        }

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // CarPlay Split Tile
            BentoWidget(
                modifier = Modifier.weight(1f),
                title = "Apple CarPlay 2.0",
                subtitle = "Split Dashboard Active",
                icon = Icons.Default.Smartphone,
                badge = "Connected",
                cardColor = Color(0x33007AFF),
                onClick = { onNavigate(AaosScreen.CARPLAY) }
            )

            // Vehicle Status Tile
            BentoWidget(
                modifier = Modifier.weight(1f),
                title = "Vehicle Systems",
                subtitle = "Doors, Roof & Lights",
                icon = Icons.Default.DirectionsCar,
                badge = "4 Door Lock",
                cardColor = AaosSurfaceContainer,
                onClick = { onNavigate(AaosScreen.VEHICLE_CONTROL) }
            )
        }
    }
}

@Composable
fun BentoWidget(
    modifier: Modifier = Modifier,
    title: String,
    subtitle: String,
    icon: ImageVector,
    badge: String,
    cardColor: Color,
    onClick: () -> Unit
) {
    Box(
        modifier = modifier
            .height(160.dp)
            .clip(RoundedCornerShape(24.dp))
            .background(cardColor)
            .clickable { onClick() }
            .padding(16.dp)
    ) {
        Column(
            modifier = Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(
                        imageVector = icon,
                        contentDescription = null,
                        tint = AaosPrimaryCyan,
                        modifier = Modifier.size(28.dp)
                    )
                    Spacer(modifier = Modifier.width(8.dp))
                    Text(
                        text = title,
                        fontSize = 16.sp,
                        fontWeight = FontWeight.Bold,
                        color = Color.White
                    )
                }
                Box(
                    modifier = Modifier
                        .background(Color(0x3306B6D4), RoundedCornerShape(8.dp))
                        .padding(horizontal = 8.dp, vertical = 4.dp)
                ) {
                    Text(text = badge, fontSize = 10.sp, color = AaosPrimaryCyan)
                }
            }

            Text(
                text = subtitle,
                fontSize = 13.sp,
                color = AaosOnSurfaceVariant
            )
        }
    }
}
