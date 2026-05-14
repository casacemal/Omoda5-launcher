package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleOilLevel {
    public static final int CRITICALLY_LOW = 0;
    public static final int ERROR = 4;
    public static final int HIGH = 3;
    public static final int LOW = 1;
    public static final int NORMAL = 2;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "CRITICALLY_LOW";
        }
        if (r2 == 1) {
            return "LOW";
        }
        if (r2 == 2) {
            return "NORMAL";
        }
        if (r2 == 3) {
            return "HIGH";
        }
        if (r2 == 4) {
            return "ERROR";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("CRITICALLY_LOW");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("LOW");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("NORMAL");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("HIGH");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("ERROR");
            r2 |= 4;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
