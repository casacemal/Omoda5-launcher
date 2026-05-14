package com.omoda5.launcher.ui

import android.content.Intent
import android.content.pm.PackageManager
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.omoda5.launcher.R
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.common.SplitScreenManager
import com.omoda5.launcher.service.AdbBridgeService

class LauncherSettingsActivity : AppCompatActivity() {

    private lateinit var prefs: PreferencesManager
    private lateinit var splitManager: SplitScreenManager
    private lateinit var adapter: SplitSettingsAdapter

    // ADB Settings Views
    private lateinit var adbEnabledSwitch: Switch
    private lateinit var adbModeGroup: RadioGroup
    private lateinit var adbPortEdit: EditText
    private lateinit var adbAuthSwitch: Switch
    private lateinit var adbTimeoutEdit: EditText
    private lateinit var adbStatusText: TextView

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_launcher_settings)

        prefs = PreferencesManager(this)
        splitManager = SplitScreenManager(prefs)

        setupSplitScreenSettings()
        setupAdbSettings()
    }

    private fun setupSplitScreenSettings() {
        val rv = findViewById<RecyclerView>(R.id.rvApps)
        val header = findViewById<TextView>(R.id.tvExpandHeader)
        rv.layoutManager = LinearLayoutManager(this)

        adapter = SplitSettingsAdapter(loadLaunchableApps(), splitManager, prefs)
        rv.adapter = adapter

        header.setOnClickListener {
            rv.visibility = if (rv.visibility == View.VISIBLE) View.GONE else View.VISIBLE
            header.text = if (rv.visibility == View.VISIBLE) {
                "Split Uygulama Eşleştirmeleri ▾"
            } else {
                "Split Uygulama Eşleştirmeleri ▸"
            }
        }
    }

    private fun setupAdbSettings() {
        // Initialize ADB settings views
        adbEnabledSwitch = findViewById(R.id.adb_enabled_switch)
        adbModeGroup = findViewById(R.id.adb_mode_group)
        adbPortEdit = findViewById(R.id.adb_port_edit)
        adbAuthSwitch = findViewById(R.id.adb_auth_switch)
        adbTimeoutEdit = findViewById(R.id.adb_timeout_edit)
        adbStatusText = findViewById(R.id.adb_status_text)

        // Load current ADB settings
        adbEnabledSwitch.isChecked = prefs.isAdbEnabled
        adbPortEdit.setText(prefs.adbPort.toString())
        adbAuthSwitch.isChecked = prefs.isAdbAuthenticationEnabled
        adbTimeoutEdit.setText((prefs.adbTimeout / 1000).toString()) // Convert to seconds

        // Set ADB mode radio buttons
        when (prefs.adbMode) {
            "usb" -> adbModeGroup.check(R.id.adb_mode_usb)
            "tcp" -> adbModeGroup.check(R.id.adb_mode_tcp)
        }

        updateAdbStatus()

        // Setup listeners
        adbEnabledSwitch.setOnCheckedChangeListener { _, isChecked ->
            prefs.isAdbEnabled = isChecked
            toggleAdbService(isChecked)
            updateAdbStatus()
        }

        adbModeGroup.setOnCheckedChangeListener { _, checkedId ->
            val mode = when (checkedId) {
                R.id.adb_mode_usb -> "usb"
                R.id.adb_mode_tcp -> "tcp"
                else -> "tcp"
            }
            prefs.adbMode = mode
        }

        adbPortEdit.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus) {
                val port = adbPortEdit.text.toString().toIntOrNull() ?: 5555
                prefs.adbPort = port.coerceIn(1024, 65535)
                adbPortEdit.setText(prefs.adbPort.toString())
            }
        }

        adbAuthSwitch.setOnCheckedChangeListener { _, isChecked ->
            prefs.isAdbAuthenticationEnabled = isChecked
        }

        adbTimeoutEdit.setOnFocusChangeListener { _, hasFocus ->
            if (!hasFocus) {
                val timeoutSeconds = adbTimeoutEdit.text.toString().toIntOrNull() ?: 300
                prefs.adbTimeout = (timeoutSeconds * 1000).coerceIn(30000, 1800000) // 30s to 30min
                adbTimeoutEdit.setText((prefs.adbTimeout / 1000).toString())
            }
        }
    }

    private fun toggleAdbService(enabled: Boolean) {
        val intent = Intent(this, AdbBridgeService::class.java).apply {
            action = if (enabled) AdbBridgeService.ACTION_START_ADB
                     else AdbBridgeService.ACTION_STOP_ADB
        }
        startService(intent)
    }

    private fun updateAdbStatus() {
        val status = if (prefs.isAdbEnabled) {
            "ADB Etkin - Port: ${prefs.adbPort} (${prefs.adbMode})"
        } else {
            "ADB Devre Dışı"
        }
        adbStatusText.text = status
    }

    private fun loadLaunchableApps(): List<AppEntry> {
        val pm = packageManager
        val intent = Intent(Intent.ACTION_MAIN, null).apply { addCategory(Intent.CATEGORY_LAUNCHER) }
        return pm.queryIntentActivities(intent, 0)
            .map { ri ->
                AppEntry(
                    packageName = ri.activityInfo.packageName,
                    label = ri.loadLabel(pm).toString()
                )
            }
            .distinctBy { it.packageName }
            .sortedBy { it.label.lowercase() }
    }
}

