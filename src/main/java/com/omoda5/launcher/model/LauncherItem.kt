package com.omoda5.launcher.model

import android.graphics.drawable.Drawable

data class LauncherItem(
    val id: String,
    val title: String,
    val iconResId: Int = 0,
    val iconDrawable: Drawable? = null,
    val intentAction: String? = null,
    val packageName: String? = null,
    val intentCategory: String? = null,
    val launchIntent: android.content.Intent? = null,
    var isFavorite: Boolean = false,
    val isDisabled: Boolean = false
)
