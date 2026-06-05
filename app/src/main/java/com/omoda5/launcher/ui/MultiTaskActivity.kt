package com.omoda5.launcher.ui

import android.content.Intent
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.compose.foundation.background
import androidx.compose.foundation.clickable
import androidx.compose.foundation.gestures.detectDragGestures
import androidx.compose.foundation.layout.*
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.*
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.input.pointer.pointerInput
import androidx.compose.ui.platform.LocalConfiguration
import androidx.compose.ui.text.font.FontWeight
import androidx.compose.ui.unit.dp
import androidx.compose.ui.unit.sp
import com.omoda5.launcher.common.HudManager
import com.omoda5.launcher.common.LogManager
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.ui.theme.*

/**
 * v11.1.0 MULTITASK ENGINE
 * Harita: com.google.android.apps.maps
 * Desteklenen motorlar:
 *   0 → am stack resize (Semidrive root-kanıtlı yöntem)
 *   1 → FLAG_ACTIVITY_LAUNCH_ADJACENT (Android native)
 *   2 → am task resize (dynamic task ID ile)
 *   3 → Cascade (0→1→2 sırayla dene, başarısız ise sonraki)
 * PiP kaldırıldı — Semidrive windowingMode çalışmıyor.
 */
class MultiTaskActivity : ComponentActivity() {
    private lateinit var prefs: PreferencesManager

    // Harita paketi (Google Maps)
    private val MAP_PKG  = "com.google.android.apps.maps"

    // Stack ID'leri (Semidrive userdebug'da 1=fullscreen, 3=freeform/split-left, 4=split-right)
    private val STACK_LEFT  = 3
    private val STACK_RIGHT = 4

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        prefs = PreferencesManager(this)

        val engine = intent.getIntExtra("engine_mode", prefs.multitaskEngine)
        val target = intent.getStringExtra("target_package") ?: "com.chery.media"

        runEngine(engine, target)

