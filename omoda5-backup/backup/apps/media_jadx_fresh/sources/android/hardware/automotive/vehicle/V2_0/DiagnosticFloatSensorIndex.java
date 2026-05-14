package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class DiagnosticFloatSensorIndex {
    public static final int ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE = 58;
    public static final int ABSOLUTE_LOAD_VALUE = 48;
    public static final int ABSOLUTE_THROTTLE_POSITION_B = 51;
    public static final int ABSOLUTE_THROTTLE_POSITION_C = 52;
    public static final int ACCELERATOR_PEDAL_POSITION_D = 53;
    public static final int ACCELERATOR_PEDAL_POSITION_E = 54;
    public static final int ACCELERATOR_PEDAL_POSITION_F = 55;
    public static final int CALCULATED_ENGINE_LOAD = 0;
    public static final int CATALYST_TEMPERATURE_BANK1_SENSOR1 = 44;
    public static final int CATALYST_TEMPERATURE_BANK1_SENSOR2 = 46;
    public static final int CATALYST_TEMPERATURE_BANK2_SENSOR1 = 45;
    public static final int CATALYST_TEMPERATURE_BANK2_SENSOR2 = 47;
    public static final int COMMANDED_EVAPORATIVE_PURGE = 41;
    public static final int COMMANDED_EXHAUST_GAS_RECIRCULATION = 39;
    public static final int COMMANDED_THROTTLE_ACTUATOR = 56;
    public static final int ENGINE_COOLANT_TEMPERATURE = 1;
    public static final int ENGINE_FUEL_RATE = 70;
    public static final int ENGINE_RPM = 8;
    public static final int ETHANOL_FUEL_PERCENTAGE = 57;
    public static final int EVAPORATION_SYSTEM_VAPOR_PRESSURE = 43;
    public static final int EXHAUST_GAS_RECIRCULATION_ERROR = 40;
    public static final int FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO = 49;
    public static final int FUEL_INJECTION_TIMING = 69;
    public static final int FUEL_PRESSURE = 6;
    public static final int FUEL_RAIL_GAUGE_PRESSURE = 38;
    public static final int FUEL_RAIL_PRESSURE = 37;
    public static final int FUEL_TANK_LEVEL_INPUT = 42;
    public static final int HYBRID_BATTERY_PACK_REMAINING_LIFE = 68;
    public static final int INTAKE_MANIFOLD_ABSOLUTE_PRESSURE = 7;
    public static final int LAST_SYSTEM_INDEX = 70;
    public static final int LONG_TERM_FUEL_TRIM_BANK1 = 3;
    public static final int LONG_TERM_FUEL_TRIM_BANK2 = 5;
    public static final int LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1 = 63;
    public static final int LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2 = 64;
    public static final int LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3 = 65;
    public static final int LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4 = 66;
    public static final int MAF_AIR_FLOW_RATE = 11;
    public static final int OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO = 15;
    public static final int OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM = 14;
    public static final int OXYGEN_SENSOR1_VOLTAGE = 13;
    public static final int OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO = 18;
    public static final int OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM = 17;
    public static final int OXYGEN_SENSOR2_VOLTAGE = 16;
    public static final int OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO = 21;
    public static final int OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM = 20;
    public static final int OXYGEN_SENSOR3_VOLTAGE = 19;
    public static final int OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO = 24;
    public static final int OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM = 23;
    public static final int OXYGEN_SENSOR4_VOLTAGE = 22;
    public static final int OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO = 27;
    public static final int OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM = 26;
    public static final int OXYGEN_SENSOR5_VOLTAGE = 25;
    public static final int OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO = 30;
    public static final int OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM = 29;
    public static final int OXYGEN_SENSOR6_VOLTAGE = 28;
    public static final int OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO = 33;
    public static final int OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM = 32;
    public static final int OXYGEN_SENSOR7_VOLTAGE = 31;
    public static final int OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO = 36;
    public static final int OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM = 35;
    public static final int OXYGEN_SENSOR8_VOLTAGE = 34;
    public static final int RELATIVE_ACCELERATOR_PEDAL_POSITION = 67;
    public static final int RELATIVE_THROTTLE_POSITION = 50;
    public static final int SHORT_TERM_FUEL_TRIM_BANK1 = 2;
    public static final int SHORT_TERM_FUEL_TRIM_BANK2 = 4;
    public static final int SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1 = 59;
    public static final int SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2 = 60;
    public static final int SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3 = 61;
    public static final int SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4 = 62;
    public static final int THROTTLE_POSITION = 12;
    public static final int TIMING_ADVANCE = 10;
    public static final int VEHICLE_SPEED = 9;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "CALCULATED_ENGINE_LOAD";
        }
        if (r2 == 1) {
            return "ENGINE_COOLANT_TEMPERATURE";
        }
        if (r2 == 2) {
            return "SHORT_TERM_FUEL_TRIM_BANK1";
        }
        if (r2 == 3) {
            return "LONG_TERM_FUEL_TRIM_BANK1";
        }
        if (r2 == 4) {
            return "SHORT_TERM_FUEL_TRIM_BANK2";
        }
        if (r2 == 5) {
            return "LONG_TERM_FUEL_TRIM_BANK2";
        }
        if (r2 == 6) {
            return "FUEL_PRESSURE";
        }
        if (r2 == 7) {
            return "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE";
        }
        if (r2 == 8) {
            return "ENGINE_RPM";
        }
        if (r2 == 9) {
            return "VEHICLE_SPEED";
        }
        if (r2 == 10) {
            return "TIMING_ADVANCE";
        }
        if (r2 == 11) {
            return "MAF_AIR_FLOW_RATE";
        }
        if (r2 == 12) {
            return "THROTTLE_POSITION";
        }
        if (r2 == 13) {
            return "OXYGEN_SENSOR1_VOLTAGE";
        }
        if (r2 == 14) {
            return "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 15) {
            return "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 16) {
            return "OXYGEN_SENSOR2_VOLTAGE";
        }
        if (r2 == 17) {
            return "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 18) {
            return "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 19) {
            return "OXYGEN_SENSOR3_VOLTAGE";
        }
        if (r2 == 20) {
            return "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 21) {
            return "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 22) {
            return "OXYGEN_SENSOR4_VOLTAGE";
        }
        if (r2 == 23) {
            return "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 24) {
            return "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 25) {
            return "OXYGEN_SENSOR5_VOLTAGE";
        }
        if (r2 == 26) {
            return "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 27) {
            return "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 28) {
            return "OXYGEN_SENSOR6_VOLTAGE";
        }
        if (r2 == 29) {
            return "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 30) {
            return "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 31) {
            return "OXYGEN_SENSOR7_VOLTAGE";
        }
        if (r2 == 32) {
            return "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 33) {
            return "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 34) {
            return "OXYGEN_SENSOR8_VOLTAGE";
        }
        if (r2 == 35) {
            return "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM";
        }
        if (r2 == 36) {
            return "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 37) {
            return "FUEL_RAIL_PRESSURE";
        }
        if (r2 == 38) {
            return "FUEL_RAIL_GAUGE_PRESSURE";
        }
        if (r2 == 39) {
            return "COMMANDED_EXHAUST_GAS_RECIRCULATION";
        }
        if (r2 == 40) {
            return "EXHAUST_GAS_RECIRCULATION_ERROR";
        }
        if (r2 == 41) {
            return "COMMANDED_EVAPORATIVE_PURGE";
        }
        if (r2 == 42) {
            return "FUEL_TANK_LEVEL_INPUT";
        }
        if (r2 == 43) {
            return "EVAPORATION_SYSTEM_VAPOR_PRESSURE";
        }
        if (r2 == 44) {
            return "CATALYST_TEMPERATURE_BANK1_SENSOR1";
        }
        if (r2 == 45) {
            return "CATALYST_TEMPERATURE_BANK2_SENSOR1";
        }
        if (r2 == 46) {
            return "CATALYST_TEMPERATURE_BANK1_SENSOR2";
        }
        if (r2 == 47) {
            return "CATALYST_TEMPERATURE_BANK2_SENSOR2";
        }
        if (r2 == 48) {
            return "ABSOLUTE_LOAD_VALUE";
        }
        if (r2 == 49) {
            return "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO";
        }
        if (r2 == 50) {
            return "RELATIVE_THROTTLE_POSITION";
        }
        if (r2 == 51) {
            return "ABSOLUTE_THROTTLE_POSITION_B";
        }
        if (r2 == 52) {
            return "ABSOLUTE_THROTTLE_POSITION_C";
        }
        if (r2 == 53) {
            return "ACCELERATOR_PEDAL_POSITION_D";
        }
        if (r2 == 54) {
            return "ACCELERATOR_PEDAL_POSITION_E";
        }
        if (r2 == 55) {
            return "ACCELERATOR_PEDAL_POSITION_F";
        }
        if (r2 == 56) {
            return "COMMANDED_THROTTLE_ACTUATOR";
        }
        if (r2 == 57) {
            return "ETHANOL_FUEL_PERCENTAGE";
        }
        if (r2 == 58) {
            return "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE";
        }
        if (r2 == 59) {
            return "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1";
        }
        if (r2 == 60) {
            return "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2";
        }
        if (r2 == 61) {
            return "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3";
        }
        if (r2 == 62) {
            return "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4";
        }
        if (r2 == 63) {
            return "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1";
        }
        if (r2 == 64) {
            return "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2";
        }
        if (r2 == 65) {
            return "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3";
        }
        if (r2 == 66) {
            return "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4";
        }
        if (r2 == 67) {
            return "RELATIVE_ACCELERATOR_PEDAL_POSITION";
        }
        if (r2 == 68) {
            return "HYBRID_BATTERY_PACK_REMAINING_LIFE";
        }
        if (r2 == 69) {
            return "FUEL_INJECTION_TIMING";
        }
        if (r2 == 70) {
            return "ENGINE_FUEL_RATE";
        }
        if (r2 == 70) {
            return "LAST_SYSTEM_INDEX";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("CALCULATED_ENGINE_LOAD");
        int r2 = 1;
        if ((r5 & 1) == 1) {
            arrayList.add("ENGINE_COOLANT_TEMPERATURE");
        } else {
            r2 = 0;
        }
        if ((r5 & 2) == 2) {
            arrayList.add("SHORT_TERM_FUEL_TRIM_BANK1");
            r2 |= 2;
        }
        if ((r5 & 3) == 3) {
            arrayList.add("LONG_TERM_FUEL_TRIM_BANK1");
            r2 |= 3;
        }
        if ((r5 & 4) == 4) {
            arrayList.add("SHORT_TERM_FUEL_TRIM_BANK2");
            r2 |= 4;
        }
        if ((r5 & 5) == 5) {
            arrayList.add("LONG_TERM_FUEL_TRIM_BANK2");
            r2 |= 5;
        }
        if ((r5 & 6) == 6) {
            arrayList.add("FUEL_PRESSURE");
            r2 |= 6;
        }
        if ((r5 & 7) == 7) {
            arrayList.add("INTAKE_MANIFOLD_ABSOLUTE_PRESSURE");
            r2 |= 7;
        }
        if ((r5 & 8) == 8) {
            arrayList.add("ENGINE_RPM");
            r2 |= 8;
        }
        if ((r5 & 9) == 9) {
            arrayList.add("VEHICLE_SPEED");
            r2 |= 9;
        }
        if ((r5 & 10) == 10) {
            arrayList.add("TIMING_ADVANCE");
            r2 |= 10;
        }
        if ((r5 & 11) == 11) {
            arrayList.add("MAF_AIR_FLOW_RATE");
            r2 |= 11;
        }
        if ((r5 & 12) == 12) {
            arrayList.add("THROTTLE_POSITION");
            r2 |= 12;
        }
        if ((r5 & 13) == 13) {
            arrayList.add("OXYGEN_SENSOR1_VOLTAGE");
            r2 |= 13;
        }
        if ((r5 & 14) == 14) {
            arrayList.add("OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM");
            r2 |= 14;
        }
        if ((r5 & 15) == 15) {
            arrayList.add("OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 15;
        }
        if ((r5 & 16) == 16) {
            arrayList.add("OXYGEN_SENSOR2_VOLTAGE");
            r2 |= 16;
        }
        if ((r5 & 17) == 17) {
            arrayList.add("OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM");
            r2 |= 17;
        }
        if ((r5 & 18) == 18) {
            arrayList.add("OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 18;
        }
        if ((r5 & 19) == 19) {
            arrayList.add("OXYGEN_SENSOR3_VOLTAGE");
            r2 |= 19;
        }
        if ((r5 & 20) == 20) {
            arrayList.add("OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM");
            r2 |= 20;
        }
        if ((r5 & 21) == 21) {
            arrayList.add("OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 21;
        }
        if ((r5 & 22) == 22) {
            arrayList.add("OXYGEN_SENSOR4_VOLTAGE");
            r2 |= 22;
        }
        if ((r5 & 23) == 23) {
            arrayList.add("OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM");
            r2 |= 23;
        }
        if ((r5 & 24) == 24) {
            arrayList.add("OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 24;
        }
        if ((r5 & 25) == 25) {
            arrayList.add("OXYGEN_SENSOR5_VOLTAGE");
            r2 |= 25;
        }
        if ((r5 & 26) == 26) {
            arrayList.add("OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM");
            r2 |= 26;
        }
        if ((r5 & 27) == 27) {
            arrayList.add("OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 27;
        }
        if ((r5 & 28) == 28) {
            arrayList.add("OXYGEN_SENSOR6_VOLTAGE");
            r2 |= 28;
        }
        if ((r5 & 29) == 29) {
            arrayList.add("OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM");
            r2 |= 29;
        }
        if ((r5 & 30) == 30) {
            arrayList.add("OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 30;
        }
        if ((r5 & 31) == 31) {
            arrayList.add("OXYGEN_SENSOR7_VOLTAGE");
            r2 |= 31;
        }
        if ((r5 & 32) == 32) {
            arrayList.add("OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM");
            r2 |= 32;
        }
        if ((r5 & 33) == 33) {
            arrayList.add("OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 33;
        }
        if ((r5 & 34) == 34) {
            arrayList.add("OXYGEN_SENSOR8_VOLTAGE");
            r2 |= 34;
        }
        if ((r5 & 35) == 35) {
            arrayList.add("OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM");
            r2 |= 35;
        }
        if ((r5 & 36) == 36) {
            arrayList.add("OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 36;
        }
        if ((r5 & 37) == 37) {
            arrayList.add("FUEL_RAIL_PRESSURE");
            r2 |= 37;
        }
        if ((r5 & 38) == 38) {
            arrayList.add("FUEL_RAIL_GAUGE_PRESSURE");
            r2 |= 38;
        }
        if ((r5 & 39) == 39) {
            arrayList.add("COMMANDED_EXHAUST_GAS_RECIRCULATION");
            r2 |= 39;
        }
        if ((r5 & 40) == 40) {
            arrayList.add("EXHAUST_GAS_RECIRCULATION_ERROR");
            r2 |= 40;
        }
        if ((r5 & 41) == 41) {
            arrayList.add("COMMANDED_EVAPORATIVE_PURGE");
            r2 |= 41;
        }
        if ((r5 & 42) == 42) {
            arrayList.add("FUEL_TANK_LEVEL_INPUT");
            r2 |= 42;
        }
        if ((r5 & 43) == 43) {
            arrayList.add("EVAPORATION_SYSTEM_VAPOR_PRESSURE");
            r2 |= 43;
        }
        if ((r5 & 44) == 44) {
            arrayList.add("CATALYST_TEMPERATURE_BANK1_SENSOR1");
            r2 |= 44;
        }
        if ((r5 & 45) == 45) {
            arrayList.add("CATALYST_TEMPERATURE_BANK2_SENSOR1");
            r2 |= 45;
        }
        if ((r5 & 46) == 46) {
            arrayList.add("CATALYST_TEMPERATURE_BANK1_SENSOR2");
            r2 |= 46;
        }
        if ((r5 & 47) == 47) {
            arrayList.add("CATALYST_TEMPERATURE_BANK2_SENSOR2");
            r2 |= 47;
        }
        if ((r5 & 48) == 48) {
            arrayList.add("ABSOLUTE_LOAD_VALUE");
            r2 |= 48;
        }
        if ((r5 & 49) == 49) {
            arrayList.add("FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO");
            r2 |= 49;
        }
        if ((r5 & 50) == 50) {
            arrayList.add("RELATIVE_THROTTLE_POSITION");
            r2 |= 50;
        }
        if ((r5 & 51) == 51) {
            arrayList.add("ABSOLUTE_THROTTLE_POSITION_B");
            r2 |= 51;
        }
        if ((r5 & 52) == 52) {
            arrayList.add("ABSOLUTE_THROTTLE_POSITION_C");
            r2 |= 52;
        }
        if ((r5 & 53) == 53) {
            arrayList.add("ACCELERATOR_PEDAL_POSITION_D");
            r2 |= 53;
        }
        if ((r5 & 54) == 54) {
            arrayList.add("ACCELERATOR_PEDAL_POSITION_E");
            r2 |= 54;
        }
        if ((r5 & 55) == 55) {
            arrayList.add("ACCELERATOR_PEDAL_POSITION_F");
            r2 |= 55;
        }
        if ((r5 & 56) == 56) {
            arrayList.add("COMMANDED_THROTTLE_ACTUATOR");
            r2 |= 56;
        }
        if ((r5 & 57) == 57) {
            arrayList.add("ETHANOL_FUEL_PERCENTAGE");
            r2 |= 57;
        }
        if ((r5 & 58) == 58) {
            arrayList.add("ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE");
            r2 |= 58;
        }
        if ((r5 & 59) == 59) {
            arrayList.add("SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1");
            r2 |= 59;
        }
        if ((r5 & 60) == 60) {
            arrayList.add("SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2");
            r2 |= 60;
        }
        if ((r5 & 61) == 61) {
            arrayList.add("SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3");
            r2 |= 61;
        }
        if ((r5 & 62) == 62) {
            arrayList.add("SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4");
            r2 |= 62;
        }
        if ((r5 & 63) == 63) {
            arrayList.add("LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1");
            r2 |= 63;
        }
        if ((r5 & 64) == 64) {
            arrayList.add("LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2");
            r2 |= 64;
        }
        if ((r5 & 65) == 65) {
            arrayList.add("LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3");
            r2 |= 65;
        }
        if ((r5 & 66) == 66) {
            arrayList.add("LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4");
            r2 |= 66;
        }
        if ((r5 & 67) == 67) {
            arrayList.add("RELATIVE_ACCELERATOR_PEDAL_POSITION");
            r2 |= 67;
        }
        if ((r5 & 68) == 68) {
            arrayList.add("HYBRID_BATTERY_PACK_REMAINING_LIFE");
            r2 |= 68;
        }
        if ((r5 & 69) == 69) {
            arrayList.add("FUEL_INJECTION_TIMING");
            r2 |= 69;
        }
        int r1 = r5 & 70;
        if (r1 == 70) {
            arrayList.add("ENGINE_FUEL_RATE");
            r2 |= 70;
        }
        if (r1 == 70) {
            arrayList.add("LAST_SYSTEM_INDEX");
            r2 |= 70;
        }
        if (r5 != r2) {
            arrayList.add("0x" + Integer.toHexString(r5 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
