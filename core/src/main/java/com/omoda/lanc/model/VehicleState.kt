package com.omoda.lanc.model

data class VehicleState(
    val speed: Float = 0f,
    val gear: Int = 0,
    val gearString: String = "P",
    val isEngineRunning: Boolean = false,
    val isMoving: Boolean = false,
    val isHvacOn: Boolean = false,
    // Kapılar
    val anyDoorOpen: Boolean = false,
    val doorDriverOpen: Boolean = false,
    val doorPassengerOpen: Boolean = false,
    val doorRearLeftOpen: Boolean = false,
    val doorRearRightOpen: Boolean = false,
    val trunkOpen: Boolean = false,
    val doorLockMask: Int = 0,
    val turnSignalLeft: Boolean = false,
    val turnSignalRight: Boolean = false,
    // Sürüş modu: 0=Normal, 1=Eco, 2=Sport, 3=Snow, 4=Mud
    val drivingMode: Int = 0,
    // Ek veriler
    val parkingBrake: Boolean = false,
    val headlights: Int = 0,
    val acTemperatureDriver: Int = 0,
    val acTemperaturePassenger: Int = 0,
    val engineRpm: Float = 0f,
    val outsideTemperature: Float = 25f,
    val fuelLevel: Float = 0f,
    val rangeKm: Float = 0f,
    val odometer: Float = 0f,
    val acFanSpeed: Int = 0,
    val acCirculationMode: Int = 0,
    val acCompressorOn: Boolean = false,
    val acAutoOn: Boolean = false,
    val frontDefrostOn: Boolean = false,
    val rearDefrostOn: Boolean = false,
    val elecClimateTemp: Int = 0,
    val acSync: Boolean = false,
    val latitude: Double = 0.0,
    val longitude: Double = 0.0,
    val evBatteryLevel: Float = 0f,
    val fuelCapacity: Float = 0f,
    val hazardLightsOn: Boolean = false,
    val seatBeltBuckled: Int = 0,
    val seatOccupancy: Int = 0,
    val windowPosition: Int = 0,
    val doorLocks: Int = 0
) {
    val doorOpenString: String get() {
        if (!anyDoorOpen) return "Tümü Kapalı"
        val doors = mutableListOf<String>()
        if (doorDriverOpen) doors.add("Ön Sol")
        if (doorPassengerOpen) doors.add("Ön Sağ")
        if (doorRearLeftOpen) doors.add("Arka Sol")
        if (doorRearRightOpen) doors.add("Arka Sağ")
        if (trunkOpen) doors.add("Bagaj")
        if (doors.isEmpty() && anyDoorOpen) return "Bilinmeyen Kapı Açık"
        return doors.joinToString(", ") + " Açık"
    }
    val turnSignalString: String get() {
        if (turnSignalLeft && turnSignalRight) return "Dörtlüler"
        if (turnSignalLeft) return "Sol Sinyal"
        if (turnSignalRight) return "Sağ Sinyal"
        return "Yok"
    }
    val drivingModeString: String get() = when (drivingMode) {
        1 -> "Eco"
        2 -> "Sport"
        3 -> "Snow"
        4 -> "Mud"
        else -> "Normal"
    }
    val acCirculationString: String get() = when (acCirculationMode) {
        1 -> "İç Sirkülasyon"
        else -> "Dış Hava"
    }
}
