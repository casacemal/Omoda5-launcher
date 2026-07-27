package com.omoda.lanc.ui.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.theme.*
import java.text.SimpleDateFormat
import java.util.*

@Composable
fun OmodaTopStatusBar(
    onOpenVoiceAssistant: () -> Unit,
    onToggleLock: () -> Unit,
    isLocked: Boolean,
    outsideTemp: String = "24°C",
    modifier: Modifier = Modifier
) {
    var currentTime by remember { mutableStateOf("") }
    var currentDate by remember { mutableStateOf("") }

    LaunchedEffect(Unit) {
        while (true) {
            val timeFormat = SimpleDateFormat("HH:mm", Locale.getDefault())
            val dateFormat = SimpleDateFormat("d MMMM EEEE", Locale("tr"))
            val now = Date()
            currentTime = timeFormat.format(now)
            currentDate = dateFormat.format(now)
            kotlinx.coroutines.delay(1000)
        }
    }

    Surface(
        color = MaterialTheme.colorScheme.surface.copy(alpha = 0.9f),
        border = BorderStroke(1.dp, OmodaGlassCardBorder),
        modifier = modifier
            .fillMaxWidth()
            .height(56.dp)
    ) {
        Row(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 16.dp),
            verticalAlignment = Alignment.CenterVertically,
            horizontalArrangement = Arrangement.SpaceBetween
        ) {
            // Sol Kısım: Saat & Tarih
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                Text(
                    text = currentTime,
                    color = Color.White,
                    fontWeight = FontWeight.Bold,
                    fontSize = 20.sp
                )
                Text(
                    text = "|",
                    color = Color.Gray,
                    fontSize = 16.sp
                )
                Text(
                    text = currentDate,
                    color = Color.LightGray,
                    fontSize = 14.sp
                )
            }

            // Orta Kısım: Omoda 5 Logo / Asistan Tetikleyici
            Surface(
                color = MaterialTheme.colorScheme.primary.copy(alpha = 0.15f),
                shape = RoundedCornerShape(20.dp),
                border = BorderStroke(1.dp, MaterialTheme.colorScheme.primary.copy(alpha = 0.5f)),
                modifier = Modifier
                    .clip(RoundedCornerShape(20.dp))
                    .clickable { onOpenVoiceAssistant() }
            ) {
                Row(
                    modifier = Modifier.padding(horizontal = 16.dp, vertical = 6.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(8.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Star,
                        contentDescription = "Hermes Sesli Asistan",
                        tint = MaterialTheme.colorScheme.primary,
                        modifier = Modifier.size(20.dp)
                    )
                    Text(
                        text = "HERMES AI",
                        color = MaterialTheme.colorScheme.primary,
                        fontWeight = FontWeight.Bold,
                        fontSize = 14.sp
                    )
                }
            }

            // Sağ Kısım: Dış Sıcaklık, Kilit Durumu, Bağlantı
            Row(
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(16.dp)
            ) {
                Row(
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.spacedBy(4.dp)
                ) {
                    Icon(
                        imageVector = Icons.Default.Info,
                        contentDescription = "Dış Sıcaklık",
                        tint = GlowYellow,
                        modifier = Modifier.size(18.dp)
                    )
                    Text(
                        text = outsideTemp,
                        color = Color.White,
                        fontSize = 14.sp,
                        fontWeight = FontWeight.SemiBold
                    )
                }

                Box(
                    modifier = Modifier
                        .size(36.dp)
                        .clip(CircleShape)
                        .background(if (isLocked) Color.Red.copy(0.2f) else GlowGreen.copy(0.2f))
                        .border(1.dp, if (isLocked) Color.Red else GlowGreen, CircleShape)
                        .clickable { onToggleLock() },
                    contentAlignment = Alignment.Center
                ) {
                    Icon(
                        imageVector = Icons.Default.Lock,
                        contentDescription = "Kilit",
                        tint = if (isLocked) Color.Red else GlowGreen,
                        modifier = Modifier.size(20.dp)
                    )
                }
            }
        }
    }
}
