package com.omoda.lanc.ui.components

import androidx.compose.foundation.background
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.Warning
import androidx.compose.material3.*
import androidx.compose.runtime.Composable
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp

/**
 * SafetyConfirmationDialog — Araç Test ve Kontrol İşlemleri İçin Risk İkaz Modalı
 * 
 * Orta riskli araç müdahalelerinden (Klima derece/fan değişimi, rezistans kontrolü, test simülasyonları)
 * önce ekranda beliren ve kullanıcının fiziksel onayını zorunlu kılan ikaz diyaloğu.
 */
@Composable
fun SafetyConfirmationDialog(
    showDialog: Boolean,
    actionTitle: String,
    riskDescription: String,
    onConfirm: () -> Unit,
    onDismiss: () -> Unit
) {
    if (!showDialog) return

    AlertDialog(
        onDismissRequest = onDismiss,
        icon = {
            Icon(
                imageVector = Icons.Default.Warning,
                contentDescription = "Güvenlik İkazı",
                tint = Color(0xFFFF9800), // Turuncu / Uyarı Rengi
                modifier = Modifier.size(36.dp)
            )
        },
        title = {
            Text(
                text = "⚠️ TEST & SENSÖR KONTROL İKAZI",
                fontSize = 18.sp,
                fontWeight = FontWeight.Bold,
                color = Color.White
            )
        },
        text = {
            Column(verticalArrangement = Arrangement.spacedBy(8.dp)) {
                Text(
                    text = "İşlem: $actionTitle",
                    fontWeight = FontWeight.SemiBold,
                    color = Color(0xFF64B5F6),
                    fontSize = 14.sp
                )
                Text(
                    text = riskDescription,
                    color = Color(0xFFE0E0E0),
                    fontSize = 13.sp
                )
                Spacer(modifier = Modifier.height(4.dp))
                Box(
                    modifier = Modifier
                        .fillMaxWidth()
                        .background(Color(0x33FF9800), RoundedCornerShape(6.dp))
                        .padding(8.dp)
                ) {
                    Text(
                        text = "Lütfen aracın güvenli bir konumda parkedilmiş olduğundan emin olun. Sorumluluk kullanıcıya aittir.",
                        color = Color(0xFFFFCC80),
                        fontSize = 11.sp,
                        fontWeight = FontWeight.Medium
                    )
                }
            }
        },
        confirmButton = {
            Button(
                onClick = {
                    onConfirm()
                    onDismiss()
                },
                colors = ButtonDefaults.buttonColors(containerColor = Color(0xFFD32F2F))
            ) {
                Text("RİSKİ KABUL EDİYORUM VE ONAYLAYIN", color = Color.White, fontSize = 12.sp, fontWeight = FontWeight.Bold)
            }
        },
        dismissButton = {
            OutlinedButton(onClick = onDismiss) {
                Text("İPTAL", color = Color.White, fontSize = 12.sp)
            }
        },
        containerColor = Color(0xFF1E1E2C),
        shape = RoundedCornerShape(12.dp)
    )
}
