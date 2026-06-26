package com.omoda.lanc.vehicle

interface VehicleSource {
    fun getSpeed(): Float?
    fun getGear(): Int?
    fun getFuelLevel(): Float?
    fun isAnyDoorOpen(): Boolean?
}
