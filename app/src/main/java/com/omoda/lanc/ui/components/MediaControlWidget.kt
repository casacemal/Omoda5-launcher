package com.omoda.lanc.ui.components

import androidx.compose.animation.animateContentSize
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.media.MediaControllerViewModel
import com.omoda.lanc.ui.theme.OmodaCyan

@Composable
fun MediaControlWidget(viewModel: MediaControllerViewModel) {
    val uiState by viewModel.mediaState.collectAsState()
    var isExpanded by remember { mutableStateOf(false) }

    // Ekran boyutuna göre padding ayarı
    val configuration = androidx.compose.ui.platform.LocalConfiguration.current
    val screenWidth = configuration.screenWidthDp
    val isMobile = screenWidth < 600
    val isSmallTablet = screenWidth < 1100 && screenWidth >= 600
    
    val leftPadding = when {
        isMobile -> 20.dp
        isSmallTablet -> 120.dp
        else -> 240.dp
    }
    val buttonSize = when {
        isMobile -> 40.dp
        isSmallTablet -> 48.dp
        else -> 80.dp
    }
    val playButtonSize = when {
        isMobile -> 48.dp
        isSmallTablet -> 64.dp
        else -> 100.dp
    }
    val playIconSize = when {
        isMobile -> 40.dp
        isSmallTablet -> 54.dp
        else -> 90.dp
    }
    val fontSize = when {
        isMobile -> 14.sp
        isSmallTablet -> 16.sp
        else -> 20.sp
    }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = leftPadding, end = if(isMobile) 20.dp else 20.dp, top = 8.dp, bottom = 4.dp)
            .animateContentSize()
            .clip(RoundedCornerShape(16.dp))
            .background(
                Brush.verticalGradient(
                    colors = listOf(
                        Color.White.copy(alpha = 0.08f),
                        Color.White.copy(alpha = 0.02f)
                    )
                )
            )
            .clickable { isExpanded = !isExpanded }
    ) {
        val isNarrow = maxWidth < 400.dp
        val showFullControls = isExpanded && !isNarrow

        Column(modifier = Modifier.padding(if(isMobile) 6.dp else if(isSmallTablet) 8.dp else 16.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = uiState.title,
                        color = Color.White,
                        fontSize = fontSize,
                        fontWeight = FontWeight.ExtraBold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = uiState.artist,
                        color = OmodaCyan.copy(alpha = 0.8f),
                        fontSize = if(isMobile) 10.sp else if(isSmallTablet) 12.sp else 14.sp,
                        fontWeight = FontWeight.Medium
                    )
                }

                Row(
                    horizontalArrangement = Arrangement.spacedBy(if(isMobile) 8.dp else if(isSmallTablet) 12.dp else 24.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = { viewModel.skipToPrevious() }, modifier = Modifier.size(buttonSize)) {
                        Text("⏮", color = Color.White, fontSize = if(isMobile) 18.sp else if(isSmallTablet) 24.sp else 48.sp)
                    }
                    
                    IconButton(
                        onClick = { viewModel.togglePlayback() },
                        modifier = Modifier.size(playButtonSize)
                    ) {
                        Surface(
                            shape = androidx.compose.foundation.shape.CircleShape,
                            color = OmodaCyan,
                            modifier = Modifier.size(playIconSize)
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Text(
                                    if (uiState.isPlaying) "⏸" else "▶",
                                    color = Color.Black,
                                    fontSize = if(isMobile) 24.sp else if(isSmallTablet) 30.sp else 40.sp
                                )
                            }
                        }
                    }
                    
                    IconButton(onClick = { viewModel.skipToNext() }, modifier = Modifier.size(buttonSize)) {
                        Text("⏭", color = Color.White, fontSize = if(isMobile) 18.sp else if(isSmallTablet) 24.sp else 48.sp)
                    }
                }
            }

            if (showFullControls) {
                Spacer(modifier = Modifier.height(12.dp))
                LinearProgressIndicator(
                    progress = { uiState.progress },
                    modifier = Modifier.fillMaxWidth().height(4.dp).clip(RoundedCornerShape(2.dp)),
                    color = OmodaCyan,
                    trackColor = Color.White.copy(alpha = 0.1f)
                )
                Spacer(modifier = Modifier.height(4.dp))
                Text(text = "LIVE SYSTEM", color = Color.Gray, fontSize = 8.sp, fontWeight = FontWeight.Bold, modifier = Modifier.align(Alignment.CenterHorizontally))
            }
        }
    }
}
