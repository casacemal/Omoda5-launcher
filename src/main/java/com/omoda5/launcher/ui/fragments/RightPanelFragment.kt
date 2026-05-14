package com.omoda5.launcher.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.omoda5.launcher.databinding.FragmentRightPanelBinding

class RightPanelFragment : Fragment() {

    private var _binding: FragmentRightPanelBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentRightPanelBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupMiniNavigation()
    }

    private fun setupMiniNavigation() {
        binding.tvDestination.text = "Hedef"
        binding.tvEta.text = "0 dk, 0 km"
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}