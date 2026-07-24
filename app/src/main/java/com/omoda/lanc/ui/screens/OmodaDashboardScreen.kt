package com.omoda.lanc.ui.screens

import androidx.compose.animation.core.*
import androidx.compose.foundation.*
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
import androidx.compose.ui.graphics.*
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.core.SplitManager
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.ui.theme.*
import com.omoda.lanc.ui.widgets.vehicle.PremiumCarWidget
import kotlinx.coroutines.delay

/**
 * Architecture 2.0: Omoda 5 Premium Bento Dashboard
 * inspired by Tesla, Cyber-HUD and Modern Modular UI.
 */
@Composable
fun OmodaDashboardScreen(
    vehicleState: VehicleState,
    modifier: Modifier = Modifier
) {
    val context = LocalContext.current
    val scrollState = rememberScrollState()

    BoxWithConstraints(
        modifier = modifier
            .fillMaxSize()
            .background(AaosSurface)
            .padding(16.dp)
    ) {
        val isLandscape = maxWidth > maxHeight
        
        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // HEADER: Welcome & Status
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Column {
                    Text(
                        text = "OMODA 5 COCKPIT",
                        color = Color.White,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.Black
                    )
                    Text(
                        text = "Real-time Telemetry & Intelligence Protocol",
                        color = AaosOnSurfaceVariant,
                        fontSize = 11.sp
                    )
                }
                
                // Connection Chips
                Row(horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    val mqttConnected by GlobalState.isMqttConnected.collectAsState()
                    ConnectionChip("MQTT", mqttConnected, NeonEmerald)
                    
                    val internetOk by GlobalState.hasInternetConnection.collectAsState()
                    ConnectionChip("INET", internetOk, NeonCyan)
                }
            }

            if (isLandscape) {
                LandscapeLayout(vehicleState)
            } else {
                PortraitLayout(vehicleState)
            }

            // BOTTOM ROW: TPMS & SYSTEM INFO
            BentoCard(
                modifier = Modifier.fillMaxWidth(),
                title = "TYRE PRESSURE MATRIX",
                icon = Icons.Default.Build
            ) {
                Row(
                    modifier = Modifier.fillMaxWidth().padding(12.dp),
                    horizontalArrangement = Arrangement.SpaceEvenly
                ) {
                    TpmsItem("FL", vehicleState.tpmsFrontLeft)
                    TpmsItem("FR", vehicleState.tpmsFrontRight)
                    TpmsItem("RL", vehicleState.tpmsRearLeft)
                    TpmsItem("RR", vehicleState.tpmsRearRight)
                }
            }
        }
    }
}

@Composable
private fun LandscapeLayout(vehicleState: VehicleState) {
    Row(
        modifier = Modifier.fillMaxWidth().height(450.dp),
        horizontalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        // LEFT COLUMN: Speed & Power
        Column(
            modifier = Modifier.weight(1f),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            BentoCard(
                modifier = Modifier.weight(1.5f),
                title = "INSTRUMENT CLUSTER",
                icon = Icons.Default.Info,
                badge = vehicleState.gearString
            ) {
                TeslaStyleSpeedometer(vehicleState)
            }

            BentoCard(
                modifier = Modifier.weight(1f),
                title = "LIVE RPM & POWER",
                icon = Icons.Default.Notifications
            ) {
                LivePowerGraph(vehicleState.rpm)
            }
        }

        // CENTER: 3D Visualization
        BentoCard(
            modifier = Modifier.weight(1.2f),
            title = "VEHICLE DYNAMICS",
            icon = Icons.Default.Home,
            cardColor = TeslaCardBackground
        ) {
            Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                PremiumCarWidget().Content()
            }
        }

        // RIGHT COLUMN: Navigation & Actions
        Column(
            modifier = Modifier.weight(0.8f),
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            BentoCard(
                modifier = Modifier.weight(1f),
                title = "NAVIGATION",
                icon = Icons.Default.Place,
                badge = "Ready",
                onClick = { SplitManager.launchSplitMaps(context, SplitManager.MAPS_YANDEX) }
            ) {
                Column(modifier = Modifier.padding(12.dp)) {
                    Text("Kadıköy Sahil", color = Color.White, fontWeight = FontWeight.Bold)
                    Text("Split View Active", color = AaosOnSurfaceVariant, fontSize = 12.sp)
                }
            }

            BentoCard(
                modifier = Modifier.weight(1f),
                title = "CLIMATE CONTROL",
                icon = Icons.Default.Settings
            ) {
                Row(
                    modifier = Modifier.fillMaxSize(),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.Center
                ) {
                    Text("${vehicleState.acTemperatureDriver}°C", fontSize = 32.sp, fontWeight = FontWeight.Black, color = NeonCyan)
                }
            }
        }
    }
}

