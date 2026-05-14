package com.omoda5.launcher.ui

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.Bundle
import android.os.IBinder
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.activity.result.contract.ActivityResultContracts
import androidx.core.content.ContextCompat
import androidx.fragment.app.Fragment
import com.omoda5.launcher.databinding.FragmentVehicleDataBinding
import java.lang.reflect.Proxy

class VehicleDataFragment : Fragment() {

    private var _binding: FragmentVehicleDataBinding? = null
    private val binding get() = _binding!!

    private var carObject: Any? = null
    private var carPropertyManager: Any? = null

    // Reflection Cache
    private var getPropertyIdMethod: java.lang.reflect.Method? = null
    private var getValueMethod: java.lang.reflect.Method? = null
    private var getPropertyMethod: java.lang.reflect.Method? = null
    private var registerCallbackMethod: java.lang.reflect.Method? = null

    private val requestPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.RequestMultiplePermissions()
    ) { permissions ->
        val allGranted = permissions.entries.all { it.value }
        if (allGranted) {
            binding.permissionWarning.visibility = View.GONE
            connectCar()
        } else {
            binding.permissionWarning.visibility = View.VISIBLE
        }
    }

    // Standard VHAL Property IDs (AOSP)
    private val PERF_VEHICLE_SPEED = 291504647
    private val GEAR_SELECTION = 289408000
    private val FUEL_LEVEL = 291504903
    private val PARKING_BRAKE_ON = 287310850
    private val DOOR_OPEN = 289408514
    private val SENSOR_RATE_ONCHANGE = 0f

    private val carServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
            try {
                val getServiceMethod = carObject?.javaClass?.getMethod("getService", String::class.java)
                carPropertyManager = getServiceMethod?.invoke(carObject, "property")
                registerProperties()
            } catch (e: Exception) {
                Log.e(TAG, "Failed to get CarPropertyManager via reflection", e)
            }
        }

        override fun onServiceDisconnected(name: ComponentName?) {
            carPropertyManager = null
        }
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentVehicleDataBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupStaticUI()
        checkPermissions()
    }

    override fun onStart() {
        super.onStart()
        checkAndRequestPermissions()
    }

    override fun onStop() {
        super.onStop()
        disconnectCar()
    }

    private fun setupStaticUI() {
        binding.rowSpeed.tvLabel.text = "Hız"
        binding.rowSpeed.tvUnit.text = "km/h"
        binding.rowGear.tvLabel.text = "Vites"
        binding.rowFuel.tvLabel.text = "Yakıt Seviyesi"
        binding.rowFuel.tvUnit.text = "%"
        binding.rowBrake.tvLabel.text = "Park Freni"
        binding.rowDoors.tvLabel.text = "Kapı Durumu"
    }

    private fun checkAndRequestPermissions() {
        val requiredPermissions = arrayOf(
            "android.car.permission.CAR_SPEED",
            "android.car.permission.CAR_POWERTRAIN",
            "android.car.permission.CAR_ENERGY"
        )
        
        val missingPermissions = requiredPermissions.filter {
            ContextCompat.checkSelfPermission(requireContext(), it) != PackageManager.PERMISSION_GRANTED
        }

        if (missingPermissions.isEmpty()) {
            binding.permissionWarning.visibility = View.GONE
            connectCar()
        } else {
            requestPermissionLauncher.launch(requiredPermissions)
        }
    }

    private fun checkPermissions() {
        val requiredPermissions = arrayOf(
            "android.car.permission.CAR_SPEED",
            "android.car.permission.CAR_POWERTRAIN",
            "android.car.permission.CAR_ENERGY"
        )
        val allGranted = requiredPermissions.all {
            ContextCompat.checkSelfPermission(requireContext(), it) == PackageManager.PERMISSION_GRANTED
        }
        if (!allGranted) {
            binding.permissionWarning.visibility = View.VISIBLE
        }
    }

    private fun connectCar() {
        try {
            // Check if Car class exists - only available on Automotive OS
            val carClass = Class.forName("android.car.Car")
            val createCarMethod = carClass.getMethod("createCar", Context::class.java, ServiceConnection::class.java)
            carObject = createCarMethod.invoke(null, requireContext(), carServiceConnection)
            carObject?.javaClass?.getMethod("connect")?.invoke(carObject)
        } catch (e: ClassNotFoundException) {
            Log.w(TAG, "Car API not available on this device (requires Automotive OS)")
            binding.permissionWarning.visibility = View.VISIBLE
            binding.permissionWarningText.setText("Araç verileri yalnızca Automotive OS cihazlarda kullanılabilir.")
        } catch (e: Exception) {
            Log.e(TAG, "Failed to connect to Car API via reflection", e)
        }
    }

    private fun disconnectCar() {
        try {
            carObject?.javaClass?.getMethod("disconnect")?.invoke(carObject)
        } catch (e: Exception) {
            Log.e(TAG, "Error while disconnecting via reflection", e)
        }
        carObject = null
        carPropertyManager = null
    }

    private fun registerProperties() {
        if (carPropertyManager == null) return
        
        val propertiesToListen = intArrayOf(
            PERF_VEHICLE_SPEED, GEAR_SELECTION, FUEL_LEVEL, PARKING_BRAKE_ON, DOOR_OPEN
        )

        try {
            val callbackClass = Class.forName("android.car.hardware.property.CarPropertyManager\$CarPropertyEventCallback")
            val propertyValueClass = Class.forName("android.car.hardware.CarPropertyValue")
            
            // Metotları bir kez bul ve sakla
            if (registerCallbackMethod == null) {
                registerCallbackMethod = carPropertyManager?.javaClass?.getMethod(
                    "registerCallback",
                    callbackClass, Int::class.java, Float::class.java
                )
            }
            if (getPropertyIdMethod == null) {
                getPropertyIdMethod = propertyValueClass.getMethod("getPropertyId")
            }
            if (getValueMethod == null) {
                getValueMethod = propertyValueClass.getMethod("getValue")
            }
            if (getPropertyMethod == null) {
                getPropertyMethod = carPropertyManager?.javaClass?.getMethod("getProperty", Int::class.java, Int::class.java)
            }

            val proxyCallback = Proxy.newProxyInstance(
                callbackClass.classLoader,
                arrayOf(callbackClass)
            ) { _, method, args ->
                if (method.name == "onChangeEvent") {
                    val carPropertyValue = args[0]
                    val propId = getPropertyIdMethod?.invoke(carPropertyValue) as? Int ?: -1
                    val value = getValueMethod?.invoke(carPropertyValue)
                    if (propId != -1) {
                        updatePropertyUI(propId, value)
                    }
                }
                null
            }

            propertiesToListen.forEach { propId ->
                try {
                    registerCallbackMethod?.invoke(carPropertyManager, proxyCallback, propId, SENSOR_RATE_ONCHANGE)
                    
                    // Başlangıç değerini al
                    val initialValueObj = getPropertyMethod?.invoke(carPropertyManager, propId, 0)
                    if (initialValueObj != null) {
                        val value = getValueMethod?.invoke(initialValueObj)
                        updatePropertyUI(propId, value)
                    }
                } catch (e: Exception) {
                    Log.w(TAG, "Property $propId not available", e)
                    updatePropertyUI(propId, "N/A")
                }
            }
        } catch (e: Exception) {
            Log.e(TAG, "Failed to register properties via reflection", e)
        }
    }

    private fun updatePropertyUI(propId: Int, value: Any?) {
        if (value == null) return
        activity?.runOnUiThread {
            try {
                when (propId) {
                    PERF_VEHICLE_SPEED -> {
                        val speedMs = value as? Float ?: 0f
                        binding.rowSpeed.tvValue.text = (speedMs * 3.6f).toInt().toString()
                    }
                    GEAR_SELECTION -> {
                        binding.rowGear.tvValue.text = formatGear(value as? Int)
                    }
                    FUEL_LEVEL -> {
                        binding.rowFuel.tvValue.text = value.toString()
                    }
                    PARKING_BRAKE_ON -> {
                        val isActive = value as? Boolean ?: false
                        binding.rowBrake.tvValue.text = if (isActive) "AKTİF" else "BIRAKILDI"
                        binding.rowBrake.tvValue.setTextColor(
                            if (isActive) ContextCompat.getColor(requireContext(), android.R.color.holo_red_light)
                            else 0xFF29D9F8.toInt()
                        )
                    }
                    DOOR_OPEN -> {
                        val isOpen = (value as? Int ?: 0) != 0
                        binding.rowDoors.tvValue.text = if (isOpen) "AÇIK" else "KAPALI"
                    }
                }
            } catch (e: Exception) {
                Log.e(TAG, "Error updating UI for property $propId", e)
            }
        }
    }

    private fun formatGear(gear: Int?): String {
        return when (gear) {
            4 -> "P" // GEAR_PARK
            2 -> "R" // GEAR_REVERSE
            8 -> "N" // GEAR_NEUTRAL
            16 -> "D" // GEAR_DRIVE
            else -> gear?.toString() ?: "N/A"
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }

    companion object {
        private const val TAG = "VehicleDataFragment"
    }
}
