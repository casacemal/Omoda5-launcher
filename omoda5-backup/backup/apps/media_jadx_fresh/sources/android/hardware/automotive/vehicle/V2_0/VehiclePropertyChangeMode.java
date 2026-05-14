package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehiclePropertyChangeMode {
    public static final int CONTINUOUS = 2;
    public static final int ON_CHANGE = 1;
    public static final int STATIC = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "STATIC";
        }
        if (r2 == 1) {
            return "ON_CHANGE";
        }
        if (r2 == 2) {
            return "CONTINUOUS";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("STATIC");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("ON_CHANGE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("CONTINUOUS");
            r2 |= 2;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
