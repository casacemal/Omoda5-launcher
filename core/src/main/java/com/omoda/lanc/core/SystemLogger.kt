package com.omoda.lanc.core

import android.util.Log

/**
 * Merkezi Sistem Loglayıcı - Core ve App modülleri arasında köprü kurar.
 */
object SystemLogger {
    private var logListener: ((String) -> Unit)? = null

    fun setListener(listener: (String) -> Unit) {
        logListener = listener
    }

    fun log(message: String) {
        Log.d("SystemLogger", message)
        logListener?.invoke(message)
    }
}
