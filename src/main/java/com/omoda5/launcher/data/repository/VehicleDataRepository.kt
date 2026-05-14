package com.omoda5.launcher.data.repository

import android.content.Context
import android.util.Log
import com.omoda5.launcher.data.model.VehicleData
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.Job
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.isActive
import kotlinx.coroutines.launch
import java.lang.reflect.Proxy

class VehicleDataRepository(private val context: Context) {

    private val _vehicleData = MutableStateFlow(VehicleData())
    val vehicleData: StateFlow<VehicleData> = _vehicleData

    private var carObject: Any? = null
    private var carPropertyManager: Any? = null
    private val scope = CoroutineScope(Dispatchers.IO + Job())

    private val PERF_VEHICLE_SPEED = 291504647
    private val GEAR_SELECTION = 289408000
    private val FUEL_LEVEL = 291504903
    private val PARKING_BRAKE_ON = 287310850
    private val DOOR_OPEN = 289408514

    fun initialize() {
        try {
            val carClass = Class.forName("android.car.Car")
            val createCarMethod = carClass.getMethod("createCar", Context::class.java)
            carObject = createCarMethod.invoke(null, context)
            carObject?.javaClass?.getMethod("connect")?.invoke(carObject)

            val getServiceMethod = carObject?.javaClass?.getMethod("getService", String::class.java)
            carPropertyManager = getServiceMethod?.invoke(carObject, "property")

            startPolling()
        } catch (e: ClassNotFoundException) {
            Log.w(TAG, "Car API not available - using fallback")
            startFallbackPolling()
        } catch (e: Exception) {
            Log.e(TAG, "Failed to initialize VehicleDataRepository", e)
        }
    }

    private fun startPolling() {
        scope.launch {
            while (isActive) {
                updateVehicleData()
                delay(100) // 10Hz polling
            }
        }
    }

    private suspend fun updateVehicleData() {
        try {
            if (carPropertyManager != null) {
                val speed = getProperty(PERF_VEHICLE_SPEED) as? Float ?: 0f
                val gear = getProperty(GEAR_SELECTION) as? Int ?: 0
                val fuel = getProperty(FUEL_LEVEL) as? Float ?: 0f
                val brake = getProperty(PARKING_BRAKE_ON) as? Boolean ?: false
                val door = (getProperty(DOOR_OPEN) as? Int ?: 0) != 0

                _vehicleData.value = VehicleData(speed, gear, fuel, brake, door)
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error updating vehicle data", e)
        }
    }

    private fun getProperty(propId: Int): Any? {
        return try {
            val getPropertyMethod = carPropertyManager?.javaClass?.getMethod("getProperty", Int::class.java, Int::class.java)
            getPropertyMethod?.invoke(carPropertyManager, propId, 0)?.let {
                it.javaClass.getMethod("getValue").invoke(it)
            }
        } catch (e: Exception) {
            null
        }
    }

    private fun startFallbackPolling() {
        scope.launch {
            while (isActive) {
                _vehicleData.value = VehicleData()
                delay(5000)
            }
        }
    }

    fun cleanup() {
        try {
            carObject?.javaClass?.getMethod("disconnect")?.invoke(carObject)
        } catch (e: Exception) {
            Log.e(TAG, "Error disconnecting", e)
        }
        carObject = null
        carPropertyManager = null
    }

    companion object {
        private const val TAG = "VehicleDataRepository"
    }
}