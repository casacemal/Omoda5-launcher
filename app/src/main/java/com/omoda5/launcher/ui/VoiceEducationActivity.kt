package com.omoda5.launcher.ui

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.ui.theme.Omoda5NextGenTheme
import com.omoda5.launcher.ui.theme.OmodaCyan

/**
 * v10.0.0 VOICE EDUCATION MODE
 * Helps users discover available offline Turkish voice triggers.
 */
class VoiceEducationActivity : ComponentActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            Omoda5NextGenTheme {
                VoiceEducationScreen()
            }
        }
    }
}

data class VoiceCommandHelp(val category: String, val commands: List<String>)

@Composable
fun VoiceEducationScreen() {
    val helpList = listOf(
        VoiceCommandHelp("İklimlendirme", listOf("Klima aç", "Klima çalıştır", "Klima kapat", "Klima durdur")),
        VoiceCommandHelp("Navigasyon", listOf("Harita", "Navigasyon", "Haritayı aç")),
        VoiceCommandHelp("Medya", listOf("Müzik", "Şarkı", "Müziği durdur")),
        VoiceCommandHelp("Araç Bilgisi", listOf("Hız", "Hız kaç", "Dış sıcaklık"))
    )

    Box(
        modifier = Modifier
            .fillMaxSize()
            .background(
                brush = Brush.verticalGradient(
                    colors = listOf(Color(0xFF0F172A), Color(0xFF020617))
                )
            )
            .padding(40.dp)
    ) {
        Column {
            Text(
                text = "OMODA 5 SESLİ ASİSTAN REHBERİ",
                color = OmodaCyan,
                fontSize = 32.sp,
                fontWeight = FontWeight.Bold,
                modifier = Modifier.padding(bottom = 32.dp)
            )

            LazyColumn(
                verticalArrangement = Arrangement.spacedBy(20.dp),
                modifier = Modifier.fillMaxWidth()
            ) {
                items(helpList) { item ->
                    CommandCategoryCard(item)
                }
            }
        }
    }
}

@Composable
fun CommandCategoryCard(item: VoiceCommandHelp) {
    Surface(
        color = Color.White.copy(alpha = 0.05f),
        shape = RoundedCornerShape(16.dp),
        modifier = Modifier
            .fillMaxWidth()
            .border(1.dp, Color.White.copy(alpha = 0.1f), RoundedCornerShape(16.dp))
    ) {
        Column(modifier = Modifier.padding(20.dp)) {
            Text(
                text = item.category.uppercase(),
                color = OmodaCyan,
                fontSize = 20.sp,
                fontWeight = FontWeight.ExtraBold
            )
            Spacer(modifier = Modifier.height(12.dp))
            item.commands.forEach { cmd ->
                Text(
                    text = "➜ \"$cmd\"",
                    color = Color.White.copy(alpha = 0.9f),
                    fontSize = 18.sp,
                    modifier = Modifier.padding(vertical = 4.dp)
                )
            }
        }
    }
}
