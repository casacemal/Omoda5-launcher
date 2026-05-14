package com.omoda5.launcher.viewmodel

import android.app.Application
import androidx.lifecycle.AndroidViewModel
import androidx.lifecycle.viewModelScope
import com.omoda5.launcher.data.repository.VehicleDataRepository
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch

class VehicleDataViewModel(application: Application) : AndroidViewModel(application) {

    private val repository = VehicleDataRepository(application)
    val vehicleData = repository.vehicleData.stateIn(
        scope = viewModelScope,
        started = SharingStarted.WhileSubscribed(5000),
        initialValue = com.omoda5.launcher.data.model.VehicleData()
    )

    init {
        viewModelScope.launch {
            repository.initialize()
        }
    }

    override fun onCleared() {
        repository.cleanup()
        super.onCleared()
    }
}