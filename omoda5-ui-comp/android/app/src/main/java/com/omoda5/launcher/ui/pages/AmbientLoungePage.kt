package com.omoda5.launcher.ui.pages

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
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.*

/**
 * 4. İlginç & Modern Sayfa 2: "Ambient Executive Lounge"
 * Tam ekran dinamik degrade arka plan, biyolojik ritm ambiyans, koltuk masaj/ısıtma, synced lyrics.
 */
@Composable
fun AmbientLoungePage(
    onNavigateToPage: (Int) -> Unit = {}
) {
    var selectedColor by remember { mutableStateOf(NeonPurple) }
    var massageLevel by remember { mutableStateOf("RELAX") }

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(
                Brush.verticalGradient(
                    colors = listOf(LoungeNightBg, selectedColor.copy(alpha = 0.3f), LoungeNightBg)
                )
            )
            .padding(20.dp)
    ) {
        Column(
            modifier = Modifier.fillMaxSize(),
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            // Header
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text("AMBIENT EXECUTIVE LOUNGE", color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                    Text("Circadian Rhythm & Executive Seating Wellness", color = Color.Gray, fontSize = 12.sp)
                }

                Button(
                    onClick = { onNavigateToPage(0) },
                    colors = ButtonDefaults.buttonColors(containerColor = GlassBorder)
                ) {
                    Text("Main Launcher")
                }
            }

            // Main Content Row
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .weight(1f)
                    .padding(vertical = 16.dp),
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Sol: Ambient Color & Seat Massage Control
                Card(
                    colors = CardDefaults.cardColors(containerColor = GlassBg),
                    shape = RoundedCornerShape(28.dp),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .border(1.dp, GlassBorder, RoundedCornerShape(28.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(20.dp),
                        verticalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("CIRCADIAN AMBIENT LIGHTING", color = NeonPurple, fontSize = 12.sp, fontWeight = FontWeight.Bold)

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(12.dp),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            listOf(NeonPurple, NeonCyan, NeonRose, NeonAmber, NeonEmerald).forEach { color ->
                                Box(
                                    modifier = Modifier
                                        .size(44.dp)
                                        .clip(CircleShape)
                                        .background(color)
                                        .border(
                                            if (selectedColor == color) 3.dp else 0.dp,
                                            Color.White,
                                            CircleShape
                                        )
                                )
                            }
                        }

                        Divider(color = GlassBorder)

                        Text("EXECUTIVE SEAT MASSAGE", color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)

                        Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                            listOf("OFF", "RELAX", "WAVE", "LUMBAR").forEach { mode ->
                                Button(
                                    onClick = { massageLevel = mode },
                                    colors = ButtonDefaults.buttonColors(
                                        containerColor = if (massageLevel == mode) NeonPurple else GlassBorder
                                    ),
                                    shape = RoundedCornerShape(16.dp)
                                ) {
                                    Text(mode, fontSize = 11.sp)
                                }
                            }
                        }
                    }
                }

                // Sağ: Synced Lyrics Typography Display
                Card(
                    colors = CardDefaults.cardColors(containerColor = GlassBg),
                    shape = RoundedCornerShape(28.dp),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxHeight()
                        .border(1.dp, GlassBorder, RoundedCornerShape(28.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(20.dp),
                        verticalArrangement = Arrangement.Center,
                        horizontalAlignment = Alignment.CenterHorizontally
                    ) {
                        Text(
                            text = "Drifting softly through the evening city lights...",
                            color = Color.Gray,
                            fontSize = 14.sp
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "Where the ambient glow warms the quiet night",
                            color = Color.White,
                            fontSize = 22.sp,
                            fontWeight = FontWeight.ExtraBold
                        )
                        Spacer(modifier = Modifier.height(16.dp))
                        Text(
                            text = "Feel the rhythm flow, quiet peace inside...",
                            color = Color.Gray,
                            fontSize = 14.sp
                        )
                    }
                }
            }

            // Footer
            Text("Lounge Mode Active • 22°C Interior Temp", color = Color.Gray, fontSize = 11.sp)
        }
    }
}
