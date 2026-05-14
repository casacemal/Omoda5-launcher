package com.omoda5.launcher.data.model

data class VehicleData(
    val speed: Float = 0f,
    val gear: Int = 0,
    val fuelLevel: Float = 0f,
    val parkingBrakeOn: Boolean = false,
    val doorOpen: Boolean = false
) {
    val speedKmh: Int get() = (speed * 3.6f).toInt()
    val gearString: String get() = when (gear) {
        4 -> "P"
        2 -> "R"
        8 -> "N"
        16 -> "D"
        else -> gear.toString()
    }
}