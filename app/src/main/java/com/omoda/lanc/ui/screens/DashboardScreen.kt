package com.omoda.lanc.ui.screens

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.util.Log
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.components.MediaControlWidget
import com.omoda.lanc.media.MediaControllerViewModel
import androidx.lifecycle.viewmodel.compose.viewModel
import com.omoda.lanc.ui.theme.OmodaCyan
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue

/**
 * DashboardScreen - Bölünmüş ekran tasarımı (Navigasyon + Medya)
 * Araç ünitesinde yan yana harita ve medya kontrolü sağlar.
 */
@Composable
fun DashboardScreen(
    viewModel: MediaControllerViewModel = viewModel(),
    onBack: () -> Unit
) {
    val context = LocalContext.current
    val mediaViewModel = viewModel

    Column(modifier = Modifier.fillMaxSize().background(Color(0xFF0D0F10)).padding(16.dp)) {
        // Üst Bar
        Row(
            modifier = Modifier.fillMaxWidth().padding(bottom = 16.dp),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Box(modifier = Modifier.size(8.dp).clip(androidx.compose.foundation.shape.CircleShape).background(OmodaCyan))
                Spacer(Modifier.width(12.dp))
                Text("DASHBOARD CONTROL", color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Black)
            }
            
            Button(
                onClick = onBack, 
                colors = ButtonDefaults.buttonColors(containerColor = Color.DarkGray),
                shape = RoundedCornerShape(8.dp)
            ) {
                Text("KAPAT", fontWeight = FontWeight.Bold)
            }
        }

        // Split Content
        Row(modifier = Modifier.fillMaxSize()) {
            // SOL: Harita Alanı (Placeholder + Başlatıcı)
            Card(
                colors = CardDefaults.cardColors(containerColor = Color(0xFF16181A)),
                modifier = Modifier
                    .weight(1.2f) // Harita biraz daha geniş
                    .fillMaxHeight()
                    .clip(RoundedCornerShape(24.dp))
                    .clickable { launchSplitScreen(context) }
                    .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(24.dp))
            ) {
                Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
                    Column(horizontalAlignment = Alignment.CenterHorizontally) {
                        Text("📍", fontSize = 72.sp)
                        Spacer(modifier = Modifier.height(24.dp))
                        Text("NAVİGASYON MODU", color = Color.White, fontSize = 22.sp, fontWeight = FontWeight.ExtraBold)
                        Text("Yan yana görünümü başlatmak için dokun", color = Color.Gray, fontSize = 14.sp)
                        
                        Spacer(modifier = Modifier.height(32.dp))
                        
                        Surface(
                            color = OmodaCyan.copy(alpha = 0.1f),
                            shape = RoundedCornerShape(12.dp),
                            modifier = Modifier.border(1.dp, OmodaCyan.copy(alpha = 0.3f), RoundedCornerShape(12.dp))
                        ) {
                            Text(
                                "GOOGLE MAPS SPLIT", 
                                modifier = Modifier.padding(horizontal = 16.dp, vertical = 8.dp),
                                color = OmodaCyan,
                                fontWeight = FontWeight.Bold,
                                fontSize = 12.sp
                            )
                        }
                    }
                }
            }

            Spacer(modifier = Modifier.width(16.dp))

            // SAĞ: Medya ve Bilgi Alanı
            Column(modifier = Modifier.weight(1f).fillMaxHeight()) {
                // Medya Kartı
                Card(
                    colors = CardDefaults.cardColors(containerColor = Color(0xFF111315)),
                    modifier = Modifier
                        .weight(1f)
                        .fillMaxWidth()
                        .clip(RoundedCornerShape(24.dp))
                        .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(24.dp))
                ) {
                    Column(modifier = Modifier.fillMaxSize().padding(20.dp)) {
                        Row(verticalAlignment = Alignment.CenterVertically) {
                            Text("MEDYA", color = OmodaCyan, fontWeight = FontWeight.Bold, fontSize = 14.sp)
                            Spacer(Modifier.weight(1f))
                            Box(modifier = Modifier.size(6.dp).clip(androidx.compose.foundation.shape.CircleShape).background(Color.Green))
                        }
                        
                        Spacer(modifier = Modifier.height(12.dp))
                        
                        // Dashboard için özel modifiye edilmiş MediaControlWidget (Padding sıfırlandı)
                        Box(modifier = Modifier.weight(1f)) {
                            DashboardMediaWidget(mediaViewModel)
                        }
                    }
                }

                Spacer(modifier = Modifier.height(16.dp))

                // Alt Kısayol / Durum Kartı
                Card(
                    colors = CardDefaults.cardColors(containerColor = Color(0xFF1C1E20)),
                    modifier = Modifier
                        .height(120.dp)
                        .fillMaxWidth()
                        .clip(RoundedCornerShape(24.dp))
                        .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(24.dp))
                ) {
                    val vehicleData by com.omoda.lanc.core.GlobalState.vehicleDataValues.collectAsState()
                    Row(
                        modifier = Modifier.fillMaxSize().padding(16.dp),
                        verticalAlignment = Alignment.CenterVertically,
                        horizontalArrangement = Arrangement.SpaceAround
                    ) {
                        InfoItem("HIZ", "${vehicleData["speed"] ?: "0"} km/h")
                        Divider(modifier = Modifier.width(1.dp).fillMaxHeight().padding(vertical = 8.dp), color = Color.White.copy(0.1f))
                        InfoItem("KLİMA", if (vehicleData["ac_on"] == "true") "AÇIK" else "KAPALI")
                    }
                }
            }
        }
    }
}

