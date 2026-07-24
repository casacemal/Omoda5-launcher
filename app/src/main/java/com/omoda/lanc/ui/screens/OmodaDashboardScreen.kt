package com.omoda.lanc.ui.screens

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.rememberScrollState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.foundation.verticalScroll
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.StrokeCap
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.vector.ImageVector
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.SplitManager
import com.omoda.lanc.model.VehicleState
import com.omoda.lanc.ui.theme.*
import com.omoda.lanc.ui.widgets.vehicle.PremiumCarWidget

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
            .background(OmodaSlateBg)
            .padding(12.dp)
    ) {
        val isLandscapeScreen = maxWidth > maxHeight

        Column(
            modifier = Modifier
                .fillMaxSize()
                .verticalScroll(scrollState),
            verticalArrangement = Arrangement.spacedBy(12.dp)
        ) {
            // Ana Gösterge Ekranı (Esnek Responsive Grid Düzeni)
            if (isLandscapeScreen) {
                Row(
                    modifier = Modifier.fillMaxWidth(),
                    horizontalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    // SOL KISIM: Dijital Gösterge ve Sürüş Modları
                    Column(
                        modifier = Modifier.weight(0.42f),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // Hız Göstergesi Kartı
                        SpeedometerCard(vehicleState)

                        // Hızlı Araç Kısayolları
                        QuickActionsGrid()
                    }

                    // SAĞ KISIM: Interaktif 3D Araç Görünümü ve Alt Kartlar
                    Column(
                        modifier = Modifier.weight(0.58f),
                        verticalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        // 3D Araç Telemetri Görseli
                        Surface(
                            color = OmodaCardSurface,
                            shape = RoundedCornerShape(20.dp),
                            border = BorderStroke(1.dp, OmodaGlassCardBorder),
                            modifier = Modifier
                                .fillMaxWidth()
                                .height(230.dp)
                        ) {
                            PremiumCarWidget().Content()
                        }

                        // Alt Kartlar (Harita Kısayolu ve Medya Kartı)
                        Row(
                            modifier = Modifier.fillMaxWidth(),
                            horizontalArrangement = Arrangement.spacedBy(12.dp)
                        ) {
                            NavigationCard(
                                modifier = Modifier.weight(1f),
                                onClick = { SplitManager.launchSplitMaps(context, SplitManager.MAPS_YANDEX) }
                            )

                            MediaCard(
                                modifier = Modifier.weight(1f)
                            )
                        }
                    }
                }
            } else {
                // Dikey / Dar Ekran Düzeni
                Column(
                    modifier = Modifier.fillMaxWidth(),
                    verticalArrangement = Arrangement.spacedBy(12.dp)
                ) {
                    SpeedometerCard(vehicleState)

                    Surface(
                        color = OmodaCardSurface,
                        shape = RoundedCornerShape(20.dp),
                        border = BorderStroke(1.dp, OmodaGlassCardBorder),
                        modifier = Modifier
                            .fillMaxWidth()
                            .height(200.dp)
                    ) {
                        PremiumCarWidget().Content()
                    }

                    QuickActionsGrid()

                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.spacedBy(12.dp)
                    ) {
                        NavigationCard(
                            modifier = Modifier.weight(1f),
                            onClick = { SplitManager.launchSplitMaps(context, SplitManager.MAPS_YANDEX) }
                        )

                        MediaCard(
                            modifier = Modifier.weight(1f)
                        )
                    }
                }
            }

            // ALT KISIM: Telemetri Detayları (Motor, Yağ, Menzil)
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                TelemetryDetailCard(
                    title = "Motor Harareti",
                    value = formatSensorValue(vehicleState.coolantTemp.toInt(), "°C"),
                    icon = Icons.Default.Info,
                    accentColor = OmodaCyanNeon,
                    modifier = Modifier.weight(1f)
                )

                TelemetryDetailCard(
                    title = "Yağ Sıcaklığı",
                    value = formatSensorValue(vehicleState.oilTemp.toInt(), "°C"),
                    icon = Icons.Default.Build,
                    accentColor = GlowYellow,
                    modifier = Modifier.weight(1f)
                )

                TelemetryDetailCard(
                    title = "Kalan Menzil",
                    value = formatSensorValue(vehicleState.range.toInt(), "km"),
                    icon = Icons.Default.Info,
                    accentColor = GlowGreen,
                    modifier = Modifier.weight(1f)
                )
            }

            // TPMS Lastik Basınç Paneli
            TpmsPanel(vehicleState)
        }
    }
}

