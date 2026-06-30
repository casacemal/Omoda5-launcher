package com.omoda.lanc.ui.screens

import android.widget.Toast
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.network.AppUpdate
import com.omoda.lanc.network.OtaUpdateManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext

@Composable
fun AppStoreSection() {
    val context = LocalContext.current
    val coroutineScope = rememberCoroutineScope()
    val updateManager = remember { OtaUpdateManager(context) }
    
    var isChecking by remember { mutableStateOf(false) }
    var updatesList by remember { mutableStateOf<List<AppUpdate>>(emptyList()) }
    var storeAppsList by remember { mutableStateOf<List<AppUpdate>>(emptyList()) }
    var errorMessage by remember { mutableStateOf<String?>(null) }
    var downloadingApp by remember { mutableStateOf<String?>(null) }
    var downloadProgress by remember { mutableStateOf(0) }
    var downloadSpeed by remember { mutableStateOf(0.0) }

    LaunchedEffect(Unit) {
        updateManager.getStoreApps(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                storeAppsList = updates
            }
            override fun onError(error: String) {
                // Sessiz hata
            }
        })
    }

    SettingCard(title = "APP STORE & OTA GÜNCELLEMELER") {
        Column(verticalArrangement = Arrangement.spacedBy(12.dp)) {
            
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Text(
                    text = "GitHub Sürümleri",
                    color = Color.White,
                    modifier = Modifier.weight(1f)
                )
                Button(
                    onClick = {
                        isChecking = true
                        errorMessage = null
                        updatesList = emptyList()
                        updateManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
                            override fun onUpdatesFound(updates: List<AppUpdate>) {
                                isChecking = false
                                updatesList = updates
                                if (updates.isEmpty()) {
                                    errorMessage = "Yeni sürüm bulunamadı."
                                }
                            }
                            override fun onError(error: String) {
                                isChecking = false
                                errorMessage = error
                            }
                        })
                    },
                    enabled = !isChecking,
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF69E2D3), contentColor = Color.Black)
                ) {
                    if (isChecking) {
                        CircularProgressIndicator(modifier = Modifier.size(16.dp), color = Color.Black)
                        Spacer(modifier = Modifier.width(8.dp))
                    } else {
                        Icon(Icons.Default.Refresh, contentDescription = null, modifier = Modifier.size(16.dp))
                        Spacer(modifier = Modifier.width(4.dp))
                    }
                    Text("Kontrol Et", fontSize = 12.sp, fontWeight = FontWeight.Bold)
                }
            }

            if (errorMessage != null) {
                Text(errorMessage!!, color = Color.Red, fontSize = 12.sp)
            }

            if (downloadingApp != null) {
                Column(modifier = Modifier.fillMaxWidth().padding(vertical = 8.dp)) {
                    Text("İndiriliyor: $downloadingApp", color = Color.Yellow, fontSize = 12.sp)
                    Spacer(modifier = Modifier.height(4.dp))
                    LinearProgressIndicator(
                        progress = { downloadProgress / 100f },
                        modifier = Modifier.fillMaxWidth().height(8.dp),
                        color = Color(0xFF69E2D3),
                        trackColor = Color.DarkGray
                    )
                    Spacer(modifier = Modifier.height(4.dp))
                    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text("%$downloadProgress", color = Color.LightGray, fontSize = 10.sp)
                        Text(String.format("%.1f Mbps", downloadSpeed), color = Color.LightGray, fontSize = 10.sp)
                    }
                }
            }

            // OTA Updates
            if (updatesList.isNotEmpty()) {
                Text("Yeni Sürümler:", color = Color(0xFF69E2D3), fontSize = 12.sp, fontWeight = FontWeight.Bold)
                updatesList.forEach { app ->
                    AppUpdateItem(app, downloadingApp != null) { 
                        downloadingApp = app.name
                        updateManager.downloadUpdate(app, object : OtaUpdateManager.DownloadCallback {
                            override fun onProgress(percentage: Int, speedMbps: Double) {
                                downloadProgress = percentage
                                downloadSpeed = speedMbps
                            }
                            override fun onComplete(file: java.io.File?) {
                                downloadingApp = null
                                file?.let { updateManager.installPackage(it) }
                            }
                            override fun onError(error: String) {
                                downloadingApp = null
                                coroutineScope.launch { Toast.makeText(context, "Hata: $error", Toast.LENGTH_SHORT).show() }
                            }
                        })
                    }
                }
                HorizontalDivider(color = Color.White.copy(alpha = 0.1f), modifier = Modifier.padding(vertical = 4.dp))
            }

            // Store Apps
            if (storeAppsList.isNotEmpty()) {
                Text("Omoda 5 Mağaza Uygulamaları:", color = Color.LightGray, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    storeAppsList.forEach { app ->
                        AppUpdateItem(app, downloadingApp != null) { 
                            downloadingApp = app.name
                            updateManager.downloadUpdate(app, object : OtaUpdateManager.DownloadCallback {
                                override fun onProgress(percentage: Int, speedMbps: Double) {
                                    downloadProgress = percentage
                                    downloadSpeed = speedMbps
                                }
                                override fun onComplete(file: java.io.File?) {
                                    downloadingApp = null
                                    file?.let { updateManager.installPackage(it) }
                                }
                                override fun onError(error: String) {
                                    downloadingApp = null
                                    coroutineScope.launch { Toast.makeText(context, "Hata: $error", Toast.LENGTH_SHORT).show() }
                                }
                            })
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun AppUpdateItem(app: AppUpdate, isDownloadingAny: Boolean, onDownloadClick: () -> Unit) {
    Card(
        colors = CardDefaults.cardColors(containerColor = Color(0xFF1E2124)),
        shape = RoundedCornerShape(8.dp),
        modifier = Modifier.fillMaxWidth()
    ) {
        Row(
            modifier = Modifier.padding(12.dp).fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Column(modifier = Modifier.weight(1f)) {
                Text(app.name, color = Color.White, fontWeight = FontWeight.Bold, fontSize = 14.sp)
                val sizeMb = String.format("%.1f MB", app.sizeBytes / (1024.0 * 1024.0))
                val typeLabel = if (app.isDowngrade) "Eski Sürüm (Geri Yüklenebilir)" else "Yeni Sürüm"
                Text("v${app.version} • $sizeMb • $typeLabel", color = if(app.isDowngrade) Color(0xFFF3B14B) else Color.Gray, fontSize = 11.sp)
                if (app.isSystemUpdate) {
                    Text("Sistem Güncellemesi", color = Color(0xFF69E2D3), fontSize = 10.sp)
                }
            }
            Button(
                onClick = onDownloadClick,
                enabled = !isDownloadingAny,
                colors = ButtonDefaults.buttonColors(
                    containerColor = if (app.isDowngrade) Color(0xFFF3B14B) else Color.DarkGray,
                    contentColor = if (app.isDowngrade) Color.Black else Color.White
                )
            ) {
                Text(if (app.isDowngrade) "DÜŞÜR" else "İNDİR", fontSize = 10.sp, fontWeight = FontWeight.Bold)
            }
        }
    }
}
