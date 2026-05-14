package com.omoda5.launcher.ui

import android.app.Dialog
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.DialogFragment
import com.omoda5.launcher.R
import com.omoda5.launcher.databinding.DialogAppSelectionBinding
import com.omoda5.launcher.model.LauncherItem

class AppSelectionDialog(
    private val app: LauncherItem,
    private val onLeftSelected: () -> Unit,
    private val onRightSelected: () -> Unit,
    private val onSetDefaultLeft: () -> Unit,
    private val onSetDefaultRight: () -> Unit,
    private val onStartSplitLeft: () -> Unit,
    private val onStartSplitRight: () -> Unit
) : DialogFragment() {

    private var _binding: DialogAppSelectionBinding? = null
    private val binding get() = _binding!!

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View {
        _binding = DialogAppSelectionBinding.inflate(inflater, container, false)
        return binding.root
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)

        binding.tvAppTitle.text = app.title
        binding.btnSelectLeft.setOnClickListener {
            onLeftSelected()
            dismiss()
        }
        binding.btnSelectRight.setOnClickListener {
            onRightSelected()
            dismiss()
        }
        binding.btnSetDefaultLeft.setOnClickListener {
            onSetDefaultLeft()
            dismiss()
        }
        binding.btnSetDefaultRight.setOnClickListener {
            onSetDefaultRight()
            dismiss()
        }
        binding.btnStartSplitLeft.setOnClickListener {
            onStartSplitLeft()
            dismiss()
        }
        binding.btnStartSplitRight.setOnClickListener {
            onStartSplitRight()
            dismiss()
        }
        binding.btnCancel.setOnClickListener {
            dismiss()
        }
    }

    override fun onDestroyView() {
        super.onDestroyView()
        _binding = null
    }
}
