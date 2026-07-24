package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*

@Composable
fun CarPlayDashboardScreen(onReturnHome: () -> Unit) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text(
                text = "APPLE CARPLAY 2.0 DASHBOARD",
                fontSize = 16.sp,
                fontWeight = FontWeight.Bold,
                color = Color.White
            )

            Button(
                onClick = onReturnHome,
                colors = ButtonDefaults.buttonColors(containerColor = AaosSurfaceContainerHigh)
            ) {
                Icon(imageVector = Icons.Default.ArrowBack, contentDescription = "Return")
                Spacer(modifier = Modifier.width(6.dp))
                Text("Return to Omoda System")
            }
        }

        // CarPlay Split Layout
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // CarPlay Navigation Tile
            Box(
                modifier = Modifier
                    .weight(1.2f)
                    .height(200.dp)
                    .clip(RoundedCornerShape(24.dp))
                    .background(Color(0x33007AFF))
                    .padding(20.dp)
            ) {
                Column(verticalArrangement = Arrangement.SpaceBetween, modifier = Modifier.fillMaxSize()) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.Navigation, contentDescription = null, tint = CarPlayBlue)
                        Spacer(modifier = Modifier.width(8.dp))
                        Text("Apple Maps", fontWeight = FontWeight.Bold, color = Color.White)
                    }

                    Text("Turn Right on Innovation Way", fontSize = 18.sp, fontWeight = FontWeight.Bold, color = Color.White)
                    Text("3 min • 1.2 km away", fontSize = 12.sp, color = AaosOnSurfaceVariant)
                }
            }

            // CarPlay Music & Event Tile Column
            Column(
                modifier = Modifier.weight(1f),
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(94.dp)
                        .clip(RoundedCornerShape(20.dp))
                        .background(Color(0x33AF52DE))
                        .padding(12.dp)
                ) {
                    Row(
                        modifier = Modifier.fillMaxSize(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Column {
                            Text("Apple Music", fontSize = 10.sp, color = CarPlayPurple)
                            Text("Cyberpunk Horizon", fontWeight = FontWeight.Bold, color = Color.White)
                        }
                        Icon(Icons.Default.PlayArrow, contentDescription = "Play", tint = Color.White)
                    }
                }

                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .height(94.dp)
                        .clip(RoundedCornerShape(20.dp))
                        .background(Color(0x33FF9500))
                        .padding(12.dp)
                ) {
                    Column {
                        Text("Upcoming Event", fontSize = 10.sp, color = CarPlayOrange)
                        Text("Design Review @ 11:30 AM", fontWeight = FontWeight.Bold, color = Color.White)
                    }
                }
            }
        }
    }
}
