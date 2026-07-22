package com.omoda.lanc.ui.screens

import com.omoda.lanc.core.Event
import com.omoda.lanc.core.EventBus
import android.content.Intent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.ArrowBack
import androidx.compose.material.icons.filled.Info
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import com.omoda.lanc.core.VehicleController
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.components.CarButton
import com.omoda.lanc.ui.components.CarIconButton
import com.omoda.lanc.ui.components.MinCarTouchTarget
import kotlinx.coroutines.delay

@Composable
fun SensorMonitorScreen(onBack: () -> Unit) {
    val context = androidx.compose.ui.platform.LocalContext.current
    var vehicleState by remember { mutableStateOf(VehicleController.getInstance(context).getVehicleState()) }
    var lastUpdate by remember { mutableLongStateOf(System.currentTimeMillis()) }
    val isSimMode by GlobalState.isSimulationMode.collectAsState()

    LaunchedEffect(Unit) {
        EventBus.events.collect { event ->
            if (event is Event.VehicleEvent.StateUpdated) {
                vehicleState = event.state
                lastUpdate = System.currentTimeMillis()
            }
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color(0xFF081012))
            .padding(24.dp)
    ) {
        Row(
            modifier = Modifier.fillMaxWidth().padding(bottom = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                CarIconButton(onClick = onBack) {
                    Icon(Icons.Default.ArrowBack, contentDescription = "Geri", tint = Color.White, modifier = Modifier.size(32.dp))
                }
                Spacer(Modifier.width(16.dp))
                Text(
                    "Omoda 5 Sensör İzleme",
                    color = Color.White,
                    fontSize = 28.sp,
                    fontWeight = FontWeight.Bold
                )
                
                if (isSimMode) {
                    Spacer(Modifier.width(16.dp))
                    Surface(
                        color = Color(0xFFE91E63).copy(alpha = 0.2f),
                        shape = RoundedCornerShape(8.dp),
                        border = androidx.compose.foundation.BorderStroke(1.dp, Color(0xFFE91E63).copy(alpha = 0.5f)),
                        modifier = Modifier.height(36.dp)
                    ) {
                        Box(contentAlignment = Alignment.Center, modifier = Modifier.padding(horizontal = 12.dp)) {
                            Text(
                                "SİMÜLASYON",
                                color = Color(0xFFE91E63),
                                fontSize = 14.sp,
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }
                }
            }
            
            Row(verticalAlignment = Alignment.CenterVertically) {
                Icon(Icons.Default.Info, contentDescription = null, tint = OmodaCyan, modifier = Modifier.size(24.dp))
                Spacer(Modifier.width(8.dp))
                Text(
                    "Oto Yenileme: 2sn",
                    color = Color.LightGray,
                    fontSize = 18.sp
                )
            }
        }

        val sensorItems = listOf(
            SensorItem("Hız", "${vehicleState.speed.toInt()} km/h", "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Devir", "${vehicleState.engineRpm.toInt()} RPM", "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Vites", vehicleState.gearString, "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Yakıt", "%${vehicleState.fuelLevel.toInt()}", "Enerji", Color(0xFFF3B14B)),
            SensorItem("Menzil", "${vehicleState.rangeKm.toInt()} km", "Enerji", Color(0xFFF3B14B)),
            SensorItem("Klima", if (vehicleState.isHvacOn) "AÇIK" else "KAPALI", "Konfor", Color(0xFF4CAF50)),
            SensorItem("Sıcaklık", "${vehicleState.acTemperatureDriver}°C", "Konfor", Color(0xFF4CAF50)),
            SensorItem("Fan", "${vehicleState.acFanSpeed}", "Konfor", Color(0xFF4CAF50)),
            SensorItem("Dış Isı", "${vehicleState.outsideTemperature}°C", "Ortam", Color(0xFF2196F3)),
            SensorItem("El Freni", if (vehicleState.parkingBrake) "ÇEKİLİ" else "İNMİŞ", "Güvenlik", Color(0xFFE57373)),
            SensorItem("Kilometre", "${vehicleState.odometer.toInt()} km", "Sürüş", Color(0xFF69E2D3)),
            SensorItem("Kapılar", if (vehicleState.anyDoorOpen) "AÇIK!" else "KAPALI", "Güvenlik", Color(0xFFE57373))
        )

        LazyVerticalGrid(
            columns = GridCells.Adaptive(240.dp),
            contentPadding = PaddingValues(bottom = 16.dp),
            verticalArrangement = Arrangement.spacedBy(16.dp),
            horizontalArrangement = Arrangement.spacedBy(16.dp),
            modifier = Modifier.weight(1f)
        ) {
            items(sensorItems) { item ->
                SensorCard(item)
            }
        }
        
        Spacer(Modifier.height(16.dp))
        
        Row(
            modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            CarButton(
                onClick = { exec(context, "am start -n com.chery.hvac/.view.activity.MainActivity") },
                text = "Klima Aç/Kapat",
                modifier = Modifier.weight(1f),
                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF4CAF50).copy(alpha = 0.2f), contentColor = Color.White)
            )
            CarButton(
                onClick = { exec(context, "svc wifi disable; sleep 1; svc wifi enable") },
                text = "WIFI Onar",
                modifier = Modifier.weight(1f),
                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF2196F3).copy(alpha = 0.2f), contentColor = Color.White)
            )
            CarButton(
                onClick = { exec(context, "logcat -c") },
                text = "Logları Temizle",
                modifier = Modifier.weight(1f),
                colors = ButtonDefaults.buttonColors(containerColor = Color.Gray.copy(alpha = 0.2f), contentColor = Color.White)
            )
        }
    }
}

private fun exec(context: android.content.Context, command: String) {
    val intent = Intent(context, com.omoda.lanc.service.AdbBridgeService::class.java).apply {
        action = com.omoda.lanc.service.AdbBridgeService.ACTION_EXECUTE_SHELL
        putExtra("command", command)
    }
    ContextCompat.startForegroundService(context, intent)
}

data class SensorItem(val label: String, val value: String, val category: String, val color: Color)

@Composable
fun SensorCard(item: SensorItem) {
    val interactionSource = remember { MutableInteractionSource() }
    val isFocused by interactionSource.collectIsFocusedAsState()
    
    val bgColor = if (isFocused) Color.White.copy(alpha = 0.15f) else Color.White.copy(alpha = 0.08f)
    val borderColor = if (isFocused) Color.White else item.color.copy(alpha = 0.5f)
    val borderWidth = if (isFocused) 4.dp else 2.dp

    Box(
        modifier = Modifier
            .clip(RoundedCornerShape(16.dp))
            .background(bgColor)
            .border(borderWidth, borderColor, RoundedCornerShape(16.dp))
            .clickable(interactionSource = interactionSource, indication = null) {} // Add focusability for Rotary
            .padding(16.dp)
            .defaultMinSize(minHeight = MinCarTouchTarget)
    ) {
        Column {
            Text(item.category.uppercase(), color = item.color, fontSize = 14.sp, fontWeight = FontWeight.Black)
            Spacer(Modifier.height(4.dp))
            Text(item.label, color = Color.LightGray, fontSize = 18.sp)
            Spacer(Modifier.height(4.dp))
            Text(item.value, color = Color.White, fontSize = 24.sp, fontWeight = FontWeight.ExtraBold)
        }
    }
}
