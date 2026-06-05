package com.omoda5.launcher.ui

import android.content.*
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.animation.*
import androidx.compose.foundation.*
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.lazy.LazyColumn
import androidx.compose.foundation.lazy.items
import androidx.compose.foundation.lazy.rememberLazyListState
import androidx.compose.foundation.shape.CircleShape
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.draw.clip
import androidx.compose.ui.graphics.Brush
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.text.font.FontFamily
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.text.style.TextAlign
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.common.*
import com.omoda5.launcher.media.MediaControllerViewModel
import com.omoda5.launcher.ui.theme.*
import kotlinx.coroutines.delay

/**
 * v11.0.0 ULTIMATE DIAGNOSTIC HUB
 * Canlı: Tuş logger, VHAL sensörler, Klima, Sinyal kolları, Medya durumu
 */
class DiagnosticLabActivity : ComponentActivity() {

    private val keyLog = mutableStateListOf<Pair<Long, Int>>() // timestamp + keycode
    private val rawLog = mutableStateListOf<String>()
    private var lastKey by mutableStateOf(-1)
    private var lastKeyName by mutableStateOf("—")
    private var leftSignal by mutableStateOf(false)
    private var rightSignal by mutableStateOf(false)

    private val keyReceiver = object : BroadcastReceiver() {
        override fun onReceive(ctx: Context?, intent: Intent?) {
            val code = when (intent?.action) {
                "com.omoda5.launcher.HARDKEY_EVENT" -> intent.getIntExtra("keyCode", -1)
                "com.saic.keyevent.hardkey.report" -> intent.getIntExtra("keyCode", -1)
                else -> -1
            }
            if (code < 0) return
            lastKey = code
            lastKeyName = keyName(code)
            keyLog.add(0, Pair(System.currentTimeMillis(), code))
            if (keyLog.size > 30) keyLog.removeAt(keyLog.lastIndex)

            // Sinyal kolu tespiti
            when (code) {
                280, 281 -> leftSignal = !leftSignal
                282, 283 -> rightSignal = !rightSignal
            }
        }
    }

