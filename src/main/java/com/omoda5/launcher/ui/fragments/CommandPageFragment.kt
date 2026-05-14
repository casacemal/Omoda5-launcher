package com.omoda5.launcher.ui.fragments

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import com.omoda5.launcher.databinding.FragmentCommandPageBinding

class CommandPageFragment : Fragment() {

    private var _binding: FragmentCommandPageBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = FragmentCommandPageBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        binding.tvTitle.text = "Command Console"
        binding.tvOutput.text = "Ready for commands..."
    }

    fun executeCommand(cmd: String): String {
        return when (cmd.lowercase()) {
            "ping" -> "pong"
            "status" -> "running"
            else -> "unknown"
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}