        setContent { Omoda5NextGenTheme {
            Box(Modifier.fillMaxSize().background(Color.Transparent)) {
                MultiTaskUI(engine, target)
            }
        }}
    }

    override fun onNewIntent(intent: Intent) {
        super.onNewIntent(intent)
        setIntent(intent)
        val engine = intent.getIntExtra("engine_mode", prefs.multitaskEngine)
        val target = intent.getStringExtra("target_package") ?: "com.chery.media"
        runEngine(engine, target)
    }

    // ── ANA MOTOR SEÇİCİ ────────────────────────────────────────────────────
    private fun runEngine(engine: Int, target: String) {
        // Freeform + multi-window ön koşulları
        sh("settings put global enable_freeform_support 1")
        sh("settings put global force_resizable_activities 1")
        sh("settings put global enable_multi_window 1")

        val leftComp  = resolveComponent(target)
        val rightComp = resolveComponent(MAP_PKG)

        LogManager.addLog("MT[$engine]: sol=$leftComp sağ=$rightComp")
        HudManager.show("MULTITASK", "Motor $engine başlatılıyor...")

        when (engine) {
            0    -> engineStackResize(leftComp, rightComp)
            1    -> engineLaunchAdjacent(leftComp, rightComp)
            2    -> engineTaskResize(leftComp, rightComp)
            3    -> engineCascade(leftComp, rightComp)
            else -> engineStackResize(leftComp, rightComp)
        }
    }

    // ── ENGINE 0: am stack resize (Semidrive root-kanıtlı) ─────────────────
    private fun engineStackResize(left: String, right: String) {
        val splitX = (1920 * prefs.splitRatio).toInt()
        val leftPkg = left.split("/")[0]

        sh("am force-stop $leftPkg")
        sh("am force-stop $MAP_PKG")

        delay(500) { sh("am start -n $left") }
        delay(1200) { sh("am start -n $right") }
        delay(2500) {
            // 235=overscan sol offset, 1920x720 ekran
            sh("am stack resize $STACK_LEFT 235 0 $splitX 720")
            sh("am stack resize $STACK_RIGHT $splitX 0 1850 720")
            HudManager.show("STACK", "Boyutlandırma uygulandı ✅")
            LogManager.addLog("MT_STACK: $splitX px split")
        }
    }

    // ── ENGINE 1: FLAG_ACTIVITY_LAUNCH_ADJACENT (Android native) ───────────
    private fun engineLaunchAdjacent(left: String, right: String) {
        val leftPkg = left.split("/")[0]
        sh("am force-stop $leftPkg")
        sh("am force-stop $MAP_PKG")

        // 1. Önce sağ (harita) tam ekran
        delay(300) {
            try {
                val ri = Intent().apply {
                    val parts = right.split("/")
                    setClassName(parts[0], parts[1])
                    addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TOP)
                }
                startActivity(ri)
            } catch (e: Exception) { sh("am start -n $right") }
        }

        // 2. Sol uygulamayı LAUNCH_ADJACENT ile aç
        delay(1500) {
            try {
                val li = packageManager.getLaunchIntentForPackage(leftPkg)?.apply {
                    addFlags(
                        Intent.FLAG_ACTIVITY_NEW_TASK or
                        Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT or
                        Intent.FLAG_ACTIVITY_MULTIPLE_TASK
                    )
                }
                if (li != null) startActivity(li)
                else sh("am start --activity-launch-adjacent -n $left")
            } catch (e: Exception) {
                sh("am start --activity-launch-adjacent -n $left")
            }
            HudManager.show("ADJACENT", "İkili ekran deneniyor...")
        }
    }

    // ── ENGINE 2: am task resize (dynamic task ID) ──────────────────────────
    private fun engineTaskResize(left: String, right: String) {
        val splitX = (1920 * prefs.splitRatio).toInt()
        val leftPkg = left.split("/")[0]

        sh("am force-stop $leftPkg")
        sh("am force-stop $MAP_PKG")

        delay(400) { sh("am start -n $left") }
        delay(1200) { sh("am start -n $right") }

        delay(3000) {
            // Task ID bul ve resize et
            val scriptLeft = buildTaskResizeScript(leftPkg, STACK_LEFT, "235", "0", "$splitX", "720")
            val scriptRight = buildTaskResizeScript(MAP_PKG, STACK_RIGHT, "$splitX", "0", "1850", "720")
            sh(scriptLeft)
            sh(scriptRight)
            HudManager.show("TASK_RESIZE", "Görev boyutlandırma uygulandı")
        }
    }

    // ── ENGINE 3: Cascade — 0→2→1 sırayla dene ─────────────────────────────
    private fun engineCascade(left: String, right: String) {
        LogManager.addLog("MT_CASCADE: Sıralı motor denemesi başlatıldı")
        engineStackResize(left, right)
        // Stack resize 5sn sonra başarısız olursa task resize dene
        delay(5500) {
            val splitX = (1920 * prefs.splitRatio).toInt()
            val scriptLeft = buildTaskResizeScript(left.split("/")[0], STACK_LEFT, "235", "0", "$splitX", "720")
            sh(scriptLeft)
            val scriptRight = buildTaskResizeScript(MAP_PKG, STACK_RIGHT, "$splitX", "0", "1850", "720")
            sh(scriptRight)
            HudManager.show("CASCADE", "Yedek motor uygulandı ✅")
        }
    }

    // ── YARDIMCILAR ──────────────────────────────────────────────────────────

    private fun resolveComponent(pkg: String): String {
        if (pkg.contains("/")) return pkg
        return try {
            val intent = packageManager.getLaunchIntentForPackage(pkg)
            if (intent?.component != null)
                "${intent.component!!.packageName}/${intent.component!!.className}"
            else pkg
        } catch (e: Exception) { pkg }
    }

    private fun buildTaskResizeScript(pkg: String, stack: Int, l: String, t: String, r: String, b: String): String {
        // Android 10: dumpsys activity activities'ten TaskRecord ID bul
        return "ID=\$(dumpsys activity activities | grep 'TaskRecord' | grep '$pkg' | grep -o '#[0-9]*' | head -1 | sed 's/#//'); " +
               "if [ ! -z \"\$ID\" ]; then " +
               "am stack move-task \$ID $stack true; " +
               "am task resize \$ID $l $t $r $b; " +
               "fi"
    }

    private fun sh(cmd: String) {
        if (cmd.isEmpty()) return
        try {
            startService(Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                action = "ACTION_EXECUTE_SHELL"
                putExtra("command", cmd)
            })
        } catch (e: Exception) {
            LogManager.addLog("MT_ERR: $cmd → ${e.message}")
        }
    }

    private fun delay(ms: Long, block: () -> Unit) {
        Handler(Looper.getMainLooper()).postDelayed(block, ms)
    }

    // ── COMPOSE UI ────────────────────────────────────────────────────────────
    @Composable
    fun MultiTaskUI(engine: Int, target: String) {
        var ratio by remember { mutableStateOf(prefs.splitRatio) }
        val config = LocalConfiguration.current
        val screenWidth = config.screenWidthDp.dp

        Box(Modifier.fillMaxSize()) {
            // Sürüklenebilir bölüm çizgisi
            Box(
                Modifier
                    .fillMaxHeight()
                    .width(48.dp)
                    .offset(x = (screenWidth * ratio) - 24.dp)
                    .pointerInput(Unit) {
                        detectDragGestures(
                            onDragEnd = {
                                prefs.splitRatio = ratio
                                runEngine(engine, target)
                            },
                            onDrag = { change, dragAmount ->
                                change.consume()
                                val delta = dragAmount.x / (screenWidth.value * density)
                                ratio = (ratio + delta).coerceIn(0.2f, 0.8f)
                            }
                        )
                    }
            ) {
                // Görünür çizgi
                Box(
                    Modifier
                        .fillMaxHeight()
                        .width(3.dp)
                        .background(OmodaCyan.copy(0.7f))
                        .align(Alignment.Center)
                )
                // Sürükleme tutacağı
                Box(
                    Modifier
                        .size(32.dp)
                        .background(OmodaCyan, RoundedCornerShape(16.dp))
                        .align(Alignment.Center),
                    contentAlignment = Alignment.Center
                ) {
                    Text("⇔", color = Color.Black, fontSize = 14.sp, fontWeight = FontWeight.Black)
                }
            }

            // Kontrol çubuğu
            Row(
                Modifier
                    .align(Alignment.TopCenter)
                    .padding(top = 6.dp)
                    .background(Color.Black.copy(0.75f), RoundedCornerShape(20.dp))
                    .padding(horizontal = 16.dp, vertical = 6.dp),
                horizontalArrangement = Arrangement.spacedBy(16.dp),
                verticalAlignment = Alignment.CenterVertically
            ) {
                Text(
                    "⚡ ENG$engine | %${(ratio * 100).toInt()}",
                    color = OmodaCyan,
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold
                )
                Text(
                    "🗺 ${target.substringAfterLast(".")}",
                    color = Color.White,
                    fontSize = 11.sp
                )
                Text(
                    "✕ KAPAT",
                    modifier = Modifier.clickable { finish() },
                    color = Color(0xFFFF4444),
                    fontSize = 11.sp,
                    fontWeight = FontWeight.Bold
                )
            }
        }
    }
}
