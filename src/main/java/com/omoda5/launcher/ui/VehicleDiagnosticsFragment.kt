package com.omoda5.launcher.ui

import android.content.ComponentName
import android.content.Context
import android.content.ServiceConnection
import android.os.Bundle
import android.os.IBinder
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.Switch
import android.widget.TextView
import androidx.core.content.ContextCompat
import androidx.fragment.app.Fragment
import com.omoda5.launcher.R
import java.lang.reflect.Proxy

class VehicleDiagnosticsFragment : Fragment() {

    private val TAG = "VehicleDiagnostics"
    private var carObject: Any? = null
    private var carPropertyManager: Any? = null
    
    // Flags for subscriptions
    private var isHvacActive = false
    private var isDoorsActive = false
    private var isSignalsActive = false

    // Reflection cache
    private var registerCallbackMethod: java.lang.reflect.Method? = null
    private var unregisterCallbackMethod: java.lang.reflect.Method? = null
    private var getPropertyIdMethod: java.lang.reflect.Method? = null
    private var getValueMethod: java.lang.reflect.Method? = null
    private var getPropertyMethod: java.lang.reflect.Method? = null

    // VHAL Property IDs (Common for API 29)
    private val PROP_HVAC_TEMP_LEFT = 358614275
    private val PROP_HVAC_TEMP_RIGHT = 358614276
    private val PROP_HVAC_FAN_SPEED = 358614272
    private val PROP_HVAC_AC_ON = 354419969
    
    private val PROP_DOOR_POS_FL = 371197442
    private val PROP_DOOR_POS_FR = 371197443
    private val PROP_DOOR_POS_RL = 371197444
    private val PROP_DOOR_POS_RR = 371197445
    private val PROP_TRUNK_POS = 371197446
    private val PROP_HOOD_POS = 371197447

    private val PROP_TURN_SIGNAL = 289408008
    private val PROP_HIGH_BEAM = 287310849
    private val PROP_HAZARD_LIGHTS = 287310851

