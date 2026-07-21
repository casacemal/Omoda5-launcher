package com.omoda.lanc.ui.components

import com.omoda.lanc.core.GlobalState
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
import com.omoda.lanc.AssistantApplication

@Composable
fun GlassIcon(
    item: LauncherItem,
    onClick: () -> Unit,
    onLongClick: () -> Unit = {}
) {
    val context = LocalContext.current
    val configuration = androidx.compose.ui.platform.LocalConfiguration.current
    val smallestWidth = configuration.smallestScreenWidthDp
    val isCar = GlobalState.isCarHardware
    val isHandheld = !isCar && smallestWidth < 600

    // OMODA 5 ULTIMATE MANIFESTO STANDARDS
    val iconSize = when {
        isCar -> 110.dp
        isHandheld -> 64.dp
        smallestWidth < 800 -> 100.dp
        else -> 110.dp
    }
    val containerWidth = when {
        isCar -> 160.dp
        isHandheld -> 80.dp
        smallestWidth < 800 -> 140.dp
        else -> 160.dp
    }
    val fontSize = when {
        isCar -> 18.sp
        isHandheld -> 12.sp
        smallestWidth < 800 -> 16.sp
        else -> 18.sp
    }

    Column(
        modifier = Modifier
            .width(containerWidth)
            .padding(vertical = when {
                isHandheld -> 4.dp
                smallestWidth < 800 -> 6.dp
                else -> 12.dp
            }),
        horizontalAlignment = Alignment.CenterHorizontally
    ) {
        Box(
            modifier = Modifier
                .size(iconSize)
                .clip(RoundedCornerShape(when {
                    isHandheld -> 10.dp
                    smallestWidth < 800 -> 18.dp
                    else -> 22.dp
                }))
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
        Spacer(modifier = Modifier.height(8.dp))
        Text(
            text = item.title,
            color = Color.White,
            fontSize = fontSize,
            fontWeight = FontWeight.Medium,
            textAlign = TextAlign.Center,
            maxLines = 1,
            overflow = TextOverflow.Ellipsis,
            modifier = Modifier.fillMaxWidth()
        )
    }
}
