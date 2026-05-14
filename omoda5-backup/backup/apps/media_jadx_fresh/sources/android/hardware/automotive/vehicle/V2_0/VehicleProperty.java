package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleProperty {
    public static final int ABS_ACTIVE = 287310858;
    public static final int AP_POWER_BOOTUP_REASON = 289409538;
    public static final int AP_POWER_STATE_REPORT = 289475073;
    public static final int AP_POWER_STATE_REQ = 289475072;
    public static final int CABIN_LIGHTS_STATE = 289410817;
    public static final int CABIN_LIGHTS_SWITCH = 289410818;
    public static final int CURRENT_GEAR = 289408001;
    public static final int DISPLAY_BRIGHTNESS = 289409539;
    public static final int DISTANCE_DISPLAY_UNITS = 289408512;
    public static final int DOOR_LOCK = 371198722;
    public static final int DOOR_MOVE = 373295873;
    public static final int DOOR_POS = 373295872;
    public static final int ENGINE_COOLANT_TEMP = 291504897;
    public static final int ENGINE_OIL_LEVEL = 289407747;
    public static final int ENGINE_OIL_TEMP = 291504900;
    public static final int ENGINE_RPM = 291504901;
    public static final int ENV_OUTSIDE_TEMPERATURE = 291505923;
    public static final int EV_BATTERY_DISPLAY_UNITS = 289408515;
    public static final int EV_BATTERY_INSTANTANEOUS_CHARGE_RATE = 291504908;
    public static final int EV_BATTERY_LEVEL = 291504905;
    public static final int EV_CHARGE_PORT_CONNECTED = 287310603;
    public static final int EV_CHARGE_PORT_OPEN = 287310602;
    public static final int FOG_LIGHTS_STATE = 289410562;
    public static final int FOG_LIGHTS_SWITCH = 289410578;
    public static final int FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME = 287311364;
    public static final int FUEL_DOOR_OPEN = 287310600;
    public static final int FUEL_LEVEL = 291504903;
    public static final int FUEL_LEVEL_LOW = 287310853;
    public static final int FUEL_VOLUME_DISPLAY_UNITS = 289408513;
    public static final int GEAR_SELECTION = 289408000;
    public static final int HAZARD_LIGHTS_STATE = 289410563;
    public static final int HAZARD_LIGHTS_SWITCH = 289410579;
    public static final int HEADLIGHTS_STATE = 289410560;
    public static final int HEADLIGHTS_SWITCH = 289410576;
    public static final int HIGH_BEAM_LIGHTS_STATE = 289410561;
    public static final int HIGH_BEAM_LIGHTS_SWITCH = 289410577;
    public static final int HVAC_ACTUAL_FAN_SPEED_RPM = 356517135;
    public static final int HVAC_AC_ON = 354419973;
    public static final int HVAC_AUTO_ON = 354419978;
    public static final int HVAC_AUTO_RECIRC_ON = 354419986;
    public static final int HVAC_DEFROSTER = 320865540;
    public static final int HVAC_DUAL_ON = 354419977;
    public static final int HVAC_FAN_DIRECTION = 356517121;
    public static final int HVAC_FAN_DIRECTION_AVAILABLE = 356582673;
    public static final int HVAC_FAN_SPEED = 356517120;
    public static final int HVAC_MAX_AC_ON = 354419974;
    public static final int HVAC_MAX_DEFROST_ON = 354419975;
    public static final int HVAC_POWER_ON = 354419984;
    public static final int HVAC_RECIRC_ON = 354419976;
    public static final int HVAC_SEAT_TEMPERATURE = 356517131;
    public static final int HVAC_SEAT_VENTILATION = 356517139;
    public static final int HVAC_SIDE_MIRROR_HEAT = 339739916;
    public static final int HVAC_STEERING_WHEEL_HEAT = 289408269;
    public static final int HVAC_TEMPERATURE_CURRENT = 358614274;
    public static final int HVAC_TEMPERATURE_DISPLAY_UNITS = 289408270;
    public static final int HVAC_TEMPERATURE_SET = 358614275;
    public static final int HW_KEY_INPUT = 289475088;
    public static final int IGNITION_STATE = 289408009;
    public static final int INFO_DRIVER_SEAT = 356516106;
    public static final int INFO_EV_BATTERY_CAPACITY = 291504390;
    public static final int INFO_EV_CONNECTOR_TYPE = 289472775;
    public static final int INFO_EV_PORT_LOCATION = 289407241;
    public static final int INFO_FUEL_CAPACITY = 291504388;
    public static final int INFO_FUEL_DOOR_LOCATION = 289407240;
    public static final int INFO_FUEL_TYPE = 289472773;
    public static final int INFO_MAKE = 286261505;
    public static final int INFO_MODEL = 286261506;
    public static final int INFO_MODEL_YEAR = 289407235;
    public static final int INFO_VIN = 286261504;
    public static final int INVALID = 0;
    public static final int MIRROR_FOLD = 287312709;
    public static final int MIRROR_LOCK = 287312708;
    public static final int MIRROR_Y_MOVE = 339741507;
    public static final int MIRROR_Y_POS = 339741506;
    public static final int MIRROR_Z_MOVE = 339741505;
    public static final int MIRROR_Z_POS = 339741504;
    public static final int NIGHT_MODE = 287310855;
    public static final int OBD2_FREEZE_FRAME = 299896065;
    public static final int OBD2_FREEZE_FRAME_CLEAR = 299896067;
    public static final int OBD2_FREEZE_FRAME_INFO = 299896066;
    public static final int OBD2_LIVE_FRAME = 299896064;
    public static final int PARKING_BRAKE_AUTO_APPLY = 287310851;
    public static final int PARKING_BRAKE_ON = 287310850;
    public static final int PERF_ODOMETER = 291504644;
    public static final int PERF_STEERING_ANGLE = 291504649;
    public static final int PERF_VEHICLE_SPEED = 291504647;
    public static final int PERF_VEHICLE_SPEED_DISPLAY = 291504648;
    public static final int RANGE_REMAINING = 291504904;
    public static final int READING_LIGHTS_STATE = 356519683;
    public static final int READING_LIGHTS_SWITCH = 356519684;
    public static final int SEAT_BACKREST_ANGLE_1_MOVE = 356518792;
    public static final int SEAT_BACKREST_ANGLE_1_POS = 356518791;
    public static final int SEAT_BACKREST_ANGLE_2_MOVE = 356518794;
    public static final int SEAT_BACKREST_ANGLE_2_POS = 356518793;
    public static final int SEAT_BELT_BUCKLED = 354421634;
    public static final int SEAT_BELT_HEIGHT_MOVE = 356518788;
    public static final int SEAT_BELT_HEIGHT_POS = 356518787;
    public static final int SEAT_DEPTH_MOVE = 356518798;
    public static final int SEAT_DEPTH_POS = 356518797;
    public static final int SEAT_FORE_AFT_MOVE = 356518790;
    public static final int SEAT_FORE_AFT_POS = 356518789;
    public static final int SEAT_HEADREST_ANGLE_MOVE = 356518808;
    public static final int SEAT_HEADREST_ANGLE_POS = 356518807;
    public static final int SEAT_HEADREST_FORE_AFT_MOVE = 356518810;
    public static final int SEAT_HEADREST_FORE_AFT_POS = 356518809;
    public static final int SEAT_HEADREST_HEIGHT_MOVE = 356518806;
    public static final int SEAT_HEADREST_HEIGHT_POS = 289409941;
    public static final int SEAT_HEIGHT_MOVE = 356518796;
    public static final int SEAT_HEIGHT_POS = 356518795;
    public static final int SEAT_LUMBAR_FORE_AFT_MOVE = 356518802;
    public static final int SEAT_LUMBAR_FORE_AFT_POS = 356518801;
    public static final int SEAT_LUMBAR_SIDE_SUPPORT_MOVE = 356518804;
    public static final int SEAT_LUMBAR_SIDE_SUPPORT_POS = 356518803;
    public static final int SEAT_MEMORY_SELECT = 356518784;
    public static final int SEAT_MEMORY_SET = 356518785;
    public static final int SEAT_OCCUPANCY = 356518832;
    public static final int SEAT_TILT_MOVE = 356518800;
    public static final int SEAT_TILT_POS = 356518799;
    public static final int TIRE_PRESSURE = 392168201;
    public static final int TIRE_PRESSURE_DISPLAY_UNITS = 289408514;
    public static final int TRACTION_CONTROL_ACTIVE = 287310859;
    public static final int TURN_SIGNAL_STATE = 289408008;
    public static final int VEHICLE_MAP_SERVICE = 299895808;
    public static final int VEHICLE_SPEED_DISPLAY_UNITS = 289408517;
    public static final int WHEEL_TICK = 290521862;
    public static final int WINDOW_LOCK = 320867268;
    public static final int WINDOW_MOVE = 322964417;
    public static final int WINDOW_POS = 322964416;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "INVALID";
        }
        if (r2 == 286261504) {
            return "INFO_VIN";
        }
        if (r2 == 286261505) {
            return "INFO_MAKE";
        }
        if (r2 == 286261506) {
            return "INFO_MODEL";
        }
        if (r2 == 289407235) {
            return "INFO_MODEL_YEAR";
        }
        if (r2 == 291504388) {
            return "INFO_FUEL_CAPACITY";
        }
        if (r2 == 289472773) {
            return "INFO_FUEL_TYPE";
        }
        if (r2 == 291504390) {
            return "INFO_EV_BATTERY_CAPACITY";
        }
        if (r2 == 289472775) {
            return "INFO_EV_CONNECTOR_TYPE";
        }
        if (r2 == 289407240) {
            return "INFO_FUEL_DOOR_LOCATION";
        }
        if (r2 == 289407241) {
            return "INFO_EV_PORT_LOCATION";
        }
        if (r2 == 356516106) {
            return "INFO_DRIVER_SEAT";
        }
        if (r2 == 291504644) {
            return "PERF_ODOMETER";
        }
        if (r2 == 291504647) {
            return "PERF_VEHICLE_SPEED";
        }
        if (r2 == 291504648) {
            return "PERF_VEHICLE_SPEED_DISPLAY";
        }
        if (r2 == 291504649) {
            return "PERF_STEERING_ANGLE";
        }
        if (r2 == 291504897) {
            return "ENGINE_COOLANT_TEMP";
        }
        if (r2 == 289407747) {
            return "ENGINE_OIL_LEVEL";
        }
        if (r2 == 291504900) {
            return "ENGINE_OIL_TEMP";
        }
        if (r2 == 291504901) {
            return "ENGINE_RPM";
        }
        if (r2 == 290521862) {
            return "WHEEL_TICK";
        }
        if (r2 == 291504903) {
            return "FUEL_LEVEL";
        }
        if (r2 == 287310600) {
            return "FUEL_DOOR_OPEN";
        }
        if (r2 == 291504905) {
            return "EV_BATTERY_LEVEL";
        }
        if (r2 == 287310602) {
            return "EV_CHARGE_PORT_OPEN";
        }
        if (r2 == 287310603) {
            return "EV_CHARGE_PORT_CONNECTED";
        }
        if (r2 == 291504908) {
            return "EV_BATTERY_INSTANTANEOUS_CHARGE_RATE";
        }
        if (r2 == 291504904) {
            return "RANGE_REMAINING";
        }
        if (r2 == 392168201) {
            return "TIRE_PRESSURE";
        }
        if (r2 == 289408000) {
            return "GEAR_SELECTION";
        }
        if (r2 == 289408001) {
            return "CURRENT_GEAR";
        }
        if (r2 == 287310850) {
            return "PARKING_BRAKE_ON";
        }
        if (r2 == 287310851) {
            return "PARKING_BRAKE_AUTO_APPLY";
        }
        if (r2 == 287310853) {
            return "FUEL_LEVEL_LOW";
        }
        if (r2 == 287310855) {
            return "NIGHT_MODE";
        }
        if (r2 == 289408008) {
            return "TURN_SIGNAL_STATE";
        }
        if (r2 == 289408009) {
            return "IGNITION_STATE";
        }
        if (r2 == 287310858) {
            return "ABS_ACTIVE";
        }
        if (r2 == 287310859) {
            return "TRACTION_CONTROL_ACTIVE";
        }
        if (r2 == 356517120) {
            return "HVAC_FAN_SPEED";
        }
        if (r2 == 356517121) {
            return "HVAC_FAN_DIRECTION";
        }
        if (r2 == 358614274) {
            return "HVAC_TEMPERATURE_CURRENT";
        }
        if (r2 == 358614275) {
            return "HVAC_TEMPERATURE_SET";
        }
        if (r2 == 320865540) {
            return "HVAC_DEFROSTER";
        }
        if (r2 == 354419973) {
            return "HVAC_AC_ON";
        }
        if (r2 == 354419974) {
            return "HVAC_MAX_AC_ON";
        }
        if (r2 == 354419975) {
            return "HVAC_MAX_DEFROST_ON";
        }
        if (r2 == 354419976) {
            return "HVAC_RECIRC_ON";
        }
        if (r2 == 354419977) {
            return "HVAC_DUAL_ON";
        }
        if (r2 == 354419978) {
            return "HVAC_AUTO_ON";
        }
        if (r2 == 356517131) {
            return "HVAC_SEAT_TEMPERATURE";
        }
        if (r2 == 339739916) {
            return "HVAC_SIDE_MIRROR_HEAT";
        }
        if (r2 == 289408269) {
            return "HVAC_STEERING_WHEEL_HEAT";
        }
        if (r2 == 289408270) {
            return "HVAC_TEMPERATURE_DISPLAY_UNITS";
        }
        if (r2 == 356517135) {
            return "HVAC_ACTUAL_FAN_SPEED_RPM";
        }
        if (r2 == 354419984) {
            return "HVAC_POWER_ON";
        }
        if (r2 == 356582673) {
            return "HVAC_FAN_DIRECTION_AVAILABLE";
        }
        if (r2 == 354419986) {
            return "HVAC_AUTO_RECIRC_ON";
        }
        if (r2 == 356517139) {
            return "HVAC_SEAT_VENTILATION";
        }
        if (r2 == 289408512) {
            return "DISTANCE_DISPLAY_UNITS";
        }
        if (r2 == 289408513) {
            return "FUEL_VOLUME_DISPLAY_UNITS";
        }
        if (r2 == 289408514) {
            return "TIRE_PRESSURE_DISPLAY_UNITS";
        }
        if (r2 == 289408515) {
            return "EV_BATTERY_DISPLAY_UNITS";
        }
        if (r2 == 287311364) {
            return "FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME";
        }
        if (r2 == 289408517) {
            return "VEHICLE_SPEED_DISPLAY_UNITS";
        }
        if (r2 == 291505923) {
            return "ENV_OUTSIDE_TEMPERATURE";
        }
        if (r2 == 289475072) {
            return "AP_POWER_STATE_REQ";
        }
        if (r2 == 289475073) {
            return "AP_POWER_STATE_REPORT";
        }
        if (r2 == 289409538) {
            return "AP_POWER_BOOTUP_REASON";
        }
        if (r2 == 289409539) {
            return "DISPLAY_BRIGHTNESS";
        }
        if (r2 == 289475088) {
            return "HW_KEY_INPUT";
        }
        if (r2 == 373295872) {
            return "DOOR_POS";
        }
        if (r2 == 373295873) {
            return "DOOR_MOVE";
        }
        if (r2 == 371198722) {
            return "DOOR_LOCK";
        }
        if (r2 == 339741504) {
            return "MIRROR_Z_POS";
        }
        if (r2 == 339741505) {
            return "MIRROR_Z_MOVE";
        }
        if (r2 == 339741506) {
            return "MIRROR_Y_POS";
        }
        if (r2 == 339741507) {
            return "MIRROR_Y_MOVE";
        }
        if (r2 == 287312708) {
            return "MIRROR_LOCK";
        }
        if (r2 == 287312709) {
            return "MIRROR_FOLD";
        }
        if (r2 == 356518784) {
            return "SEAT_MEMORY_SELECT";
        }
        if (r2 == 356518785) {
            return "SEAT_MEMORY_SET";
        }
        if (r2 == 354421634) {
            return "SEAT_BELT_BUCKLED";
        }
        if (r2 == 356518787) {
            return "SEAT_BELT_HEIGHT_POS";
        }
        if (r2 == 356518788) {
            return "SEAT_BELT_HEIGHT_MOVE";
        }
        if (r2 == 356518789) {
            return "SEAT_FORE_AFT_POS";
        }
        if (r2 == 356518790) {
            return "SEAT_FORE_AFT_MOVE";
        }
        if (r2 == 356518791) {
            return "SEAT_BACKREST_ANGLE_1_POS";
        }
        if (r2 == 356518792) {
            return "SEAT_BACKREST_ANGLE_1_MOVE";
        }
        if (r2 == 356518793) {
            return "SEAT_BACKREST_ANGLE_2_POS";
        }
        if (r2 == 356518794) {
            return "SEAT_BACKREST_ANGLE_2_MOVE";
        }
        if (r2 == 356518795) {
            return "SEAT_HEIGHT_POS";
        }
        if (r2 == 356518796) {
            return "SEAT_HEIGHT_MOVE";
        }
        if (r2 == 356518797) {
            return "SEAT_DEPTH_POS";
        }
        if (r2 == 356518798) {
            return "SEAT_DEPTH_MOVE";
        }
        if (r2 == 356518799) {
            return "SEAT_TILT_POS";
        }
        if (r2 == 356518800) {
            return "SEAT_TILT_MOVE";
        }
        if (r2 == 356518801) {
            return "SEAT_LUMBAR_FORE_AFT_POS";
        }
        if (r2 == 356518802) {
            return "SEAT_LUMBAR_FORE_AFT_MOVE";
        }
        if (r2 == 356518803) {
            return "SEAT_LUMBAR_SIDE_SUPPORT_POS";
        }
        if (r2 == 356518804) {
            return "SEAT_LUMBAR_SIDE_SUPPORT_MOVE";
        }
        if (r2 == 289409941) {
            return "SEAT_HEADREST_HEIGHT_POS";
        }
        if (r2 == 356518806) {
            return "SEAT_HEADREST_HEIGHT_MOVE";
        }
        if (r2 == 356518807) {
            return "SEAT_HEADREST_ANGLE_POS";
        }
        if (r2 == 356518808) {
            return "SEAT_HEADREST_ANGLE_MOVE";
        }
        if (r2 == 356518809) {
            return "SEAT_HEADREST_FORE_AFT_POS";
        }
        if (r2 == 356518810) {
            return "SEAT_HEADREST_FORE_AFT_MOVE";
        }
        if (r2 == 356518832) {
            return "SEAT_OCCUPANCY";
        }
        if (r2 == 322964416) {
            return "WINDOW_POS";
        }
        if (r2 == 322964417) {
            return "WINDOW_MOVE";
        }
        if (r2 == 320867268) {
            return "WINDOW_LOCK";
        }
        if (r2 == 299895808) {
            return "VEHICLE_MAP_SERVICE";
        }
        if (r2 == 299896064) {
            return "OBD2_LIVE_FRAME";
        }
        if (r2 == 299896065) {
            return "OBD2_FREEZE_FRAME";
        }
        if (r2 == 299896066) {
            return "OBD2_FREEZE_FRAME_INFO";
        }
        if (r2 == 299896067) {
            return "OBD2_FREEZE_FRAME_CLEAR";
        }
        if (r2 == 289410560) {
            return "HEADLIGHTS_STATE";
        }
        if (r2 == 289410561) {
            return "HIGH_BEAM_LIGHTS_STATE";
        }
        if (r2 == 289410562) {
            return "FOG_LIGHTS_STATE";
        }
        if (r2 == 289410563) {
            return "HAZARD_LIGHTS_STATE";
        }
        if (r2 == 289410576) {
            return "HEADLIGHTS_SWITCH";
        }
        if (r2 == 289410577) {
            return "HIGH_BEAM_LIGHTS_SWITCH";
        }
        if (r2 == 289410578) {
            return "FOG_LIGHTS_SWITCH";
        }
        if (r2 == 289410579) {
            return "HAZARD_LIGHTS_SWITCH";
        }
        if (r2 == 289410817) {
            return "CABIN_LIGHTS_STATE";
        }
        if (r2 == 289410818) {
            return "CABIN_LIGHTS_SWITCH";
        }
        if (r2 == 356519683) {
            return "READING_LIGHTS_STATE";
        }
        if (r2 == 356519684) {
            return "READING_LIGHTS_SWITCH";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("INVALID");
        int r1 = 286261504;
        if ((r4 & 286261504) == 286261504) {
            arrayList.add("INFO_VIN");
        } else {
            r1 = 0;
        }
        if ((r4 & 286261505) == 286261505) {
            arrayList.add("INFO_MAKE");
            r1 |= 286261505;
        }
        if ((r4 & 286261506) == 286261506) {
            arrayList.add("INFO_MODEL");
            r1 |= 286261506;
        }
        if ((r4 & 289407235) == 289407235) {
            arrayList.add("INFO_MODEL_YEAR");
            r1 |= 289407235;
        }
        if ((r4 & 291504388) == 291504388) {
            arrayList.add("INFO_FUEL_CAPACITY");
            r1 |= 291504388;
        }
        if ((r4 & 289472773) == 289472773) {
            arrayList.add("INFO_FUEL_TYPE");
            r1 |= 289472773;
        }
        if ((r4 & 291504390) == 291504390) {
            arrayList.add("INFO_EV_BATTERY_CAPACITY");
            r1 |= 291504390;
        }
        if ((r4 & 289472775) == 289472775) {
            arrayList.add("INFO_EV_CONNECTOR_TYPE");
            r1 |= 289472775;
        }
        if ((r4 & 289407240) == 289407240) {
            arrayList.add("INFO_FUEL_DOOR_LOCATION");
            r1 |= 289407240;
        }
        if ((r4 & 289407241) == 289407241) {
            arrayList.add("INFO_EV_PORT_LOCATION");
            r1 |= 289407241;
        }
        if ((r4 & 356516106) == 356516106) {
            arrayList.add("INFO_DRIVER_SEAT");
            r1 |= 356516106;
        }
        if ((r4 & 291504644) == 291504644) {
            arrayList.add("PERF_ODOMETER");
            r1 |= 291504644;
        }
        if ((r4 & 291504647) == 291504647) {
            arrayList.add("PERF_VEHICLE_SPEED");
            r1 |= 291504647;
        }
        if ((r4 & 291504648) == 291504648) {
            arrayList.add("PERF_VEHICLE_SPEED_DISPLAY");
            r1 |= 291504648;
        }
        if ((r4 & 291504649) == 291504649) {
            arrayList.add("PERF_STEERING_ANGLE");
            r1 |= 291504649;
        }
        if ((r4 & 291504897) == 291504897) {
            arrayList.add("ENGINE_COOLANT_TEMP");
            r1 |= 291504897;
        }
        if ((r4 & 289407747) == 289407747) {
            arrayList.add("ENGINE_OIL_LEVEL");
            r1 |= 289407747;
        }
        if ((r4 & 291504900) == 291504900) {
            arrayList.add("ENGINE_OIL_TEMP");
            r1 |= 291504900;
        }
        if ((r4 & 291504901) == 291504901) {
            arrayList.add("ENGINE_RPM");
            r1 |= 291504901;
        }
        if ((r4 & 290521862) == 290521862) {
            arrayList.add("WHEEL_TICK");
            r1 |= 290521862;
        }
        if ((r4 & 291504903) == 291504903) {
            arrayList.add("FUEL_LEVEL");
            r1 |= 291504903;
        }
        if ((r4 & 287310600) == 287310600) {
            arrayList.add("FUEL_DOOR_OPEN");
            r1 |= 287310600;
        }
        if ((291504905 & r4) == 291504905) {
            arrayList.add("EV_BATTERY_LEVEL");
            r1 |= 291504905;
        }
        if ((287310602 & r4) == 287310602) {
            arrayList.add("EV_CHARGE_PORT_OPEN");
            r1 |= 287310602;
        }
        if ((287310603 & r4) == 287310603) {
            arrayList.add("EV_CHARGE_PORT_CONNECTED");
            r1 |= 287310603;
        }
        if ((291504908 & r4) == 291504908) {
            arrayList.add("EV_BATTERY_INSTANTANEOUS_CHARGE_RATE");
            r1 |= 291504908;
        }
        if ((291504904 & r4) == 291504904) {
            arrayList.add("RANGE_REMAINING");
            r1 |= 291504904;
        }
        if ((392168201 & r4) == 392168201) {
            arrayList.add("TIRE_PRESSURE");
            r1 |= 392168201;
        }
        if ((289408000 & r4) == 289408000) {
            arrayList.add("GEAR_SELECTION");
            r1 |= 289408000;
        }
        if ((289408001 & r4) == 289408001) {
            arrayList.add("CURRENT_GEAR");
            r1 |= 289408001;
        }
        if ((287310850 & r4) == 287310850) {
            arrayList.add("PARKING_BRAKE_ON");
            r1 |= 287310850;
        }
        if ((287310851 & r4) == 287310851) {
            arrayList.add("PARKING_BRAKE_AUTO_APPLY");
            r1 |= 287310851;
        }
        if ((287310853 & r4) == 287310853) {
            arrayList.add("FUEL_LEVEL_LOW");
            r1 |= 287310853;
        }
        if ((287310855 & r4) == 287310855) {
            arrayList.add("NIGHT_MODE");
            r1 |= 287310855;
        }
        if ((289408008 & r4) == 289408008) {
            arrayList.add("TURN_SIGNAL_STATE");
            r1 |= 289408008;
        }
        if ((289408009 & r4) == 289408009) {
            arrayList.add("IGNITION_STATE");
            r1 |= 289408009;
        }
        if ((287310858 & r4) == 287310858) {
            arrayList.add("ABS_ACTIVE");
            r1 |= 287310858;
        }
        if ((287310859 & r4) == 287310859) {
            arrayList.add("TRACTION_CONTROL_ACTIVE");
            r1 |= 287310859;
        }
        if ((356517120 & r4) == 356517120) {
            arrayList.add("HVAC_FAN_SPEED");
            r1 |= 356517120;
        }
        if ((356517121 & r4) == 356517121) {
            arrayList.add("HVAC_FAN_DIRECTION");
            r1 |= 356517121;
        }
        if ((358614274 & r4) == 358614274) {
            arrayList.add("HVAC_TEMPERATURE_CURRENT");
            r1 |= 358614274;
        }
        if ((358614275 & r4) == 358614275) {
            arrayList.add("HVAC_TEMPERATURE_SET");
            r1 |= 358614275;
        }
        if ((320865540 & r4) == 320865540) {
            arrayList.add("HVAC_DEFROSTER");
            r1 |= 320865540;
        }
        if ((354419973 & r4) == 354419973) {
            arrayList.add("HVAC_AC_ON");
            r1 |= 354419973;
        }
        if ((354419974 & r4) == 354419974) {
            arrayList.add("HVAC_MAX_AC_ON");
            r1 |= 354419974;
        }
        if ((354419975 & r4) == 354419975) {
            arrayList.add("HVAC_MAX_DEFROST_ON");
            r1 |= 354419975;
        }
        if ((354419976 & r4) == 354419976) {
            arrayList.add("HVAC_RECIRC_ON");
            r1 |= 354419976;
        }
        if ((354419977 & r4) == 354419977) {
            arrayList.add("HVAC_DUAL_ON");
            r1 |= 354419977;
        }
        if ((354419978 & r4) == 354419978) {
            arrayList.add("HVAC_AUTO_ON");
            r1 |= 354419978;
        }
        if ((356517131 & r4) == 356517131) {
            arrayList.add("HVAC_SEAT_TEMPERATURE");
            r1 |= 356517131;
        }
        if ((339739916 & r4) == 339739916) {
            arrayList.add("HVAC_SIDE_MIRROR_HEAT");
            r1 |= 339739916;
        }
        if ((289408269 & r4) == 289408269) {
            arrayList.add("HVAC_STEERING_WHEEL_HEAT");
            r1 |= 289408269;
        }
        if ((289408270 & r4) == 289408270) {
            arrayList.add("HVAC_TEMPERATURE_DISPLAY_UNITS");
            r1 |= 289408270;
        }
        if ((356517135 & r4) == 356517135) {
            arrayList.add("HVAC_ACTUAL_FAN_SPEED_RPM");
            r1 |= 356517135;
        }
        if ((354419984 & r4) == 354419984) {
            arrayList.add("HVAC_POWER_ON");
            r1 |= 354419984;
        }
        if ((356582673 & r4) == 356582673) {
            arrayList.add("HVAC_FAN_DIRECTION_AVAILABLE");
            r1 |= 356582673;
        }
        if ((354419986 & r4) == 354419986) {
            arrayList.add("HVAC_AUTO_RECIRC_ON");
            r1 |= 354419986;
        }
        if ((356517139 & r4) == 356517139) {
            arrayList.add("HVAC_SEAT_VENTILATION");
            r1 |= 356517139;
        }
        if ((289408512 & r4) == 289408512) {
            arrayList.add("DISTANCE_DISPLAY_UNITS");
            r1 |= 289408512;
        }
        if ((289408513 & r4) == 289408513) {
            arrayList.add("FUEL_VOLUME_DISPLAY_UNITS");
            r1 |= 289408513;
        }
        if ((289408514 & r4) == 289408514) {
            arrayList.add("TIRE_PRESSURE_DISPLAY_UNITS");
            r1 |= 289408514;
        }
        if ((289408515 & r4) == 289408515) {
            arrayList.add("EV_BATTERY_DISPLAY_UNITS");
            r1 |= 289408515;
        }
        if ((287311364 & r4) == 287311364) {
            arrayList.add("FUEL_CONSUMPTION_UNITS_DISTANCE_OVER_VOLUME");
            r1 |= 287311364;
        }
        if ((289408517 & r4) == 289408517) {
            arrayList.add("VEHICLE_SPEED_DISPLAY_UNITS");
            r1 |= 289408517;
        }
        if ((291505923 & r4) == 291505923) {
            arrayList.add("ENV_OUTSIDE_TEMPERATURE");
            r1 |= 291505923;
        }
        if ((289475072 & r4) == 289475072) {
            arrayList.add("AP_POWER_STATE_REQ");
            r1 |= 289475072;
        }
        if ((289475073 & r4) == 289475073) {
            arrayList.add("AP_POWER_STATE_REPORT");
            r1 |= 289475073;
        }
        if ((289409538 & r4) == 289409538) {
            arrayList.add("AP_POWER_BOOTUP_REASON");
            r1 |= 289409538;
        }
        if ((289409539 & r4) == 289409539) {
            arrayList.add("DISPLAY_BRIGHTNESS");
            r1 |= 289409539;
        }
        if ((289475088 & r4) == 289475088) {
            arrayList.add("HW_KEY_INPUT");
            r1 |= 289475088;
        }
        if ((373295872 & r4) == 373295872) {
            arrayList.add("DOOR_POS");
            r1 |= 373295872;
        }
        if ((373295873 & r4) == 373295873) {
            arrayList.add("DOOR_MOVE");
            r1 |= 373295873;
        }
        if ((371198722 & r4) == 371198722) {
            arrayList.add("DOOR_LOCK");
            r1 |= 371198722;
        }
        if ((339741504 & r4) == 339741504) {
            arrayList.add("MIRROR_Z_POS");
            r1 |= 339741504;
        }
        if ((339741505 & r4) == 339741505) {
            arrayList.add("MIRROR_Z_MOVE");
            r1 |= 339741505;
        }
        if ((339741506 & r4) == 339741506) {
            arrayList.add("MIRROR_Y_POS");
            r1 |= 339741506;
        }
        if ((339741507 & r4) == 339741507) {
            arrayList.add("MIRROR_Y_MOVE");
            r1 |= 339741507;
        }
        if ((287312708 & r4) == 287312708) {
            arrayList.add("MIRROR_LOCK");
            r1 |= 287312708;
        }
        if ((287312709 & r4) == 287312709) {
            arrayList.add("MIRROR_FOLD");
            r1 |= 287312709;
        }
        if ((356518784 & r4) == 356518784) {
            arrayList.add("SEAT_MEMORY_SELECT");
            r1 |= 356518784;
        }
        if ((356518785 & r4) == 356518785) {
            arrayList.add("SEAT_MEMORY_SET");
            r1 |= 356518785;
        }
        if ((354421634 & r4) == 354421634) {
            arrayList.add("SEAT_BELT_BUCKLED");
            r1 |= 354421634;
        }
        if ((356518787 & r4) == 356518787) {
            arrayList.add("SEAT_BELT_HEIGHT_POS");
            r1 |= 356518787;
        }
        if ((356518788 & r4) == 356518788) {
            arrayList.add("SEAT_BELT_HEIGHT_MOVE");
            r1 |= 356518788;
        }
        if ((356518789 & r4) == 356518789) {
            arrayList.add("SEAT_FORE_AFT_POS");
            r1 |= 356518789;
        }
        if ((356518790 & r4) == 356518790) {
            arrayList.add("SEAT_FORE_AFT_MOVE");
            r1 |= 356518790;
        }
        if ((356518791 & r4) == 356518791) {
            arrayList.add("SEAT_BACKREST_ANGLE_1_POS");
            r1 |= 356518791;
        }
        if ((356518792 & r4) == 356518792) {
            arrayList.add("SEAT_BACKREST_ANGLE_1_MOVE");
            r1 |= 356518792;
        }
        if ((356518793 & r4) == 356518793) {
            arrayList.add("SEAT_BACKREST_ANGLE_2_POS");
            r1 |= 356518793;
        }
        if ((356518794 & r4) == 356518794) {
            arrayList.add("SEAT_BACKREST_ANGLE_2_MOVE");
            r1 |= 356518794;
        }
        if ((356518795 & r4) == 356518795) {
            arrayList.add("SEAT_HEIGHT_POS");
            r1 |= 356518795;
        }
        if ((356518796 & r4) == 356518796) {
            arrayList.add("SEAT_HEIGHT_MOVE");
            r1 |= 356518796;
        }
        if ((356518797 & r4) == 356518797) {
            arrayList.add("SEAT_DEPTH_POS");
            r1 |= 356518797;
        }
        if ((356518798 & r4) == 356518798) {
            arrayList.add("SEAT_DEPTH_MOVE");
            r1 |= 356518798;
        }
        if ((356518799 & r4) == 356518799) {
            arrayList.add("SEAT_TILT_POS");
            r1 |= 356518799;
        }
        if ((356518800 & r4) == 356518800) {
            arrayList.add("SEAT_TILT_MOVE");
            r1 |= 356518800;
        }
        if ((356518801 & r4) == 356518801) {
            arrayList.add("SEAT_LUMBAR_FORE_AFT_POS");
            r1 |= 356518801;
        }
        if ((356518802 & r4) == 356518802) {
            arrayList.add("SEAT_LUMBAR_FORE_AFT_MOVE");
            r1 |= 356518802;
        }
        if ((356518803 & r4) == 356518803) {
            arrayList.add("SEAT_LUMBAR_SIDE_SUPPORT_POS");
            r1 |= 356518803;
        }
        if ((356518804 & r4) == 356518804) {
            arrayList.add("SEAT_LUMBAR_SIDE_SUPPORT_MOVE");
            r1 |= 356518804;
        }
        if ((289409941 & r4) == 289409941) {
            arrayList.add("SEAT_HEADREST_HEIGHT_POS");
            r1 |= 289409941;
        }
        if ((356518806 & r4) == 356518806) {
            arrayList.add("SEAT_HEADREST_HEIGHT_MOVE");
            r1 |= 356518806;
        }
        if ((356518807 & r4) == 356518807) {
            arrayList.add("SEAT_HEADREST_ANGLE_POS");
            r1 |= 356518807;
        }
        if ((356518808 & r4) == 356518808) {
            arrayList.add("SEAT_HEADREST_ANGLE_MOVE");
            r1 |= 356518808;
        }
        if ((356518809 & r4) == 356518809) {
            arrayList.add("SEAT_HEADREST_FORE_AFT_POS");
            r1 |= 356518809;
        }
        if ((356518810 & r4) == 356518810) {
            arrayList.add("SEAT_HEADREST_FORE_AFT_MOVE");
            r1 |= 356518810;
        }
        if ((356518832 & r4) == 356518832) {
            arrayList.add("SEAT_OCCUPANCY");
            r1 |= 356518832;
        }
        if ((322964416 & r4) == 322964416) {
            arrayList.add("WINDOW_POS");
            r1 |= 322964416;
        }
        if ((322964417 & r4) == 322964417) {
            arrayList.add("WINDOW_MOVE");
            r1 |= 322964417;
        }
        if ((320867268 & r4) == 320867268) {
            arrayList.add("WINDOW_LOCK");
            r1 |= 320867268;
        }
        if ((299895808 & r4) == 299895808) {
            arrayList.add("VEHICLE_MAP_SERVICE");
            r1 |= 299895808;
        }
        if ((299896064 & r4) == 299896064) {
            arrayList.add("OBD2_LIVE_FRAME");
            r1 |= 299896064;
        }
        if ((299896065 & r4) == 299896065) {
            arrayList.add("OBD2_FREEZE_FRAME");
            r1 |= 299896065;
        }
        if ((299896066 & r4) == 299896066) {
            arrayList.add("OBD2_FREEZE_FRAME_INFO");
            r1 |= 299896066;
        }
        if ((299896067 & r4) == 299896067) {
            arrayList.add("OBD2_FREEZE_FRAME_CLEAR");
            r1 |= 299896067;
        }
        if ((289410560 & r4) == 289410560) {
            arrayList.add("HEADLIGHTS_STATE");
            r1 |= 289410560;
        }
        if ((289410561 & r4) == 289410561) {
            arrayList.add("HIGH_BEAM_LIGHTS_STATE");
            r1 |= 289410561;
        }
        if ((289410562 & r4) == 289410562) {
            arrayList.add("FOG_LIGHTS_STATE");
            r1 |= 289410562;
        }
        if ((289410563 & r4) == 289410563) {
            arrayList.add("HAZARD_LIGHTS_STATE");
            r1 |= 289410563;
        }
        if ((289410576 & r4) == 289410576) {
            arrayList.add("HEADLIGHTS_SWITCH");
            r1 |= 289410576;
        }
        if ((289410577 & r4) == 289410577) {
            arrayList.add("HIGH_BEAM_LIGHTS_SWITCH");
            r1 |= 289410577;
        }
        if ((289410578 & r4) == 289410578) {
            arrayList.add("FOG_LIGHTS_SWITCH");
            r1 |= 289410578;
        }
        if ((289410579 & r4) == 289410579) {
            arrayList.add("HAZARD_LIGHTS_SWITCH");
            r1 |= 289410579;
        }
        if ((289410817 & r4) == 289410817) {
            arrayList.add("CABIN_LIGHTS_STATE");
            r1 |= 289410817;
        }
        if ((289410818 & r4) == 289410818) {
            arrayList.add("CABIN_LIGHTS_SWITCH");
            r1 |= 289410818;
        }
        if ((356519683 & r4) == 356519683) {
            arrayList.add("READING_LIGHTS_STATE");
            r1 |= 356519683;
        }
        if ((356519684 & r4) == 356519684) {
            arrayList.add("READING_LIGHTS_SWITCH");
            r1 |= 356519684;
        }
        if (r4 != r1) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r1)));
        }
        return String.join(" | ", arrayList);
    }
}
