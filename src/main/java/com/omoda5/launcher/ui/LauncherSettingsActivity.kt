package com.omoda5.launcher.ui

import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.content.pm.PackageManager
import android.os.Build
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.appcompat.app.AppCompatActivity
import androidx.appcompat.widget.SwitchCompat
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.button.MaterialButton
import com.omoda5.launcher.R
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.common.SplitScreenManager
import com.omoda5.launcher.common.UpdateManager
import com.omoda5.launcher.service.AdbBridgeService
import java.io.File
import java.text.SimpleDateFormat
import java.util.*

class LauncherSettingsActivity : AppCompatActivity() {

    private lateinit var prefs: PreferencesManager
    private lateinit var splitManager: SplitScreenManager
    private lateinit var updateManager: UpdateManager
    private lateinit var adapter: SplitSettingsAdapter

    // Settings UI
    private lateinit var switchStockLauncher: SwitchCompat
    private lateinit var switchImmersive: SwitchCompat
    private lateinit var switchAutoHvac: SwitchCompat
    private lateinit var switchForceGestures: SwitchCompat
    private lateinit var btnEnableAdb: MaterialButton
    private lateinit var btnAdbTcpMode: MaterialButton
    private lateinit var btnOverscanLeft: MaterialButton
    private lateinit var btnOverscanRight: MaterialButton
    private lateinit var btnOverscanReset: MaterialButton
    private lateinit var btnReboot: MaterialButton
    private lateinit var btnSetDefaultLauncher: MaterialButton
    private lateinit var btnAnalyzeHome: MaterialButton
    private lateinit var btnFetchAppLogs: MaterialButton
    private lateinit var tvAppVersion: TextView

    // Diag UI
    private lateinit var swDiagHvac: SwitchCompat
    private lateinit var swDiagDoors: SwitchCompat
    private lateinit var swDiagButtons: SwitchCompat
    private lateinit var diagRowsContainer: LinearLayout

    // Terminal UI
    private lateinit var etShellCommand: EditText
    private lateinit var btnSendCommand: MaterialButton
    private lateinit var btnStopCommand: MaterialButton

    // OTA Update UI
    private lateinit var btnInstallUpdate: MaterialButton
    private lateinit var btnCheckUpdateManual: MaterialButton

    // Log UI
    private lateinit var tvLogContent: TextView
    private lateinit var btnClearLogs: MaterialButton
    private lateinit var btnPauseLogs: MaterialButton
    private var isLogPaused = false

    private val adbReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            val message = intent?.getStringExtra("message") ?: return
            
            when {
                message.startsWith("CMD_OUT: ") -> appendRawLog(message.substring(9))
                message.startsWith("CMD_ERR: ") -> appendLog("Hata", message.substring(9))
                message.startsWith("CMD_FIN: ") -> appendLog("Sistem", message.substring(9))
                message.startsWith("CMD_STR: ") -> appendLog("ADB", message.substring(9))
                else -> appendLog("ADB", message)
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_launcher_settings)

        prefs = PreferencesManager(this)
        splitManager = SplitScreenManager(prefs)
        updateManager = UpdateManager(this, prefs)

        initViews()
        setupListeners()
        setupUpdateSettings()
        setupSplitScreenSettings()
        loadInitialStates()
        
