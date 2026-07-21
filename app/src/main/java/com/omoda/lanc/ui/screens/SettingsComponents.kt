package com.omoda.lanc.ui.screens

import androidx.compose.animation.animateColorAsState
import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
import androidx.compose.foundation.interaction.collectIsFocusedAsState
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Check
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.PermissionManager
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.components.MinCarTouchTarget
import com.omoda.lanc.ui.components.CarButton

@Composable
fun PermissionItem(
    status: PermissionManager.PermissionStatus,
    onFix: () -> Unit
) {
    val interactionSource = remember { MutableInteractionSource() }
    val isFocused by interactionSource.collectIsFocusedAsState()

    Surface(
        color = Color.White.copy(alpha = 0.05f),
        shape = RoundedCornerShape(16.dp),
        border = if (isFocused) BorderStroke(4.dp, Color.White) else null,
        modifier = Modifier
            .fillMaxWidth()
            .padding(vertical = 8.dp)
            .defaultMinSize(minHeight = MinCarTouchTarget)
    ) {
        Row(
            modifier = Modifier.padding(16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            Row(verticalAlignment = Alignment.CenterVertically, modifier = Modifier.weight(1f)) {
                Box(
                    modifier = Modifier
                        .size(48.dp)
                        .clip(CircleShape)
                        .background(if (status.isGranted) Color(0xFF4CAF50).copy(0.2f) else Color(0xFFF44336).copy(0.2f)),
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = if (status.isGranted) Icons.Default.Check else Icons.Default.Warning,
                        contentDescription = null,
                        tint = if (status.isGranted) Color(0xFF4CAF50) else Color(0xFFF44336),
                        modifier = Modifier.size(24.dp)
                    )
                }
                Spacer(Modifier.width(16.dp))
                Column {
                    Text(status.label, color = Color.White, fontSize = 20.sp, fontWeight = FontWeight.Bold)
                    Text(status.id, color = Color.Gray, fontSize = 16.sp)
                }
            }

            if (!status.isGranted) {
                CarButton(
                    onClick = onFix,
                    text = "ONAR",
                    colors = ButtonDefaults.buttonColors(containerColor = OmodaCyan, contentColor = Color.Black)
                )
            } else {
                Text("AKTİF", color = Color(0xFF4CAF50), fontSize = 18.sp, fontWeight = FontWeight.Bold, modifier = Modifier.padding(horizontal = 16.dp))
            }
        }
    }
}

@Composable
fun EnhancedSettingCard(title: String, modifier: Modifier = Modifier, isCompact: Boolean = false, content: @Composable () -> Unit) {
    Column(modifier = modifier, verticalArrangement = Arrangement.spacedBy(12.dp)) {
        Text(title, color = Color(0xFF69E2D3), fontSize = 22.sp, fontWeight = FontWeight.Black, modifier = Modifier.padding(start = 8.dp))
        Surface(
            color = Color.White.copy(alpha = 0.05f),
            shape = RoundedCornerShape(24.dp),
            border = BorderStroke(1.dp, Color.White.copy(alpha = 0.1f)),
            modifier = Modifier.fillMaxWidth()
        ) {
            Box(modifier = Modifier.padding(24.dp)) { content() }
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
    val interactionSource = remember { MutableInteractionSource() }
    val isFocused by interactionSource.collectIsFocusedAsState()

    val bgColor by animateColorAsState(
        if (isFocused) Color.White.copy(alpha = 0.2f)
        else if (active) Color(0xFF69E2D3).copy(alpha = 0.35f)
        else Color.White.copy(alpha = 0.05f)
    )
    val borderColor by animateColorAsState(
        if (isFocused) Color.White 
        else if (active) Color(0xFF69E2D3) 
        else Color.White.copy(alpha = 0.12f)
    )
    val textColor by animateColorAsState(if (active) Color(0xFF69E2D3) else Color.White)

    Surface(
        color = bgColor,
        shape = RoundedCornerShape(16.dp),
        border = BorderStroke(if (isFocused) 4.dp else 1.dp, borderColor),
        modifier = modifier
            .defaultMinSize(minHeight = MinCarTouchTarget)
            .fillMaxWidth()
            .clickable(interactionSource = interactionSource, indication = null) { onClick() }
            .padding(if (isFocused) 2.dp else 0.dp)
    ) {
        Box(contentAlignment = Alignment.Center, modifier = Modifier.fillMaxSize().padding(16.dp)) {
            Text(
                text = label, 
                color = textColor, 
                fontWeight = if (active) FontWeight.ExtraBold else FontWeight.Bold,
                fontSize = 20.sp,
                textAlign = TextAlign.Center
            )
        }
    }
}
