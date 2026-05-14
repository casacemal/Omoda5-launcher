package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleApPowerStateShutdownParam {
    public static final int CAN_SLEEP = 2;
    public static final int SHUTDOWN_IMMEDIATELY = 1;
    public static final int SHUTDOWN_ONLY = 3;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "SHUTDOWN_IMMEDIATELY";
        }
        if (r2 == 2) {
            return "CAN_SLEEP";
        }
        if (r2 == 3) {
            return "SHUTDOWN_ONLY";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("SHUTDOWN_IMMEDIATELY");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("CAN_SLEEP");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("SHUTDOWN_ONLY");
            r2 |= 3;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
