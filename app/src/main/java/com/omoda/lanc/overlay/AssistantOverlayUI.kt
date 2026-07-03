package com.omoda.lanc.overlay

import androidx.compose.animation.*
import androidx.compose.animation.core.*
import androidx.compose.foundation.background
import androidx.compose.foundation.border
import androidx.compose.foundation.clickable
import androidx.compose.foundation.interaction.MutableInteractionSource
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
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda.lanc.AssistantApplication

@Composable
fun WorkflowStep(label: String, isActive: Boolean, activeColor: Color) {
    Column(horizontalAlignment = Alignment.CenterHorizontally) {
        Box(
            modifier = Modifier
                .size(8.dp)
                .clip(CircleShape)
                .background(if (isActive) activeColor else Color.DarkGray)
        )
        Text(
            label,
            fontSize = 8.sp,
            color = if (isActive) Color.White else Color.Gray,
            modifier = Modifier.padding(top = 4.dp)
        )
    }
}

@Composable
fun WorkflowDivider(isTransitioning: Boolean) {
    val infiniteTransition = rememberInfiniteTransition(label = "divider")
    val alpha by infiniteTransition.animateFloat(
        initialValue = 0.3f,
        targetValue = if (isTransitioning) 1f else 0.3f,
        animationSpec = infiniteRepeatable(tween(600), RepeatMode.Reverse),
        label = "alpha"
    )
    
    Box(
        modifier = Modifier
            .width(30.dp)
            .height(1.dp)
            .padding(horizontal = 4.dp)
            .background(Color.White.copy(alpha = if (isTransitioning) alpha else 0.2f))
    )
}

@Composable
fun AssistantOverlayUI(
    onClose: () -> Unit,
    onStop: () -> Unit
) {
    val recognizedText by AssistantApplication.recognizedText.collectAsState()
    val assistantResponse by AssistantApplication.assistantResponse.collectAsState()
    val status by AssistantApplication.status.collectAsState()
    val isListening by AssistantApplication.isListening.collectAsState()
    val workflowState by AssistantApplication.workflowState.collectAsState()

    val infiniteTransition = rememberInfiniteTransition(label = "pulse")
    
    val workflowColor = when (workflowState) {
        "LISTENING" -> Color(0xFF69E2D3)
        "THINKING" -> Color(0xFFF3B14B)
        "TALKING" -> Color(0xFF4CAF50)
        else -> Color.Gray
    }

    val pulseScale by infiniteTransition.animateFloat(
        initialValue = 1f,
        targetValue = if (isListening) 1.2f else 1f,
        animationSpec = infiniteRepeatable(
            animation = tween(800, easing = FastOutSlowInEasing),
            repeatMode = RepeatMode.Reverse
        ),
        label = "pulseScale"
    )

    Surface(
        modifier = Modifier
            .width(360.dp)
            .wrapContentHeight()
            .clip(RoundedCornerShape(24.dp))
            .border(1.dp, Color.White.copy(alpha = 0.15f), RoundedCornerShape(24.dp)),
        color = Color(0xFF111315).copy(alpha = 0.98f),
        tonalElevation = 0.dp
    ) {
        Column(
            modifier = Modifier.padding(20.dp),
            horizontalAlignment = Alignment.CenterHorizontally,
            verticalArrangement = Arrangement.spacedBy(16.dp)
        ) {
            Box(contentAlignment = Alignment.Center, modifier = Modifier.size(100.dp)) {
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

            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                Row(
                    modifier = Modifier.fillMaxWidth().padding(bottom = 8.dp),
                    horizontalArrangement = Arrangement.Center,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    WorkflowStep("DİNLE", workflowState == "LISTENING", Color(0xFF69E2D3))
                    WorkflowDivider(workflowState == "THINKING")
                    WorkflowStep("DÜŞÜN", workflowState == "THINKING", Color(0xFFF3B14B))
                    WorkflowDivider(workflowState == "TALKING")
                    WorkflowStep("KONUŞ", workflowState == "TALKING", Color(0xFF4CAF50))
                }

                Text(
                    text = status.uppercase(),
                    color = workflowColor,
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

            Row(
                modifier = Modifier.fillMaxWidth(),
                horizontalArrangement = Arrangement.spacedBy(12.dp)
            ) {
                if (isListening) {
                    Box(
                        modifier = Modifier
                            .weight(1f)
                            .height(44.dp)
                            .clip(RoundedCornerShape(12.dp))
                            .background(Color(0xFFE57373))
                            .clickable(
                                interactionSource = remember { MutableInteractionSource() },
                                indication = null
                            ) { onStop() },
                        contentAlignment = Alignment.Center
                    ) {
                        Text("DURDUR", color = Color.White, fontWeight = FontWeight.Bold)
                    }
                }

                Box(
                    modifier = Modifier
                        .height(44.dp)
                        .let { if (!isListening) it.fillMaxWidth() else it }
                        .clip(RoundedCornerShape(12.dp))
                        .background(Color(0xFF333333))
                        .clickable(
                            interactionSource = remember { MutableInteractionSource() },
                            indication = null
                        ) { onClose() },
                    contentAlignment = Alignment.Center
                ) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Icon(Icons.Default.Close, contentDescription = null, modifier = Modifier.size(18.dp), tint = Color.White)
                        if (!isListening) {
                            Spacer(Modifier.width(8.dp))
                            Text("KAPAT", fontSize = 14.sp, color = Color.White)
                        }
                    }
                }
            }
        }
    }
}
