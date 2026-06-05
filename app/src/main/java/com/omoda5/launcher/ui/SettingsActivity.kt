package com.omoda5.launcher.ui
import android.content.*
import android.os.*
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.AnimatedVisibility
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material.icons.Icons
import androidx.compose.material.icons.filled.KeyboardArrowDown
import androidx.compose.material.icons.filled.KeyboardArrowUp
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.platform.LocalContext
import androidx.compose.ui.platform.LocalLifecycleOwner
import androidx.compose.ui.text.TextStyle
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.*
import com.omoda5.launcher.common.*
import com.omoda5.launcher.ui.theme.*
import java.io.File

class SettingsActivity : ComponentActivity() {
    private lateinit var prefs: PreferencesManager
    private lateinit var updateManager: UpdateManager
    override fun onCreate(s: Bundle?) {
        super.onCreate(s); prefs = PreferencesManager(this); updateManager = UpdateManager(this, prefs)
        setContent { Omoda5NextGenTheme { CompositionLocalProvider(LocalLifecycleOwner provides this) { SettingsScreen(prefs, updateManager, { exec(it) }, { startActivity(Intent(this, VehicleDataActivity::class.java)) }, getApps()) } } }
    }
    private fun getApps(): List<Pair<String,String>> = packageManager.queryIntentActivities(Intent(Intent.ACTION_MAIN).addCategory(Intent.CATEGORY_LAUNCHER), 0).map { it.loadLabel(packageManager).toString() to it.activityInfo.packageName }.sortedBy { it.first.lowercase() }
    private fun exec(c: String) { 
        val i = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java)
        if (c == "STOP_COMMAND") i.action = "ACTION_STOP_COMMAND"
        else { i.action = "ACTION_EXECUTE_SHELL"; i.putExtra("command", c) }
        startService(i)
    }
}

