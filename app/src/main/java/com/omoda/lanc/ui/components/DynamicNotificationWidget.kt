package com.omoda.lanc.ui.components

import androidx.compose.animation.*
import androidx.compose.animation.core.tween
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Info
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.core.GlobalState
import kotlinx.coroutines.delay

@Composable
fun DynamicNotificationWidget(modifier: Modifier = Modifier) {
    val enabled by GlobalState.proactiveNotificationsEnabled.collectAsState()
    val criticalOnly by GlobalState.criticalNotificationsOnly.collectAsState()
    val warningText by GlobalState.proactiveWarning.collectAsState()
    val warningType by GlobalState.proactiveWarningType.collectAsState()

    var isVisible by remember { mutableStateOf(false) }

    LaunchedEffect(warningText, enabled, criticalOnly) {
        if (!enabled) {
            isVisible = false
            return@LaunchedEffect
        }
        
        if (warningText.isNullOrBlank() || warningText == "DISMISSED") {
            isVisible = false
            return@LaunchedEffect
        }

        if (criticalOnly && warningType != "CRITICAL") {
            isVisible = false
            return@LaunchedEffect
        }

        // Bildirimi göster
        isVisible = true

        // 5 saniye sonra kapat
        delay(5000)
        isVisible = false
        GlobalState.proactiveWarning.value = null
    }

    AnimatedVisibility(
        visible = isVisible,
        enter = slideInVertically(animationSpec = tween(500)) { -it } + fadeIn(animationSpec = tween(500)),
        exit = slideOutVertically(animationSpec = tween(500)) { -it } + fadeOut(animationSpec = tween(500)),
        modifier = modifier
    ) {
        val isCritical = warningType == "CRITICAL"
        val bgColor = if (isCritical) Color(0xFFD32F2F).copy(alpha = 0.9f) else Color(0xFF212121).copy(alpha = 0.9f)
        val borderColor = if (isCritical) Color.Red else Color(0xFF69E2D3).copy(alpha = 0.5f)
        val icon = if (isCritical) Icons.Default.Warning else Icons.Default.Info
        val iconTint = if (isCritical) Color.White else Color(0xFF69E2D3)

        Box(
            modifier = Modifier
                .padding(top = 16.dp)
                .clip(RoundedCornerShape(30.dp))
                .background(bgColor)
                .border(1.dp, borderColor, RoundedCornerShape(30.dp))
                .clickable { isVisible = false; GlobalState.proactiveWarning.value = null }
                .padding(horizontal = 24.dp, vertical = 12.dp)
        ) {
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Icon(
                    imageVector = icon,
                    contentDescription = null,
                    tint = iconTint,
                    modifier = Modifier.size(24.dp)
                )
                Text(
                    text = warningText ?: "",
                    color = Color.White,
                    fontSize = 16.sp,
                    fontWeight = FontWeight.Bold
                )
            }
        }
    }
}
