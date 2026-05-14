package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleAreaMirror {
    public static final int DRIVER_CENTER = 4;
    public static final int DRIVER_LEFT = 1;
    public static final int DRIVER_RIGHT = 2;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "DRIVER_LEFT";
        }
        if (r2 == 2) {
            return "DRIVER_RIGHT";
        }
        if (r2 == 4) {
            return "DRIVER_CENTER";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("DRIVER_LEFT");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("DRIVER_RIGHT");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("DRIVER_CENTER");
            r2 |= 4;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
