package com.omoda.lanc.ui.screens

import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Surface
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

@Composable
fun EnhancedSettingCard(title: String, modifier: Modifier = Modifier, isCompact: Boolean = false, content: @Composable () -> Unit) {
    Column(modifier = modifier, verticalArrangement = Arrangement.spacedBy(if (isCompact) 2.dp else 8.dp)) {
        Text(title, color = Color(0xFF69E2D3), fontSize = if (isCompact) 9.sp else 13.sp, fontWeight = FontWeight.Black, modifier = Modifier.padding(start = 4.dp))
        Surface(
            color = Color.White.copy(alpha = 0.05f),
            shape = RoundedCornerShape(if (isCompact) 8.dp else 20.dp),
            border = BorderStroke(1.dp, Color.White.copy(alpha = 0.08f)),
            modifier = Modifier.fillMaxWidth()
        ) {
            Box(modifier = Modifier.padding(if (isCompact) 6.dp else 16.dp)) { content() }
        }
    }
}

@Composable
fun SettingsToggleButton(
    label: String,
    active: Boolean,
    onClick: () -> Unit,
    modifier: Modifier = Modifier,
    isCompact: Boolean = false
) {
    val bgColor by animateColorAsState(if (active) Color(0xFF69E2D3).copy(alpha = 0.35f) else Color.White.copy(alpha = 0.05f))
    val borderColor by animateColorAsState(if (active) Color(0xFF69E2D3) else Color.White.copy(alpha = 0.12f))
    val textColor by animateColorAsState(if (active) Color(0xFF69E2D3) else Color.White)

    Surface(
        color = bgColor,
        shape = RoundedCornerShape(if (isCompact) 6.dp else 12.dp),
        border = BorderStroke(1.dp, borderColor),
        modifier = modifier
            .height(if (isCompact) 32.dp else 56.dp)
            .fillMaxWidth()
            .clickable { onClick() }
    ) {
        Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize()) {
            Text(
                text = label, 
                color = textColor, 
                fontWeight = if (active) FontWeight.ExtraBold else FontWeight.Bold,
                fontSize = if (isCompact) 10.sp else 14.sp,
                textAlign = TextAlign.Center
            )
        }
    }
}
