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
    }

    LaunchedEffect(Unit) {
        loadUpdates()
        updateManager.getStoreApps(object : OtaUpdateManager.UpdateCheckCallback {
            override fun onUpdatesFound(updates: List<AppUpdate>) {
                storeAppsList = updates
            }
            override fun onError(error: String) {
                // Silently ignore store error for now
            }
        })
    }

    EnhancedSettingCard(title = "GÜNCELLEMELER VE MAĞAZA", modifier = Modifier.fillMaxSize()) {
        val scrollState = rememberScrollState()
        Column(
            modifier = Modifier.fillMaxSize().verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.fillMaxWidth()) {
                Text("GitHub Sürümleri", color = Color.White, modifier = Modifier.weight(1f), fontSize = 24.sp, fontWeight = FontWeight.Bold)
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
                            override fun onProgress(p: Int, s: Double) { downloadProgress = p; downloadSpeed = s }
                            override fun onComplete(f: java.io.File?) { downloadingApp = null; f?.let { updateManager.installPackage(it) } }
                            override fun onError(e: String) { downloadingApp = null; Toast.makeText(context, e, Toast.LENGTH_LONG).show() }
                        })
                    }
                }
            }

            if (storeAppsList.isNotEmpty()) {
                Spacer(Modifier.height(8.dp))
                Text("Mağaza Uygulamaları", color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(top = 16.dp, bottom = 8.dp))
                storeAppsList.forEach { app ->
                    UpdateItem(app, downloadingApp != null, updateManager) {
                        if (updateManager.isUpdateDownloaded(app)) {
                            updateManager.installPackage(java.io.File(context.getExternalFilesDir(null), app.name))
                        } else {
                            downloadingApp = app.name
                            updateManager.downloadUpdate(app, object : OtaUpdateManager.DownloadCallback {
                                override fun onProgress(p: Int, s: Double) { downloadProgress = p; downloadSpeed = s }
                                override fun onComplete(f: java.io.File?) { downloadingApp = null; f?.let { updateManager.installPackage(it) } }
                                override fun onError(e: String) { downloadingApp = null; Toast.makeText(context, e, Toast.LENGTH_LONG).show() }
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
        Row(modifier = Modifier.padding(24.dp), verticalAlignment = Alignment.CenterVertically) {
            Column(modifier = Modifier.weight(1f)) {
                Text(app.name, color = Color.White, fontWeight = FontWeight.Bold, fontSize = 22.sp)
                Spacer(Modifier.height(4.dp))
                val dateStr = if (app.releaseDate != null) " • ${app.releaseDate}" else ""
                Text("v${app.version} • ${app.sizeBytes / 1024 / 1024} MB$dateStr", color = Color.Gray, fontSize = 18.sp)
            }
            CarButton(
                onClick = onClick, 
                enabled = !isDownloading,
                text = if(isDownloaded) "YÜKLE" else "İNDİR",
                colors = ButtonDefaults.buttonColors(containerColor = if(isDownloaded) Color(0xFF4CAF50) else Color(0xFF69E2D3), contentColor = Color.Black)
            )
        }
    }
}
