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

    BoxWithConstraints(
        modifier = Modifier
            .fillMaxWidth()
            .padding(start = 240.dp, end = 20.dp, top = 8.dp, bottom = 8.dp)
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

        Column(modifier = Modifier.padding(16.dp)) {
            Row(verticalAlignment = Alignment.CenterVertically) {
                Column(modifier = Modifier.weight(1f)) {
                    Text(
                        text = uiState.title,
                        color = Color.White,
                        fontSize = 20.sp,
                        fontWeight = FontWeight.ExtraBold,
                        maxLines = 1,
                        overflow = TextOverflow.Ellipsis
                    )
                    Text(
                        text = uiState.artist,
                        color = OmodaCyan.copy(alpha = 0.8f),
                        fontSize = 14.sp,
                        fontWeight = FontWeight.Medium
                    )
                    Text(
                        text = uiState.source,
                        color = Color.Gray.copy(alpha = 0.5f),
                        fontSize = 10.sp,
                        fontWeight = FontWeight.Light
                    )
                }

                Row(
                    horizontalArrangement = Arrangement.spacedBy(24.dp),
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    IconButton(onClick = { viewModel.skipToPrevious() }, modifier = Modifier.size(80.dp)) {
                        Text("⏮", color = Color.White, fontSize = 48.sp)
                    }
                    
                    IconButton(
                        onClick = { viewModel.togglePlayback() },
                        modifier = Modifier.size(100.dp)
                    ) {
                        Surface(
                            shape = androidx.compose.foundation.shape.CircleShape,
                            color = OmodaCyan,
                            modifier = Modifier.size(90.dp)
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
                        Text("⏭", color = Color.White, fontSize = 48.sp)
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
