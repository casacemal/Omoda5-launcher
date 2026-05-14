package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class DiagnosticIntegerSensorIndex {
    public static final int ABSOLUTE_BAROMETRIC_PRESSURE = 11;
    public static final int AMBIENT_AIR_TEMPERATURE = 13;
    public static final int COMMANDED_SECONDARY_AIR_STATUS = 5;
    public static final int CONTROL_MODULE_VOLTAGE = 12;
    public static final int DISTANCE_TRAVELED_SINCE_CODES_CLEARED = 10;
    public static final int DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON = 8;
    public static final int DRIVER_DEMAND_PERCENT_TORQUE = 24;
    public static final int ENGINE_ACTUAL_PERCENT_TORQUE = 25;
    public static final int ENGINE_OIL_TEMPERATURE = 23;
    public static final int ENGINE_PERCENT_TORQUE_DATA_IDLE = 27;
    public static final int ENGINE_PERCENT_TORQUE_DATA_POINT1 = 28;
    public static final int ENGINE_PERCENT_TORQUE_DATA_POINT2 = 29;
    public static final int ENGINE_PERCENT_TORQUE_DATA_POINT3 = 30;
    public static final int ENGINE_PERCENT_TORQUE_DATA_POINT4 = 31;
    public static final int ENGINE_REFERENCE_PERCENT_TORQUE = 26;
    public static final int FUEL_RAIL_ABSOLUTE_PRESSURE = 22;
    public static final int FUEL_SYSTEM_STATUS = 0;
    public static final int FUEL_TYPE = 21;
    public static final int IGNITION_MONITORS_SUPPORTED = 2;
    public static final int IGNITION_SPECIFIC_MONITORS = 3;
    public static final int INTAKE_AIR_TEMPERATURE = 4;
    public static final int LAST_SYSTEM_INDEX = 31;
    public static final int MALFUNCTION_INDICATOR_LIGHT_ON = 1;
    public static final int MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR = 20;
    public static final int MAX_FUEL_AIR_EQUIVALENCE_RATIO = 16;
    public static final int MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE = 19;
    public static final int MAX_OXYGEN_SENSOR_CURRENT = 18;
    public static final int MAX_OXYGEN_SENSOR_VOLTAGE = 17;
    public static final int NUM_OXYGEN_SENSORS_PRESENT = 6;
    public static final int RUNTIME_SINCE_ENGINE_START = 7;
    public static final int TIME_SINCE_TROUBLE_CODES_CLEARED = 15;
    public static final int TIME_WITH_MALFUNCTION_LIGHT_ON = 14;
    public static final int WARMUPS_SINCE_CODES_CLEARED = 9;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "FUEL_SYSTEM_STATUS";
        }
        if (r2 == 1) {
            return "MALFUNCTION_INDICATOR_LIGHT_ON";
        }
        if (r2 == 2) {
            return "IGNITION_MONITORS_SUPPORTED";
        }
        if (r2 == 3) {
            return "IGNITION_SPECIFIC_MONITORS";
        }
        if (r2 == 4) {
            return "INTAKE_AIR_TEMPERATURE";
        }
        if (r2 == 5) {
            return "COMMANDED_SECONDARY_AIR_STATUS";
        }
        if (r2 == 6) {
            return "NUM_OXYGEN_SENSORS_PRESENT";
        }
        if (r2 == 7) {
            return "RUNTIME_SINCE_ENGINE_START";
        }
        if (r2 == 8) {
            return "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON";
        }
        if (r2 == 9) {
            return "WARMUPS_SINCE_CODES_CLEARED";
        }
        if (r2 == 10) {
            return "DISTANCE_TRAVELED_SINCE_CODES_CLEARED";
        }
        if (r2 == 11) {
            return "ABSOLUTE_BAROMETRIC_PRESSURE";
        }
        if (r2 == 12) {
            return "CONTROL_MODULE_VOLTAGE";
        }
        if (r2 == 13) {
            return "AMBIENT_AIR_TEMPERATURE";
        }
        if (r2 == 14) {
            return "TIME_WITH_MALFUNCTION_LIGHT_ON";
        }
        if (r2 == 15) {
            return "TIME_SINCE_TROUBLE_CODES_CLEARED";
        }
        if (r2 == 16) {
            return "MAX_FUEL_AIR_EQUIVALENCE_RATIO";
        }
        if (r2 == 17) {
            return "MAX_OXYGEN_SENSOR_VOLTAGE";
        }
        if (r2 == 18) {
            return "MAX_OXYGEN_SENSOR_CURRENT";
        }
        if (r2 == 19) {
            return "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE";
        }
        if (r2 == 20) {
            return "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR";
        }
        if (r2 == 21) {
            return "FUEL_TYPE";
        }
        if (r2 == 22) {
            return "FUEL_RAIL_ABSOLUTE_PRESSURE";
        }
        if (r2 == 23) {
            return "ENGINE_OIL_TEMPERATURE";
        }
        if (r2 == 24) {
            return "DRIVER_DEMAND_PERCENT_TORQUE";
        }
        if (r2 == 25) {
            return "ENGINE_ACTUAL_PERCENT_TORQUE";
        }
        if (r2 == 26) {
            return "ENGINE_REFERENCE_PERCENT_TORQUE";
        }
        if (r2 == 27) {
            return "ENGINE_PERCENT_TORQUE_DATA_IDLE";
        }
        if (r2 == 28) {
            return "ENGINE_PERCENT_TORQUE_DATA_POINT1";
        }
        if (r2 == 29) {
            return "ENGINE_PERCENT_TORQUE_DATA_POINT2";
        }
        if (r2 == 30) {
            return "ENGINE_PERCENT_TORQUE_DATA_POINT3";
        }
        if (r2 == 31) {
            return "ENGINE_PERCENT_TORQUE_DATA_POINT4";
        }
        if (r2 == 31) {
            return "LAST_SYSTEM_INDEX";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r5) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("FUEL_SYSTEM_STATUS");
        int r2 = 1;
        if ((r5 & 1) == 1) {
            arrayList.add("MALFUNCTION_INDICATOR_LIGHT_ON");
        } else {
            r2 = 0;
        }
        if ((r5 & 2) == 2) {
            arrayList.add("IGNITION_MONITORS_SUPPORTED");
            r2 |= 2;
        }
        if ((r5 & 3) == 3) {
            arrayList.add("IGNITION_SPECIFIC_MONITORS");
            r2 |= 3;
        }
        if ((r5 & 4) == 4) {
            arrayList.add("INTAKE_AIR_TEMPERATURE");
            r2 |= 4;
        }
        if ((r5 & 5) == 5) {
            arrayList.add("COMMANDED_SECONDARY_AIR_STATUS");
            r2 |= 5;
        }
        if ((r5 & 6) == 6) {
            arrayList.add("NUM_OXYGEN_SENSORS_PRESENT");
            r2 |= 6;
        }
        if ((r5 & 7) == 7) {
            arrayList.add("RUNTIME_SINCE_ENGINE_START");
            r2 |= 7;
        }
        if ((r5 & 8) == 8) {
            arrayList.add("DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON");
            r2 |= 8;
        }
        if ((r5 & 9) == 9) {
            arrayList.add("WARMUPS_SINCE_CODES_CLEARED");
            r2 |= 9;
        }
        if ((r5 & 10) == 10) {
            arrayList.add("DISTANCE_TRAVELED_SINCE_CODES_CLEARED");
            r2 |= 10;
        }
        if ((r5 & 11) == 11) {
            arrayList.add("ABSOLUTE_BAROMETRIC_PRESSURE");
            r2 |= 11;
        }
        if ((r5 & 12) == 12) {
            arrayList.add("CONTROL_MODULE_VOLTAGE");
            r2 |= 12;
        }
        if ((r5 & 13) == 13) {
            arrayList.add("AMBIENT_AIR_TEMPERATURE");
            r2 |= 13;
        }
        if ((r5 & 14) == 14) {
            arrayList.add("TIME_WITH_MALFUNCTION_LIGHT_ON");
            r2 |= 14;
        }
        if ((r5 & 15) == 15) {
            arrayList.add("TIME_SINCE_TROUBLE_CODES_CLEARED");
            r2 |= 15;
        }
        if ((r5 & 16) == 16) {
            arrayList.add("MAX_FUEL_AIR_EQUIVALENCE_RATIO");
            r2 |= 16;
        }
        if ((r5 & 17) == 17) {
            arrayList.add("MAX_OXYGEN_SENSOR_VOLTAGE");
            r2 |= 17;
        }
        if ((r5 & 18) == 18) {
            arrayList.add("MAX_OXYGEN_SENSOR_CURRENT");
            r2 |= 18;
        }
        if ((r5 & 19) == 19) {
            arrayList.add("MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE");
            r2 |= 19;
        }
        if ((r5 & 20) == 20) {
            arrayList.add("MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR");
            r2 |= 20;
        }
        if ((r5 & 21) == 21) {
            arrayList.add("FUEL_TYPE");
            r2 |= 21;
        }
        if ((r5 & 22) == 22) {
            arrayList.add("FUEL_RAIL_ABSOLUTE_PRESSURE");
            r2 |= 22;
        }
        if ((r5 & 23) == 23) {
            arrayList.add("ENGINE_OIL_TEMPERATURE");
            r2 |= 23;
        }
        if ((r5 & 24) == 24) {
            arrayList.add("DRIVER_DEMAND_PERCENT_TORQUE");
            r2 |= 24;
        }
        if ((r5 & 25) == 25) {
            arrayList.add("ENGINE_ACTUAL_PERCENT_TORQUE");
            r2 |= 25;
        }
        if ((r5 & 26) == 26) {
            arrayList.add("ENGINE_REFERENCE_PERCENT_TORQUE");
            r2 |= 26;
        }
        if ((r5 & 27) == 27) {
            arrayList.add("ENGINE_PERCENT_TORQUE_DATA_IDLE");
            r2 |= 27;
        }
        if ((r5 & 28) == 28) {
            arrayList.add("ENGINE_PERCENT_TORQUE_DATA_POINT1");
            r2 |= 28;
        }
        if ((r5 & 29) == 29) {
            arrayList.add("ENGINE_PERCENT_TORQUE_DATA_POINT2");
            r2 |= 29;
        }
        if ((r5 & 30) == 30) {
            arrayList.add("ENGINE_PERCENT_TORQUE_DATA_POINT3");
            r2 |= 30;
        }
        int r1 = r5 & 31;
        if (r1 == 31) {
            arrayList.add("ENGINE_PERCENT_TORQUE_DATA_POINT4");
            r2 |= 31;
        }
        if (r1 == 31) {
            arrayList.add("LAST_SYSTEM_INDEX");
            r2 |= 31;
        }
        if (r5 != r2) {
            arrayList.add("0x" + Integer.toHexString(r5 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
