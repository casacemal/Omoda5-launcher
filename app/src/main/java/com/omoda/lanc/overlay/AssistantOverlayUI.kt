package com.omoda.lanc.overlay

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Close
import androidx.compose.material.icons.filled.Mic
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.draw.scale
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.graphicsLayer
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.AssistantApplication
import kotlinx.coroutines.flow.collectLatest

@Composable
fun AssistantOverlayUI(
    onClose: () -> Unit,
    onStop: () -> Unit
) {
    val recognizedText by AssistantApplication.recognizedText.collectAsState()
    val assistantResponse by AssistantApplication.assistantResponse.collectAsState()
    val status by AssistantApplication.status.collectAsState()
    val isListening by AssistantApplication.isListening.collectAsState()
    val amplitude by AssistantApplication.currentAmplitude.collectAsState()

    val infiniteTransition = rememberInfiniteTransition(label = "pulse")
    val pulseScale by infiniteTransition.animateFloat(
        initialValue = 1f,
        targetValue = if (isListening) 1.2f else 1f,
        animationSpec = infiniteRepeatable(
            animation = tween(800, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ),
        label = "pulseScale"
    )

    val shadowAlpha by infiniteTransition.animateFloat(
        initialValue = 0.2f,
        targetValue = if (isListening) 0.6f else 0.2f,
        animationSpec = infiniteRepeatable(
            animation = tween(800),
            repeatMode = RepeatMode.Reverse
        ),
        label = "shadowAlpha"
    )

    Surface(
        modifier = Modifier
            .width(360.dp)
            .wrapContentHeight()
            .clip(RoundedCornerShape(24.dp))
            .border(1.dp, Color.White.copy(alpha = 0.15f), RoundedCornerShape(24.dp)),
        color = Color(0xFF111315).copy(alpha = 0.98f), // Solid dark background to avoid "gray" tinting
        tonalElevation = 0.dp // Disable tonal tinting which makes it gray/teal
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            // Animasyonlu Mikrofon / Dalga Alanı
            Box(contentAlignment = Alignment.Center, modifier = Modifier.size(100.dp)) {
                // Background Pulse Rings
                if (isListening) {
                    Box(
                        modifier = Modifier
                            .fillMaxSize()
                            .scale(pulseScale)
                            .clip(CircleShape)
                            .background(Color(0xFF69E2D3).copy(alpha = 0.2f))
                    )
                    Box(
                        modifier = Modifier
                            .size(70.dp)
                            .scale(pulseScale * 0.8f)
                            .clip(CircleShape)
                            .background(Color(0xFF69E2D3).copy(alpha = 0.3f))
                    )
                }

                // Core Icon
                Surface(
                    modifier = Modifier.size(60.dp),
                    shape = CircleShape,
                    color = if (isListening) Color(0xFF69E2D3) else Color(0xFF333333),
                    shadowElevation = 4.dp
                ) {
                    Icon(
                        imageVector = Icons.Default.Mic,
                        contentDescription = null,
                        tint = if (isListening) Color.Black else Color.Gray,
                        modifier = Modifier.padding(12.dp).fillMaxSize()
                    )
                }
            }

            // Durum ve Metin Alanı
            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Text(
                    text = status.uppercase(),
                    color = if (isListening) Color(0xFF69E2D3) else Color.Gray,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold,
                    letterSpacing = 1.sp
                )
                
                Spacer(Modifier.height(8.dp))

                AnimatedVisibility(
                    visible = recognizedText.isNotEmpty(),
                    enter = fadeIn() + expandVertically(),
                    exit = fadeOut() + shrinkVertically()
                ) {
                    Text(
                        text = recognizedText,
                        color = Color.White,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.Medium,
                        textAlign = TextAlign.Center,
                        modifier = Modifier.fillMaxWidth()
                    )
                }

                AnimatedVisibility(
                    visible = assistantResponse.isNotEmpty() && !isListening,
                    enter = fadeIn() + slideInVertically(),
                    exit = fadeOut()
                ) {
                    Text(
                        text = assistantResponse,
                        color = Color(0xFFF3B14B),
                        fontSize = 15.sp,
                        textAlign = TextAlign.Center,
                        modifier = Modifier.padding(top = 8.dp).fillMaxWidth()
                    )
                }
            }

            // Butonlar
            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                if (isListening) {
                    Button(
                        onClick = onStop,
                        modifier = Modifier.weight(1f).height(44.dp),
                        colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFE57373)),
                        shape = RoundedCornerShape(12.dp)
                    ) {
                        Text("DURDUR", color = Color.White, fontWeight = FontWeight.Bold)
                    }
                }

                Button(
                    onClick = onClose,
                    modifier = Modifier.height(44.dp).let { if (!isListening) it.fillMaxWidth() else it },
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF333333)),
                    shape = RoundedCornerShape(12.dp)
                ) {
                    Icon(Icons.Default.Close, contentDescription = null, modifier = Modifier.size(18.dp))
                    if (!isListening) {
                        Spacer(Modifier.width(8.dp))
                        Text("KAPAT", fontSize = 14.sp)
                    }
                }
            }
        }
    }
}
