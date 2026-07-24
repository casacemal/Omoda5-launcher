package com.omoda5.launcher.ui.pages

import androidx.compose.foundation.background
import androidx.compose.foundation.border
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
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.*

/**
 * 1. Android Auto Konsept Sayfası (Modern & Sleek)
 * Sol dikey Quick Navigation Bar, sağda Dashboard Tile ızgara düzeni (Material 3 Expressive Dark).
 */
@Composable
fun AndroidAutoStylePage(
    onNavigateToPage: (Int) -> Unit = {}
) {
    var activeTab by remember { mutableStateOf("MAP") }
    var isPlaying by remember { mutableStateOf(true) }

    Row(
        modifier = Modifier
            .fillMaxSize()
            .background(CyberDarkBg)
            .padding(16.dp),
        horizontalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // Sol Dikey Quick Navigation Bar
        Column(
            modifier = Modifier
                .width(80.dp)
                .fillMaxHeight()
                .clip(RoundedCornerShape(28.dp))
                .background(CyberPanelBg)
                .border(1.dp, CyberPanelBorder, RoundedCornerShape(28.dp))
                .padding(vertical = 20.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.SpaceBetween
        ) {
            Column(
                verticalArrangement = Arrangement.spacedBy(16.dp),
                horizontalAlignment = Alignment.CenterHorizontally
            ) {
                IconButton(
                    onClick = { activeTab = "MAP" },
                    modifier = Modifier
                        .size(52.dp)
                        .clip(RoundedCornerShape(18.dp))
                        .background(if (activeTab == "MAP") NeonBlue else Color.Transparent)
                ) {
                    Icon(Icons.Default.Navigation, contentDescription = "Map", tint = Color.White)
                }

                IconButton(
                    onClick = { activeTab = "MEDIA" },
                    modifier = Modifier
                        .size(52.dp)
                        .clip(RoundedCornerShape(18.dp))
                        .background(if (activeTab == "MEDIA") NeonEmerald else Color.Transparent)
                ) {
                    Icon(Icons.Default.MusicNote, contentDescription = "Media", tint = Color.White)
                }

                IconButton(
                    onClick = { activeTab = "PHONE" },
                    modifier = Modifier
                        .size(52.dp)
                        .clip(RoundedCornerShape(18.dp))
                        .background(if (activeTab == "PHONE") NeonPurple else Color.Transparent)
                ) {
                    Icon(Icons.Default.Phone, contentDescription = "Phone", tint = Color.White)
                }
            }

            Column(
                horizontalAlignment = Alignment.CenterHorizontally,
                verticalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                IconButton(
                    onClick = { onNavigateToPage(0) },
                    modifier = Modifier
                        .size(52.dp)
                        .clip(RoundedCornerShape(18.dp))
                        .background(CyberPanelBorder)
                ) {
                    Icon(Icons.Default.Apps, contentDescription = "Home Launcher", tint = NeonCyan)
                }

                Box(
                    modifier = Modifier
                        .size(10.dp)
                        .clip(CircleShape)
                        .background(NeonEmerald)
                )
            }
        }

        // Sağ Dashboard Tile Grid Layout
        Row(
            modifier = Modifier
                .weight(1f)
                .fillMaxHeight(),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Sol/Üst Büyük Kart (Harita & Canlı Navigasyon Simülasyonu)
            Box(
                modifier = Modifier
                    .weight(0.65f)
                    .fillMaxHeight()
                    .clip(RoundedCornerShape(28.dp))
                    .background(CyberPanelBg)
                    .border(1.dp, CyberPanelBorder, RoundedCornerShape(28.dp))
                    .padding(20.dp)
            ) {
                Column(
                    modifier = Modifier.fillMaxSize(),
                    verticalArrangement = Arrangement.SpaceBetween
                ) {
                    // Search Bar Header
                    Row(
                        modifier = Modifier
                            .fillMaxWidth()
                            .clip(RoundedCornerShape(20.dp))
                            .background(CyberDarkBg)
                            .padding(14.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Icon(Icons.Default.Search, contentDescription = null, tint = NeonCyan)
                            Spacer(modifier = Modifier.width(10.dp))
                            Text(
                                text = "Search Google Maps destination...",
                                color = Color.LightGray,
                                fontSize = 14.sp
                            )
                        }
                        Icon(Icons.Default.Mic, contentDescription = null, tint = NeonCyan)
                    }

                    // Turn-by-Turn Guidance Overlay Box
                    Card(
                        colors = CardDefaults.cardColors(containerColor = CyberDarkBg),
                        shape = RoundedCornerShape(24.dp),
                        modifier = Modifier
                            .fillMaxWidth(0.85f)
                            .border(1.dp, NeonBlue.copy(alpha = 0.5f), RoundedCornerShape(24.dp))
                    ) {
                        Column(modifier = Modifier.padding(16.dp)) {
                            Row(verticalAlignment = Alignment.CenterVertically) {
                                Icon(Icons.Default.Navigation, contentDescription = null, tint = NeonEmerald)
                                Spacer(modifier = Modifier.width(8.dp))
                                Text(
                                    text = "LIVE NAVIGATION • 80 KM/H LIMIT",
                                    color = NeonCyan,
                                    fontSize = 11.sp,
                                    fontWeight = FontWeight.Bold
                                )
                            }
                            Spacer(modifier = Modifier.height(10.dp))
                            Text(
                                text = "Turn Right onto Kadıköy Sahil Yolu",
                                color = Color.White,
                                fontSize = 18.sp,
                                fontWeight = FontWeight.ExtraBold
                            )
                            Text(
                                text = "In 250 meters • Destination Kadıköy Marina",
                                color = Color.Gray,
                                fontSize = 12.sp
                            )
                        }
                    }

                    // Bottom Status
                    Text(
                        text = "⚡ Android Auto v11.4 • Material 3 Expressive",
                        color = Color.Gray,
                        fontSize = 11.sp
                    )
                }
            }

            // Sağ Taraf Kolonu (Spotify Medya & Hızlı Rehber Widget'ı)
            Column(
                modifier = Modifier
                    .weight(0.35f)
                    .fillMaxHeight(),
                verticalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                // Medya Kartı
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
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            Text("SPOTIFY MEDIA TILE", color = NeonEmerald, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                            Icon(Icons.Default.GraphicEq, contentDescription = null, tint = NeonEmerald)
                        }

                        Column {
                            Text("Blinding Lights", color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Bold)
                            Text("The Weeknd • After Hours", color = Color.Gray, fontSize = 12.sp)
                        }

                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.SpaceBetween,
                            verticalAlignment = Alignment.CenterVertically
                        ) {
                            IconButton(onClick = { isPlaying = !isPlaying }) {
                                Icon(
                                    if (isPlaying) Icons.Default.Pause else Icons.Default.PlayArrow,
                                    contentDescription = null,
                                    tint = NeonEmerald
                                )
                            }
                            IconButton(onClick = {}) {
                                Icon(Icons.Default.SkipNext, contentDescription = null, tint = Color.White)
                            }
                        }
                    }
                }

                // Hızlı Rehber / Bildirim Kartı
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
                        Text("QUICK CONTACTS & WIDGETS", color = NeonPurple, fontSize = 11.sp, fontWeight = FontWeight.Bold)

                        Row(
                            verticalAlignment = Alignment.CenterVertically,
                            horizontalArrangement = Arrangement.SpaceBetween,
                            modifier = Modifier.fillMaxWidth()
                        ) {
                            Column {
                                Text("Ahmet Yılmaz", color = Color.White, fontSize = 14.sp, fontWeight = FontWeight.Bold)
                                Text("Incoming Call • 2m ago", color = Color.Gray, fontSize = 11.sp)
                            }
                            IconButton(onClick = {}, modifier = Modifier.background(NeonPurple, CircleShape)) {
                                Icon(Icons.Default.Call, contentDescription = null, tint = Color.White)
                            }
                        }

                        Text("Pixel 8 Pro Connected", color = Color.DarkGray, fontSize = 10.sp)
                    }
                }
            }
        }
    }
}
