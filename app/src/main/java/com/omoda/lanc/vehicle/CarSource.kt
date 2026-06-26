package com.omoda.lanc.vehicle

import android.content.Context
import java.io.BufferedReader
import java.io.InputStreamReader

/**
 * CarSource - OmodaAssist v2 mimarisine uygun (Dumpsys tabanlı)
 * İmzasız uygulama kısıtları nedeniyle doğrudan CarPropertyManager yerine dumpsys kullanır.
 */
class CarSource(private val context: Context) : VehicleSource {

    override fun getSpeed(): Float? {
        // Property ID 291504647 (VEHICLE_SPEED)
        return try {
            val output = executeDumpsys("291504647")
            // Output format: "Property: 291504647, status: 0, timestamp: ..., value: 0.0"
            output?.substringAfter("value:")?.trim()?.toFloatOrNull()
        } catch (e: Exception) {
            null
        }
    }

    override fun getGear(): Int? = null
    override fun getFuelLevel(): Float? = null
    override fun isAnyDoorOpen(): Boolean? = null

    private fun executeDumpsys(propId: String): String? {
        return try {
            val process = Runtime.getRuntime().exec("dumpsys car_service get-property-value $propId 0")
            val reader = BufferedReader(InputStreamReader(process.inputStream))
            reader.readLine()
        } catch (e: Exception) {
            null
        }
    }
}