/**
 * Dairesel Dijital Hız Göstergesi Kartı (Cyberpunk Neon Halka)
 */
@Composable
private fun SpeedometerCard(vehicleState: VehicleState) {
    Surface(
        color = OmodaCardSurface,
        shape = RoundedCornerShape(20.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(
            modifier = Modifier.padding(14.dp),
            horizontalAlignment = Alignment.CenterHorizontally
        ) {
            // Üst Bilgi Satırı (Pusula & ODO)
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween,
                verticalAlignment = Alignment.CenterVertically
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Icon(Icons.Default.Info, contentDescription = null, tint = OmodaCyanNeon, modifier = Modifier.size(14.dp))
                    Spacer(Modifier.width(4.dp))
                    Text("KUZEY-BATI 310°", color = TextGray, fontSize = 10.sp, fontWeight = FontWeight.SemiBold)
                }
                Text(
                    "ODO: ${vehicleState.odometer.toInt()} KM",
                    color = OmodaCyanNeon,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold
                )
            }

            Spacer(Modifier.height(8.dp))

            // Dairesel Hız Kadranı
            val speedFloat = vehicleState.speed
            val maxSpeed = 220f
            val progress = (speedFloat / maxSpeed).coerceIn(0f, 1f)
            val speedDisplayStr = vehicleState.speed.toInt().toString()

            Box(
                contentAlignment = Alignment.Center,
                modifier = Modifier.size(150.dp)
            ) {
                Canvas(modifier = Modifier.fillMaxSize().padding(6.dp)) {
                    // Arka Plan Halkası
                    drawArc(
                        color = Color(0xFF1E293B),
                        startAngle = 135f,
                        sweepAngle = 270f,
                        useCenter = false,
                        style = Stroke(width = 10.dp.toPx(), cap = StrokeCap.Round)
                    )
                    // Neon Cyan Hız Halkası
                    drawArc(
                        color = OmodaCyanNeon,
                        startAngle = 135f,
                        sweepAngle = 270f * progress,
                        useCenter = false,
                        style = Stroke(width = 10.dp.toPx(), cap = StrokeCap.Round)
                    )
                }

                Column(horizontalAlignment = Alignment.CenterHorizontally) {
                    Text(
                        text = speedDisplayStr,
                        color = Color.White,
                        fontSize = 44.sp,
                        fontWeight = FontWeight.Black
                    )
                    Text(
                        text = "KM/H",
                        color = TextGray,
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Spacer(Modifier.height(4.dp))
                    Text(
                        text = "${vehicleState.rpm.toInt()} RPM",
                        color = OmodaCyanNeon.copy(alpha = 0.8f),
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Bold
                    )
                    Spacer(Modifier.height(2.dp))
                    Surface(
                        color = Color(0xFF1E293B),
                        shape = RoundedCornerShape(6.dp),
                        border = BorderStroke(1.dp, Color(0xFF334155))
                    ) {
                        Text(
                            text = "CRUISE 90 KM/H",
                            color = OmodaCyanNeon,
                            fontSize = 9.sp,
                            fontWeight = FontWeight.Bold,
                            modifier = Modifier.padding(horizontal = 6.dp, vertical = 2.dp)
                        )
                    }
                }
            }

            Spacer(Modifier.height(10.dp))

            // Vites Düğmeleri (P, R, N, D)
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceEvenly
            ) {
                val currentGear = vehicleState.gearString.ifBlank { "P" }
                listOf("P", "R", "N", "D").forEach { g ->
                    val isSelected = currentGear.equals(g, ignoreCase = true)
                    Box(
                        modifier = Modifier
                            .size(width = 44.dp, height = 36.dp)
                            .clip(RoundedCornerShape(10.dp))
                            .background(
                                if (isSelected)
                                    Brush.horizontalGradient(listOf(OmodaCyanNeon, Color(0xFF2563EB)))
                                else
                                    Brush.linearGradient(listOf(Color(0xFF1E293B), Color(0xFF0F172A)))
                            )
                            .border(
                                1.dp,
                                if (isSelected) OmodaCyanNeon else Color(0xFF334155),
                                RoundedCornerShape(10.dp)
                            ),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = g,
                            color = if (isSelected) Color.White else TextGray,
                            fontWeight = FontWeight.Bold,
                            fontSize = 14.sp
                        )
                    }
                }
            }

            Spacer(Modifier.height(10.dp))

            // Sürüş Modları (ECO, NORMAL, SPORT)
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                val modes = listOf("ECO", "NORMAL", "SPORT")
                val activeMode = when (vehicleState.drivingMode) {
                    1 -> "ECO"
                    2 -> "SPORT"
                    else -> "NORMAL"
                }

                modes.forEach { mode ->
                    val isSelected = mode == activeMode
                    val modeColor = when (mode) {
                        "SPORT" -> OmodaRed
                        "ECO" -> GlowGreen
                        else -> OmodaCyanNeon
                    }
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(32.dp)
                            .clip(RoundedCornerShape(8.dp))
                            .background(if (isSelected) modeColor.copy(alpha = 0.25f) else Color(0xFF1E293B).copy(alpha = 0.5f))
                            .border(1.dp, if (isSelected) modeColor else Color(0xFF334155), RoundedCornerShape(8.dp)),
                        contentAlignment = Alignment.Center
                    ) {
                        Text(
                            text = mode,
                            color = if (isSelected) modeColor else TextGray,
                            fontSize = 11.sp,
                            fontWeight = FontWeight.Bold
                        )
                    }
                }
            }
        }
    }
}

