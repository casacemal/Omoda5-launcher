package com.omoda5.launcher.ui.pages

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.*

/**
 * 3. İlginç & Modern Sayfa 1: "Cyber-HUD & Telemetry Minimalist"
 * Merkezde devasa dijital hız göstergesi ve güç dağılım halkası (Power/G-Force Meter).
 * Yan Kanatlar: TPMS, batarya/sıcaklık, Canvas ile çizilmiş dinamik tork/güç grafiği.
 */
@Composable
fun CyberHudPage(
    onNavigateToPage: (Int) -> Unit = {}
) {
    var speed by remember { mutableStateOf(118) }
    var driveMode by remember { mutableStateOf("SPORT") }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(CyberDarkBg)
            .padding(16.dp),
        verticalArrangement = Arrangement.SpaceBetween
    ) {
        // Header Bar
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .border(0.5.dp, NeonAmber.copy(alpha = 0.4f), RoundedCornerShape(16.dp))
                .padding(12.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(Icons.Default.Memory, contentDescription = null, tint = NeonAmber)
                Spacer(modifier = Modifier.width(10.dp))
                Column {
                    Text("CYBER-HUD TELEMETRY SYSTEM", color = NeonAmber, fontSize = 14.sp, fontWeight = FontWeight.Black)
                    Text("Omoda 5 Performance Protocol • Real-time G-Force", color = NeonAmber.copy(alpha = 0.7f), fontSize = 10.sp)
                }
            }

            Button(
                onClick = { driveMode = if (driveMode == "SPORT") "RACE" else "SPORT" },
                colors = ButtonDefaults.buttonColors(containerColor = NeonAmber.copy(alpha = 0.2f)),
                shape = RoundedCornerShape(12.dp)
            ) {
                Text("MODE: $driveMode", color = NeonAmber, fontWeight = FontWeight.Bold)
            }
        }

        // Center Stage
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .weight(1f)
                .padding(vertical = 16.dp),
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            // Sol Kanat: TPMS & Engine Temp
            Card(
                colors = CardDefaults.cardColors(containerColor = CyberPanelBg),
                modifier = Modifier
                    .weight(0.3f)
                    .fillMaxHeight()
                    .border(1.dp, NeonAmber.copy(alpha = 0.3f), RoundedCornerShape(20.dp))
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Text("TPMS TYRE MATRIX", color = NeonAmber, fontSize = 11.sp, fontWeight = FontWeight.Bold)

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Column {
                            Text("FL: 33 PSI", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                            Text("RL: 33 PSI", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                        }
                        Column {
                            Text("FR: 33 PSI", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                            Text("RR: 33 PSI", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                        }
                    }

                    Column {
                        Text("ENGINE TEMP: 92°C", color = NeonAmber, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                        Text("TURBO BOOST: 1.4 BAR", color = NeonOrange, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }

            // Merkez: Devasa Dijital Hız Göstergesi
            Box(
                modifier = Modifier
                    .weight(0.4f)
                    .fillMaxHeight(),
                contentAlignment = Alignment.Center
            ) {
                Canvas(modifier = Modifier.size(240.dp)) {
                    drawCircle(
                        color = NeonAmber,
                        radius = size.minDimension / 2,
                        style = Stroke(width = 4.dp.toPx())
                    )
                }

                Box(
                    modifier = Modifier
                        .size(200.dp)
                        .clip(CircleShape)
                        .background(CyberDarkBg)
                        .border(2.dp, NeonAmber, CircleShape),
                    contentAlignment = Alignment.Center
                ) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Text("DIGITAL SPEED", color = NeonAmber.copy(alpha = 0.8f), fontSize = 10.sp)
                        Text("$speed", color = NeonAmber, fontSize = 64.sp, fontWeight = FontWeight.Black)
                        Text("KM/H", color = NeonAmber, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }

            // Sağ Kanat: Canvas ile Tork/Güç Grafiği
            Card(
                colors = CardDefaults.cardColors(containerColor = CyberPanelBg),
                modifier = Modifier
                    .weight(0.3f)
                    .fillMaxHeight()
                    .border(1.dp, NeonAmber.copy(alpha = 0.3f), RoundedCornerShape(20.dp))
            ) {
                Column(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(16.dp),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    Text("DYNAMIC POWER GRAPH", color = NeonAmber, fontSize = 11.sp, fontWeight = FontWeight.Bold)

                    // Canvas Dynamic Line Chart
                    Canvas(
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(100.dp)
                            .background(CyberDarkBg, RoundedCornerShape(12.dp))
                    ) {
                        val path = Path().apply {
                            moveTo(0f, size.height * 0.8f)
                            quadraticTo(size.width * 0.5f, size.height * 0.2f, size.width, size.height * 0.1f)
                        }
                        drawPath(path = path, color = NeonAmber, style = Stroke(width = 3.dp.toPx()))
                    }

                    Text("POWER: 142 KW • TORQUE: 290 NM", color = Color.White, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                }
            }
        }

        // Footer Bar
        Row(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(16.dp))
                .background(CyberPanelBg)
                .padding(12.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Text("HUD MODE ACTIVE • OMODA 5 TELEMETRY", color = NeonAmber, fontSize = 11.sp)
            TextButton(onClick = { onNavigateToPage(0) }) {
                Text("Return to Launcher", color = Color.White)
            }
        }
    }
}
