@file:Suppress("SpellCheckingInspection")

package com.omoda5.launcher.ui

import android.app.ActivityOptions
import android.content.BroadcastReceiver
import android.content.Context
import android.content.Intent
import android.content.IntentFilter
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.graphics.Rect
import android.graphics.drawable.BitmapDrawable
import android.net.Uri
import android.os.Build
import android.os.Bundle
import android.os.Handler
import android.os.Looper
import android.provider.Settings
import android.util.Log
import android.view.GestureDetector
import android.view.MotionEvent
import android.view.View
import android.widget.Toast
import androidx.activity.result.ActivityResultLauncher
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AppCompatActivity
import androidx.core.content.ContextCompat
import androidx.core.net.toUri
import androidx.lifecycle.lifecycleScope
import androidx.viewpager2.widget.ViewPager2
import androidx.fragment.app.FragmentManager
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import com.omoda5.launcher.R
import com.omoda5.launcher.common.AppSelectionRepository
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.common.SplitScreenManager
import com.omoda5.launcher.databinding.ActivityMainBinding
import com.omoda5.launcher.model.LauncherItem
import com.omoda5.launcher.ui.adapters.LauncherAdapter

@Suppress("SpellCheckingInspection")
class MainActivity : AppCompatActivity() {

    private lateinit var binding: ActivityMainBinding
    private lateinit var prefs: PreferencesManager
    private lateinit var splitScreenManager: SplitScreenManager
    private lateinit var appSelectionRepository: AppSelectionRepository
    private lateinit var splitScreenViewModel: SplitScreenViewModel
    private lateinit var overlayPermissionLauncher: ActivityResultLauncher<Intent>
    private lateinit var gestureDetector: GestureDetector
    private val mainHandler = Handler(Looper.getMainLooper())

    private var wallpaperFiles: List<String> = emptyList()
    private var cachedInstalledApps: List<LauncherItem>? = null

    private val packageReceiver = object : BroadcastReceiver() {
        override fun onReceive(context: Context?, intent: Intent?) {
            Log.d(TAG, "Package change detected: ${intent?.action}")
            cachedInstalledApps = null // Force reload
            loadAppsAndSetupViewPager()
        }
    }

    companion object {
        private const val TAG = "MainActivity"
        private const val WALLPAPER_ASSET_DIR = "wallpapers"
        private const val SIDEBAR_WIDTH_DP = 172f
    }

    // ── Lifecycle ──────────────────────────────────────────────────────────────

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        binding = ActivityMainBinding.inflate(layoutInflater)
        setContentView(binding.root)

        prefs = PreferencesManager(this)
        splitScreenManager = SplitScreenManager(prefs)
        appSelectionRepository = AppSelectionRepository()
        splitScreenViewModel = SplitScreenViewModel(splitScreenManager, appSelectionRepository)

        // Start ADB service if enabled
        startAdbServiceIfEnabled()

        // gestureDetector = GestureDetector(this, SplitScreenGestureListener()) // Disabled
        binding.root.setOnTouchListener { _, _ -> false } // No gesture handling

