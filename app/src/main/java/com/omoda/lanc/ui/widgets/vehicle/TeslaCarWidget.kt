package com.omoda.lanc.ui.widgets.vehicle

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.CornerRadius
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.geometry.Size
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.Path
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.drawscope.Fill
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.GlobalState
import com.omoda.lanc.ui.components.GlassCard
import com.omoda.lanc.ui.dashboard.DashboardWidget
import com.omoda.lanc.ui.theme.*

class PremiumCarWidget : DashboardWidget {
    override val id: String = "premium_car_widget"
    override val minWidthDp: Int = 300
    override val minHeightDp: Int = 500

    @Composable
    override fun Content() {
        val vehicleData by GlobalState.vehicleDataValues.collectAsState()
        val speed = vehicleData["HIZ"] ?: "0 km/h"
        val gear = vehicleData["VİTES"] ?: "P"

        GlassCard(
            modifier = Modifier.fillMaxSize()
        ) {
            Box(modifier = Modifier.fillMaxSize()) {
                // Background Glow
                Canvas(modifier = Modifier.fillMaxSize()) {
                    drawCircle(
                        brush = Brush.radialGradient(
                            colors = listOf(Color(0xFFE6C073).copy(alpha = 0.3f), Color.Transparent),
                            center = Offset(size.width / 2, size.height * 0.7f),
                            radius = size.width
                        )
                    )
                }

                Column(
                    modifier = Modifier.fillMaxSize().padding(24.dp)
                ) {
                    // Top: Speed & Gear
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.Top
                    ) {
                        Row(verticalAlignment = Alignment.Bottom) {
                            Text(
                                text = speed.substringBefore(" "),
                                color = Color.White,
                                fontSize = 48.sp,
                                fontWeight = FontWeight.Black
                            )
                            Spacer(Modifier.width(8.dp))
                            Text(
                                text = "km/h",
                                color = TextMuted,
                                fontSize = 16.sp,
                                modifier = Modifier.padding(bottom = 8.dp)
                            )
                        }

                        Column(verticalArrangement = Arrangement.spacedBy(16.dp)) {
                            GearText("P", gear == "P")
                            GearText("R", gear == "R")
                            GearText("N", gear == "N")
                            GearText("D", gear == "D")
                        }
                    }

                    // Middle: Car Visualization
                    Box(
                        modifier = Modifier.weight(1f).fillMaxWidth(),
                        contentAlignment = Alignment.Center
                    ) {
                        PremiumCarShapeCanvas(vehicleData)
                    }

                    // Bottom: Drive Modes
                    Row(
                        modifier = Modifier.fillMaxWidth(),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        DriveModeButton("Chill Mode", isSelected = false)
                        DriveModeButton("Insane Mode", isSelected = true)
                        DriveModeButton("Plaid Mode", isSelected = false)
                    }

                    Spacer(Modifier.height(16.dp))

                    // Adjustments
                    Text("ADJUSTMENTS", color = TextMuted, fontSize = 10.sp, fontWeight = FontWeight.Bold)
                    Spacer(Modifier.height(8.dp))
                    Row(horizontalArrangement = Arrangement.spacedBy(16.dp)) {
                        AdjustmentIcon("\uD83D\uDEE0") // Steering
                        AdjustmentIcon("\uD83D\uDD0D") // Mirrors
                        AdjustmentIcon("⚙") // Settings
                    }
                }
            }
        }
    }

    @Composable
    private fun GearText(label: String, isSelected: Boolean) {
        Text(
            text = label,
            color = if (isSelected) Color.White else TextMuted.copy(alpha = 0.5f),
            fontSize = 20.sp,
            fontWeight = if (isSelected) FontWeight.Black else FontWeight.Bold
        )
    }

    @Composable
    private fun DriveModeButton(label: String, isSelected: Boolean) {
        Box(
            modifier = Modifier
                .clip(RoundedCornerShape(12.dp))
                .background(if (isSelected) Color(0xFFC7B18A) else Color.White.copy(alpha = 0.05f))
                .padding(horizontal = 12.dp, vertical = 8.dp),
            contentAlignment = Alignment.Center
        ) {
            Text(
                label,
                color = if (isSelected) Color.Black else TextMuted,
                fontSize = 12.sp,
                fontWeight = FontWeight.Bold
            )
        }
    }

    @Composable
    private fun AdjustmentIcon(icon: String) {
        Box(
            modifier = Modifier
                .size(40.dp)
                .clip(RoundedCornerShape(20.dp))
                .background(Color.White.copy(alpha = 0.1f)),
            contentAlignment = Alignment.Center
        ) {
            Text(icon, color = Color.White)
        }
    }

    @Composable
    private fun PremiumCarShapeCanvas(data: Map<String, String>) {
        Canvas(modifier = Modifier.fillMaxSize()) {
            val center = Offset(size.width / 2, size.height / 2)
            val carW = 140.dp.toPx()
            val carH = 300.dp.toPx()
            
            // Sleek Car Body
            val carPath = Path().apply {
                val left = center.x - carW / 2
                val right = center.x + carW / 2
                val top = center.y - carH / 2
                val bottom = center.y + carH / 2
                
                moveTo(left + 20f, top)
                quadraticBezierTo(center.x, top - 20f, right - 20f, top)
                lineTo(right, bottom - 30f)
                quadraticBezierTo(center.x, bottom + 10f, left, bottom - 30f)
                close()
            }
            
            drawPath(
                path = carPath,
                brush = Brush.linearGradient(
                    colors = listOf(Color(0xFF2A2A2A), Color(0xFF0A0A0A)),
                    start = Offset(center.x, center.y - carH / 2),
                    end = Offset(center.x, center.y + carH / 2)
                )
            )

            // Red Door Alerts
            val flOpen = data["KAPI (SOL ÖN)"] == "AÇIK"
            val frOpen = data["KAPI (SAĞ ÖN)"] == "AÇIK"
            if (flOpen) {
                drawArc(
                    color = OmodaRed,
                    startAngle = 180f,
                    sweepAngle = 45f,
                    useCenter = false,
                    topLeft = Offset(center.x - carW, center.y - carH/4),
                    size = Size(carW, carH/2),
                    style = Stroke(width = 6f)
                )
            }
            if (frOpen) {
                 drawArc(
                    color = OmodaRed,
                    startAngle = -45f,
                    sweepAngle = 45f,
                    useCenter = false,
                    topLeft = Offset(center.x, center.y - carH/4),
                    size = Size(carW, carH/2),
                    style = Stroke(width = 6f)
                )
            }
        }
    }
}
