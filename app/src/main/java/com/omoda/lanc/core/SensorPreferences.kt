package com.omoda.lanc.core

import android.content.Context
import android.content.SharedPreferences
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow

object SensorPreferences {
    private const val PREFS_NAME = "sensor_prefs"
    private const val KEY_ACTIVE_SENSORS = "active_sensors"

    private lateinit var prefs: SharedPreferences
    
    private val _activeSensors = MutableStateFlow<Set<String>>(emptySet())
    val activeSensors: StateFlow<Set<String>> = _activeSensors.asStateFlow()

    fun init(context: Context) {
        prefs = context.getSharedPreferences(PREFS_NAME, Context.MODE_PRIVATE)
        val saved = prefs.getStringSet(KEY_ACTIVE_SENSORS, null)
        if (saved == null) {
            val defaults = emptySet<String>()
            _activeSensors.value = defaults
            prefs.edit().putStringSet(KEY_ACTIVE_SENSORS, defaults).apply()
        } else {
            _activeSensors.value = saved
        }
    }

    fun toggleSensor(id: String, active: Boolean) {
        val current = _activeSensors.value.toMutableSet()
        if (active) current.add(id) else current.remove(id)
        _activeSensors.value = current
        prefs.edit().putStringSet(KEY_ACTIVE_SENSORS, current).apply()
    }
}
