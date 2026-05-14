package com.omoda5.launcher.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.omoda5.launcher.databinding.FragmentLeftPanelBinding

class LeftPanelFragment : Fragment() {

    private var _binding: FragmentLeftPanelBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentLeftPanelBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        setupMusicPlayer()
    }

    private fun setupMusicPlayer() {
        binding.tvSongTitle.text = "Şarkı Seçin"
        binding.tvArtist.text = "Sanatçı"
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}