/**
 * Hızlı Araç Kısayolları Gridi
 */
@Composable
private fun QuickActionsGrid() {
    Surface(
        color = OmodaCardSurface,
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(modifier = Modifier.padding(10.dp)) {
            Text(
                "HIZLI KISAYOLLAR",
                color = TextGray,
                fontSize = 10.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = 6.dp)
            )
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(8.dp)
            ) {
                QuickActionButton("360° Kamera", Icons.Default.Info, OmodaCyanNeon, Modifier.weight(1f))
                QuickActionButton("Ambiyans", Icons.Default.Star, AccentPurple, Modifier.weight(1f))
                QuickActionButton("Hava Temizleyici", Icons.Default.Refresh, GlowGreen, Modifier.weight(1f))
            }
        }
    }
}

@Composable
private fun QuickActionButton(title: String, icon: ImageVector, accentColor: Color, modifier: Modifier = Modifier) {
    Surface(
        color = Color(0xFF1E293B).copy(alpha = 0.6f),
        shape = RoundedCornerShape(10.dp),
        border = BorderStroke(1.dp, Color(0xFF334155)),
        modifier = modifier
    ) {
        Column(
            modifier = Modifier.padding(6.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Icon(icon, contentDescription = title, tint = accentColor, modifier = Modifier.size(16.dp))
            Spacer(Modifier.height(2.dp))
            Text(title, color = Color.White, fontSize = 9.sp, fontWeight = FontWeight.SemiBold)
        }
    }
}

@Composable
private fun NavigationCard(modifier: Modifier = Modifier, onClick: () -> Unit) {
    Surface(
        color = OmodaCardSurface,
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = modifier.clickable { onClick() }
    ) {
        Column(modifier = Modifier.padding(12.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween,
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(
                        modifier = Modifier.size(24.dp).clip(CircleShape).background(OmodaCyanNeon.copy(alpha = 0.2f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(Icons.Default.Place, contentDescription = null, tint = OmodaCyanNeon, modifier = Modifier.size(12.dp))
                    }
                    Spacer(Modifier.width(6.dp))
                    Text("GPS Navigasyon", color = Color.White, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                }
                Icon(Icons.Default.ArrowForward, contentDescription = null, tint = TextGray, modifier = Modifier.size(14.dp))
            }
            Spacer(Modifier.height(8.dp))
            Surface(
                color = Color(0xFF0F172A),
                shape = RoundedCornerShape(8.dp),
                border = BorderStroke(1.dp, Color(0xFF1E293B))
            ) {
                Row(
                    modifier = Modifier.padding(6.dp).fillMaxWidth(),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text("400m", color = OmodaCyanNeon, fontWeight = FontWeight.Bold, fontSize = 13.sp)
                    Spacer(Modifier.width(6.dp))
                    Column {
                        Text("Sağa Dön: Atatürk Bld.", color = Color.White, fontSize = 10.sp, fontWeight = FontWeight.SemiBold)
                        Text("Varış: 12 dk • 8.4 km", color = TextGray, fontSize = 9.sp)
                    }
                }
            }
        }
    }
}

@Composable
private fun MediaCard(modifier: Modifier = Modifier) {
    Surface(
        color = OmodaCardSurface,
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = modifier
    ) {
        Column(modifier = Modifier.padding(12.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween,
                modifier = Modifier.fillMaxWidth()
            ) {
                Row(verticalAlignment = Alignment.CenterVertically) {
                    Box(
                        modifier = Modifier.size(24.dp).clip(CircleShape).background(AccentPurple.copy(alpha = 0.2f)),
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(Icons.Default.PlayArrow, contentDescription = null, tint = AccentPurple, modifier = Modifier.size(12.dp))
                    }
                    Spacer(Modifier.width(6.dp))
                    Text("Medya Ses", color = Color.White, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                }
                Icon(Icons.Default.ArrowForward, contentDescription = null, tint = TextGray, modifier = Modifier.size(14.dp))
            }
            Spacer(Modifier.height(8.dp))
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.SpaceBetween,
                modifier = Modifier.fillMaxWidth()
            ) {
                Column {
                    Text("Omoda Media Player", color = Color.White, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                    Text("Hazır • FM / Bluetooth", color = TextGray, fontSize = 9.sp)
                }
                Box(
                    modifier = Modifier.size(28.dp).clip(CircleShape).background(OmodaCyanNeon),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(Icons.Default.PlayArrow, contentDescription = "Play", tint = OmodaSlateBg, modifier = Modifier.size(16.dp))
                }
            }
        }
    }
}

@Composable
private fun TelemetryDetailCard(
    title: String,
    value: String,
    icon: ImageVector,
    accentColor: Color,
    modifier: Modifier = Modifier
) {
    Surface(
        color = OmodaGlassCardBg,
        shape = RoundedCornerShape(14.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = modifier
    ) {
        Row(
            modifier = Modifier.padding(10.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.spacedBy(8.dp)
        ) {
            Icon(icon, contentDescription = title, tint = accentColor, modifier = Modifier.size(20.dp))
            Column {
                Text(title, color = TextGray, fontSize = 10.sp)
                Text(value, color = Color.White, fontWeight = FontWeight.Bold, fontSize = 13.sp)
            }
        }
    }
}

@Composable
private fun TpmsPanel(vehicleState: VehicleState) {
    Surface(
        color = OmodaCardSurface,
        shape = RoundedCornerShape(18.dp),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = Modifier.fillMaxWidth()
    ) {
        Column(modifier = Modifier.padding(14.dp)) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(6.dp)
            ) {
                Icon(Icons.Default.Build, contentDescription = "TPMS", tint = OmodaCyanNeon, modifier = Modifier.size(16.dp))
                Text("TPMS LASTİK BASINÇLARI", color = Color.White, fontWeight = FontWeight.Bold, fontSize = 13.sp)
            }

            Spacer(Modifier.height(10.dp))

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.SpaceBetween
            ) {
                TireItem("Ön Sol", vehicleState.tpmsFrontLeft, Modifier.weight(1f))
                TireItem("Ön Sağ", vehicleState.tpmsFrontRight, Modifier.weight(1f))
                TireItem("Arka Sol", vehicleState.tpmsRearLeft, Modifier.weight(1f))
                TireItem("Arka Sağ", vehicleState.tpmsRearRight, Modifier.weight(1f))
            }
        }
    }
}

@Composable
private fun TireItem(title: String, rawVal: Any?, modifier: Modifier = Modifier) {
    val displayVal = formatSensorValue(rawVal, "PSI")
    Column(
        modifier = modifier,
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(title, color = TextGray, fontSize = 10.sp)
        Spacer(Modifier.height(2.dp))
        Text(
            text = displayVal,
            color = if (displayVal == "Bulunamadı") TextGray else OmodaCyanNeon,
            fontWeight = FontWeight.Bold,
            fontSize = 13.sp
        )
    }
}

private fun formatSensorValue(valObj: Any?, unitSuffix: String = ""): String {
    if (valObj == null) return "Bulunamadı"
    val str = valObj.toString().trim()
    if (str.isEmpty() || str == "null" || str == "-1" || str == "0x0") return "Bulunamadı"
    return if (unitSuffix.isNotEmpty() && !str.contains(unitSuffix)) "$str $unitSuffix" else str
}
