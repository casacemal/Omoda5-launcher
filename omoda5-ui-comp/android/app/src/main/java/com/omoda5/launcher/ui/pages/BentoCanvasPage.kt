package com.omoda5.launcher.ui.pages

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.*

/**
 * 5. İlginç & Modern Sayfa 3: "Modular Spatial Widget Canvas (Bento-Box Grid)"
 * Bento-Box grid (1x1, 2x2, 2x4 modüler kartlar)
 * Akıllı Ev / Otomasyon, Anlık Hava Durumu & AQI, Hvac Kabin Çarkı.
 */
@Composable
fun BentoCanvasPage(
    onNavigateToPage: (Int) -> Unit = {}
) {
    var acTemp by remember { mutableStateOf(21.5f) }
    var garageStatus by remember { mutableStateOf("LOCKED") }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(CyberDarkBg)
            .padding(16.dp),
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        // Header
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column {
                Text("MODULAR SPATIAL BENTO CANVAS", color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                Text("Bento-Box Grid • Customizable Spatial Driver Layout", color = Color.Gray, fontSize = 12.sp)
            }

            Button(
                onClick = { onNavigateToPage(0) },
                colors = ButtonDefaults.buttonColors(containerColor = CyberPanelBg)
            ) {
                Text("Main Launcher")
            }
        }

        // Bento Grid Layout
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f)
                .padding(vertical = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Widget 1 (2x2 Grid): Live Navigation Route
            Card(
                colors = CardDefaults.cardColors(containerColor = CyberPanelBg),
                shape = RoundedCornerShape(28.dp),
                modifier = Modifier
                    .weight(0.5f)
                    .fillMaxHeight()
                    .border(1.dp, CyberPanelBorder, RoundedCornerShape(28.dp))
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(20.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("LIVE ROUTE WIDGET", color = NeonCyan, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                        Text("18 MIN ETA", color = NeonEmerald, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                    }

                    Column {
                        Text("Kadıköy Sahil Yolu", color = Color.White, fontSize = 22.sp, fontWeight = FontWeight.Bold)
                        Text("Turn right in 300 meters onto Sahil", color = Color.Gray, fontSize = 14.sp)
                    }

                    Text("12.4 km remaining • Speed limit 80 km/h", color = Color.LightGray, fontSize = 12.sp)
                }
            }

            // Column 2 (1x1 & 1x1 Cards)
            Column(
                modifier = Modifier
                    .weight(0.25f)
                    .fillMaxHeight(),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Smart Home Widget
                Card(
                    colors = CardDefaults.cardColors(containerColor = CyberPanelBg),
                    shape = RoundedCornerShape(28.dp),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth()
                        .border(1.dp, CyberPanelBorder, RoundedCornerShape(28.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("SMART HOME", color = NeonPurple, fontSize = 11.sp, fontWeight = FontWeight.Bold)

                        Button(
                            onClick = { garageStatus = if (garageStatus == "LOCKED") "OPEN" else "LOCKED" },
                            colors = ButtonDefaults.buttonColors(
                                containerColor = if (garageStatus == "OPEN") NeonEmerald.copy(alpha = 0.2f) else CyberDarkBg
                            ),
                            shape = RoundedCornerShape(16.dp)
                        ) {
                            Text("Garage: $garageStatus")
                        }

                        Text("Hermes Protocol", color = Color.Gray, fontSize = 10.sp)
                    }
                }

                // Weather & AQI Widget
                Card(
                    colors = CardDefaults.cardColors(containerColor = CyberPanelBg),
                    shape = RoundedCornerShape(28.dp),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth()
                        .border(1.dp, CyberPanelBorder, RoundedCornerShape(28.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("WEATHER & AQI", color = NeonAmber, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                        Text("24°C • Clear Sky", color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                        Text("AQI: 8 (Excellent)", color = NeonEmerald, fontSize = 11.sp)
                    }
                }
            }

            // Column 3 (2x1 HVAC Wheel)
            Card(
                colors = CardDefaults.cardColors(containerColor = CyberPanelBg),
                shape = RoundedCornerShape(28.dp),
                modifier = Modifier
                    .weight(0.25f)
                    .fillMaxHeight()
                    .border(1.dp, CyberPanelBorder, RoundedCornerShape(28.dp))
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(20.dp),
                    verticalArrangement = Arrangement.SpaceBetween,
                    horizontalAlignment = Alignment.CenterHorizontally
                ) {
                    Text("CLIMATE CONTROL", color = NeonCyan, fontSize = 12.sp, fontWeight = FontWeight.Bold)

                    Text("${"%.1f".format(acTemp)}°C", color = Color.White, fontSize = 32.sp, fontWeight = FontWeight.Bold)

                    Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        IconButton(
                            onClick = { acTemp -= 0.5f },
                            modifier = Modifier.background(CyberDarkBg, RoundedCornerShape(12.dp))
                        ) {
                            Text("-", color = NeonCyan, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                        }

                        IconButton(
                            onClick = { acTemp += 0.5f },
                            modifier = Modifier.background(CyberDarkBg, RoundedCornerShape(12.dp))
                        ) {
                            Text("+", color = NeonCyan, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                        }
                    }

                    Text("Dual AC Active", color = Color.Gray, fontSize = 11.sp)
                }
            }
        }

        Text("Bento Grid Canvas Engine • Drag & Drop Ready", color = Color.Gray, fontSize = 11.sp)
    }
}
