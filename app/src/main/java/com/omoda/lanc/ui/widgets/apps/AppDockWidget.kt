package com.omoda.lanc.ui.widgets.apps

import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyRow
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Home
import androidx.compose.material.icons.filled.Refresh
import androidx.compose.material3.Icon
import androidx.compose.material3.Text
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.ui.theme.OmodaCyan

@Composable
fun AppDockWidget(apps: List<String>, onAppClick: (String) -> Unit) {
    val context = LocalContext.current
    var currentPage by remember { mutableStateOf(0) }

    Column(
        modifier = Modifier
            .fillMaxSize()
            .background(Color.Black.copy(alpha = 0.8f))
    ) {
        // Alt Navigasyon Çizgileri (v9.3.3 Standartı)
        Row(
            Modifier
                .fillMaxWidth()
                .padding(top = 8.dp),
            horizontalArrangement = Arrangement.Center,
            verticalAlignment = Alignment.CenterVertically
        ) {
            Box(
                Modifier
                    .width(60.dp)
                    .height(4.dp)
                    .clip(RoundedCornerShape(2.dp))
                    .background(if (currentPage == 0) OmodaCyan else Color.White.copy(0.3f))
                    .clickable { currentPage = 0 }
            )
            Spacer(Modifier.width(12.dp))
            Box(
                Modifier
                    .width(60.dp)
                    .height(4.dp)
                    .clip(RoundedCornerShape(2.dp))
                    .background(if (currentPage == 1) OmodaCyan else Color.White.copy(0.3f))
                    .clickable { currentPage = 1 }
            )
        }

        Box(
            modifier = Modifier
                .fillMaxSize()
                .padding(horizontal = 235.dp), // Omoda 5 Sidebar Guard
            contentAlignment = Alignment.CenterStart
        ) {
            LazyRow(
                modifier = Modifier.fillMaxHeight(),
                verticalAlignment = Alignment.CenterVertically,
                horizontalArrangement = Arrangement.spacedBy(30.dp)
            ) {
                item {
                    Box(
                        modifier = Modifier
                            .size(66.dp)
                            .clip(CircleShape)
                            .background(Color.White.copy(0.1f))
                            .clickable { onAppClick("internal.home") },
                        contentAlignment = Alignment.Center
                    ) {
                        Icon(Icons.Default.Home, contentDescription = null, tint = Color.White)
                    }
                }

                items(apps) { pkg ->
                    val pm = context.packageManager
                    val icon = try {
                        pm.getApplicationIcon(pkg)
                    } catch (e: Exception) {
                        null
                    }

                    Box(
                        modifier = Modifier
                            .size(66.dp)
                            .clip(RoundedCornerShape(12.dp))
                            .background(Color.Gray.copy(0.2f))
                            .clickable { onAppClick(pkg) },
                        contentAlignment = Alignment.Center
                    ) {
                        if (icon != null) {
                            // Burada normalde Image(rememberAsyncImagePainter(icon)) olmalı, 
                            // şimdilik paket adının baş harfini basıyoruz.
                            Text(pkg.split(".").last().take(1).uppercase(), color = Color.White, fontWeight = FontWeight.Bold)
                        }
                    }
                }
            }
        }
    }
}