        val filter = IntentFilter(AdbBridgeService.ACTION_ADB_STATUS_UPDATE)
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.TIRAMISU) {
            registerReceiver(adbReceiver, filter, Context.RECEIVER_NOT_EXPORTED)
        } else {
            registerReceiver(adbReceiver, filter)
        }
        
        appendLog("Sistem", "Gelişmiş terminal ve ayarlar paneli aktif.")
        autoRunSetupCommands()
    }

    private fun autoRunSetupCommands() {
        appendLog("Sistem", "Otomatik kurulum komutları yürütülüyor...")
        
        val leftO = if (prefs.isLeftBarHidden) -235 else 0
        val rightO = if (prefs.isRightBarHidden) -70 else 0
        
        val commands = arrayOf(
            "setprop service.adb.tcp.port 5555",
            "stop adbd",
            "start adbd",
            "wm overscan $leftO,0,$rightO,0",
            "pm grant $packageName android.permission.READ_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.WRITE_EXTERNAL_STORAGE",
            "pm grant $packageName android.permission.SYSTEM_ALERT_WINDOW",
            "appops set $packageName GET_USAGE_STATS allow",
            "settings put secure enabled_accessibility_services $packageName/com.omoda5.launcher.services.CheryAccessibilityService",
            "settings put secure accessibility_enabled 1"
        )
        
        commands.forEach { executeAdbCommand(it) }
    }

    override fun onDestroy() {
        super.onDestroy()
        try { unregisterReceiver(adbReceiver) } catch (e: Exception) {}
    }

    private fun initViews() {
        switchStockLauncher = findViewById(R.id.switch_disable_stock_launcher)
        switchImmersive = findViewById(R.id.switch_immersive_mode)
        switchAutoHvac = findViewById(R.id.switch_auto_start_hvac)
        switchForceGestures = findViewById(R.id.switch_force_gestures)
        btnEnableAdb = findViewById(R.id.btn_enable_system_adb)
        btnAdbTcpMode = findViewById(R.id.btn_adb_tcp_mode)
        btnOverscanLeft = findViewById(R.id.btn_overscan_hide_left)
        btnOverscanRight = findViewById(R.id.btn_overscan_hide_right)
        btnOverscanReset = findViewById(R.id.btn_overscan_reset)
        btnReboot = findViewById(R.id.btn_reboot)
        btnSetDefaultLauncher = findViewById(R.id.btn_set_default_launcher)
        btnAnalyzeHome = findViewById(R.id.btn_analyze_home)
        btnFetchAppLogs = findViewById(R.id.btn_fetch_app_logs)
        tvAppVersion = findViewById(R.id.tv_app_version)

        swDiagHvac = findViewById(R.id.sw_diag_hvac)
        swDiagDoors = findViewById(R.id.sw_diag_doors)
        swDiagButtons = findViewById(R.id.sw_diag_buttons)
        diagRowsContainer = findViewById(R.id.diagRowsContainer)

        etShellCommand = findViewById(R.id.et_shell_command)
        btnSendCommand = findViewById(R.id.btn_send_command)
        btnStopCommand = findViewById(R.id.btn_stop_command)

        btnInstallUpdate = findViewById(R.id.btn_install_update)
        btnCheckUpdateManual = findViewById(R.id.btn_check_update_manual)

        tvLogContent = findViewById(R.id.tvLogContent)
        btnClearLogs = findViewById(R.id.btn_clear_logs)
        btnPauseLogs = findViewById(R.id.btn_pause_logs)
    }

    private fun loadInitialStates() {
        try {
            val pInfo = packageManager.getPackageInfo(packageName, 0)
            val version = pInfo.versionName
            val code = if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) pInfo.longVersionCode else pInfo.versionCode
            tvAppVersion.text = "Mevcut Sürüm: v$version ($code)"
        } catch (e: Exception) {
            tvAppVersion.text = "Sürüm bilgisi alınamadı"
        }

        switchStockLauncher.isChecked = prefs.isStockLauncherDisabled
        switchImmersive.isChecked = prefs.isImmersiveModeEnabled
        switchAutoHvac.isChecked = prefs.isAutoStartHvacEnabled
        switchForceGestures.isChecked = prefs.isA11yForced
        
        appendLog("Veri", "Kullanıcı tercihleri yüklendi.")
    }

    private fun setupUpdateSettings() {
        val pendingVersion = prefs.downloadedUpdateVersion
        val currentVersion = try { packageManager.getPackageInfo(packageName, 0).versionCode } catch (e: Exception) { 0 }
        
        if (pendingVersion > currentVersion && !prefs.downloadedUpdatePath.isNullOrBlank()) {
            btnInstallUpdate.visibility = View.VISIBLE
            btnInstallUpdate.text = "GÜNCELLEMEYİ YÜKLE (v$pendingVersion)"
        }
    }

    private fun setupSplitScreenSettings() {
        val rv = findViewById<RecyclerView>(R.id.rvApps)
        rv.layoutManager = LinearLayoutManager(this)
        adapter = SplitSettingsAdapter(loadLaunchableApps(), splitManager, prefs)
        rv.adapter = adapter
    }

    private fun setupListeners() {
        switchStockLauncher.setOnCheckedChangeListener { _, checked ->
            prefs.isStockLauncherDisabled = checked
            val cmd = if (checked) "pm disable-user --user 0 com.chery.launcher" else "pm enable com.chery.launcher"
            executeAdbCommand(cmd)
        }

        switchImmersive.setOnCheckedChangeListener { _, checked ->
            prefs.isImmersiveModeEnabled = checked
            val cmd = if (checked) "settings put global policy_control immersive.full=*" else "settings put global policy_control null"
            executeAdbCommand(cmd)
        }

        switchAutoHvac.setOnCheckedChangeListener { _, checked ->
            prefs.isAutoStartHvacEnabled = checked
            appendLog("Sistem", "HVAC Otomatik: $checked")
        }

        switchForceGestures.setOnCheckedChangeListener { _, checked ->
            prefs.isA11yForced = checked
            val cmd = if (checked) {
                "settings put secure enabled_accessibility_services com.omoda5.launcher/com.omoda5.launcher.services.CheryAccessibilityService && settings put secure accessibility_enabled 1"
            } else {
                "settings put secure accessibility_enabled 0"
            }
            executeAdbCommand(cmd)
            appendLog("Sistem", "Global Gestures -> $checked")
        }

        btnEnableAdb.setOnClickListener {
            appendLog("Sistem", "ADB 5555 bağlantısı deneniyor...")
            executeAdbCommand("uptime") // Sadece bağlantıyı test et
        }

        btnAdbTcpMode.setOnClickListener {
            appendLog("Sistem", "ADB TCP 5555 moduna geçiş komutu gönderiliyor...")
            executeAdbCommand("setprop service.adb.tcp.port 5555")
            executeAdbCommand("stop adbd")
            executeAdbCommand("start adbd")
        }

        btnOverscanLeft.setOnClickListener {
            prefs.isLeftBarHidden = !prefs.isLeftBarHidden
            applySmartOverscan()
        }

        btnOverscanRight.setOnClickListener {
            prefs.isRightBarHidden = !prefs.isRightBarHidden
            applySmartOverscan()
        }

        btnOverscanReset.setOnClickListener {
            prefs.isLeftBarHidden = false
            prefs.isRightBarHidden = false
            executeAdbCommand("wm overscan 0,0,0,0")
        }

        btnReboot.setOnClickListener { executeAdbCommand("reboot") }

        btnSetDefaultLauncher.setOnClickListener {
            appendLog("Sistem", "Launcher varsayılan olarak ayarlanıyor...")
            executeAdbCommand("cmd package set-home-activity com.omoda5.launcher/.ui.MainActivity")
        }
        btnAnalyzeHome.setOnClickListener { runHomeAnalysis() }
        btnFetchAppLogs.setOnClickListener { fetchInternalLogs() }

        // Terminal Listeners
        btnSendCommand.setOnClickListener {
            val cmd = etShellCommand.text.toString()
            if (cmd.isNotEmpty()) {
                executeAdbCommand(cmd)
                etShellCommand.text.clear()
            }
        }

        etShellCommand.setOnEditorActionListener { _, _, _ ->
            btnSendCommand.performClick()
            true
        }

        btnStopCommand.setOnClickListener {
            val intent = Intent(this, AdbBridgeService::class.java).apply {
                action = AdbBridgeService.ACTION_STOP_COMMAND
            }
            startService(intent)
        }

        setupDiagRows()

        swDiagHvac.setOnCheckedChangeListener { _, checked ->
            if(checked) {
                diagRowsContainer.visibility = View.VISIBLE
                startHvacDiag()
            } else {
                checkDiagContainerVisibility()
                stopHvacDiag()
            }
        }
        swDiagDoors.setOnCheckedChangeListener { _, checked ->
            if(checked) {
                diagRowsContainer.visibility = View.VISIBLE
                startDoorsDiag()
            } else {
                checkDiagContainerVisibility()
                stopDoorsDiag()
            }
        }
        swDiagButtons.setOnCheckedChangeListener { _, checked ->
            if(checked) startButtonsDiag() else stopButtonsDiag()
        }

        btnClearLogs.setOnClickListener {
            tvLogContent.text = ""
        }

        btnPauseLogs.setOnClickListener {
            isLogPaused = !isLogPaused
            btnPauseLogs.text = if (isLogPaused) "DONDURULDU" else "DONDUR"
        }

        btnInstallUpdate.setOnClickListener {
            val path = prefs.downloadedUpdatePath ?: return@setOnClickListener
            appendLog("Sistem", "Guncelleme yukleniyor: $path")
            // Yukleme komutu guncellendi: Dosyaya shell erişimi sağlandı.
            executeAdbCommand("pm install -r -d $path")
        }

        btnCheckUpdateManual.setOnClickListener {
            updateManager.checkForUpdates(object : UpdateManager.UpdateCheckCallback {
                override fun onUpdateAvailable(versionName: String, versionCode: Int, downloadUrl: String) {
                    runOnUiThread {
                        appendLog("OTA", "Yeni sürüm: v$versionName. İndiriliyor...")
                        downloadUpdateInternal(downloadUrl, versionName, versionCode)
                    }
                }
                override fun onNoUpdate() { runOnUiThread { appendLog("OTA", "Güncel.") } }
                override fun onError(error: String) { runOnUiThread { appendLog("Hata", "OTA: $error") } }
            })
        }
    }

    private fun checkDiagContainerVisibility() {
        if (!swDiagHvac.isChecked && !swDiagDoors.isChecked) {
            diagRowsContainer.visibility = View.GONE
        }
    }

    private fun setupDiagRows() {
        setupRow(findViewById(R.id.diag_temp_left), "Sol Sıcaklık", "°C", android.R.drawable.ic_menu_compass)
        setupRow(findViewById(R.id.diag_temp_right), "Sağ Sıcaklık", "°C", android.R.drawable.ic_menu_compass)
        setupRow(findViewById(R.id.diag_fan_speed), "Fan Hızı", "K", android.R.drawable.ic_menu_directions)
        setupRow(findViewById(R.id.diag_door_fl), "Sol Ön Kapı", "", android.R.drawable.ic_lock_idle_lock)
        setupRow(findViewById(R.id.diag_door_fr), "Sağ Ön Kapı", "", android.R.drawable.ic_lock_idle_lock)
        setupRow(findViewById(R.id.diag_trunk), "Bagaj", "", android.R.drawable.ic_lock_idle_lock)
    }

    private fun setupRow(row: View, label: String, unit: String, iconRes: Int) {
        row.findViewById<TextView>(R.id.tvLabel).text = label
        row.findViewById<TextView>(R.id.tvUnit).text = unit
        row.findViewById<ImageView>(R.id.ivIcon).setImageResource(iconRes)
    }

    private fun applySmartOverscan() {
        val left = if (prefs.isLeftBarHidden) -235 else 0
        val right = if (prefs.isRightBarHidden) -70 else 0
        executeAdbCommand("wm overscan $left,0,$right,0")
    }

    private fun startHvacDiag() = executeAdbCommand("logcat -v time | grep -i \"HVAC\\|Temp\"")
    private fun stopHvacDiag() = btnStopCommand.performClick()

    private fun startDoorsDiag() = executeAdbCommand("logcat -v time | grep -i \"Door\\|Trunk\\|Hood\"")
    private fun stopDoorsDiag() = btnStopCommand.performClick()

    private fun startButtonsDiag() = executeAdbCommand("logcat -v time | grep -i \"HardKey\\|KeyEvent\"")
    private fun stopButtonsDiag() = btnStopCommand.performClick()

    private fun downloadUpdateInternal(url: String, name: String, code: Int) {
        updateManager.downloadUpdate(url, "update_v$name.apk", object : UpdateManager.DownloadCallback {
            override fun onProgress(percentage: Int, speedMbps: Double, remainingSeconds: Long) {
                runOnUiThread {
                    val speedStr = String.format("%.1f", speedMbps)
                    appendLog("OTA", "İndiriliyor: %$percentage ($speedStr Mbps) - $remainingSeconds sn kaldı")
                }
            }

            override fun onComplete(file: java.io.File?) {
                runOnUiThread {
                    if (file != null) {
                        prefs.downloadedUpdateVersion = code
                        prefs.downloadedUpdatePath = file.absolutePath
                        btnInstallUpdate.visibility = View.VISIBLE
                        btnInstallUpdate.text = "ŞİMDİ YÜKLE (v$name)"
                        appendLog("OTA", "İndirme tamamlandı: ${file.absolutePath}")
                        installPackage(file)
                    } else {
                        appendLog("Hata", "İndirme başarısız!")
                    }
                }
            }

            override fun onError(error: String) {
                runOnUiThread { appendLog("Hata", "İndirme hatası: $error") }
            }
        })
    }

    private fun installPackage(file: java.io.File) {
        try {
            val uri = androidx.core.content.FileProvider.getUriForFile(this, "${packageName}.fileprovider", file)
            val intent = Intent(Intent.ACTION_VIEW).apply {
                setDataAndType(uri, "application/vnd.android.package-archive")
                addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
                addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            }
            startActivity(intent)
        } catch (e: Exception) {
            appendLog("Hata", "Paket yükleyici açılamadı. ADB deneniyor...")
            executeAdbCommand("pm install -r -d ${file.absolutePath}")
        }
    }

    private fun executeAdbCommand(command: String) {
        val intent = Intent(this, AdbBridgeService::class.java).apply {
            action = AdbBridgeService.ACTION_EXECUTE_SHELL
            putExtra("command", command)
        }
        startService(intent)
    }

    private fun runHomeAnalysis() {
        appendLog("Analiz", "--- HOME ANALİZ ---")
        val intent = Intent(Intent.ACTION_MAIN).apply { addCategory(Intent.CATEGORY_HOME) }
        val resolveInfo = packageManager.resolveActivity(intent, 0)
        appendLog("Analiz", "Varsayılan: ${resolveInfo?.activityInfo?.packageName}")
        executeAdbCommand("dumpsys activity | grep -i \"mFocusedActivity\"")
    }

    private fun fetchInternalLogs() {
        appendLog("Log", "Hata logları çekiliyor...")
        executeAdbCommand("logcat -d *:W | grep -i \"${packageName}\" | tail -n 50")
    }

    private fun appendLog(tag: String, message: String) {
        if (isLogPaused) return
        runOnUiThread {
            val time = SimpleDateFormat("HH:mm:ss", Locale.getDefault()).format(Date())
            val logLine = "[$time] [$tag] $message\n"
            tvLogContent.append(logLine)
            scrollToBottom()
        }
    }

    private fun appendRawLog(message: String) {
        if (isLogPaused) return
        runOnUiThread {
            tvLogContent.append(message)
            if (!message.endsWith("\n")) tvLogContent.append("\n")
            scrollToBottom()
        }
    }

    private fun scrollToBottom() {
        findViewById<androidx.core.widget.NestedScrollView>(R.id.logScroll).post {
            findViewById<androidx.core.widget.NestedScrollView>(R.id.logScroll).fullScroll(View.FOCUS_DOWN)
        }
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

    private data class AppEntry(
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
                    notifyDataSetChanged()
                } else {
                    splitManager.removeFromLeftHistory(item.packageName)
                    notifyDataSetChanged()
                }
            }
            holder.cbRight.setOnCheckedChangeListener { _, checked ->
                if (checked) {
                    splitManager.addToRightHistory(item.packageName)
                    if (splitManager.rightAppPackage.isNullOrBlank()) {
                        splitManager.rightAppPackage = item.packageName
                    }
                    notifyDataSetChanged()
                } else {
                    splitManager.removeFromRightHistory(item.packageName)
                    notifyDataSetChanged()
                }
            }
            holder.cbDefault.setOnCheckedChangeListener { _, checked ->
                if (checked) {
                    splitManager.defaultLeftAppPackage = item.packageName
                    splitManager.defaultRightAppPackage = item.packageName
                    notifyDataSetChanged()
                } else if (
                    splitManager.defaultLeftAppPackage == item.packageName &&
                    splitManager.defaultRightAppPackage == item.packageName
                ) {
                    splitManager.defaultLeftAppPackage = null
                    splitManager.defaultRightAppPackage = null
                    notifyDataSetChanged()
                }
            }
        }

        class VH(view: View) : RecyclerView.ViewHolder(view) {
            val rowRoot: View = view.findViewById(R.id.rowRoot)
            val tvAppName: TextView = view.findViewById(R.id.tvAppName)
            val cbLeft: CheckBox = view.findViewById(R.id.cbLeft)
            val cbRight: CheckBox = view.findViewById(R.id.cbRight)
            val cbDefault: CheckBox = view.findViewById(R.id.cbDefault)
        }
    }
}