        bindListeners()
        loadWallpaperFileList()
        setDefaultWallpaper()
        checkOverlayPermission()
        loadAppsAndSetupViewPager()
        updateSplitScreenToggleIcon()
        registerPackageReceiver()
    }

    private fun registerPackageReceiver() {
        val filter = IntentFilter().apply {
            addAction(Intent.ACTION_PACKAGE_ADDED)
            addAction(Intent.ACTION_PACKAGE_REMOVED)
            addAction(Intent.ACTION_PACKAGE_REPLACED)
            addDataScheme("package")
        }
        registerReceiver(packageReceiver, filter)
    }

    override fun onDestroy() {
        super.onDestroy()
        unregisterReceiver(packageReceiver)
    }

    private fun checkOverlayPermission() {
        // Sidebar kaldırıldığı için overlay iznine gerek kalmadı.
    }

    private fun startSidebarService() {
        // Sidebar kaldırıldı.
    }

    override fun onNewIntent(intent: Intent?) {
        super.onNewIntent(intent)
        // Reset to home state when activity is re-launched from Sidebar
        if (supportFragmentManager.backStackEntryCount > 0) {
            supportFragmentManager.popBackStack(null, FragmentManager.POP_BACK_STACK_INCLUSIVE)
            binding.fragmentContainer.visibility = View.GONE
        }
    }

    // ── Dinleyiciler ───────────────────────────────────────────────────────────

    private fun bindListeners() {
        binding.ilWallpaperChangeTrigger.setOnClickListener { cycleWallpaper() }

        binding.ivSplitScreenToggle.setOnClickListener { toggleSplitScreen() }

        binding.viewPager.registerOnPageChangeCallback(object : ViewPager2.OnPageChangeCallback() {
            override fun onPageSelected(position: Int) {
                updatePageIndicator(position)
            }
        })

        // Add click listeners to page indicators for navigation
        binding.indicatorDot1.setOnClickListener {
            binding.viewPager.setCurrentItem(0, true)
        }

        binding.indicatorDot2.setOnClickListener {
            binding.viewPager.setCurrentItem(1, true)
        }
    }

    // ── ViewPager kurulumu ─────────────────────────────────────────────────────

    private fun loadAppsAndSetupViewPager() {
        lifecycleScope.launch(Dispatchers.Default) {
            val apps = cachedInstalledApps ?: getInstalledApps().also { cachedInstalledApps = it }
            val pages = buildPages(apps)
            withContext(Dispatchers.Main) {
                applyPagesToViewPager(pages)
            }
        }
    }

    private fun buildPages(installedApps: List<LauncherItem>): List<List<LauncherItem>> {
        val page1Items = listOf(
            LauncherItem(
                id = "media", title = "Medya",
                iconResId = R.drawable.launcher_media_icon_bg,
                packageName = "com.chery.media",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.media")
            ),
            LauncherItem(
                id = "phone", title = "Telefon",
                iconResId = R.drawable.launcher_phone_icon_bg,
                packageName = "com.chery.dialer",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.dialer")
            ),
            LauncherItem(
                id = "settings", title = "Yerel Ayarlar",
                iconResId = R.drawable.launcher_system_setting_icon_bg,
                packageName = "com.chery.settings",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.settings")
            ),
            LauncherItem(
                id = "vehicle", title = "Araba Ayarlari",
                iconResId = R.drawable.launcher_vehicle_icon_bg,
                packageName = "com.chery.hvac",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.hvac")
            ),
            LauncherItem(
                id = "pictures", title = "Gorseller",
                iconResId = R.drawable.launcher_picture_icon_bg,
                packageName = "com.chery.media",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.media")
            ),
            LauncherItem(
                id = "video", title = "Video",
                iconResId = R.drawable.launcher_video_icon_bg,
                packageName = "com.chery.media",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.media")
            ),
            LauncherItem(
                id = "manual", title = "Elektronik Kullanım Kılavuzu",
                iconResId = R.drawable.launcher_manual_icon_bg,
                packageName = "com.chery.help",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.help")
            ),
            LauncherItem(
                id = "aa", title = "Android Auto",
                iconResId = R.drawable.launcher_android_auto_icon_bg,
                packageName = "com.chery.androidauto",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.androidauto")
            ),
            LauncherItem(
                id = "carplay", title = "Apple CarPlay",
                iconResId = R.drawable.launcher_carplay_icon_bg,
                isDisabled = true
            ),
            LauncherItem(
                id = "update", title = "Sistem güncellemesi",
                iconResId = R.drawable.launcher_update_icon_bg,
                packageName = "com.chery.upgrade",
                launchIntent = packageManager.getLaunchIntentForPackage("com.chery.upgrade")
            )
        )

        val favoriteIds = prefs.favoriteApps
        val appsWithFavoriteStatus = installedApps
            .map { app -> app.copy(isFavorite = favoriteIds.contains(app.id)) }

        val favoriteApps = appsWithFavoriteStatus.filter { it.isFavorite }.sortedBy { it.title.lowercase() }
        val normalApps   = appsWithFavoriteStatus.filterNot { it.isFavorite }.sortedBy { it.title.lowercase() }

        // Second page custom items
        val secondPageItems = mutableListOf(
            LauncherItem(id = "vehicle_data", title = "Arac Verileri", iconResId = R.drawable.launcher_vehicle_icon_bg),
            LauncherItem(id = "launcher_settings", title = "Launcher Ayarları", iconResId = R.drawable.launcher_system_setting_icon_bg)
        )

        val pages = mutableListOf(page1Items)
        val allOtherApps = secondPageItems + favoriteApps + normalApps
        pages.addAll(allOtherApps.chunked(10))
        return pages
    }

    private fun applyPagesToViewPager(pages: List<List<LauncherItem>>) {
        binding.viewPager.adapter = LauncherAdapter(
            pages,
            onItemClick     = { item: LauncherItem -> launchItem(item) },
            onItemLongClick = { item: LauncherItem -> showAppSelectionDialog(item) },
            getBadgeForItem = { item ->
                val (left, right) = splitScreenViewModel.getTempSelectedApps()
                when {
                    left?.id == item.id -> "L"
                    right?.id == item.id -> "R"
                    else -> null
                }
            }
        )
        updatePageIndicator(0)
    }

    // ── Favori yönetimi ────────────────────────────────────────────────────────

    private fun toggleFavorite(item: LauncherItem) {
        if (!item.id.contains(".")) return
        val favorites = prefs.favoriteApps.toMutableSet()
        if (favorites.remove(item.id)) showToast("${item.title} favorilerden cikariildi.")
        else { favorites.add(item.id); showToast("${item.title} favorilere eklendi.") }
        prefs.favoriteApps = favorites
        loadAppsAndSetupViewPager()
    }

    // ── Uygulama listesi ───────────────────────────────────────────────────────

    private fun getInstalledApps(): List<LauncherItem> {
        val pm = packageManager
        val intent = Intent(Intent.ACTION_MAIN, null).apply { addCategory(Intent.CATEGORY_LAUNCHER) }
        return pm.queryIntentActivities(intent, 0)
            .filterNot { it.activityInfo.packageName == packageName }
            .map { info ->
                LauncherItem(
                    id           = info.activityInfo.packageName,
                    title        = info.loadLabel(pm).toString(),
                    iconDrawable = info.loadIcon(pm),
                    launchIntent = pm.getLaunchIntentForPackage(info.activityInfo.packageName)
                )
            }
            .sortedBy { it.title.lowercase() }
    }

    // ── Öğe açma ──────────────────────────────────────────────────────────────

    private fun launchItem(item: LauncherItem) {
        when {
            item.id == "vehicle_data" -> {
                showVehicleDataFragment()
            }
            item.id == "launcher_settings" -> {
                startActivity(Intent(this, LauncherSettingsActivity::class.java))
            }
            item.launchIntent != null -> {
                try { launchIntoWorkArea(item.launchIntent) }
                catch (e: Exception) {
                    Log.e(TAG, "launchIntent basarisiz: ${item.id}", e)
                    showToast("Uygulama baslatilamamdi.")
                }
            }
            item.intentAction != null -> {
                try {
                    val i = Intent(item.intentAction).also { intent ->
                        item.category?.let { intent.addCategory(it) }
                    }
                    if (i.resolveActivity(packageManager) != null) launchIntoWorkArea(i)
                    else showToast("${item.title} bulunamadi.")
                } catch (e: Exception) {
                    Log.e(TAG, "intentAction basarisiz: ${item.intentAction}", e)
                    showToast("Hata: ${e.message}")
                }
            }
            else -> showToast("${item.title} simule edildi.")
        }
    }

    // ── launchIntoWorkArea — Fixed for stability in v5 ───────────────────────────

    private fun launchIntoWorkArea(intent: Intent) {
        // v5 Update: Multi-window constraints are removed to ensure system apps open correctly.
        // Some car units reject bounds/multi-window modes, causing the app to not open at all.
        launchFullscreen(intent)
    }

    /** Sidebar genişliği her zaman sabit dp değerinden hesaplanır. */
    private fun getWorkAreaRect(): Rect {
        val dm = resources.displayMetrics
        val screenW = dm.widthPixels
        val screenH = dm.heightPixels
        val sidebarPx = (SIDEBAR_WIDTH_DP * dm.density).toInt()
        return Rect(sidebarPx, 0, screenW, screenH)
    }

    private fun tryLaunchWithWindowingMode(intent: Intent, bounds: Rect): Boolean {
        return try {
            val options = ActivityOptions.makeBasic()
            ActivityOptions::class.java
                .getMethod("setLaunchWindowingMode", Int::class.java)
                .invoke(options, 3) // WINDOWING_MODE_MULTI_WINDOW = 3
            options.setLaunchBounds(bounds)
            startActivity(intent, options.toBundle())
            Log.d(TAG, "Yontem 1 basarili: Windowing mode")
            true
        } catch (e: Exception) {
            Log.w(TAG, "Yontem 1 basarisiz: ${e.message}")
            false
        }
    }

    private fun tryLaunchWithBounds(intent: Intent, bounds: Rect): Boolean {
        return try {
            startActivity(intent, ActivityOptions.makeBasic().setLaunchBounds(bounds).toBundle())
            Log.d(TAG, "Yontem 2 basarili: Bounds")
            true
        } catch (e: Exception) {
            Log.w(TAG, "Yontem 2 basarisiz: ${e.message}")
            false
        }
    }

    private fun launchFullscreen(intent: Intent) {
        try {
            startActivity(intent)
            Log.d(TAG, "Yontem 3: Tam ekran (fallback)")
        } catch (e: Exception) {
            Log.e(TAG, "Uygulama acilamadi: ${e.message}")
            showToast("Uygulama baslatilamamdi.")
        }
    }

    // ── Sayfa göstergesi ───────────────────────────────────────────────────────

    private fun updatePageIndicator(position: Int) {
        binding.indicatorDot1.alpha = if (position == 0) 1.0f else 0.3f
        binding.indicatorDot2.alpha = if (position == 1) 1.0f else 0.3f
    }

    // ── Duvar kağıdı ───────────────────────────────────────────────────────────

    private fun loadWallpaperFileList() {
        wallpaperFiles = try {
            assets.list(WALLPAPER_ASSET_DIR)
                ?.filter { it.endsWith(".jpeg") || it.endsWith(".jpg") || it.endsWith(".png") }
                ?.sorted()
                ?: emptyList()
        } catch (e: Exception) {
            Log.e(TAG, "Duvar kagidi listesi okunamadi", e)
            emptyList()
        }
    }

    private fun setDefaultWallpaper() {
        if (!prefs.isFirstRun) return
        Thread {
            try {
                binding.root.setBackgroundResource(R.mipmap.bg_1)
                prefs.isFirstRun = false
            } catch (e: Exception) {
                Log.e(TAG, "Varsayilan duvar kagidi atanamadi", e)
            }
        }.start()
    }

    private fun cycleWallpaper() {
        if (wallpaperFiles.isEmpty()) {
            showToast("Duvar kagidi bulunamadi.")
            return
        }
        
        lifecycleScope.launch(Dispatchers.IO) {
            try {
                val nextIndex = (prefs.wallpaperIndex + 1) % wallpaperFiles.size
                val fileName = wallpaperFiles[nextIndex]
                
                val dm = resources.displayMetrics
                val bitmap = assets.open("$WALLPAPER_ASSET_DIR/$fileName").use { stream ->
                    decodeSampledBitmap(stream, dm.widthPixels / 2, dm.heightPixels / 2)
                }

                withContext(Dispatchers.Main) {
                    binding.root.background = BitmapDrawable(resources, bitmap)
                    showToast("Duvar kagidi: ${nextIndex + 1} / ${wallpaperFiles.size}")
                }
                prefs.wallpaperIndex = nextIndex
            } catch (e: Exception) {
                Log.e(TAG, "Duvar kagidi degistirilemedi", e)
                withContext(Dispatchers.Main) {
                    showToast("Hata: ${e.message}")
                }
            }
        }
    }

    private fun decodeSampledBitmap(stream: java.io.InputStream, reqW: Int, reqH: Int): Bitmap {
        val opts = BitmapFactory.Options().apply { inJustDecodeBounds = true }
        stream.mark(stream.available().coerceAtLeast(1))
        BitmapFactory.decodeStream(stream, null, opts)
        stream.reset()
        var sample = 1
        val h = opts.outHeight
        val w = opts.outWidth
        if (h > reqH || w > reqW) {
            val halfH = h / 2; val halfW = w / 2
            while (halfH / sample >= reqH && halfW / sample >= reqW) sample *= 2
        }
        opts.inSampleSize = sample
        opts.inJustDecodeBounds = false
        return BitmapFactory.decodeStream(stream, null, opts)
            ?: throw IllegalStateException("Bitmap decode basarisiz")
    }

    // ── Yardımcı ───────────────────────────────────────────────────────────────

    private fun showToast(message: String) =
        Toast.makeText(this, message, Toast.LENGTH_SHORT).show()

    private fun isKnownIncompatibleForSplit(packageName: String): Boolean {
        return prefs.splitIncompatibleApps.contains(packageName)
    }

    private fun toggleSplitScreen() {
        val (tempLeft, tempRight) = splitScreenViewModel.getTempSelectedApps()
        if (tempLeft != null || tempRight != null) {
            splitScreenViewModel.confirmSelections()
        }

        val (leftPkg, rightPkg) = splitScreenManager.getSelectedApps()
        if (leftPkg.isNullOrBlank() || rightPkg.isNullOrBlank()) {
            showToast("Split-screen için sol ve sağ uygulamayı seçin.")
            return
        }
        if (leftPkg == rightPkg) {
            showToast("Aynı uygulama iki panelde açılamaz.")
            return
        }
        
        // SplitScreenActivity yerine doğrudan buradan başlatıyoruz
        launchDirectSplitScreen(leftPkg, rightPkg)
    }

    private fun launchDirectSplitScreen(leftPkg: String, rightPkg: String) {
        try {
            Log.d(TAG, "Split screen başlatılıyor: $leftPkg | $rightPkg")
            
            // Sol uygulama
            launchToSide(leftPkg, true)
            
            // Sağ uygulama
            launchToSide(rightPkg, false)
            
            showToast("Split ekran başlatıldı.")
        } catch (e: Exception) {
            Log.e(TAG, "Split screen başlatılamadı", e)
            showToast("Split ekran hatası.")
        }
    }

    private fun launchToSide(packageName: String, left: Boolean) {
        val launchIntent = packageManager.getLaunchIntentForPackage(packageName) ?: return
        val options = ActivityOptions.makeBasic()
        val dm = resources.displayMetrics
        val w = dm.widthPixels
        val h = dm.heightPixels
        val splitX = (w * prefs.splitRatio.coerceIn(0.3f, 0.7f)).toInt()
        
        // Bounds ayarı
        val bounds = if (left) {
            Rect(0, 0, splitX, h)
        } else {
            Rect(splitX, 0, w, h)
        }
        
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            options.launchBounds = bounds
        }

        try {
            // WINDOWING_MODE_MULTI_WINDOW = 3
            val setLaunchWindowingModeMethod = ActivityOptions::class.java
                .getMethod("setLaunchWindowingMode", Int::class.javaPrimitiveType)
            setLaunchWindowingModeMethod.invoke(options, 3)
        } catch (e: Exception) {
            Log.w(TAG, "setLaunchWindowingMode failed: ${e.message}")
        }

        launchIntent.addFlags(
            Intent.FLAG_ACTIVITY_NEW_TASK or
            Intent.FLAG_ACTIVITY_MULTIPLE_TASK or
            Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT
        )
        
        startActivity(launchIntent, options.toBundle())
    }

    private fun updateSplitScreenToggleIcon() {
        val isActive = splitScreenManager.isActive
        binding.ivSplitScreenToggle.alpha = if (isActive) 1.0f else 0.8f
        // Change icon or tint to show active state
    }

    private fun launchSplitScreen() {
        // Bu metod artık kullanılmıyor, toggleSplitScreen doğrudan launchDirectSplitScreen çağırıyor
    }

    private fun startSplitWithPrimary(primaryPackage: String, primarySide: String) {
        val current = splitScreenManager.getSelectedApps()
        val defaultLeft = splitScreenManager.defaultLeftAppPackage
        val defaultRight = splitScreenManager.defaultRightAppPackage

        val (left, right) = if (primarySide == "left") {
            val companion = defaultRight ?: current.second
            Pair(primaryPackage, companion)
        } else {
            val companion = defaultLeft ?: current.first
            Pair(companion, primaryPackage)
        }

        if (left.isNullOrBlank() || right.isNullOrBlank()) {
            showToast("Diğer panel için varsayılan uygulama atanmadı.")
            return
        }
        if (left == right) {
            showToast("Aynı uygulama iki panelde açılamaz.")
            return
        }

        splitScreenManager.setSelectedApps(left, right)
        updateSplitScreenToggleIcon()
        launchDirectSplitScreen(left ?: "", right ?: "")
    }

    private fun showAppSelectionDialog(item: LauncherItem) {
        val targetPackage = item.packageName ?: item.id.takeIf { it.contains(".") } ?: return
        val dialog = AppSelectionDialog(
            app = item,
            onLeftSelected = {
                if (isKnownIncompatibleForSplit(targetPackage)) {
                    showToast("Bu uygulama split ekranı desteklemiyor.")
                    return@AppSelectionDialog
                }
                val (_, right) = splitScreenViewModel.getSelectedApps()
                if (right == targetPackage) {
                    showToast("Aynı uygulama sol ve sağ için seçilemez.")
                    return@AppSelectionDialog
                }
                splitScreenViewModel.setTempLeftApp(item)
                splitScreenViewModel.setSelectedApps(targetPackage, right)
                showToast("${item.title} sol taraf için seçildi")
                loadAppsAndSetupViewPager()
            },
            onRightSelected = {
                if (isKnownIncompatibleForSplit(targetPackage)) {
                    showToast("Bu uygulama split ekranı desteklemiyor.")
                    return@AppSelectionDialog
                }
                val (left, _) = splitScreenViewModel.getSelectedApps()
                if (left == targetPackage) {
                    showToast("Aynı uygulama sol ve sağ için seçilemez.")
                    return@AppSelectionDialog
                }
                splitScreenViewModel.setTempRightApp(item)
                splitScreenViewModel.setSelectedApps(left, targetPackage)
                showToast("${item.title} sağ taraf için seçildi")
                loadAppsAndSetupViewPager()
            },
            onSetDefaultLeft = {
                splitScreenManager.defaultLeftAppPackage = targetPackage
                splitScreenManager.setSelectedApps(targetPackage, splitScreenManager.getSelectedApps().second)
                showToast("${item.title} sol varsayılan olarak kaydedildi")
            },
            onSetDefaultRight = {
                splitScreenManager.defaultRightAppPackage = targetPackage
                splitScreenManager.setSelectedApps(splitScreenManager.getSelectedApps().first, targetPackage)
                showToast("${item.title} sağ varsayılan olarak kaydedildi")
            },
            onStartSplitLeft = {
                if (isKnownIncompatibleForSplit(targetPackage)) {
                    showToast("Bu uygulama split ekranı desteklemiyor.")
                    return@AppSelectionDialog
                }
                startSplitWithPrimary(targetPackage, "left")
            },
            onStartSplitRight = {
                if (isKnownIncompatibleForSplit(targetPackage)) {
                    showToast("Bu uygulama split ekranı desteklemiyor.")
                    return@AppSelectionDialog
                }
                startSplitWithPrimary(targetPackage, "right")
            },
        )
        dialog.show(supportFragmentManager, "AppSelectionDialog")
    }

    private fun showVehicleDataFragment() {
        binding.fragmentContainer.visibility = View.VISIBLE
        supportFragmentManager.beginTransaction()
            .replace(R.id.fragment_container, VehicleDataFragment())
            .addToBackStack(null)
            .commit()
    }

    @Deprecated("Deprecated in Java")
    override fun onBackPressed() {
        if (supportFragmentManager.backStackEntryCount > 0) {
            supportFragmentManager.popBackStack()
            mainHandler.postDelayed({
                if (supportFragmentManager.backStackEntryCount == 0) {
                    binding.fragmentContainer.visibility = View.GONE
                }
            }, 100)
        }
    }

    // Gesture detection disabled to simplify build
    // private inner class SplitScreenGestureListener : GestureDetector.OnGestureListener {
    //     override fun onDown(e: MotionEvent): Boolean = false
    //     override fun onShowPress(e: MotionEvent) {}
    //     override fun onSingleTapUp(e: MotionEvent): Boolean = false
    //     override fun onScroll(
    //         e1: MotionEvent, e2: MotionEvent,
    //         distanceX: Float, distanceY: Float
    //     ): Boolean = false
    //
    //     override fun onLongPress(e: MotionEvent) {}
    //     override fun onFling(
    //         e1: MotionEvent, e2: MotionEvent,
    //         velocityX: Float, velocityY: Float
    //     ): Boolean {
    //         val deltaX = e2.x - e1.x
    //         val deltaY = e2.y - e1.y
    //         if (Math.abs(deltaX) > Math.abs(deltaY) && Math.abs(deltaX) > 100 && Math.abs(velocityX) > 100) {
    //             if (deltaX < 0) {
    //                 if (!splitScreenManager.isActive) {
    //                     toggleSplitScreen()
    //                 }
    //             }
    //         }
    //         return true
    //     }
    // }

    private fun startAdbServiceIfEnabled() {
        if (prefs.isAdbEnabled) {
            val intent = Intent(this, com.omoda5.launcher.service.AdbBridgeService::class.java).apply {
                action = com.omoda5.launcher.service.AdbBridgeService.ACTION_START_ADB
            }
            ContextCompat.startForegroundService(this, intent)
            Log.d(TAG, "ADB service started on app launch")
        }
    }

}