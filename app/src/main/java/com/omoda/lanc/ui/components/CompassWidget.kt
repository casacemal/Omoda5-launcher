package com.omoda.lanc.ui.components

import androidx.compose.foundation.Canvas
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.collectAsState
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.geometry.Offset
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.drawscope.Stroke
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.CompassManager
import com.omoda.lanc.ui.theme.CardSurface
import com.omoda.lanc.ui.theme.OmodaCyan

@Composable
fun CompassWidget(modifier: Modifier = Modifier) {
    val bearing by CompassManager.bearing.collectAsState()
    val location by CompassManager.location.collectAsState()

    Box(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(20.dp))
            .background(CardSurface.copy(alpha = 0.8f))
            .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(20.dp))
            .padding(16.dp)
    ) {
        Column(horizontalAlignment = Alignment.CenterHorizontally, modifier = Modifier.fillMaxWidth()) {
            Text(
                "PUSULA",
                modifier = Modifier.align(Alignment.Start),
                color = OmodaCyan.copy(alpha = 0.7f),
                fontSize = 11.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = 2.sp
            )

            Spacer(Modifier.height(8.dp))

            Box(modifier = Modifier.weight(1f).fillMaxWidth(), contentAlignment = Alignment.Center) {
                // Outer ring
                Canvas(modifier = Modifier.size(140.dp)) {
                    drawCircle(color = Color.White.copy(alpha = 0.05f), style = Stroke(1.dp.toPx()))
                }

                // Rotating Ring with Cardinal Points
                Box(modifier = Modifier.size(140.dp).graphicsLayer { rotationZ = -bearing }) {
                    Canvas(modifier = Modifier.fillMaxSize()) {
                        val radius = size.minDimension / 2
                        val center = Offset(size.width / 2, size.height / 2)

                        // Draw degree marks
                        for (i in 0 until 360 step 30) {
                            val angleRad = Math.toRadians(i.toDouble() - 90).toFloat()
                            val start = Offset(
                                center.x + Math.cos(angleRad.toDouble()).toFloat() * (radius - 8.dp.toPx()),
                                center.y + Math.sin(angleRad.toDouble()).toFloat() * (radius - 8.dp.toPx())
                            )
                            val end = Offset(
                                center.x + Math.cos(angleRad.toDouble()).toFloat() * radius,
                                center.y + Math.sin(angleRad.toDouble()).toFloat() * radius
                            )
                            drawLine(color = Color.White.copy(alpha = 0.2f), start = start, end = end, strokeWidth = 1.dp.toPx())
                        }
                    }

                    Text("N", Modifier.align(Alignment.TopCenter).padding(top = 8.dp), color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
                    Text("S", Modifier.align(Alignment.BottomCenter).padding(bottom = 8.dp), color = Color.White.copy(alpha = 0.6f), fontSize = 10.sp)
                    Text("E", Modifier.align(Alignment.CenterEnd).padding(end = 8.dp), color = Color.White.copy(alpha = 0.6f), fontSize = 10.sp)
                    Text("W", Modifier.align(Alignment.CenterStart).padding(start = 8.dp), color = Color.White.copy(alpha = 0.6f), fontSize = 10.sp)
                }

                // Fixed Center Arrow (Pointer)
                Icon(
                    imageVector = Icons.Default.KeyboardArrowUp,
                    contentDescription = null,
                    tint = OmodaCyan,
                    modifier = Modifier.size(24.dp).graphicsLayer { translationY = -15f }
                )

                // Degree Text in center
                Text(
                    text = "${bearing.toInt()}°",
                    color = Color.White,
                    fontSize = 18.sp,
                    fontWeight = FontWeight.Light,
                    modifier = Modifier.align(Alignment.Center).padding(top = 24.dp)
                )
            }

            Spacer(Modifier.height(8.dp))

            Row(modifier = Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween) {
                Column {
                    Text("ENLEM", color = Color.White.copy(alpha = 0.3f), fontSize = 8.sp, fontWeight = FontWeight.Bold)
                    Text("%.4f° N".format(location?.latitude ?: 39.7579), color = Color.White, fontSize = 10.sp)
                }
                Column(horizontalAlignment = Alignment.End) {
                    Text("BOYLAM", color = Color.White.copy(alpha = 0.3f), fontSize = 8.sp, fontWeight = FontWeight.Bold)
                    Text("%.4f° W".format(location?.longitude ?: 33.5108), color = Color.White, fontSize = 10.sp)
                }
            }
        }
    }
}