@Composable
fun SettingsScreen(prefs: PreferencesManager, updateManager: UpdateManager, onAction: (String)->Unit, onData: ()->Unit, apps: List<Pair<String,String>>) {
    val context = LocalContext.current
    val pkg = context.packageName
    var currentAlpha by remember { mutableStateOf(prefs.wallpaperAlpha) }
    var isHudEnabled by remember { mutableStateOf(prefs.isHudEnabled) }
    var isKeyMon by remember { mutableStateOf(prefs.isKeyMonitoringEnabled) }
    var isDataMon by remember { mutableStateOf(prefs.isDataMonitoringEnabled) }
    var storeApps by remember { mutableStateOf<List<Pair<String, String>>>(emptyList()) }
    var downloadProgress by remember { mutableStateOf<Map<String, Int>>(emptyMap()) }
    var isHiddenExp by remember { mutableStateOf(false) }
    var isStoreExp by remember { mutableStateOf(false) }
    var isDiagExp by remember { mutableStateOf(false) }
    var isMtExp by remember { mutableStateOf(false) }
    var isTsWatchdog by remember { mutableStateOf(prefs.isTailscaleWatchdogEnabled) }
    var isAutoTasks by remember { mutableStateOf(prefs.isAutoTasksEnabled) }
    var isTsExp by remember { mutableStateOf(false) }
    
    var updateInfo by remember { mutableStateOf<Triple<String, String, String>?>(null) }
    var isCheckingUpdate by remember { mutableStateOf(false) }
    val logs by LogManager.logs.collectAsState()

    LaunchedEffect(Unit) { 
        updateManager.getStoreApps(object: UpdateManager.StoreCallback { 
            override fun onAppsLoaded(a: List<Pair<String, String>>) { storeApps = a }
            override fun onError(e: String) { LogManager.addLog("ERR: $e") } 
        }) 
    }

    Row(Modifier.fillMaxSize().background(DeepBlack).padding(start=235.dp)) {
        Column(Modifier.weight(0.6f).fillMaxHeight().padding(10.dp).verticalScroll(rememberScrollState()), Arrangement.spacedBy(8.dp)) {
            Text("v9.4.5 PRO MASTER HUB", color=Color.White, fontSize=30.sp, fontWeight=FontWeight.Bold)
            
            // --- UPDATE CARD ---
            Card(Modifier.fillMaxWidth(), colors = CardDefaults.cardColors(containerColor = Color.White.copy(0.05f))) {
                Column(Modifier.padding(12.dp), Arrangement.spacedBy(8.dp)) {
                    Row(verticalAlignment = Alignment.CenterVertically) {
                        Text("SİSTEM GÜNCELLEME", color = OmodaCyan, fontWeight = FontWeight.Bold, fontSize = 18.sp, modifier = Modifier.weight(1f))
                        if (isCheckingUpdate) CircularProgressIndicator(Modifier.size(16.dp), color = OmodaCyan, strokeWidth = 2.dp)
                    }
                    updateInfo?.let { (curr, new, url) ->
                        Text("Mevcut: $curr → Yeni: $new", color = Color.White, fontSize = 14.sp)
                        if (downloadProgress.containsKey("SYSTEM_UPDATE")) {
                            LinearProgressIndicator(downloadProgress["SYSTEM_UPDATE"]!! / 100f, Modifier.fillMaxWidth(), color = MatrixGreen)
                            Text("İndiriliyor: %${downloadProgress["SYSTEM_UPDATE"]}", color = MatrixGreen, fontSize = 12.sp)
                        } else {
                            Btn("GÜNCELLEMEYİ BAŞLAT", Modifier.fillMaxWidth(), MatrixGreen) {
                                updateManager.downloadAndInstall(url, new, object : UpdateManager.DownloadCallback() {
                                    override fun onProgress(p: Int) { downloadProgress = downloadProgress + ("SYSTEM_UPDATE" to p) }
                                    override fun onComplete(f: File) { downloadProgress = downloadProgress - "SYSTEM_UPDATE"; updateInfo = null }
                                    override fun onError(e: String) { downloadProgress = downloadProgress - "SYSTEM_UPDATE"; LogManager.addLog("ERR: $e") }
                                })
                            }
                        }
                    } ?: run {
                        Btn(if(isCheckingUpdate) "DENETLENİYOR..." else "GÜNCELLEMELERİ DENETLE", Modifier.fillMaxWidth()) {
                            isCheckingUpdate = true
                            updateManager.checkForUpdates(object : UpdateManager.UpdateCallback {
                                override fun onUpdateAvailable(curr: String, new: String, url: String) { updateInfo = Triple(curr, new, url); isCheckingUpdate = false }
                                override fun onNoUpdate() { LogManager.addLog("OTA: Sistem güncel."); isCheckingUpdate = false }
                                override fun onError(e: String) { LogManager.addLog("ERR: $e"); isCheckingUpdate = false }
                            })
                        }
                    }
                }
            }

            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("VARSAYILAN YAP", Modifier.weight(1f), Color(0xFF1B5E20)) { onAction("pm disable-user com.chery.launcher; cmd package set-home-activity $pkg/.ui.MainActivity") }
                Btn("ORİJİNALDUR", Modifier.weight(1f), Color(0xFFB71C1C)) { onAction("pm enable com.chery.launcher; cmd package set-home-activity com.chery.launcher/.LauncherActivity") }
            }
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("ADB TCP 5555", Modifier.weight(1f), Color(0xFFE65100)) { onAction("setprop service.adb.tcp.port 5555; stop adbd; start adbd") }
                Btn("ROOT TEST ET", Modifier.weight(1f), Color(0xFF311B92)) { onAction("su -c id") }
            }
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("AĞI TAMİR ET", Modifier.weight(1f), Color(0xFF1565C0)) { onAction("svc wifi disable; sleep 2; svc wifi enable") }
                Btn(if(prefs.isLeftBarHidden) "SOL AÇ" else "SOL GİZLE", Modifier.weight(1f)) { 
                    prefs.isLeftBarHidden = !prefs.isLeftBarHidden
                    val lo = if(prefs.isLeftBarHidden) -235 else 0
                    val ro = if(prefs.isRightBarHidden) -80 else 0
                    onAction("wm overscan $lo,0,$ro,0")
                }
            }
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn(if(prefs.isRightBarHidden) "SAĞ AÇ" else "SAĞ GİZLE", Modifier.weight(1f)) { 
                    prefs.isRightBarHidden = !prefs.isRightBarHidden
                    val lo = if(prefs.isLeftBarHidden) -235 else 0
                    val ro = if(prefs.isRightBarHidden) -80 else 0
                    onAction("wm overscan $lo,0,$ro,0")
                }
                Btn("OVERSCAN RESET", Modifier.weight(1f), Color.DarkGray) { 
                    prefs.isLeftBarHidden = false; prefs.isRightBarHidden = false
                    onAction("wm overscan 0,0,0,0") 
                }
            }
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("KLİMA (YFVE)", Modifier.weight(1f)) { onAction("am start -n com.yfve.hvac/.MainActivity") }
                Btn("ARAÇ VERİLERİ", Modifier.weight(1f), OmodaCyan) { onData() }
            }
            
            Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                Text("HUD BİLDİRİM", Modifier.weight(1f), color = Color.White, fontSize = 20.sp)
                Switch(checked = isHudEnabled, onCheckedChange = { isHudEnabled = it; prefs.isHudEnabled = it }, colors = SwitchDefaults.colors(checkedThumbColor = OmodaCyan))
            }

            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("AYARLARI YEDEKLE", Modifier.weight(1f), Color(0xFF455A64)) { prefs.backupSettings(context) }
                Btn("YEDEĞİ YÜKLE", Modifier.weight(1f), Color(0xFF37474F)) { prefs.restoreSettings(context) }
            }

            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("TAM REBOOT", Modifier.weight(1f), Color(0xFFB71C1C)) { onAction("reboot") }
                Btn("İZİN MÜFETTİŞİ", Modifier.weight(1f), Color(0xFFFF6F00)) { onAction("appops get $pkg SYSTEM_ALERT_WINDOW; settings get secure enabled_accessibility_services") }
            }
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("LAUNCHER SIFIRLA", Modifier.weight(1f), Color(0xFF1565C0)) { android.os.Process.killProcess(android.os.Process.myPid()) }
                Btn("HIZLI İZİN TAMİR", Modifier.weight(1f), MatrixGreen) { 
                    onAction("appops set $pkg SYSTEM_ALERT_WINDOW allow; settings put global enable_freeform_support 1; settings put global force_resizable_activities 1; settings put global hidden_api_policy 1; settings put secure accessibility_enabled 1; settings put secure enabled_accessibility_services $pkg/com.omoda5.launcher.services.CheryAccessibilityService")
                }
            }

            ExpandableSection("TAILSCALE VPN & UZAKTAN ERİŞİM", isTsExp, { isTsExp=!isTsExp }) {
                Row(Modifier.fillMaxWidth(), verticalAlignment = Alignment.CenterVertically) {
                    Text("VPN OTOMATİK BAĞLAN", Modifier.weight(1f), color = Color.White, fontSize = 18.sp)
                    Switch(checked = isTsWatchdog, onCheckedChange = { isTsWatchdog = it; prefs.isTailscaleWatchdogEnabled = it }, colors = SwitchDefaults.colors(checkedThumbColor = OmodaCyan))
                }
                Row(Modifier.fillMaxWidth().padding(top=5.dp), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                    Btn("TAILSCALE AÇ", Modifier.weight(1f)) { onAction("monkey -p com.tailscale.ipn -c android.intent.category.LAUNCHER 1") }
                    Btn("IP ADRESİ GÖSTER", Modifier.weight(1f), OmodaCyan) { onAction("ip addr show tailscale0") }
                }
            }

            ExpandableSection("OMODA 5 APP STORE", isStoreExp, { isStoreExp=!isStoreExp }) {
                storeApps.forEach { (n, u) ->
                    Row(Modifier.fillMaxWidth().padding(8.dp), verticalAlignment=Alignment.CenterVertically) {
                        Column(Modifier.weight(1f)) { Text(n, color=Color.White, fontSize=18.sp); if(downloadProgress.containsKey(n)) LinearProgressIndicator(downloadProgress[n]!!/100f, color=OmodaCyan) }
                        Btn("YÜKLE", Modifier.width(120.dp), OmodaCyan) { updateManager.downloadAndInstall(u, n, object: UpdateManager.DownloadCallback() { override fun onProgress(p: Int) { downloadProgress=downloadProgress+(n to p) }; override fun onComplete(f: File) { downloadProgress=downloadProgress-n }; override fun onError(e: String) { downloadProgress=downloadProgress-n } }) }
                    }
                }
            }
            Spacer(Modifier.height(50.dp))
        }

        Column(Modifier.weight(0.4f).fillMaxHeight().background(Color(0xFF0A0A0A)).padding(10.dp)) {
            var cmdText by remember { mutableStateOf("") }
            var filterMode by remember { mutableStateOf("TÜMÜ") } // TÜMÜ, VHAL, TUŞ, SİSTEM
            
            Text("DIAGNOSTIC DATA TRACKER (v10.5.0)", color=OmodaCyan, fontSize=16.sp, fontWeight=FontWeight.Bold)
            Spacer(Modifier.height(10.dp))
            
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                listOf("TÜMÜ", "VHAL", "TUŞ", "SİSTEM").forEach { mode ->
                    Btn(mode, Modifier.weight(1f).height(35.dp), if(filterMode == mode) OmodaCyan else Color.DarkGray) { filterMode = mode }
                }
            }
            Spacer(Modifier.height(10.dp))

            val filteredLogs = logs.filter { log ->
                when(filterMode) {
                    "VHAL" -> log.startsWith("[VHAL]")
                    "TUŞ" -> log.startsWith("[TUŞ")
                    "SİSTEM" -> !log.startsWith("[VHAL]") && !log.startsWith("[TUŞ")
                    else -> true
                }
            }

            LazyColumn(Modifier.weight(1f)) {
                items(filteredLogs.reversed()) { log ->
                    DataTrackBox(log)
                }
            }
            
            OutlinedTextField(value = cmdText, onValueChange = { cmdText = it }, modifier = Modifier.fillMaxWidth().padding(vertical = 5.dp), textStyle = TextStyle(color = MatrixGreen, fontSize = 14.sp, fontFamily = FontFamily.Monospace), placeholder = { Text("ADB KOMUTU GÖNDER...", color = MatrixGreen.copy(0.3f)) }, colors = OutlinedTextFieldDefaults.colors(focusedBorderColor = MatrixGreen, unfocusedBorderColor = Color.DarkGray))
            Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(5.dp)) {
                Btn("GÖNDER", Modifier.weight(1f).height(50.dp), MatrixGreen) { onAction(cmdText); cmdText = "" }
                Btn("GEÇMİŞİ SİL", Modifier.weight(1f).height(50.dp), Color(0xFFB71C1C)) { LogManager.clear() }
            }
        }
    }
}