    private val logReceiver = object : BroadcastReceiver() {
        override fun onReceive(ctx: Context?, intent: Intent?) {
            val log = intent?.getStringExtra("log") ?: return
            rawLog.add(0, log)
            if (rawLog.size > 60) rawLog.removeAt(rawLog.lastIndex)

            // Sinyal kolu VHAL logcat taraması
            if (log.contains("TURN", ignoreCase = true) || log.contains("0x11400405") || log.contains("BLINKER", ignoreCase = true)) {
                if (log.contains("LEFT", ignoreCase = true) || log.contains("SOL", ignoreCase = true)) leftSignal = log.contains("1")
                if (log.contains("RIGHT", ignoreCase = true) || log.contains("SAĞ", ignoreCase = true)) rightSignal = log.contains("1")
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        
        // Veri motorlarını başlat (MainActivity çalışmıyorsa da)
        com.omoda5.launcher.common.SystemBridgeManager.init(this)
        
        registerReceiver(keyReceiver,
            IntentFilter("com.omoda5.launcher.HARDKEY_EVENT").also {
                it.addAction("com.saic.keyevent.hardkey.report") // OEM direksiyon tuşları
            })
        registerReceiver(logReceiver,
            IntentFilter("com.omoda5.launcher.LOG_BROADCAST"))

        // VhalManager zaten MainActivity'den global olarak çalışıyor, 
        // manuel tetikleyiciyi sildik çünkü AdbBridgeService'in soketini kesip Android 10'da hataya yol açıyordu.

        setContent {
            Omoda5NextGenTheme {
                val vhal by VhalManager.vhalData.collectAsState()
                DiagnosticHub(vhal)
            }
        }
    }

    @Composable
    fun DiagnosticHub(vhal: Map<String, String>) {
        val rawVhal by VhalManager.rawVhalData.collectAsState()
        var ticker by remember { mutableStateOf(0) }
        LaunchedEffect(Unit) {
            while (true) { delay(1000); ticker++ }
        }

        Box(
            Modifier
                .fillMaxSize()
                .background(Color(0xFF050A10))
                .padding(start = 255.dp, end = 10.dp, top = 8.dp, bottom = 8.dp)
        ) {
            Column(Modifier.fillMaxSize()) {
                // ── BAŞLIK ──────────────────────────────────────────────
                Row(
                    Modifier.fillMaxWidth().padding(bottom = 8.dp),
                    verticalAlignment = Alignment.CenterVertically,
                    horizontalArrangement = Arrangement.SpaceBetween
                ) {
                    Text(
                        "⚡ OMODA5 DIAGNOSTIC HUB v11",
                        color = OmodaCyan,
                        fontSize = 18.sp,
                        fontWeight = FontWeight.ExtraBold,
                        fontFamily = FontFamily.Monospace
                    )
                    // Canlı saat
                    val time = remember(ticker) {
                        java.text.SimpleDateFormat("HH:mm:ss", java.util.Locale.getDefault())
                            .format(java.util.Date())
                    }
                    Text(time, color = Color.Gray, fontSize = 14.sp, fontFamily = FontFamily.Monospace)
                }

                Row(Modifier.fillMaxSize(), horizontalArrangement = Arrangement.spacedBy(8.dp)) {
                    // ── SOL PANEL ──────────────────────────────────
                    Column(
                        Modifier.weight(1f).fillMaxHeight().verticalScroll(rememberScrollState()),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        // Sinyal Kolları
                        SignalSection()

                        // Son basılan tuş (büyük göstergeli)
                        LastKeySection()

                        // VHAL Sensörler
                        VhalSection(vhal)

                        // Klima
                        HvacSection(vhal)

                        // İZİNLER — Canlı durum
                        PermissionSection()
                    }

                    // ── SAĞ PANEL ──────────────────────────────────
                    Column(
                        Modifier.weight(1f).fillMaxHeight().verticalScroll(rememberScrollState()),
                        verticalArrangement = Arrangement.spacedBy(8.dp)
                    ) {
                        // Tuş Geçmişi (canlı)
                        KeyLogSection()

                        // Medya durumu
                        MediaSection()

                        // MultiTask Motor Test
                        MultiTaskTestSection()

                        // VHAL Ham Veri Akışı
                        RawVhalSection(rawVhal)
                    }
                }
            }
        }
    }

    // ─── SİNYAL KOLLARI ─────────────────────────────────────────────────
    @Composable
    fun SignalSection() {
        Card(
            Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF0D1117)),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column(Modifier.padding(12.dp)) {
                SectionTitle("🔄 SİNYAL KOLLARI")
                Spacer(Modifier.height(8.dp))
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceEvenly) {
                    SignalIndicator("◄ SOL", leftSignal, Color(0xFFFF8C00))
                    SignalIndicator("SAĞ ►", rightSignal, Color(0xFFFF8C00))
                }
                Spacer(Modifier.height(8.dp))
                Text(
                    "Not: Sinyal kolu VHAL ID'leri henüz doğrulanmamış.\nGörünen sinyal durumu logcat taramasına göre.",
                    color = Color.Gray,
                    fontSize = 10.sp
                )
                // Manuel sniff butonu
                Button(
                    onClick = {
                        startService(Intent(this@DiagnosticLabActivity, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                            action = "ACTION_EXECUTE_SHELL"
                            putExtra("command",
                                "dumpsys car_service get-property-value | grep -iE 'turn|blinker|0x11400405|0x11400406|0x114004'")
                        })
                    },
                    modifier = Modifier.fillMaxWidth().padding(top = 4.dp).height(32.dp),
                    colors = ButtonDefaults.buttonColors(containerColor = Color(0xFF1A2A3A)),
                    contentPadding = PaddingValues(0.dp)
                ) {
                    Text("🔍 SİNYAL SNIFF", color = OmodaCyan, fontSize = 11.sp)
                }
            }
        }
    }

    // ─── SON BASIILAN TUŞ ────────────────────────────────────────────────
    @Composable
    fun LastKeySection() {
        AnimatedContent(targetState = lastKey, label = "lastKey") { key ->
            Card(
                Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = if (key >= 0) Color(0xFF001F0F) else Color(0xFF0D1117)
                ),
                border = if (key >= 0) BorderStroke(1.dp, MatrixGreen) else null,
                shape = RoundedCornerShape(12.dp)
            ) {
                Column(Modifier.padding(12.dp), horizontalAlignment = Alignment.CenterHorizontally) {
                    SectionTitle("⌨ SON BASIILAN TUŞ")
                    Spacer(Modifier.height(8.dp))
                    if (key >= 0) {
                        Text(lastKeyName, color = MatrixGreen, fontSize = 28.sp, fontWeight = FontWeight.ExtraBold)
                        Text("KeyCode: $key", color = Color.Gray, fontSize = 14.sp)
                    } else {
                        Text("Bekleniyor...", color = Color.DarkGray, fontSize = 20.sp)
                    }
                }
            }
        }
    }

    // ─── VHAL SENSÖRLER ──────────────────────────────────────────────────
    @Composable
    fun VhalSection(vhal: Map<String, String>) {
        Card(
            Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF0D1117)),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column(Modifier.padding(12.dp)) {
                SectionTitle("📡 VHAL SENSÖRLER")
                Spacer(Modifier.height(8.dp))
                val sensörler = listOf("HIZ", "DEVİR", "VİTES", "KONTAK", "FREN", "DIŞ ISI", "MENZİL", "YAKIT")
                sensörler.forEach { key ->
                    val value = vhal[key] ?: "—"
                    Row(
                        Modifier.fillMaxWidth().padding(vertical = 3.dp)
                            .background(Color.White.copy(0.04f), RoundedCornerShape(6.dp))
                            .padding(horizontal = 10.dp, vertical = 6.dp),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text(key, color = Color.Gray, fontSize = 13.sp)
                        Text(value, color = if (value != "—") Color.White else Color.DarkGray,
                            fontSize = 13.sp, fontWeight = FontWeight.Bold)
                    }
                }
                // Kapı durumları
                val kapilar = listOf("SOL ÖN", "SAĞ ÖN", "SOL ARKA", "SAĞ ARKA", "BAGAJ")
                kapilar.forEach { key ->
                    val value = vhal[key]
                    if (value != null) {
                        Row(
                            Modifier.fillMaxWidth().padding(vertical = 3.dp)
                                .background(
                                    if (value == "AÇIK") Color(0xFF1A0000) else Color.White.copy(0.04f),
                                    RoundedCornerShape(6.dp)
                                ).padding(horizontal = 10.dp, vertical = 6.dp),
                            horizontalArrangement = Arrangement.SpaceBetween
                        ) {
                            Text("🚪 $key", color = Color.Gray, fontSize = 13.sp)
                            Text(value, color = if (value == "AÇIK") Color.Red else Color(0xFF00FF41),
                                fontSize = 13.sp, fontWeight = FontWeight.Bold)
                        }
                    }
                }
            }
        }
    }

    // ─── KLİMA ───────────────────────────────────────────────────────────
    @Composable
    fun HvacSection(vhal: Map<String, String>) {
        Card(
            Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF0A0D1A)),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column(Modifier.padding(12.dp)) {
                SectionTitle("❄ KLİMA (HVAC)")
                Spacer(Modifier.height(8.dp))
                val hvacKeys = listOf("KLİMA", "AC GÜÇ", "FAN", "CAM")
                hvacKeys.forEach { key ->
                    val value = vhal[key] ?: "—"
                    Row(
                        Modifier.fillMaxWidth().padding(vertical = 3.dp)
                            .background(Color.White.copy(0.04f), RoundedCornerShape(6.dp))
                            .padding(horizontal = 10.dp, vertical = 6.dp),
                        horizontalArrangement = Arrangement.SpaceBetween
                    ) {
                        Text(key, color = Color(0xFF6699FF), fontSize = 13.sp)
                        Text(value,
                            color = when {
                                value.contains("AÇIK") -> OmodaCyan
                                value == "KAPALI" -> Color.Gray
                                value != "—" -> Color.White
                                else -> Color.DarkGray
                            },
                            fontSize = 13.sp, fontWeight = FontWeight.Bold
                        )
                    }
                }
            }
        }
    }

    // ─── TUŞ GEÇMİŞİ ─────────────────────────────────────────────────────
    @OptIn(ExperimentalLayoutApi::class)
    @Composable
    fun KeyLogSection() {
        Card(
            Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF060C06)),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column(Modifier.padding(12.dp).heightIn(min = 200.dp)) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                    SectionTitle("📋 TUŞ GEÇMİŞİ (Canlı)")
                    Text("${keyLog.size} kayıt", color = Color.Gray, fontSize = 11.sp)
                }
                Spacer(Modifier.height(6.dp))

                // Bilinen tuş grid'i
                val bilinen = mapOf(
                    3 to "HOME", 4 to "BACK", 24 to "VOL+", 25 to "VOL-",
                    87 to "NEXT", 88 to "PREV", 85 to "PLAY", 82 to "MENU",
                    280 to "SOL.SIG?", 281 to "SAĞ.SIG?", 282 to "HORN?", 283 to "?",
                    289 to "SRC", 290 to "CP", 291 to "CUST", 293 to "SIRI", 294 to "STAR",
                    295 to "OK", 296 to "?296"
                )
                FlowRow(Modifier.fillMaxWidth()) {
                    bilinen.forEach { (code, label) ->
                        val isActive = lastKey == code
                        Box(
                            Modifier
                                .padding(2.dp)
                                .clip(RoundedCornerShape(6.dp))
                                .background(if (isActive) MatrixGreen else Color(0xFF1A1A1A))
                                .padding(horizontal = 8.dp, vertical = 4.dp),
                            contentAlignment = Alignment.Center
                        ) {
                            Column(horizontalAlignment = Alignment.CenterHorizontally) {
                                Text(label, color = if (isActive) Color.Black else Color.White,
                                    fontSize = 10.sp, fontWeight = FontWeight.Bold, textAlign = TextAlign.Center)
                                Text("$code", color = if (isActive) Color.Black else Color.Gray, fontSize = 9.sp)
                            }
                        }
                    }
                }

                Divider(color = Color.White.copy(0.1f), modifier = Modifier.padding(vertical = 8.dp))

                // Zaman damgalı log
                LazyColumn(Modifier.weight(1f)) {
                    items(keyLog) { (ts, code) ->
                        val fmt = java.text.SimpleDateFormat("HH:mm:ss.SSS", java.util.Locale.getDefault())
                        Row(Modifier.fillMaxWidth().padding(vertical = 2.dp)) {
                            Text(fmt.format(java.util.Date(ts)), color = Color.DarkGray,
                                fontSize = 11.sp, fontFamily = FontFamily.Monospace,
                                modifier = Modifier.width(80.dp))
                            Text(
                                "[$code] ${keyName(code)}",
                                color = MatrixGreen,
                                fontSize = 11.sp,
                                fontFamily = FontFamily.Monospace,
                                fontWeight = FontWeight.Bold
                            )
                        }
                    }
                }
            }
        }
    }


    // ─── İZİN DURUMU PANELİ ────────────────────────────────────
    @Composable
    fun PermissionSection() {
        val ctx = androidx.compose.ui.platform.LocalContext.current as android.app.Activity
        val cr  = ctx.contentResolver
        val pkg = ctx.packageName

        var tick by remember { mutableStateOf(0) }
        LaunchedEffect(Unit) { while (true) { delay(3000); tick++ } }

        val notifListeners = remember(tick) {
            android.provider.Settings.Secure.getString(cr, "enabled_notification_listeners") ?: ""
        }
        val accEnabled = remember(tick) {
            android.provider.Settings.Secure.getInt(cr, "accessibility_enabled", 0)
        }
        val accServices = remember(tick) {
            android.provider.Settings.Secure.getString(cr, "enabled_accessibility_services") ?: ""
        }
        val alertWindow = remember(tick) {
            try {
                val ops = ctx.getSystemService(android.app.AppOpsManager::class.java)
                val mode = ops.checkOpNoThrow(
                    android.app.AppOpsManager.OPSTR_SYSTEM_ALERT_WINDOW,
                    ctx.applicationInfo.uid, pkg
                )
                mode == android.app.AppOpsManager.MODE_ALLOWED
            } catch (_: Exception) { false }
        }
        val writeSecure = remember(tick) {
            try {
                android.provider.Settings.Global.putString(cr, "__perm_test__", null)
                true
            } catch (_: Exception) { false }
        }
        val storageRead = remember(tick) {
            ctx.checkSelfPermission(android.Manifest.permission.READ_EXTERNAL_STORAGE) ==
                android.content.pm.PackageManager.PERMISSION_GRANTED
        }
        val hiddenApi = remember(tick) {
            android.provider.Settings.Global.getInt(cr, "hidden_api_policy", 0) >= 1
        }
        val freeform = remember(tick) {
            android.provider.Settings.Global.getInt(cr, "enable_freeform_support", 0) == 1
        }

        val notifTarget = "$pkg/com.omoda5.launcher.services.MediaNotificationListener"
        val accTarget   = "$pkg/com.omoda5.launcher.services.CheryAccessibilityService"

        val items = listOf(
            Triple("🔔 Notification",    notifListeners.contains(notifTarget), "settings put secure enabled_notification_listeners $notifTarget"),
            Triple("♿ Accessibility",   accEnabled == 1 && accServices.contains(accTarget), "settings put secure accessibility_enabled 1"),
            Triple("🪟 Alert Window",    alertWindow,  "appops set $pkg SYSTEM_ALERT_WINDOW allow"),
            Triple("🔐 Secure Settings", writeSecure,  "pm grant $pkg android.permission.WRITE_SECURE_SETTINGS"),
            Triple("💾 Storage",         storageRead,  "pm grant $pkg android.permission.READ_EXTERNAL_STORAGE"),
            Triple("🔓 Hidden API",      hiddenApi,    "settings put global hidden_api_policy 1"),
            Triple("✂️ Freeform",        freeform,     "settings put global enable_freeform_support 1")
        )

        Card(
            Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF0A1400)),
            shape = RoundedCornerShape(12.dp),
            border = BorderStroke(1.dp, Color(0xFF2A4A1A))
        ) {
            Column(Modifier.padding(12.dp)) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                    SectionTitle("🛡 İZİN DURUMU")
                    Text("${items.count { it.second }}/${items.size} aktif",
                        color = if (items.all { it.second }) MatrixGreen else Color(0xFFFF8C00),
                        fontSize = 11.sp, fontWeight = FontWeight.Bold)
                }
                Text("Her 3sn yenilenir. Tıklayarak enjekte et.",
                    color = Color.Gray, fontSize = 10.sp)
                Spacer(Modifier.height(8.dp))

                items.forEach { (label, granted, cmd) ->
                    Row(
                        Modifier
                            .fillMaxWidth()
                            .padding(vertical = 2.dp)
                            .background(
                                if (granted) Color(0xFF001F00) else Color(0xFF1F0000),
                                RoundedCornerShape(4.dp)
                            )
                            .clickable { if (!granted) exec(cmd) }
                            .padding(horizontal = 10.dp, vertical = 6.dp),
                        horizontalArrangement = Arrangement.SpaceBetween,
                        verticalAlignment = Alignment.CenterVertically
                    ) {
                        Text(label,
                            color = if (granted) Color(0xFFAAFFAA) else Color(0xFFFFAAAA),
                            fontSize = 12.sp, modifier = Modifier.weight(1f))
                        Box(
                            Modifier
                                .background(
                                    if (granted) Color(0xFF00CC44) else Color(0xFFCC0000),
                                    RoundedCornerShape(4.dp)
                                )
                                .padding(horizontal = 6.dp, vertical = 2.dp)
                        ) {
                            Text(if (granted) "✔" else "✕",
                                color = Color.White, fontSize = 11.sp, fontWeight = FontWeight.Bold)
                        }
                    }
                }

                Spacer(Modifier.height(8.dp))
                Button(
                    onClick = { items.filter { !it.second }.forEach { (_, _, cmd) -> exec(cmd) } },
                    modifier = Modifier.fillMaxWidth().height(34.dp),
                    colors = ButtonDefaults.buttonColors(
                        containerColor = if (items.all { it.second }) Color(0xFF1A3A1A) else Color(0xFF3A1A00)
                    ),
                    shape = RoundedCornerShape(6.dp),
                    contentPadding = PaddingValues(0.dp)
                ) {
                    Text(
                        if (items.all { it.second }) "✅ Tüm İzinler Tam"
                        else "⚡ EKSİK İZİNLERİ ENJEKTE ET",
                        color = if (items.all { it.second }) MatrixGreen else Color(0xFFFF8C00),
                        fontSize = 12.sp, fontWeight = FontWeight.ExtraBold
                    )
                }
            }
        }
    }


    // ─── MEDYA DURUMU ─────────────────────────────────────────────────────
    @Composable
    fun MediaSection() {
        val media by com.omoda5.launcher.common.SystemBridgeManager.mediaState.collectAsState()

        Card(
            Modifier.fillMaxWidth(),
            colors = CardDefaults.cardColors(containerColor = Color(0xFF0A0A1A)),
            shape = RoundedCornerShape(12.dp)
        ) {
            Column(Modifier.padding(12.dp)) {
                SectionTitle("🎵 MEDYA DURUMU")
                Spacer(Modifier.height(8.dp))
                listOf("ŞARKI" to media.title, "SANATÇI" to media.artist, "KAYNAK" to media.pkg).forEach { (k, v) ->
                    Row(Modifier.fillMaxWidth().padding(vertical = 3.dp)) {
                        Text("$k:", color = Color.Gray, fontSize = 12.sp, modifier = Modifier.width(70.dp))
                        Text(v.ifEmpty { "—" }, color = OmodaCyan, fontSize = 12.sp, fontWeight = FontWeight.Medium)
                    }
                }
                // globalController durumu
                val gCtrl = com.omoda5.launcher.services.MediaNotificationListener.globalController
                Spacer(Modifier.height(4.dp))
                Text(
                    "Controller: ${if (gCtrl != null) "✅ Bağlı (${gCtrl.packageName})" else "❌ Yok"}",
                    color = if (gCtrl != null) MatrixGreen else Color.Red,
                    fontSize = 11.sp
                )
            }
        }
    }

    // ─── YARDIMCILAR ──────────────────────────────────────────────────────
    @Composable
    fun MultiTaskTestSection() {
        val prefs = remember { PreferencesManager(this@DiagnosticLabActivity) }
        var currentEngine by remember { mutableStateOf(prefs.multitaskEngine) }

        Card(Modifier.fillMaxWidth(), colors = CardDefaults.cardColors(containerColor = Color(0xFF140028)), shape = RoundedCornerShape(12.dp), border = BorderStroke(1.dp, Color(0xFF3C0082))) {
            Column(Modifier.padding(12.dp)) {
                SectionTitle("🔀 MULTITASK MOTOR TESTİ")
                Text("Cihazına en uygun bölünmüş ekran motorunu test et.", color = Color.Gray, fontSize = 10.sp)
                Spacer(Modifier.height(8.dp))
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.spacedBy(4.dp)) {
                    listOf(0 to "Engine 0\n(Root/Stack)", 1 to "Engine 1\n(Adjacent)", 2 to "Engine 2\n(Task)", 3 to "Engine 3\n(Cascade)").forEach { (id, label) ->
                        val active = currentEngine == id
                        Button(
                            onClick = {
                                prefs.multitaskEngine = id
                                currentEngine = id
                                startActivity(Intent(this@DiagnosticLabActivity, MultiTaskActivity::class.java).apply {
                                    putExtra("engine_mode", id)
                                    putExtra("target_package", "com.spotify.music")
                                })
                            },
                            modifier = Modifier.weight(1f).height(44.dp),
                            colors = ButtonDefaults.buttonColors(containerColor = if (active) Color(0xFF5A00C8) else Color(0xFF28005A)),
                            shape = RoundedCornerShape(8.dp), contentPadding = PaddingValues(0.dp)
                        ) {
                            Text(label, color = if (active) Color.White else Color.LightGray, fontSize = 9.sp, textAlign = TextAlign.Center)
                        }
                    }
                }
            }
        }
    }

    @Composable
    fun RawVhalSection(rawVhal: Map<String, Any>) {
        Card(Modifier.fillMaxWidth(), colors = CardDefaults.cardColors(containerColor = Color(0xFF0A0F0A)), shape = RoundedCornerShape(12.dp)) {
            Column(Modifier.padding(12.dp)) {
                Row(Modifier.fillMaxWidth(), horizontalArrangement = Arrangement.SpaceBetween, verticalAlignment = Alignment.CenterVertically) {
                    SectionTitle("📡 CANLI VHAL AKIŞI (RAW)")
                    Text("${rawVhal.size} property", color = MatrixGreen, fontSize = 10.sp)
                }
                Spacer(Modifier.height(8.dp))
                Column(Modifier.fillMaxWidth().heightIn(max = 200.dp).verticalScroll(rememberScrollState())) {
                    rawVhal.filterKeys { it.startsWith("RAW_") }.forEach { (k, v) ->
                        Row(Modifier.fillMaxWidth().padding(vertical = 2.dp), horizontalArrangement = Arrangement.SpaceBetween) {
                            Text(k.removePrefix("RAW_"), color = Color(0xFFAAAAAA), fontSize = 11.sp, fontFamily = FontFamily.Monospace)
                            Text(v.toString(), color = OmodaCyan, fontSize = 11.sp, fontWeight = FontWeight.Bold, fontFamily = FontFamily.Monospace)
                        }
                    }
                }
            }
        }
    }

    @Composable
    fun SectionTitle(text: String) {
        Text(text, color = OmodaCyan, fontSize = 13.sp, fontWeight = FontWeight.ExtraBold,
            fontFamily = FontFamily.Monospace)
    }

    @Composable
    fun SignalIndicator(label: String, active: Boolean, color: Color) {
        val bg = if (active) color else Color(0xFF1A1A1A)
        Column(horizontalAlignment = Alignment.CenterHorizontally) {
            Box(
                Modifier.size(80.dp, 48.dp).clip(RoundedCornerShape(10.dp)).background(bg),
                contentAlignment = Alignment.Center
            ) {
                Text(label, color = if (active) Color.Black else Color.DarkGray,
                    fontSize = 16.sp, fontWeight = FontWeight.ExtraBold)
            }
            Text(if (active) "AÇIK" else "KAPALI",
                color = if (active) color else Color.DarkGray, fontSize = 11.sp)
        }
    }

    private fun keyName(code: Int) = when (code) {
        3 -> "HOME"; 4 -> "BACK"; 24 -> "VOL+"; 25 -> "VOL-"
        82 -> "MENU"; 85 -> "PLAY/PAUSE"; 86 -> "STOP"
        87 -> "NEXT_TRACK"; 88 -> "PREV_TRACK"
        126 -> "MEDIA_PLAY"; 127 -> "MEDIA_PAUSE"
        164 -> "MUTE"; 187 -> "RECENT"
        280 -> "KEY_280 (SOL SİNYAL?)"; 281 -> "KEY_281 (SAĞ SİNYAL?)"
        282 -> "KEY_282 (KORNA?)"; 283 -> "KEY_283"
        289 -> "SOURCE"; 290 -> "CARPLAY"; 291 -> "CUSTOM"
        293 -> "SIRI/VOICE"; 294 -> "STAR/HOME"; 295 -> "OK"
        296 -> "KEY_296"; 297 -> "KEY_297"
        else -> "KEY_$code"
    }

    /** AdbBridgeService üzerinden komut çalıştır */
    private fun exec(cmd: String) {
        if (cmd.isEmpty()) return
        // Birden fazla komut && ile ayrılmış olabilir
        cmd.split("&&").map { it.trim() }.filter { it.isNotEmpty() }.forEach { c ->
            startService(Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                action = "ACTION_EXECUTE_SHELL"
                putExtra("command", c)
            })
        }
    }

    override fun onDestroy() {
        super.onDestroy()
        try { unregisterReceiver(keyReceiver) } catch (_: Exception) {}
        try { unregisterReceiver(logReceiver) } catch (_: Exception) {}
    }
}
