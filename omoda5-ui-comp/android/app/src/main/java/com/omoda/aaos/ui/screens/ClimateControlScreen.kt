package com.omoda.aaos.ui.screens

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.AcUnit
import androidx.compose.material.icons.filled.Add
import androidx.compose.material.icons.filled.Remove
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.aaos.theme.*

@Composable
fun ClimateControlScreen(
    temp: Int,
    onTempChange: (Int) -> Unit
) {
    Column(
        modifier = Modifier
            .fillMaxSize()
            .padding(16.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        Icon(
            imageVector = Icons.Default.AcUnit,
            contentDescription = "AC",
            tint = AaosPrimaryCyan,
            modifier = Modifier.size(48.dp)
        )
        Spacer(modifier = Modifier.height(16.dp))
        Text(
            text = "CABIN CLIMATE CONTROL",
            fontSize = 16.sp,
            fontWeight = FontWeight.Bold,
            color = Color.White
        )
        Spacer(modifier = Modifier.height(12.dp))
        Text(
            text = "$temp°C",
            fontSize = 72.sp,
            fontWeight = FontWeight.Black,
            color = AaosPrimaryCyan
        )
        Spacer(modifier = Modifier.height(24.dp))

        Row(horizontalArrangement = Arrangement.spacedBy(24.dp)) {
            Button(
                onClick = { onTempChange(temp - 1) },
                colors = ButtonDefaults.buttonColors(containerColor = AaosSurfaceContainerHigh),
                modifier = Modifier.size(64.dp)
            ) {
                Icon(Icons.Default.Remove, contentDescription = "Cooler", tint = Color.White)
            }
            Button(
                onClick = { onTempChange(temp + 1) },
                colors = ButtonDefaults.buttonColors(containerColor = AaosPrimaryCyan),
                modifier = Modifier.size(64.dp)
            ) {
                Icon(Icons.Default.Add, contentDescription = "Warmer", tint = Color.Black)
            }
        }
    }
}
