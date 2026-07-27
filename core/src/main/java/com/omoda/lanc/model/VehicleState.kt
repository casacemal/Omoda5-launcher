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
    val doorLocks: Int = 0,
    // TPMS
    val tpmsFL: Float = 0f,
    val tpmsFR: Float = 0f,
    val tpmsRL: Float = 0f,
    val tpmsRR: Float = 0f,
    // Trip Info
    val tripDistance: Float = 0f, // km
    val tripDuration: Long = 0,   // seconds
    // Radio & RDS
    val radioFrequency: Float = 0f,
    val radioStationName: String = "",
    val radioText: String = "",
    // Yeni Eklenen Güvenli Read-Only Sensörler
    val engineCoolantTemp: Float = 0f,
    val engineOilTemp: Float = 0f,
    val absActive: Boolean = false,
    val tractionControlActive: Boolean = false,
    val turnSignalState: Int = 0
) {
    val rpm: Float get() = engineRpm
    val coolantTemp: Float get() = if (engineCoolantTemp > 0f) engineCoolantTemp else 90f
    val oilTemp: Float get() = if (engineOilTemp > 0f) engineOilTemp else 95f
    val range: Float get() = rangeKm
    val tpmsFrontLeft: String get() = if (tpmsFL > 0) "%.1f".format(tpmsFL) else "2.3"
    val tpmsFrontRight: String get() = if (tpmsFR > 0) "%.1f".format(tpmsFR) else "2.3"
    val tpmsRearLeft: String get() = if (tpmsRL > 0) "%.1f".format(tpmsRL) else "2.2"
    val tpmsRearRight: String get() = if (tpmsRR > 0) "%.1f".format(tpmsRR) else "2.2"
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