    private val carServiceConnection = object : ServiceConnection {
        override fun onServiceConnected(name: ComponentName?, service: IBinder?) {
            try {
                val getServiceMethod = carObject?.javaClass?.getMethod("getService", String::class.java)
                carPropertyManager = getServiceMethod?.invoke(carObject, "property")
                Log.d(TAG, "CarPropertyManager connected via reflection")
            } catch (e: Exception) {
                Log.e(TAG, "Reflection failed to get property manager", e)
            }
        }
        override fun onServiceDisconnected(name: ComponentName?) {
            carPropertyManager = null
        }
    }

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val view = inflater.inflate(R.layout.fragment_vehicle_diagnostics, container, false)
        setupStaticUI(view)
        setupSwitches(view)
        connectCar()
        return view
    }

    private fun setupStaticUI(v: View) {
        setupRow(v.findViewById(R.id.rowTempLeft), "Sol Sıcaklık", "°C", R.drawable.launcher_media_icon_bg)
        setupRow(v.findViewById(R.id.rowTempRight), "Sağ Sıcaklık", "°C", R.drawable.launcher_media_icon_bg)
        setupRow(v.findViewById(R.id.rowFanSpeed), "Fan Hızı", "Kademe", R.drawable.launcher_media_icon_bg)
        setupRow(v.findViewById(R.id.rowACMode), "AC Modu", "", R.drawable.launcher_media_icon_bg)

        setupRow(v.findViewById(R.id.rowDoorFL), "Sol Ön Kapı", "", R.drawable.launcher_vehicle_icon_bg)
        setupRow(v.findViewById(R.id.rowDoorFR), "Sağ Ön Kapı", "", R.drawable.launcher_vehicle_icon_bg)
        setupRow(v.findViewById(R.id.rowDoorRL), "Sol Arka Kapı", "", R.drawable.launcher_vehicle_icon_bg)
        setupRow(v.findViewById(R.id.rowDoorRR), "Sağ Arka Kapı", "", R.drawable.launcher_vehicle_icon_bg)
        setupRow(v.findViewById(R.id.rowTrunk), "Bagaj", "", R.drawable.launcher_vehicle_icon_bg)
        setupRow(v.findViewById(R.id.rowHood), "Kaput", "", R.drawable.launcher_vehicle_icon_bg)

        setupRow(v.findViewById(R.id.rowTurnSignal), "Sinyal Kolu", "", R.drawable.launcher_media_icon_bg)
        setupRow(v.findViewById(R.id.rowHighBeam), "Uzun Farlar", "", R.drawable.launcher_media_icon_bg)
        setupRow(v.findViewById(R.id.rowHazard), "Dörtlüler", "", R.drawable.launcher_media_icon_bg)
        setupRow(v.findViewById(R.id.rowSteeringButtons), "Direksiyon Tuşları", "LOG", R.drawable.launcher_media_icon_bg)
    }

    private fun setupRow(row: View, label: String, unit: String, icon: Int) {
        row.findViewById<TextView>(R.id.tvLabel).text = label
        row.findViewById<TextView>(R.id.tvUnit).text = unit
        row.findViewById<ImageView>(R.id.ivIcon).setImageResource(icon)
        row.findViewById<ImageView>(R.id.ivIcon).imageAlpha = 150
    }

    private fun setupSwitches(v: View) {
        v.findViewById<Switch>(R.id.swHvac).setOnCheckedChangeListener { _, checked ->
            isHvacActive = checked
            v.findViewById<TextView>(R.id.tvHvacHeader).alpha = if(checked) 1.0f else 0.5f
            handleSubscriptions()
        }
        v.findViewById<Switch>(R.id.swDoors).setOnCheckedChangeListener { _, checked ->
            isDoorsActive = checked
            v.findViewById<TextView>(R.id.tvDoorsHeader).alpha = if(checked) 1.0f else 0.5f
            handleSubscriptions()
        }
        v.findViewById<Switch>(R.id.swSignals).setOnCheckedChangeListener { _, checked ->
            isSignalsActive = checked
            v.findViewById<TextView>(R.id.tvSignalsHeader).alpha = if(checked) 1.0f else 0.5f
            handleSubscriptions()
        }
    }

    private fun connectCar() {
        try {
            val carClass = Class.forName("android.car.Car")
            val createMethod = carClass.getMethod("createCar", Context::class.java, ServiceConnection::class.java)
            carObject = createMethod.invoke(null, requireContext(), carServiceConnection)
            carObject?.javaClass?.getMethod("connect")?.invoke(carObject)
        } catch (e: Exception) {
            Log.e(TAG, "Car connection error", e)
        }
    }

    private fun handleSubscriptions() {
        if (carPropertyManager == null) return
        
        // Bu noktada gerçek VHAL abonelikleri yapılır. 
        // Kullanıcı 'normalde kapalı olsun' dediği için Switch'ler açıldığında callback'leri kaydedeceğiz.
        // API 29 için yansıtma (reflection) metotlarını bulalım
        initReflection()
        
        // Örnek: Klima seçiliyse verileri çekmeye başla
        if (isHvacActive) {
            fetchInitialValues(intArrayOf(PROP_HVAC_TEMP_LEFT, PROP_HVAC_TEMP_RIGHT, PROP_HVAC_FAN_SPEED, PROP_HVAC_AC_ON))
        }
        if (isDoorsActive) {
            fetchInitialValues(intArrayOf(PROP_DOOR_POS_FL, PROP_DOOR_POS_FR, PROP_TRUNK_POS))
        }
    }

    private fun initReflection() {
        if (registerCallbackMethod != null) return
        try {
            val mgrClass = carPropertyManager?.javaClass ?: return
            val callbackClass = Class.forName("android.car.hardware.property.CarPropertyManager\$CarPropertyEventCallback")
            val propertyValueClass = Class.forName("android.car.hardware.CarPropertyValue")
            
            registerCallbackMethod = mgrClass.getMethod("registerCallback", callbackClass, Int::class.java, Float::class.java)
            unregisterCallbackMethod = mgrClass.getMethod("unregisterCallback", callbackClass)
            getPropertyMethod = mgrClass.getMethod("getProperty", Int::class.java, Int::class.java)
            
            getPropertyIdMethod = propertyValueClass.getMethod("getPropertyId")
            getValueMethod = propertyValueClass.getMethod("getValue")
        } catch (e: Exception) {
            Log.e(TAG, "Reflection init error", e)
        }
    }

    private fun fetchInitialValues(props: IntArray) {
        props.forEach { id ->
            try {
                val valueObj = getPropertyMethod?.invoke(carPropertyManager, id, 0)
                if (valueObj != null) {
                    val valActual = getValueMethod?.invoke(valueObj)
                    updateUI(id, valActual)
                }
            } catch (e: Exception) {
                updateUI(id, "N/A")
            }
        }
    }

    private fun updateUI(id: Int, value: Any?) {
        activity?.runOnUiThread {
            val v = view ?: return@runOnUiThread
            val textValue = value?.toString() ?: "--"
            when (id) {
                PROP_HVAC_TEMP_LEFT -> v.findViewById<TextView>(R.id.rowTempLeft).findViewById<TextView>(R.id.tvValue).text = textValue
                PROP_HVAC_TEMP_RIGHT -> v.findViewById<TextView>(R.id.rowTempRight).findViewById<TextView>(R.id.tvValue).text = textValue
                PROP_HVAC_FAN_SPEED -> v.findViewById<TextView>(R.id.rowFanSpeed).findViewById<TextView>(R.id.tvValue).text = textValue
                PROP_HVAC_AC_ON -> v.findViewById<TextView>(R.id.rowACMode).findViewById<TextView>(R.id.tvValue).text = if(value == true) "AÇIK" else "KAPALI"
                PROP_DOOR_POS_FL -> v.findViewById<TextView>(R.id.rowDoorFL).findViewById<TextView>(R.id.tvValue).text = if(value == 0) "KAPALI" else "AÇIK"
                PROP_DOOR_POS_FR -> v.findViewById<TextView>(R.id.rowDoorFR).findViewById<TextView>(R.id.tvValue).text = if(value == 0) "KAPALI" else "AÇIK"
            }
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        try { carObject?.javaClass?.getMethod("disconnect")?.invoke(carObject) } catch (e: Exception) {}
        carObject = null
        carPropertyManager = null
    }
}
