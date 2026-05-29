package com.omoda5.launcher.ui

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.grid.GridCells
import androidx.compose.foundation.lazy.grid.LazyVerticalGrid
import androidx.compose.foundation.lazy.grid.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.theme.Omoda5NextGenTheme
import com.omoda5.launcher.ui.theme.DeepBlack
import com.omoda5.launcher.ui.theme.OmodaCyan

class VehicleDataActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Omoda5NextGenTheme {
                VehicleDataScreen()
            }
        }
    }
}

@Composable
fun VehicleDataScreen() {
    var metrics by remember { mutableStateOf(listOf(
        "HIZ" to "0 km/h", "DEVİR" to "0 RPM", "YAKIT" to "%45", "MENZİL" to "320 km",
        "DIŞ ISI" to "24°C", "İÇ ISI" to "22°C", "FAN" to "Düşük", "KLİMA" to "A/C",
        "SOL ÖN" to "Kapalı", "SAĞ ÖN" to "Kapalı", "SOL ARKA" to "Kapalı", "SAĞ ARKA" to "Kapalı",
        "BAGAJ" to "Kapalı", "KAPUT" to "Kapalı", "EL FRENİ" to "Aktif", "ANAHTAR" to "İçerde"
    )) }

    LaunchedEffect(Unit) {
        while (true) {
            kotlinx.coroutines.delay(3000)
            // Simüle verileri güncelle (Gerçekte VHAL'den gelecek)
            metrics = metrics.map { (label, value) ->
                val newValue = when (label) {
                    "HIZ" -> "${(0..120).random()} km/h"
                    "DEVİR" -> "${(800..3500).random()} RPM"
                    "DIŞ ISI" -> "${(20..35).random()}°C"
                    else -> value
                }
                label to newValue
            }
        }
    }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(DeepBlack)
            .padding(start = 235.dp, top = 20.dp, end = 20.dp, bottom = 20.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Text(
            "ARAÇ VERİ ANALİZ MERKEZİ",
            color = Color.White,
            fontSize = 24.sp,
            fontWeight = FontWeight.Bold
        )
        
        // Hata Bildirim Bandı (Simüle)
        Surface(
            modifier = Modifier.padding(vertical = 10.dp),
            color = Color.Yellow.copy(alpha = 0.1f),
            shape = RoundedCornerShape(8.dp),
            border = androidx.compose.foundation.BorderStroke(1.dp, Color.Yellow.copy(alpha = 0.5f))
        ) {
            Text(
                "🔍 TEKNİK ANALİZ: VHAL verileri dinamik olarak izleniyor. Kontak durumu: AÇIK",
                modifier = Modifier.padding(horizontal = 20.dp, vertical = 5.dp),
                color = Color.Yellow,
                fontSize = 12.sp
            )
        }

        LazyVerticalGrid(
            columns = GridCells.Fixed(4),
            modifier = Modifier.fillMaxSize(),
            contentPadding = PaddingValues(10.dp)
        ) {
            items(metrics) { (label, value) ->
                DataCard(label, value)
            }
        }
    }
}

@Composable
fun DataCard(label: String, value: String) {
    Surface(
        modifier = Modifier
            .padding(6.dp)
            .height(100.dp),
        color = Color(0xFF121212),
        shape = RoundedCornerShape(12.dp),
        border = androidx.compose.foundation.BorderStroke(1.dp, Color.White.copy(alpha = 0.05f))
    ) {
        Column(
            modifier = Modifier.fillMaxSize(),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.Center
        ) {
            Text(label, color = Color.Gray, fontSize = 12.sp, fontWeight = FontWeight.SemiBold)
            Text(value, color = OmodaCyan, fontSize = 20.sp, fontWeight = FontWeight.ExtraBold)
        }
    }
}
