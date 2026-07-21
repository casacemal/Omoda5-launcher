package com.omoda.lanc.ui.screens.settings

import android.content.Context
import android.content.Intent
import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.foundation.verticalScroll
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.automirrored.filled.ArrowBack
import androidx.compose.material.icons.automirrored.filled.List
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda.lanc.AssistantApplication
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.PermissionManager
import com.omoda.lanc.core.SystemTimeSync
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.core.dsl.Omoda5
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.components.StatusLed
import com.omoda.lanc.voice.ModelRepairManager
import kotlinx.coroutines.delay
import kotlinx.coroutines.launch
import java.text.SimpleDateFormat
import java.util.*
import com.omoda.lanc.ui.screens.*

@Composable
fun TabBaglantilarEnhanced(
    isCompact: Boolean,
    isMqtt: Boolean,
    isSimMode: Boolean,
    onIsSimModeChange: (Boolean) -> Unit,
    isBridgeMode: Boolean,
    onIsBridgeModeChange: (Boolean) -> Unit,
    serverIp: String,
    onServerIpChange: (String) -> Unit,
    bridgeIp: String,
    onBridgeIpChange: (String) -> Unit,
    githubToken: String,
    onGithubTokenChange: (String) -> Unit,
    hermesApiKey: String,
    onHermesApiKeyChange: (String) -> Unit,
    ninerouterApiKey: String,
    onNinerouterApiKeyChange: (String) -> Unit
) {
    val context = LocalContext.current
    val scrollState = rememberScrollState()
    val config = LocalConfiguration.current
    val isLandscape = config.orientation == android.content.res.Configuration.ORIENTATION_LANDSCAPE
    val isPortrait = !isLandscape

    val spacing = if (isCompact) (if(isPortrait) 12.dp else 6.dp) else 24.dp

    Column(modifier = Modifier.fillMaxSize().verticalScroll(scrollState), verticalArrangement = Arrangement.spacedBy(spacing)) {
        if (isLandscape && isCompact) {
            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                EnhancedSettingCard(title = "SUNUCU", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        OutlinedTextField(
                            value = serverIp, onValueChange = onServerIpChange, 
                            label = { Text("Sunucu IP", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            singleLine = true
                        )
                        OutlinedTextField(
                            value = bridgeIp, onValueChange = onBridgeIpChange, 
                            label = { Text("Köprü IP", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            singleLine = true
                        )
                    }
                }

                EnhancedSettingCard(title = "KEYLER", modifier = Modifier.weight(1f), isCompact = isCompact) {
                    Column(verticalArrangement = Arrangement.spacedBy(4.dp)) {
                        OutlinedTextField(
                            value = githubToken, onValueChange = onGithubTokenChange, 
                            label = { Text("GitHub", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation(),
                            singleLine = true
                        )
                        OutlinedTextField(
                            value = hermesApiKey, onValueChange = onHermesApiKeyChange, 
                            label = { Text("Hermes", fontSize = 10.sp) }, modifier = Modifier.fillMaxWidth(),
                            colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                            textStyle = androidx.compose.ui.text.TextStyle(fontSize = 11.sp),
                            visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation(),
                            singleLine = true
                        )
                    }
                }
            }
        } else {
            EnhancedSettingCard(title = "SUNUCU YAPILANDIRMASI", isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedTextField(
                        value = serverIp, onValueChange = onServerIpChange, 
                        label = { Text("Ana Sunucu IP") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp)
                    )
                    OutlinedTextField(
                        value = bridgeIp, onValueChange = onBridgeIpChange, 
                        label = { Text("Köprü IP") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp)
                    )
                }
            }

            EnhancedSettingCard(title = "API ANAHTARLARI", isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                    OutlinedTextField(
                        value = githubToken, onValueChange = onGithubTokenChange, 
                        label = { Text("GitHub OTA Token") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp),
                        visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation()
                    )
                    OutlinedTextField(
                        value = hermesApiKey, onValueChange = onHermesApiKeyChange, 
                        label = { Text("Hermes API Key") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp),
                        visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation()
                    )
                    OutlinedTextField(
                        value = ninerouterApiKey, onValueChange = onNinerouterApiKeyChange, 
                        label = { Text("9Router API Key") }, modifier = Modifier.fillMaxWidth(),
                        colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = Color(0xFF69E2D3)),
                        textStyle = androidx.compose.ui.text.TextStyle(fontSize = if(isCompact) 13.sp else 16.sp),
                        visualTransformation = androidx.compose.ui.text.input.PasswordVisualTransformation()
                    )
                }
            }
        }
        
        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(16.dp)) {
            EnhancedSettingCard(title = "BAĞLANTI DURUMU", modifier = Modifier.weight(1f), isCompact = isCompact) {
                Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                    Text("MQTT Durumu:", color = Color.Gray, modifier = Modifier.weight(1f), fontSize = if(isCompact) 12.sp else 14.sp)
                    Text(if (isMqtt) "AKTİF" else "KOPUK", color = if (isMqtt) Color.Green else Color.Red, fontWeight = FontWeight.Bold, fontSize = if(isCompact) 12.sp else 14.sp)
                }
            }

            EnhancedSettingCard(title = "SİMÜLASYON VE KÖPRÜ", modifier = Modifier.weight(1f), isCompact = isCompact) {
                Column(verticalArrangement = Arrangement.spacedBy(if(isLandscape && isCompact) 4.dp else 8.dp)) {
                    Row(modifier = Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                        Text("Simülatör & Köprü:", color = Color.Gray, modifier = Modifier.weight(1f), fontSize = if(isCompact) 11.sp else 14.sp)
                        Switch(
                            checked = isSimMode || isBridgeMode, 
                            onCheckedChange = { 
                                onIsSimModeChange(it)
                                onIsBridgeModeChange(it) 
                            }, 
                            modifier = Modifier.scale(0.8f)
                        )
                    }
                    
                    Button(
                        onClick = {
                            try {
                                val intent = Intent(context, com.hermesandroid.bridge.BridgeActivity::class.java)
                                intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
                                context.startActivity(intent)
                            } catch (e: Exception) {
                                android.widget.Toast.makeText(context, "Bridge Paneli Bulunamadı", android.widget.Toast.LENGTH_SHORT).show()
                            }
                        },
                        modifier = Modifier.fillMaxWidth().height(if(isCompact) 32.dp else 48.dp),
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF673AB7)),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Text("PANELİ AÇ", color = Color.White, fontSize = if(isCompact) 10.sp else 13.sp, fontWeight = FontWeight.Bold)
                    }
                }
            }
        }
    }
}

