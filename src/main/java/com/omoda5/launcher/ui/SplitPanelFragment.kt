package com.omoda5.launcher.ui

import android.app.ActivityOptions
import android.content.Intent
import android.graphics.Rect
import android.os.Build
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ArrayAdapter
import android.widget.Toast
import androidx.fragment.app.Fragment
import com.omoda5.launcher.R
import com.omoda5.launcher.common.PreferencesManager
import com.omoda5.launcher.common.SplitScreenManager
import com.omoda5.launcher.databinding.FragmentSplitPanelBinding

class SplitPanelFragment : Fragment() {

    private var _binding: FragmentSplitPanelBinding? = null
    private val binding get() = _binding!!
    private lateinit var prefs: PreferencesManager
    private lateinit var splitScreenManager: SplitScreenManager

    private var appPackage: String? = null
    private var side: String = ""
    private var selectedPackage: String? = null
    private var selectedHistoryPackages: List<String> = emptyList()
    private var autoLaunchAttempted = false

    companion object {
        private const val ARG_APP_PACKAGE = "app_package"
        private const val ARG_SIDE = "side"

        fun newInstance(appPackage: String?, side: String): SplitPanelFragment {
            return SplitPanelFragment().apply {
                arguments = Bundle().apply {
                    putString(ARG_APP_PACKAGE, appPackage)
                    putString(ARG_SIDE, side)
                }
            }
        }
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        arguments?.let {
            appPackage = it.getString(ARG_APP_PACKAGE)
            side = it.getString(ARG_SIDE) ?: ""
        }
        prefs = PreferencesManager(requireContext())
        splitScreenManager = SplitScreenManager(prefs)
    }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentSplitPanelBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        selectedPackage = appPackage
        renderSelections()
        if (!autoLaunchAttempted && selectedPackage != null) {
            autoLaunchAttempted = true
            binding.root.post { selectedPackage?.let { launchAppInPanel(it, showErrors = false) } }
        }
    }

    private fun renderSelections() {
        selectedHistoryPackages = when (side) {
            "left" -> splitScreenManager.getLeftHistory()
            "right" -> splitScreenManager.getRightHistory()
            else -> emptyList()
        }.sortedBy { getAppName(it).lowercase() }

        if (selectedPackage == null && selectedHistoryPackages.isNotEmpty()) {
            selectedPackage = selectedHistoryPackages.first()
        }

        updateCurrentAppText()
        bindHistoryList()
        bindButtons()
    }

    private fun updateCurrentAppText() {
        binding.tvAppName.text = selectedPackage?.let { getAppName(it) } ?: "$side taraf için uygulama seçin"
    }

    private fun bindHistoryList() {
        val labels = selectedHistoryPackages.map { pkg ->
            if (pkg == selectedPackage) "• ${getAppName(pkg)}" else getAppName(pkg)
        }
        binding.listSelectedApps.adapter = ArrayAdapter(
            requireContext(),
            android.R.layout.simple_list_item_1,
            labels
        )
        binding.listSelectedApps.setOnItemClickListener { _, _, position, _ ->
            selectedPackage = selectedHistoryPackages[position]
            updateCurrentAppText()
            bindHistoryList()
        }
    }

    private fun bindButtons() {
        binding.btnLaunch.visibility = if (selectedPackage == null) View.GONE else View.VISIBLE
        binding.btnRemove.visibility = if (selectedPackage == null) View.GONE else View.VISIBLE
        binding.btnLaunch.setOnClickListener {
            selectedPackage?.let { launchAppInPanel(it) }
        }
        binding.btnRemove.setOnClickListener {
            selectedPackage?.let { removeSelection(it) }
        }
    }

    private fun removeSelection(packageName: String) {
        if (side == "left") splitScreenManager.removeFromLeftHistory(packageName)
        if (side == "right") splitScreenManager.removeFromRightHistory(packageName)
        selectedPackage = null
        renderSelections()
    }

    private fun getAppName(packageName: String): String {
        return try {
            val pm = requireContext().packageManager
            val appInfo = pm.getApplicationInfo(packageName, 0)
            pm.getApplicationLabel(appInfo).toString()
        } catch (e: Exception) {
            packageName
        }
    }

    private fun launchAppInPanel(packageName: String, showErrors: Boolean = true) {
        if (prefs.splitIncompatibleApps.contains(packageName)) {
            if (showErrors) showToast("Bu uygulama split alanda açılamıyor.")
            return
        }
        try {
            val pm = requireContext().packageManager
            val intent = pm.getLaunchIntentForPackage(packageName)
            if (intent == null) {
                if (showErrors) showToast("Uygulama başlatılamadı.")
                return
            }
            val bounds = buildPanelBounds()
            val options = ActivityOptions.makeBasic()
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
                options.launchBounds = bounds
            }
            try {
                ActivityOptions::class.java
                    .getMethod("setLaunchWindowingMode", Int::class.javaPrimitiveType)
                    .invoke(options, if (side == "right") 4 else 3)
            } catch (_: Exception) {
            }
            intent.addFlags(
                Intent.FLAG_ACTIVITY_NEW_TASK or
                    Intent.FLAG_ACTIVITY_MULTIPLE_TASK or
                    Intent.FLAG_ACTIVITY_LAUNCH_ADJACENT
            )
            startActivity(intent, options.toBundle())
            prefs.splitCompatibleApps = prefs.splitCompatibleApps.toMutableSet().also { it.add(packageName) }
            prefs.splitIncompatibleApps = prefs.splitIncompatibleApps.toMutableSet().also { it.remove(packageName) }
        } catch (e: Exception) {
            prefs.splitIncompatibleApps = prefs.splitIncompatibleApps.toMutableSet().also { it.add(packageName) }
            prefs.splitCompatibleApps = prefs.splitCompatibleApps.toMutableSet().also { it.remove(packageName) }
            if (showErrors) showToast("Bu uygulama bölünmüş alanda açılamıyor.")
        }
    }

    private fun buildPanelBounds(): Rect {
        val onScreen = Rect()
        val hasBounds = binding.root.getGlobalVisibleRect(onScreen)
        if (hasBounds && onScreen.width() > 100 && onScreen.height() > 100) {
            return Rect(
                onScreen.left + 4,
                onScreen.top + 4,
                onScreen.right - 4,
                onScreen.bottom - 4
            )
        }

        val dm = resources.displayMetrics
        val fullWidth = dm.widthPixels
        val fullHeight = dm.heightPixels
        val ratio = prefs.splitRatio.coerceIn(0.3f, 0.7f)
        val splitX = (fullWidth * ratio).toInt()
        return if (side == "left") Rect(4, 4, splitX - 4, fullHeight - 4)
        else Rect(splitX + 4, 4, fullWidth - 4, fullHeight - 4)
    }

    private fun showToast(msg: String) =
        Toast.makeText(requireContext(), msg, Toast.LENGTH_SHORT).show()

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