data class AppEntry(
    val packageName: String,
    val label: String
)

private class SplitSettingsAdapter(
    private val apps: List<AppEntry>,
    private val splitManager: SplitScreenManager,
    private val prefs: PreferencesManager
) : RecyclerView.Adapter<SplitSettingsAdapter.VH>() {

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): VH {
        val view = LayoutInflater.from(parent.context).inflate(R.layout.item_split_setting_app, parent, false)
        return VH(view)
    }

    override fun getItemCount(): Int = apps.size

    override fun onBindViewHolder(holder: VH, position: Int) {
        val item = apps[position]
        val incompatible = prefs.splitIncompatibleApps.contains(item.packageName)
        val alpha = if (incompatible) 0.45f else 1f

        holder.rowRoot.alpha = alpha
        holder.tvAppName.text = item.label
        holder.cbLeft.setOnCheckedChangeListener(null)
        holder.cbRight.setOnCheckedChangeListener(null)
        holder.cbDefault.setOnCheckedChangeListener(null)
        val leftSet = splitManager.getLeftHistory().toSet()
        val rightSet = splitManager.getRightHistory().toSet()
        holder.cbLeft.isChecked = leftSet.contains(item.packageName)
        holder.cbRight.isChecked = rightSet.contains(item.packageName)
        holder.cbDefault.isChecked =
            splitManager.defaultLeftAppPackage == item.packageName &&
                splitManager.defaultRightAppPackage == item.packageName

        holder.cbLeft.setOnCheckedChangeListener { _, checked ->
            if (checked) {
                splitManager.addToLeftHistory(item.packageName)
                if (splitManager.leftAppPackage.isNullOrBlank()) {
                    splitManager.leftAppPackage = item.packageName
                }
                safeRefresh(holder)
            } else {
                splitManager.removeFromLeftHistory(item.packageName)
                safeRefresh(holder)
            }
        }
        holder.cbRight.setOnCheckedChangeListener { _, checked ->
            if (checked) {
                splitManager.addToRightHistory(item.packageName)
                if (splitManager.rightAppPackage.isNullOrBlank()) {
                    splitManager.rightAppPackage = item.packageName
                }
                safeRefresh(holder)
            } else {
                splitManager.removeFromRightHistory(item.packageName)
                safeRefresh(holder)
            }
        }
        holder.cbDefault.setOnCheckedChangeListener { _, checked ->
            if (checked) {
                splitManager.defaultLeftAppPackage = item.packageName
                splitManager.defaultRightAppPackage = item.packageName
                safeRefresh(holder)
            } else if (
                splitManager.defaultLeftAppPackage == item.packageName &&
                splitManager.defaultRightAppPackage == item.packageName
            ) {
                splitManager.defaultLeftAppPackage = null
                splitManager.defaultRightAppPackage = null
                safeRefresh(holder)
            }
        }
    }

    private fun safeRefresh(holder: VH) {
        holder.itemView.post { notifyDataSetChanged() }
    }

    class VH(view: View) : RecyclerView.ViewHolder(view) {
        val rowRoot: View = view.findViewById(R.id.rowRoot)
        val tvAppName: TextView = view.findViewById(R.id.tvAppName)
        val cbLeft: CheckBox = view.findViewById(R.id.cbLeft)
        val cbRight: CheckBox = view.findViewById(R.id.cbRight)
        val cbDefault: CheckBox = view.findViewById(R.id.cbDefault)
    }
}
