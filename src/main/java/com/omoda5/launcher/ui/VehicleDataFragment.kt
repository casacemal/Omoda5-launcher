package com.omoda5.launcher.ui

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.content.pm.PackageManager
import android.os.Bundle
import android.os.Handler
import android.os.IBinder
import android.os.Looper
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
    
    private val mainHandler = Handler(Looper.getMainLooper())
    private val pollingRunnable = object : Runnable {
        override fun run() {
            refreshVehicleData()
            mainHandler.postDelayed(this, 4000L) // 4 saniye kuralı
        }
    }

    // Omoda 5 / Chery Specific VHAL Property IDs
    private val PERF_VEHICLE_SPEED = 0x11600207
    private val PERF_ENGINE_RPM = 0x11600305
    private val GEAR_SELECTION = 0x11400400
    private val FUEL_LEVEL = 0x11600307
    private val PARKING_BRAKE_ON = 0x11200402
    private val DOOR_POS = 0x16400b00
    private val TEMP_INTERIOR_LEFT = 0x15600502
    private val TEMP_INTERIOR_RIGHT = 0x15600503
    private val TEMP_EXTERIOR = 0x11600703

    private val DOOR_AREAS = intArrayOf(1, 4, 16, 64, 0x20000000)

    private val carServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
            try {
                Log.d(TAG, "Car Service Baglandi, manager taraniyor...")
                val carClass = carObject?.javaClass
                
                // Omoda 5 Akıllı Tarayıcı: Semidrive'ın gizlediği manager'ı bulur
                val managersToTry = arrayOf("property", "sensor", "hvac", "cabin", "vendor_extension")
                val getMgrMethod = try {
                    carClass?.getDeclaredMethod("getCarManager", String::class.java)
                } catch (e: Exception) {
                    carClass?.getDeclaredMethod("getService", String::class.java)
                }
                
                getMgrMethod?.isAccessible = true
                
                for (mgrName in managersToTry) {
                    try {
                        carPropertyManager = getMgrMethod?.invoke(carObject, mgrName)
                        if (carPropertyManager != null) {
                            Log.d(TAG, "Basarili! Bulunan Manager: $mgrName")
                            break
                        }
                    } catch (e: Exception) {
                        Log.w(TAG, "$mgrName denemesi basarisiz.")
                    }
                }
                
                if (carPropertyManager != null) {
                    Log.d(TAG, "Araç Veri Akışı Hazır.")
                    mainHandler.post(pollingRunnable)
                } else {
                    Log.e(TAG, "HIÇBİR MANAGER BULUNAMADI! Semidrive erişimi reddetti.")
                }
            } catch (e: Exception) {
                Log.e(TAG, "Car API Kritik Hata: ${e.message}")
            }
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            carPropertyManager = null
            mainHandler.removeCallbacks(pollingRunnable)
        }
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View {
        _binding = FragmentVehicleDataBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupStaticUI()
        connectCar()
    }

    private fun setupStaticUI() {
        binding.rowSpeed.tvLabel.text = "Hız"
        binding.rowSpeed.tvUnit.text = "km/h"
        binding.rowGear.tvLabel.text = "Vites"
        binding.rowFuel.tvLabel.text = "Yakıt"
        binding.rowFuel.tvUnit.text = "%"
        binding.rowBrake.tvLabel.text = "El Freni"
        binding.rowDoors.tvLabel.text = "Kapılar"
    }

    private fun connectCar() {
        try {
            val carClass = Class.forName("android.car.Car")
            val createCarMethod = carClass.getMethod("createCar", Context::class.java, ServiceConnection::class.java)
            carObject = createCarMethod.invoke(null, requireContext().applicationContext, carServiceConnection)
            carObject?.javaClass?.getMethod("connect")?.invoke(carObject)
        } catch (e: Exception) {
            Log.e(TAG, "Car API Error: ${e.message}")
        }
    }

    private fun refreshVehicleData() {
        val manager = carPropertyManager ?: return
        val getPropertyMethod = manager.javaClass.getMethod("getProperty", Int::class.java, Int::class.java)
        val getValueMethod = Class.forName("android.car.hardware.CarPropertyValue").getMethod("getValue")

        val props = intArrayOf(PERF_VEHICLE_SPEED, PERF_ENGINE_RPM, GEAR_SELECTION, FUEL_LEVEL, PARKING_BRAKE_ON, TEMP_EXTERIOR)
        
        props.forEach { id ->
            try {
                val valObj = getPropertyMethod.invoke(manager, id, 0)
                if (valObj != null) updatePropertyUI(id, getValueMethod.invoke(valObj))
            } catch (e: Exception) { }
        }

        // Kapılar için özel tarama
        var anyDoorOpen = false
        DOOR_AREAS.forEach { area ->
            try {
                val valObj = getPropertyMethod.invoke(manager, DOOR_POS, area)
                if (valObj != null && (getValueMethod.invoke(valObj) as? Int ?: 0) > 0) anyDoorOpen = true
            } catch (e: Exception) { }
        }
        updatePropertyUI(DOOR_POS, anyDoorOpen)
    }

    private fun updatePropertyUI(id: Int, value: Any?) {
        if (value == null) return
        activity?.runOnUiThread {
            when (id) {
                PERF_VEHICLE_SPEED -> binding.rowSpeed.tvValue.text = ((value as? Float ?: 0f) * 3.6f).toInt().toString()
                GEAR_SELECTION -> binding.rowGear.tvValue.text = when(value as? Int) { 1->"N"; 2->"R"; 4->"P"; 8->"D"; else->"--" }
                FUEL_LEVEL -> binding.rowFuel.tvValue.text = value.toString()
                PARKING_BRAKE_ON -> {
                    val active = value as? Boolean ?: false
                    binding.rowBrake.tvValue.text = if (active) "ÇEKİLİ" else "BIRAKILDI"
                    binding.rowBrake.tvValue.setTextColor(if (active) 0xFFFF4444.toInt() else 0xFF29D9F8.toInt())
                }
                DOOR_POS -> {
                    val open = value as? Boolean ?: false
                    binding.rowDoors.tvValue.text = if (open) "AÇIK" else "KAPALI"
                    binding.rowDoors.tvValue.setTextColor(if (open) 0xFFFF4444.toInt() else 0xFF29D9F8.toInt())
                }
            }
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        mainHandler.removeCallbacks(pollingRunnable)
        _binding = null
    }

    companion object { private const val TAG = "VehicleDataFragment" }
}
