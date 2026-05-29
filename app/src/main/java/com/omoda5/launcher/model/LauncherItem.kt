package com.omoda5.launcher.model

import android.graphics.drawable.Drawable

/**
 * v7.0.0 NextGen Uygulama Modeli
 */
data class LauncherItem(
    val id: String,
    val title: String,
    val iconRes: Int = 0,
    val iconDrawable: Drawable? = null,
    val packageName: String? = null
)
