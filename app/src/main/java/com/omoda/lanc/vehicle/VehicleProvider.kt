package com.omoda.lanc.vehicle

import android.content.Context
import android.util.Log

/**
 * VehicleProvider - PDF Plan v2.0
 * CarPropertyManager (Primary) + Dumpsys (Fallback) hibrik telemetri yönetimi.
 */
class VehicleProvider(context: Context) {
    private val carSource = CarSource(context)
    private val dumpsysSource = DumpsysSource()
    
    // Simülasyon verisi için
    private var simulatedSpeed: Float? = null

    fun getSpeed(): Float {
        simulatedSpeed?.let { return it }
        val speed = carSource.getSpeed() ?: dumpsysSource.getSpeed() ?: 0f
        Log.d("VehicleProvider", "Speed: $speed")
        return speed
    }

    fun getGear(): Int {
        val gear = carSource.getGear() ?: dumpsysSource.getGear() ?: 0
        Log.d("VehicleProvider", "Gear: $gear")
        return gear
    }

    fun isEngineRunning(): Boolean {
        // CarSource typically doesn't have a simple boolean for this in basic Car API, use Dumpsys for now
        val running = dumpsysSource.getEngineRunning()
        Log.d("VehicleProvider", "Engine running: $running")
        return running
    }

    fun getFuelLevel(): Float {
        val fuel = carSource.getFuelLevel() ?: dumpsysSource.getFuelLevel() ?: 0f
        Log.d("VehicleProvider", "Fuel level: $fuel")
        return fuel
    }

    fun isAnyDoorOpen(): Boolean {
        val doorOpen = carSource.isAnyDoorOpen() ?: dumpsysSource.isAnyDoorOpen() ?: false
        Log.d("VehicleProvider", "Any door open: $doorOpen")
        return doorOpen
    }
}
