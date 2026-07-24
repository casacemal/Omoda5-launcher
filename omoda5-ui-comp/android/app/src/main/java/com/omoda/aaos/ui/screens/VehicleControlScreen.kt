package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Lock
import androidx.compose.material.icons.filled.LockOpen
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*

@Composable
fun VehicleControlScreen() {
    var isLocked by remember { mutableStateOf(true) }
    var sunroofPercent by remember { mutableStateOf(30f) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        verticalArrangement = Arrangement.spacedBy(16.dp)
    ) {
        Text(
            text = "TESLA-STYLE VEHICLE CONTROLS",
            fontSize = 16.sp,
            fontWeight = FontWeight.Bold,
            color = Color.White
        )

        Row(
            modifier = Modifier.fillMaxWidth(),
            horizontalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Button(
                onClick = { isLocked = !isLocked },
                colors = ButtonDefaults.buttonColors(
                    containerColor = if (isLocked) Color(0xFF10B981) else Color(0xFFF59E0B)
                ),
                modifier = Modifier
                    .weight(1f)
                    .height(52.dp)
            ) {
                Icon(
                    imageVector = if (isLocked) Icons.Default.Lock else Icons.Default.LockOpen,
                    contentDescription = null,
                    tint = Color.Black
                )
                Spacer(modifier = Modifier.width(8.dp))
                Text(
                    text = if (isLocked) "ALL DOORS LOCKED" else "DOORS OPENED",
                    color = Color.Black,
                    fontWeight = FontWeight.Bold
                )
            }
        }

        Box(
            modifier = Modifier
                .fillMaxWidth()
                .clip(RoundedCornerShape(24.dp))
                .background(AaosSurfaceContainer)
                .padding(20.dp)
        ) {
            Column {
                Text(
                    text = "PANORAMIC SUNROOF POSITION (${sunroofPercent.toInt()}%)",
                    fontSize = 12.sp,
                    fontWeight = FontWeight.Bold,
                    color = AaosPrimaryCyan
                )
                Spacer(modifier = Modifier.height(8.dp))
                Slider(
                    value = sunroofPercent,
                    onValueChange = { sunroofPercent = it },
                    valueRange = 0f..100f,
                    colors = SliderDefaults.colors(
                        thumbColor = AaosPrimaryCyan,
                        activeTrackColor = AaosPrimaryCyan
                    )
                )
            }
        }
    }
}
