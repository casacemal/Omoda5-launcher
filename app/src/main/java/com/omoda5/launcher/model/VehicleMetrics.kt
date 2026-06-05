package com.omoda5.launcher.model

data class VehicleMetrics(
    val speed: Float = 0f,
    val rpm: Float = 0f,
    val gear: String = "P",
    val fuelLevel: Float = 0f,
    val driveMode: Int = 2, // 1:ECO, 2:NORMAL, 3:SPORT
    val handbrakeOn: Boolean = true,
    val exteriorTemp: Float = 0f,
    val range: Int = 0,
    val ignitionStatus: String = "OFF",
    
    // Doors
    val doorFrontLeftOpen: Boolean = false,
    val doorFrontRightOpen: Boolean = false,
    val doorRearLeftOpen: Boolean = false,
    val doorRearRightOpen: Boolean = false,
    val trunkOpen: Boolean = false,
    
    // TPMS
    val tpmsFL: Float = 0f,
    val tireTemp: Float = 0f,
    
    // GPS
    val latitude: Double = 0.0,
    val longitude: Double = 0.0
)