@Composable
fun InfoItem(label: String, value: String) {
    Column(horizontalAlignment = Alignment.CenterHorizontally) {
        Text(label, color = Color.Gray, fontSize = 10.sp, fontWeight = FontWeight.Bold)
        Text(value, color = Color.White, fontSize = 18.sp, fontWeight = FontWeight.Black)
    }
}

/**
 * Dashboard için optimize edilmiş medya görünümü (Padding kısıtlamaları kaldırıldı)
 */
@Composable
fun DashboardMediaWidget(viewModel: MediaControllerViewModel) {
    val uiState by viewModel.mediaState.collectAsState()
    
    Column(modifier = Modifier.fillMaxSize(), verticalArrangement = Arrangement.Center) {
        Text(
            text = uiState.title,
            color = Color.White,
            fontSize = 22.sp,
            fontWeight = FontWeight.Black,
            maxLines = 1
        )
        Text(
            text = uiState.artist,
            color = OmodaCyan,
            fontSize = 16.sp,
            fontWeight = FontWeight.Medium
        )
        
        Spacer(modifier = Modifier.height(24.dp))
        
        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.SpaceBetween,
            verticalAlignment = Alignment.CenterVertically
        ) {
            IconButton(onClick = { viewModel.skipToPrevious() }) {
                Text("⏮", color = Color.White, fontSize = 32.sp)
            }
            
            FloatingActionButton(
                onClick = { viewModel.togglePlayback() },
                containerColor = OmodaCyan,
                contentColor = Color.Black,
                shape = androidx.compose.foundation.shape.CircleShape,
                modifier = Modifier.size(64.dp)
            ) {
                Text(if (uiState.isPlaying) "⏸" else "▶", fontSize = 28.sp)
            }
            
            IconButton(onClick = { viewModel.skipToNext() }) {
                Text("⏭", color = Color.White, fontSize = 32.sp)
            }
        }
        
        Spacer(modifier = Modifier.height(16.dp))
        
        LinearProgressIndicator(
            progress = { uiState.progress },
            modifier = Modifier.fillMaxWidth().height(6.dp).clip(RoundedCornerShape(3.dp)),
            color = OmodaCyan,
            trackColor = Color.White.copy(alpha = 0.1f)
        )
    }
}

fun launchSplitScreen(context: Context) {
    try {
        // Android 10+ Multi-tasking için haritayı başlat
        val mapIntent = Intent(Intent.ACTION_VIEW, Uri.parse("geo:0,0?q=maps")).apply {
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            addFlags(Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT) 
        }
        context.startActivity(mapIntent)
        Log.i("Dashboard", "Split screen launch requested")
    } catch (e: Exception) {
        Log.e("LauncherError", "Multi-task başlatılamadı", e)
    }
}
