package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Obd2CommonIgnitionMonitors {
    public static final int COMPONENTS_AVAILABLE = 1;
    public static final int COMPONENTS_INCOMPLETE = 2;
    public static final int FUEL_SYSTEM_AVAILABLE = 4;
    public static final int FUEL_SYSTEM_INCOMPLETE = 8;
    public static final int MISFIRE_AVAILABLE = 16;
    public static final int MISFIRE_INCOMPLETE = 32;

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
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
