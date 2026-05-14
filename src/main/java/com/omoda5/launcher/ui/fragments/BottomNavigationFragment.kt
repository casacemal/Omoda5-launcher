package com.omoda5.launcher.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.omoda5.launcher.databinding.FragmentBottomNavigationBinding

class BottomNavigationFragment : Fragment() {

    private var _binding: FragmentBottomNavigationBinding? = null
    private val binding get() = _binding!!

    private var currentTab = Tab.MUSIC

    enum class Tab { MUSIC, PHONE, SETTINGS }

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentBottomNavigationBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupTabListeners()
    }

    private fun setupTabListeners() {
        binding.tabMusic.setOnClickListener { selectTab(Tab.MUSIC) }
        binding.tabPhone.setOnClickListener { selectTab(Tab.PHONE) }
        binding.tabSettings.setOnClickListener { selectTab(Tab.SETTINGS) }
    }

    private fun selectTab(tab: Tab) {
        currentTab = tab
        updateTabUI()
    }

    private fun updateTabUI() {
        val activeColor = 0xFF00D4FF.toInt()
        val passiveColor = 0xFF888888.toInt()

        binding.tabMusic.setTextColor(if (currentTab == Tab.MUSIC) activeColor else passiveColor)
        binding.tabPhone.setTextColor(if (currentTab == Tab.PHONE) activeColor else passiveColor)
        binding.tabSettings.setTextColor(if (currentTab == Tab.SETTINGS) activeColor else passiveColor)
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}