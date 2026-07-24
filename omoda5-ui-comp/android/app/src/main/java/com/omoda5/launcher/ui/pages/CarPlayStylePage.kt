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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.*

/**
 * 2. Apple CarPlay Konsept Sayfası (Split-Screen & Fluid)
 * Glassmorphism Status Dock bar, 2/3 Canlı Harita, 1/3 Apple Music & Akıllı Kısayollar.
 */
@Composable
fun CarPlayStylePage(
    onNavigateToPage: (Int) -> Unit = {}
) {
    var garageOpen by remember { mutableStateOf(false) }

    Row(
        modifier = Modifier
            .fillMaxSize()
            .background(CyberDarkBg)
            .padding(16.dp),
        horizontalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Sol Şeffaf Glassmorphism Status Dock Bar
        Column(
            modifier = Modifier
                .width(76.dp)
                .fillMaxHeight()
                .clip(RoundedCornerShape(28.dp))
                .background(GlassBg)
                .border(1.dp, GlassBorder, RoundedCornerShape(28.dp))
                .padding(vertical = 20.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text("09:41", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                Spacer(modifier = Modifier.height(12.dp))
                Icon(Icons.Default.Wifi, contentDescription = null, tint = NeonEmerald, modifier = Modifier.size(18.dp))
                Spacer(modifier = Modifier.height(6.dp))
                Icon(Icons.Default.BatteryChargingFull, contentDescription = null, tint = NeonEmerald, modifier = Modifier.size(18.dp))
            }

            Column(
                verticalArrangement = Arrangement.spacedBy(16.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                IconButton(
                    onClick = {},
                    modifier = Modifier
                        .size(48.dp)
                        .clip(RoundedCornerShape(16.dp))
                        .background(NeonBlue)
                ) {
                    Icon(Icons.Default.Place, contentDescription = null, tint = Color.White)
                }

                IconButton(
                    onClick = {},
                    modifier = Modifier
                        .size(48.dp)
                        .clip(RoundedCornerShape(16.dp))
                        .background(NeonRose)
                ) {
                    Icon(Icons.Default.MusicNote, contentDescription = null, tint = Color.White)
                }
            }

            IconButton(
                onClick = { onNavigateToPage(0) },
                modifier = Modifier
                    .size(48.dp)
                    .clip(RoundedCornerShape(16.dp))
                    .background(GlassBorder)
            ) {
                Icon(Icons.Default.Home, contentDescription = null, tint = Color.White)
            }
        }

        // Sağ Asimetrik Split-Screen
        Row(
            modifier = Modifier
                .weight(1f)
                .fillMaxHeight(),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Ana Odak (2/3 Area): Canlı Harita Kartı
            Card(
                colors = CardDefaults.cardColors(containerColor = GlassBg),
                shape = RoundedCornerShape(28.dp),
                modifier = Modifier
                    .weight(0.65f)
                    .fillMaxHeight()
                    .border(1.dp, GlassBorder, RoundedCornerShape(28.dp))
            ) {
                Box(
                    modifier = Modifier
                        .fillMaxSize()
                        .padding(20.dp)
                ) {
                    Column(
                        modifier = Modifier.fillMaxSize(),
                        verticalArrangement = Arrangement.SpaceBetween
                    ) {
                        // Floating Turn Instruction Box
                        Card(
                            colors = CardDefaults.cardColors(containerColor = CyberDarkBg.copy(alpha = 0.9f)),
                            shape = RoundedCornerShape(24.dp),
                            modifier = Modifier
                                .fillMaxWidth(0.9f)
                                .border(1.dp, GlassBorder, RoundedCornerShape(24.dp))
                        ) {
                            Row(
                                modifier = Modifier.padding(16.dp),
                                verticalAlignment = Alignment.CenterVertically
                            ) {
                                Box(
                                    modifier = Modifier
                                        .size(48.dp)
                                        .clip(RoundedCornerShape(16.dp))
                                        .background(NeonEmerald),
                                    contentAlignment = Alignment.Center
                                ) {
                                    Icon(Icons.Default.TurnRight, contentDescription = null, tint = CyberDarkBg)
                                }
                                Spacer(modifier = Modifier.width(16.dp))
                                Column {
                                    Text("In 300m Turn Right", color = NeonEmerald, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                                    Text("Atatürk Bulvarı", color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.ExtraBold)
                                }
                            }
                        }

                        // ETA Bottom Bar
                        Row(
                            modifier = Modifier
                                .fillMaxWidth()
                                .clip(RoundedCornerShape(20.dp))
                                .background(CyberDarkBg.copy(alpha = 0.8f))
                                .padding(14.dp),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Text("18 min", color = NeonEmerald, fontSize = 18.sp, fontWeight = FontWeight.Bold)
                                Spacer(modifier = Modifier.width(12.dp))
                                Text("12.4 km • ETA 10:48 AM", color = Color.LightGray, fontSize = 12.sp)
                            }
                            Button(
                                onClick = {},
                                colors = ButtonDefaults.buttonColors(containerColor = NeonBlue)
                            ) {
                                Text("Full Navigation")
                            }
                        }
                    }
                }
            }

            // İkincil Odak (1/3 Area): Apple Music & Smart Shortcuts
            Column(
                modifier = Modifier
                    .weight(0.35f)
                    .fillMaxHeight(),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Apple Music Tile
                Card(
                    colors = CardDefaults.cardColors(containerColor = GlassBg),
                    shape = RoundedCornerShape(28.dp),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth()
                        .border(1.dp, GlassBorder, RoundedCornerShape(28.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("APPLE MUSIC", color = NeonRose, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                        Column {
                            Text("Starboy", color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Bold)
                            Text("The Weeknd • Lossless Audio", color = Color.LightGray, fontSize = 12.sp)
                        }
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            IconButton(onClick = {}) { Icon(Icons.Default.SkipPrevious, contentDescription = null, tint = Color.White) }
                            IconButton(
                                onClick = {},
                                modifier = Modifier
                                    .clip(RoundedCornerShape(14.dp))
                                    .background(Color.White)
                            ) {
                                Icon(Icons.Default.Pause, contentDescription = null, tint = CyberDarkBg)
                            }
                            IconButton(onClick = {}) { Icon(Icons.Default.SkipNext, contentDescription = null, tint = Color.White) }
                        }
                    }
                }

                // Smart Shortcuts
                Card(
                    colors = CardDefaults.cardColors(containerColor = GlassBg),
                    shape = RoundedCornerShape(28.dp),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth()
                        .border(1.dp, GlassBorder, RoundedCornerShape(28.dp))
                ) {
                    Column(
                        modifier = Modifier
                            .fillMaxSize()
                            .padding(16.dp),
                        verticalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text("SMART SHORTCUTS", color = Color.LightGray, fontSize = 11.sp, fontWeight = FontWeight.Bold)

                        Row(
                            horizontalArrangement = Arrangement.spacedBy(8.dp),
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Button(
                                onClick = { garageOpen = !garageOpen },
                                colors = ButtonDefaults.buttonColors(containerColor = if (garageOpen) NeonEmerald.copy(alpha = 0.3f) else GlassBorder),
                                shape = RoundedCornerShape(18.dp),
                                modifier = Modifier.weight(1f)
                            ) {
                                Column(horizontalAlignment = Alignment.Start) {
                                    Icon(Icons.Default.VpnKey, contentDescription = null, tint = NeonEmerald)
                                    Text("Garage", fontSize = 11.sp)
                                }
                            }

                            Button(
                                onClick = {},
                                colors = ButtonDefaults.buttonColors(containerColor = GlassBorder),
                                shape = RoundedCornerShape(18.dp),
                                modifier = Modifier.weight(1f)
                            ) {
                                Column(horizontalAlignment = Alignment.Start) {
                                    Icon(Icons.Default.DarkMode, contentDescription = null, tint = NeonPurple)
                                    Text("Dark Mode", fontSize = 11.sp)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