@Composable
private fun PortraitLayout(vehicleState: VehicleState) {
    Column(
        modifier = Modifier.fillMaxWidth(),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        BentoCard(
            modifier = Modifier.fillMaxWidth().height(200.dp),
            title = "SPEED",
            icon = Icons.Default.Info
        ) {
            TeslaStyleSpeedometer(vehicleState)
        }

        BentoCard(
            modifier = Modifier.fillMaxWidth().height(250.dp),
            title = "VEHICLE",
            icon = Icons.Default.Home
        ) {
            PremiumCarWidget().Content()
        }

        Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(16.dp)) {
             BentoCard(
                modifier = Modifier.weight(1f).height(150.dp),
                title = "RPM",
                icon = Icons.Default.Notifications
            ) {
                LivePowerGraph(vehicleState.rpm)
            }
            BentoCard(
                modifier = Modifier.weight(1f).height(150.dp),
                title = "TEMP",
                icon = Icons.Default.Settings
            ) {
                Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
                    Text("${vehicleState.acTemperatureDriver}°C", fontSize = 32.sp, fontWeight = FontWeight.Black, color = NeonCyan)
                }
            }
        }
    }
}

@Composable
fun BentoCard(
    modifier: Modifier = Modifier,
    title: String,
    icon: ImageVector,
    badge: String? = null,
    cardColor: Color = AaosSurfaceContainer,
    onClick: (() -> Unit)? = null,
    content: @Composable BoxScope.() -> Unit
) {
    Surface(
        modifier = modifier
            .clip(RoundedCornerShape(24.dp))
            .clickable(enabled = onClick != null) { onClick?.invoke() },
        color = cardColor,
        border = BorderStroke(1.dp, AaosSurfaceContainerHigh)
    ) {
        Box(modifier = Modifier.fillMaxSize()) {
            // Header
            Row(
                modifier = Modifier
                    .fillMaxWidth()
                    .padding(16.dp),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(icon, contentDescription = null, tint = AaosPrimaryCyan, modifier = Modifier.size(18.dp))
                    Spacer(Modifier.width(8.dp))
                    Text(title, color = AaosOnSurfaceVariant, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                }
                
                if (badge != null) {
                    Surface(
                        color = AaosPrimaryCyan.copy(alpha = 0.1f),
                        shape = RoundedCornerShape(8.dp)
                    ) {
                        Text(
                            text = badge,
                            color = AaosPrimaryCyan,
                            fontSize = 10.sp,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp)
                        )
                    }
                }
            }
            
            // Content
            Box(
                modifier = Modifier
                    .fillMaxSize()
                    .padding(top = 40.dp),
                content = content
            )
        }
    }
}

@Composable
private fun TeslaStyleSpeedometer(vehicleState: VehicleState) {
    Box(modifier = Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Text(
                text = vehicleState.speed.toInt().toString(),
                color = Color.White,
                fontSize = 72.sp,
                fontWeight = FontWeight.Black
            )
            Text(
                text = "KM/H",
                color = AaosPrimaryCyan,
                fontSize = 14.sp,
                fontWeight = FontWeight.Bold
            )
        }
    }
}

@Composable
private fun LivePowerGraph(rpm: Float) {
    val infiniteTransition = rememberInfiniteTransition(label = "power_graph")
    val phase by infiniteTransition.animateFloat(
        initialValue = 0f,
        targetValue = 360f,
        animationSpec = infiniteRepeatable(
            animation = tween(2000, easing = LinearEasing),
            repeatMode = RepeatMode.Restart
        ),
        label = "phase"
    )

    Canvas(modifier = Modifier.fillMaxSize().padding(16.dp)) {
        val path = Path()
        val width = size.width
        val height = size.height
        val points = 20
        val step = width / points
        
        path.moveTo(0f, height / 2)
        for (i in 0..points) {
            val x = i * step
            val y = height / 2 + Math.sin(Math.toRadians((phase + i * 20).toDouble())).toFloat() * (rpm / 1000f) * 10f
            path.lineTo(x, y)
        }
        
        drawPath(
            path = path,
            color = NeonEmerald,
            style = Stroke(width = 3.dp.toPx(), cap = StrokeCap.Round)
        )
        
        // Fill area under path
        path.lineTo(width, height)
        path.lineTo(0f, height)
        path.close()
        drawPath(
            path = path,
            brush = Brush.verticalGradient(
                colors = listOf(NeonEmerald.copy(alpha = 0.2f), Color.Transparent)
            )
        )
    }
}

@Composable
fun ConnectionChip(label: String, isActive: Boolean, activeColor: Color) {
    Surface(
        color = if (isActive) activeColor.copy(alpha = 0.15f) else Color.DarkGray.copy(alpha = 0.3f),
        shape = CircleShape,
        border = BorderStroke(1.dp, if (isActive) activeColor.copy(alpha = 0.5f) else Color.Transparent)
    ) {
        Row(
            modifier = Modifier.padding(horizontal = 8.dp, vertical = 4.dp),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(modifier = Modifier.size(6.dp).clip(CircleShape).background(if (isActive) activeColor else Color.Gray))
            Spacer(Modifier.width(6.dp))
            Text(label, color = if (isActive) Color.White else Color.Gray, fontSize = 9.sp, fontWeight = FontWeight.Bold)
        }
    }
}

@Composable
fun TpmsItem(label: String, value: String) {
    Column(horizontalAlignment = Alignment.CenterHorizontally) {
        Text(label, color = AaosOnSurfaceVariant, fontSize = 10.sp)
        Text(value, color = Color.White, fontSize = 16.sp, fontWeight = FontWeight.Bold)
        Text("bar", color = AaosOnSurfaceVariant, fontSize = 9.sp)
    }
}
