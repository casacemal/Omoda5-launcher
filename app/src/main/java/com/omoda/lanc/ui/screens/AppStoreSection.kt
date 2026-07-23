package com.omoda.lanc.ui.screens

import android.widget.Toast
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.compose.ui.tooling.preview.Preview
import com.omoda.lanc.network.AppUpdate
import com.omoda.lanc.network.OtaUpdateManager
import com.omoda.lanc.ui.components.CarButton
import com.omoda.lanc.ui.components.CarIconButton
import com.omoda.lanc.ui.components.MinCarTouchTarget
import kotlinx.coroutines.launch

@Preview(showBackground = true, widthDp = 800, heightDp = 480)
@Composable
fun PreviewAppStoreSection() {
    MaterialTheme {
        Box(modifier = Modifier.background(Color.Black).fillMaxSize().padding(16.dp)) {
            AppStoreSection()
        }
    }
}

@Composable
fun AppStoreSection() {
    val context = LocalContext.current
    val updateManager = remember { OtaUpdateManager(context) }
    
    var isChecking by remember { mutableStateOf(false) }
    var updatesList by remember { mutableStateOf<List<AppUpdate>>(emptyList()) }
    var storeAppsList by remember { mutableStateOf<List<AppUpdate>>(emptyList()) }
    var errorMessage by remember { mutableStateOf<String?>(null) }
    var downloadingApp by remember { mutableStateOf<String?>(null) }
    var downloadProgress by remember { mutableStateOf(0) }
    var downloadSpeed by remember { mutableStateOf(0.0) }

    fun loadUpdates() {
        isChecking = true
        errorMessage = null
        updateManager.checkForUpdates(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                isChecking = false
                updatesList = updates
                if (updates.isEmpty()) errorMessage = "Yeni sürüm bulunamadı."
            }
            override fun onError(error: String) {
                isChecking = false
                errorMessage = error
            }
        })
        
        updateManager.getStoreApps(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                storeAppsList = updates
            }
            override fun onError(error: String) {
                // Hata yoksayılıyor
            }
        })
    }

    LaunchedEffect(Unit) {
        loadUpdates()
    }

    EnhancedSettingCard(title = "GÜNCELLEMELER VE MAĞAZA", modifier = Modifier.fillMaxSize()) {
        val scrollState = rememberScrollState()
        Column(
            modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Sürüm Durumu Header Card
            Surface(
                color = Color.White.copy(alpha = 0.04f),
                shape = RoundedCornerShape(16.dp),
                border = BorderStroke(1.dp, Color(0xFF69E2D3).copy(alpha = 0.3f)),
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(
                    modifier = Modifier.padding(20.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Column(modifier = Modifier.weight(1f)) {
                        Text("Mevcut Yüklü Sürüm: v6452 (Build 6452)", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                        Spacer(Modifier.height(4.dp))
                        val latestTag = com.omoda.lanc.core.GlobalState.latestVersion.value
                        Text(if (latestTag.isNotBlank()) "En Son Çevrimiçi Sürüm: $latestTag" else "Sürüm bilgisi kontrol ediliyor...", color = Color.Gray, fontSize = 16.sp)
                    }
                    val isLatest = com.omoda.lanc.core.GlobalState.latestVersion.value == "v6452" || com.omoda.lanc.core.GlobalState.latestVersion.value == "6452"
                    Surface(
                        color = if (isLatest) Color(0xFF4CAF50).copy(alpha = 0.2f) else Color(0xFFFF9800).copy(alpha = 0.2f),
                        shape = RoundedCornerShape(12.dp),
                        border = BorderStroke(1.dp, if (isLatest) Color(0xFF4CAF50) else Color(0xFFFF9800))
                    ) {
                        Text(
                            text = if (isLatest) "SİSTEM GÜNCEL ✅" else "YENİ SÜRÜM VAR 🚀",
                            color = if (isLatest) Color(0xFF4CAF50) else Color(0xFFFF9800),
                            fontWeight = FontWeight.Bold,
                            fontSize = 14.sp,
                            modifier = Modifier.padding(horizontal = 12.dp, vertical = 6.dp)
                        )
                    }
                }
            }

            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Text("GitHub Sürümleri & Güncellemeler", color = Color.White, modifier = Modifier.weight(1f), fontSize = 22.sp, fontWeight = FontWeight.Bold)
                CarIconButton(onClick = { loadUpdates() }, enabled = !isChecking) {
                    if (isChecking) CircularProgressIndicator(modifier = Modifier.size(32.dp), color = Color(0xFF69E2D3))
                    else Icon(Icons.Default.Refresh, "Yenile", tint = Color(0xFF69E2D3), modifier = Modifier.size(32.dp))
                }
            }

            if (errorMessage != null) {
                Surface(
                    color = Color.Red.copy(alpha = 0.1f),
                    shape = RoundedCornerShape(16.dp),
                    border = BorderStroke(2.dp, Color.Red.copy(alpha = 0.3f)),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Column(modifier = Modifier.padding(24.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                        Text(errorMessage!!, color = Color.Red, textAlign = TextAlign.Center, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                        Spacer(Modifier.height(16.dp))
                        CarButton(onClick = { loadUpdates() }, text = "YENİDEN DENE", colors = ButtonDefaults.buttonColors(containerColor = Color.Red, contentColor = Color.White))
                    }
                }
            }

            if (downloadingApp != null) {
                Column(modifier = Modifier.fillMaxWidth().background(Color.Black.copy(0.3f), RoundedCornerShape(16.dp)).padding(24.dp)) {
                    Text("İndiriliyor: $downloadingApp", color = Color(0xFF69E2D3), fontWeight = FontWeight.Bold, fontSize = 20.sp)
                    LinearProgressIndicator(progress = { downloadProgress / 100f }, modifier = Modifier.fillMaxWidth().height(16.dp).padding(vertical = 12.dp), color = Color(0xFF69E2D3))
                    Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                        Text("%$downloadProgress", color = Color.White, fontSize = 16.sp)
                        Text(String.format("%.1f Mbps", downloadSpeed), color = Color.White, fontSize = 16.sp)
                    }
                }
            }

            updatesList.forEach { app ->
                UpdateItem(app, downloadingApp != null, updateManager) {
                    if (updateManager.isUpdateDownloaded(app)) {
                        updateManager.installPackage(java.io.File(context.getExternalFilesDir(null), app.name))
                    } else {
                        downloadingApp = app.name
                        updateManager.downloadUpdate(app, object : OtaUpdateManager.DownloadCallback {
                            override fun onProgress(percentage: Int, speedMbps: Double) { downloadProgress = percentage; downloadSpeed = speedMbps }
                            override fun onComplete(file: java.io.File?) { downloadingApp = null; file?.let { updateManager.installPackage(it) } }
                            override fun onError(error: String) { downloadingApp = null; Toast.makeText(context, error, Toast.LENGTH_LONG).show() }
                        })
                    }
                }
            }

            if (storeAppsList.isNotEmpty()) {
                Spacer(Modifier.height(8.dp))
                Text("Omoda Store (3. Parti Uygulamalar)", color = Color.White, fontSize = 22.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(top = 16.dp, bottom = 8.dp))
                storeAppsList.forEach { app ->
                    UpdateItem(app, downloadingApp != null, updateManager) {
                        if (updateManager.isUpdateDownloaded(app)) {
                            updateManager.installPackage(java.io.File(context.getExternalFilesDir(null), app.name))
                        } else {
                            downloadingApp = app.name
                            updateManager.downloadUpdate(app, object : OtaUpdateManager.DownloadCallback {
                                override fun onProgress(percentage: Int, speedMbps: Double) { downloadProgress = percentage; downloadSpeed = speedMbps }
                                override fun onComplete(file: java.io.File?) { downloadingApp = null; file?.let { updateManager.installPackage(it) } }
                                override fun onError(error: String) { downloadingApp = null; Toast.makeText(context, error, Toast.LENGTH_LONG).show() }
                            })
                        }
                    }
                }
            }
        }
    }
}

@Composable
fun UpdateItem(app: AppUpdate, isDownloading: Boolean, manager: OtaUpdateManager, onClick: () -> Unit) {
    val isDownloaded = manager.isUpdateDownloaded(app)
    Card(
        colors = CardDefaults.cardColors(containerColor = Color.White.copy(0.05f)), 
        modifier = Modifier.fillMaxWidth().defaultMinSize(minHeight = MinCarTouchTarget)
    ) {
        Column(modifier = Modifier.padding(20.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Column(modifier = Modifier.weight(1f)) {
                    Row(verticalAlignment = Alignment.CenterVertically, horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                        Text(app.name, color = Color.White, fontWeight = FontWeight.Bold, fontSize = 20.sp)
                        if (isDownloaded) {
                            Text("✅ YÜKLEMEYE HAZIR", color = Color(0xFF4CAF50), fontSize = 13.sp, fontWeight = FontWeight.Bold)
                        }
                    }
                    Spacer(Modifier.height(4.dp))
                    val dateStr = if (app.releaseDate != null) " • ${app.releaseDate}" else ""
                    Text("v${app.version} • ${app.sizeBytes / 1024 / 1024} MB$dateStr", color = Color.Gray, fontSize = 16.sp)
                }
                CarButton(
                    onClick = onClick, 
                    enabled = !isDownloading,
                    text = if(isDownloaded) "KUR (INSTALL)" else "İNDİR",
                    colors = ButtonDefaults.buttonColors(containerColor = if(isDownloaded) Color(0xFF4CAF50) else Color(0xFF69E2D3), contentColor = Color.Black)
                )
            }
            if (!app.releaseNotes.isNullOrBlank()) {
                Spacer(Modifier.height(10.dp))
                Surface(
                    color = Color.Black.copy(alpha = 0.2f),
                    shape = RoundedCornerShape(8.dp),
                    modifier = Modifier.fillMaxWidth()
                ) {
                    Text(
                        text = "Değişiklik Notları:\n${app.releaseNotes}",
                        color = Color.LightGray,
                        fontSize = 14.sp,
                        modifier = Modifier.padding(12.dp)
                    )
                }
            }
        }
    }
}
