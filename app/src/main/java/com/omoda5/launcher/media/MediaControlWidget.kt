package com.omoda5.launcher.media

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
import com.omoda5.launcher.ui.theme.OmodaCyan

/**
 * v8.4.0 ULTIMATE - ADAPTIVE MEDIA CONTROL WIDGET
 */
@Composable
fun MediaControlWidget(viewModel: MediaControllerViewModel) {
    val uiState by viewModel.mediaState.collectAsState()
    var isExpanded by remember { mutableStateOf(false) }

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 250.dp, end = 50.dp, top = 8.dp, bottom = 8.dp)
            .animateContentSize()
            .clip(RoundedCornerShape(20.dp))
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

        Column(modifier = Modifier.padding(16.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = uiState.title,
                        color = Color.White,
                        fontSize = 26.sp,
                        fontWeight = FontWeight.ExtraBold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = uiState.artist,
                        color = OmodaCyan.copy(alpha = 0.8f),
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Medium
                    )
                    Text(
                        text = "Source: ${uiState.source}",
                        color = Color.Gray.copy(alpha = 0.5f),
                        fontSize = 12.sp,
                        fontWeight = FontWeight.Light
                    )
                }

                Row(
                    horizontalArrangement = Arrangement.spacedBy(24.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = { viewModel.skipToPrevious() }, modifier = Modifier.size(80.dp)) {
                        Text("⏮", color = Color.White, fontSize = 40.sp)
                    }
                    
                    IconButton(
                        onClick = { viewModel.togglePlayback() },
                        modifier = Modifier.size(100.dp)
                    ) {
                        Surface(
                            shape = androidx.compose.foundation.shape.CircleShape,
                            color = OmodaCyan,
                            modifier = Modifier.size(85.dp)
                        ) {
                            Box(contentAlignment = Alignment.Center) {
                                Text(
                                    if (uiState.isPlaying) "⏸" else "▶",
                                    color = Color.Black,
                                    fontSize = 40.sp
                                )
                            }
                        }
                    }
                    
                    IconButton(onClick = { viewModel.skipToNext() }, modifier = Modifier.size(80.dp)) {
                        Text("⏭", color = Color.White, fontSize = 40.sp)
                    }
                }
            }

            if (showFullControls) {
                Spacer(modifier = Modifier.height(16.dp))
                LinearProgressIndicator(
                    progress = { uiState.progress },
                    modifier = Modifier.fillMaxWidth().height(4.dp).clip(RoundedCornerShape(2.dp)),
                    color = OmodaCyan,
                    trackColor = Color.White.copy(alpha = 0.1f)
                )
                Spacer(modifier = Modifier.height(8.dp))
                Text(text = "LIVE SYSTEM", color = Color.Gray, fontSize = 10.sp, fontWeight = FontWeight.Bold, modifier = Modifier.align(Alignment.CenterHorizontally))
            }
        }
    }
}
