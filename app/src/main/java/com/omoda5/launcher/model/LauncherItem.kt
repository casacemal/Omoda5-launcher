package com.omoda5.launcher.model
import android.graphics.drawable.Drawable
data class LauncherItem(
    val id: String,
    val title: String,
    val iconRes: Int = 0,
    val packageName: String? = null,
    val iconDrawable: Drawable? = null
)
