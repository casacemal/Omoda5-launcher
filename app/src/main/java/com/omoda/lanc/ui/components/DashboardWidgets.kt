package com.omoda.lanc.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.CircularProgressIndicator
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

import com.omoda.lanc.network.WeatherManager
import com.omoda.lanc.ui.theme.CardSurface
import com.omoda.lanc.ui.theme.OmodaCyan
import com.omoda.lanc.ui.theme.TextMuted
import kotlinx.coroutines.delay
import java.util.*

@Composable
fun CompactClockWidget(modifier: Modifier = Modifier) {
    var calendar by remember { mutableStateOf(Calendar.getInstance()) }

    LaunchedEffect(Unit) {
        while (true) {
            calendar = Calendar.getInstance()
            delay(1000)
        }
    }

    val hour = calendar.get(Calendar.HOUR_OF_DAY)
    val minute = calendar.get(Calendar.MINUTE)
    val dayName = when (calendar.get(Calendar.DAY_OF_WEEK)) {
        Calendar.MONDAY -> "PAZARTESİ"
        Calendar.TUESDAY -> "SALI"
        Calendar.WEDNESDAY -> "ÇARŞAMBA"
        Calendar.THURSDAY -> "PERŞEMBE"
        Calendar.FRIDAY -> "CUMA"
        Calendar.SATURDAY -> "CUMARTESİ"
        Calendar.SUNDAY -> "PAZAR"
        else -> ""
    }

    Column(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(20.dp))
            .background(CardSurface.copy(alpha = 0.8f))
            .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(20.dp))
            .padding(16.dp),
        horizontalAlignment = Alignment.Start
    ) {
        Text(
            text = "%02d:%02d".format(hour, minute),
            color = Color.White,
            fontSize = 42.sp,
            fontWeight = FontWeight.ExtraLight,
            letterSpacing = 1.sp
        )
        Text(
            text = dayName,
            color = OmodaCyan.copy(alpha = 0.7f),
            fontSize = 11.sp,
            fontWeight = FontWeight.Bold,
            letterSpacing = 2.sp
        )
    }
}

@Composable
fun SimpleWeatherWidget(modifier: Modifier = Modifier) {
    val weatherState by WeatherManager.weatherState.collectAsState()

    Column(
        modifier = modifier
            .fillMaxWidth()
            .clip(RoundedCornerShape(20.dp))
            .background(CardSurface.copy(alpha = 0.8f))
            .border(1.dp, Color.White.copy(alpha = 0.05f), RoundedCornerShape(20.dp))
            .padding(16.dp),
        horizontalAlignment = Alignment.Start
    ) {
        if (weatherState != null) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Text(text = weatherState!!.conditionIcon, fontSize = 32.sp)
                Spacer(Modifier.width(12.dp))
                Text(
                    text = "${weatherState!!.temperature}°",
                    color = Color.White,
                    fontSize = 32.sp,
                    fontWeight = FontWeight.Light
                )
            }
            Text(
                text = weatherState!!.conditionLabel.uppercase(),
                color = TextMuted,
                fontSize = 10.sp,
                fontWeight = FontWeight.Bold,
                letterSpacing = 1.sp
            )
        } else {
            Box(Modifier.fillMaxSize(), contentAlignment = Alignment.Center) {
                CircularProgressIndicator(modifier = Modifier.size(24.dp), color = OmodaCyan, strokeWidth = 2.dp)
            }
        }
    }
}

