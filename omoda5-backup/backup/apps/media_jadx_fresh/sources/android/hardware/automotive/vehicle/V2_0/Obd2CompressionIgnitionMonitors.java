package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Obd2CompressionIgnitionMonitors {
    public static final int BOOST_PRESSURE_AVAILABLE = 4096;
    public static final int BOOST_PRESSURE_INCOMPLETE = 8192;
    public static final int COMPONENTS_AVAILABLE = 1;
    public static final int COMPONENTS_INCOMPLETE = 2;
    public static final int EGR_OR_VVT_AVAILABLE = 64;
    public static final int EGR_OR_VVT_INCOMPLETE = 128;
    public static final int EXHAUST_GAS_SENSOR_AVAILABLE = 1024;
    public static final int EXHAUST_GAS_SENSOR_INCOMPLETE = 2048;
    public static final int FUEL_SYSTEM_AVAILABLE = 4;
    public static final int FUEL_SYSTEM_INCOMPLETE = 8;
    public static final int MISFIRE_AVAILABLE = 16;
    public static final int MISFIRE_INCOMPLETE = 32;
    public static final int NMHC_CATALYST_AVAILABLE = 65536;
    public static final int NMHC_CATALYST_INCOMPLETE = 131072;
    public static final int NOx_SCR_AVAILABLE = 16384;
    public static final int NOx_SCR_INCOMPLETE = 32768;
    public static final int PM_FILTER_AVAILABLE = 256;
    public static final int PM_FILTER_INCOMPLETE = 512;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "COMPONENTS_AVAILABLE";
        }
        if (r2 == 2) {
            return "COMPONENTS_INCOMPLETE";
        }
        if (r2 == 4) {
            return "FUEL_SYSTEM_AVAILABLE";
        }
        if (r2 == 8) {
            return "FUEL_SYSTEM_INCOMPLETE";
        }
        if (r2 == 16) {
            return "MISFIRE_AVAILABLE";
        }
        if (r2 == 32) {
            return "MISFIRE_INCOMPLETE";
        }
        if (r2 == 64) {
            return "EGR_OR_VVT_AVAILABLE";
        }
        if (r2 == 128) {
            return "EGR_OR_VVT_INCOMPLETE";
        }
        if (r2 == 256) {
            return "PM_FILTER_AVAILABLE";
        }
        if (r2 == 512) {
            return "PM_FILTER_INCOMPLETE";
        }
        if (r2 == 1024) {
            return "EXHAUST_GAS_SENSOR_AVAILABLE";
        }
        if (r2 == 2048) {
            return "EXHAUST_GAS_SENSOR_INCOMPLETE";
        }
        if (r2 == 4096) {
            return "BOOST_PRESSURE_AVAILABLE";
        }
        if (r2 == 8192) {
            return "BOOST_PRESSURE_INCOMPLETE";
        }
        if (r2 == 16384) {
            return "NOx_SCR_AVAILABLE";
        }
        if (r2 == 32768) {
            return "NOx_SCR_INCOMPLETE";
        }
        if (r2 == 65536) {
            return "NMHC_CATALYST_AVAILABLE";
        }
        if (r2 == 131072) {
            return "NMHC_CATALYST_INCOMPLETE";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("COMPONENTS_AVAILABLE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("COMPONENTS_INCOMPLETE");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("FUEL_SYSTEM_AVAILABLE");
            r2 |= 4;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("FUEL_SYSTEM_INCOMPLETE");
            r2 |= 8;
        }
        if ((r4 & 16) == 16) {
            arrayList.add("MISFIRE_AVAILABLE");
            r2 |= 16;
        }
        if ((r4 & 32) == 32) {
            arrayList.add("MISFIRE_INCOMPLETE");
            r2 |= 32;
        }
        if ((r4 & 64) == 64) {
            arrayList.add("EGR_OR_VVT_AVAILABLE");
            r2 |= 64;
        }
        if ((r4 & 128) == 128) {
            arrayList.add("EGR_OR_VVT_INCOMPLETE");
            r2 |= 128;
        }
        if ((r4 & 256) == 256) {
            arrayList.add("PM_FILTER_AVAILABLE");
            r2 |= 256;
        }
        if ((r4 & 512) == 512) {
            arrayList.add("PM_FILTER_INCOMPLETE");
            r2 |= 512;
        }
        if ((r4 & 1024) == 1024) {
            arrayList.add("EXHAUST_GAS_SENSOR_AVAILABLE");
            r2 |= 1024;
        }
        if ((r4 & 2048) == 2048) {
            arrayList.add("EXHAUST_GAS_SENSOR_INCOMPLETE");
            r2 |= 2048;
        }
        if ((r4 & 4096) == 4096) {
            arrayList.add("BOOST_PRESSURE_AVAILABLE");
            r2 |= 4096;
        }
        if ((r4 & 8192) == 8192) {
            arrayList.add("BOOST_PRESSURE_INCOMPLETE");
            r2 |= 8192;
        }
        if ((r4 & 16384) == 16384) {
            arrayList.add("NOx_SCR_AVAILABLE");
            r2 |= 16384;
        }
        if ((r4 & 32768) == 32768) {
            arrayList.add("NOx_SCR_INCOMPLETE");
            r2 |= 32768;
        }
        if ((r4 & 65536) == 65536) {
            arrayList.add("NMHC_CATALYST_AVAILABLE");
            r2 |= 65536;
        }
        if ((r4 & 131072) == 131072) {
            arrayList.add("NMHC_CATALYST_INCOMPLETE");
            r2 |= 131072;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