@Composable
fun DataTrackBox(log: String) {
    val isVhal = log.startsWith("[VHAL]")
    val isKey = log.startsWith("[TUŞ")
    val color = if(isVhal) Color(0xFF00E676) else if(isKey) Color(0xFFFF9800) else Color(0xFF00B0FF)
    
    Surface(modifier = Modifier.fillMaxWidth().padding(vertical = 4.dp), color = Color.White.copy(0.05f), shape = RoundedCornerShape(8.dp), border = BorderStroke(1.dp, color.copy(0.3f))) {
        Column(Modifier.padding(10.dp)) {
            Text(if(isVhal) "VHAL SENSÖR GÜNCELLEMESİ" else if(isKey) "DONANIM TUŞU (HARDKEY)" else "SİSTEM LOG", color = color, fontSize = 10.sp, fontWeight = FontWeight.Bold)
            Spacer(Modifier.height(4.dp))
            Text(log.removePrefix("[VHAL]").removePrefix("[TUŞ_OEM]").removePrefix("[TUŞ_APP]").trim(), color = Color.White, fontSize = 13.sp, fontFamily = FontFamily.Monospace)
        }
    }
}

@Composable
fun ExpandableSection(t: String, e: Boolean, onT: ()->Unit, content: @Composable ColumnScope.() -> Unit) {
    Column(Modifier.fillMaxWidth().background(Color.White.copy(0.03f), RoundedCornerShape(8.dp))) {
        Row(Modifier.fillMaxWidth().clickable { onT() }.padding(12.dp), verticalAlignment=Alignment.CenterVertically) { Text(t, Modifier.weight(1f), color=OmodaCyan, fontSize=20.sp, fontWeight=FontWeight.Bold); Icon(if(e) Icons.Default.KeyboardArrowUp else Icons.Default.KeyboardArrowDown, null, tint=OmodaCyan) }
        if(e) Column(Modifier.padding(5.dp)) { content() }
    }
}
@Composable
fun Btn(t: String, m: Modifier=Modifier, c: Color=Color(0xFF151515), onClick: ()->Unit) {
    Button(onClick, m.height(60.dp), colors=ButtonDefaults.buttonColors(containerColor=c), shape=RoundedCornerShape(8.dp)) { Text(t, color=if(c==OmodaCyan || c==MatrixGreen) Color.Black else Color.White, fontSize=14.sp, fontWeight=FontWeight.Bold, textAlign=androidx.compose.ui.text.style.TextAlign.Center) }
}
