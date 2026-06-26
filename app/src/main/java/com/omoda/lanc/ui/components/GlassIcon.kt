package com.omoda.lanc.ui.components

import androidx.compose.foundation.Image
import androidx.compose.foundation.gestures.detectTapGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.remember
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.graphics.asImageBitmap
import androidx.compose.ui.graphics.painter.BitmapPainter
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.layout.ContentScale
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.text.style.TextOverflow
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import androidx.core.content.ContextCompat
import androidx.core.graphics.drawable.toBitmap
import com.omoda.lanc.model.LauncherItem

@Composable
fun GlassIcon(
    item: LauncherItem,
    onClick: () -> Unit,
    onLongClick: () -> Unit = {}
) {
    val context = LocalContext.current
    
    Column(
        modifier = Modifier
            .width(208.dp) // 160 * 1.3 = 208
            .padding(vertical = 12.dp),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Box(
            modifier = Modifier
                .size(143.dp) // 110 * 1.3 = 143
                .clip(RoundedCornerShape(28.dp)) // Corner radius da orantılı büyütüldü
                .pointerInput(Unit) {
                    detectTapGestures(
                        onTap = { onClick() },
                        onLongPress = { onLongClick() }
                    )
                },
            contentAlignment = Alignment.Center
        ) {
            val painter = remember(item) {
                try {
                    val drawable = item.iconDrawable ?: if (item.iconRes != 0) ContextCompat.getDrawable(context, item.iconRes) else null
                    if (drawable != null) {
                        val bitmap = drawable.toBitmap(256, 256)
                        BitmapPainter(bitmap.asImageBitmap())
                    } else null
                } catch (e: Exception) { null }
            }
            if (painter != null) {
                Image(
                    painter = painter,
                    contentDescription = item.title,
                    modifier = Modifier.fillMaxSize(),
                    contentScale = ContentScale.FillBounds
                )
            }
        }
        Spacer(modifier = Modifier.height(12.dp))
        Text(
            text = item.title,
            color = Color.White,
            fontSize = 18.sp,
            fontWeight = FontWeight.Medium,
            textAlign = TextAlign.Center,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.fillMaxWidth()
        )
    }
}
