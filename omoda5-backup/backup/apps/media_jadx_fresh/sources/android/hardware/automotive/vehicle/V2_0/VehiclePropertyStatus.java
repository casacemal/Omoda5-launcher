package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehiclePropertyStatus {
    public static final int AVAILABLE = 0;
    public static final int ERROR = 2;
    public static final int UNAVAILABLE = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "AVAILABLE";
        }
        if (r2 == 1) {
            return "UNAVAILABLE";
        }
        if (r2 == 2) {
            return "ERROR";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("AVAILABLE");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("UNAVAILABLE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("ERROR");
            r2 |= 2;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
