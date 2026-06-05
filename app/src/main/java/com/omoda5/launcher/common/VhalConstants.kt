package com.omoda5.launcher.common

/**
 * OEM APK'larından decompile edilen VHAL Property ID Sözlüğü
 * Source: vhal_sources/ (CarBasicClient, CarDriveClient, CarHvacClient, CarAvmClient)
 */
object VhalConstants {

    object Basic {
        const val AUTO_LOCK_STS = 0x21403001
        const val AUTO_FOLD_STS = 0x21403002
        const val REMOTE_LOCK_FEEDBACK = 0x21403003
        const val PLG_MAX_POSITION = 0x21403005
        const val CWC_WORKING = 0x21403006
        const val CWC_CHARGING = 0x21403036
        const val CWC_PHONE_FORGOTTEN = 0x21403007
        const val BCM_KEY_STATUS = 0x21402000
        const val VEHICLE_SPEED_VSO = 0x21602023
        const val ICM_BRIGHTNESS = 0x2140302c
        const val DAY_NIGHT_MODE = 0x2140203b
        const val TRUNK_STATUS = 0x21402016
        const val WINDOW_FL = 0x21403042
        const val WINDOW_FP = 0x21403043
        const val WINDOW_RL = 0x21403044
        const val WINDOW_RR = 0x21403045
        const val SCREEN_TEMP = 0x2140203e
        const val DMS_STATUS = 0x2140306d
    }

    object ADAS {
        const val AEB_ON_OFF = 0x21403008
        const val FCW_ON_OFF = 0x21403009
        const val FCW_SENSITIVITY = 0x2140300a
        const val TJA_ICA_INFO = 0x2140300b
        const val OVER_SPEED = 0x2140300c
        const val ELK_ON_OFF = 0x2140300d
        const val LDW_ON_OFF = 0x2140300e
        const val WARNING_MODE = 0x2140300f
        const val LDP_ON_OFF = 0x21403010
        const val LDW_LDP_SENSITIVITY = 0x21403011
        const val HDC_CTRL = 0x21403012
        const val ESP_SWITCH = 0x21403013
        const val DAI_ON_OFF = 0x21403014
        const val DRIVE_MODE = 0x2140303a
        const val SLA_STATUS = 0x21403054
    }

    object HVAC {
        const val DISPLAY = 0x2140101a
        const val TEMP_UNIT = 0x2140101d
        const val CLM_ON = 0x21401002
        const val COMPRESSOR = 0x21401003
        const val CIRCULATION = 0x21401004
        const val BLOW_SPEED = 0x21401005
        const val MODE_ADJUST = 0x21401006
        const val AUTO_STATUS = 0x21401007
        const val TEMP_LEFT_C = 0x21401008
        const val TEMP_RIGHT_C = 0x21401009
        const val TEMP_LEFT_F = 0x2140101b
        const val TEMP_RIGHT_F = 0x2140101c
        const val ELEC_TEMP = 0x21401019
        const val FG_HEAT = 0x2140101e
        const val BG_HEAT = 0x2140101f
    }

    object AVM {
        const val GEAR_POSITION = 0x21402006
        const val MANUAL_GEAR = 0x2140203f
        const val RADAR_WORK = 0x21402007 // Örnek olarak eklenmiştir
    }

    object Area {
        const val FRONT_LEFT = 1
        const val FRONT_RIGHT = 4
        const val REAR_LEFT = 16
        const val REAR_RIGHT = 64
        const val TRUNK = 0x20000000
    }
}
