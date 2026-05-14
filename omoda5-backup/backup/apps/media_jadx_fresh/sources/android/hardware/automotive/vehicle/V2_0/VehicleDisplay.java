package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleDisplay {
    public static final int INSTRUMENT_CLUSTER = 1;
    public static final int MAIN = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "MAIN";
        }
        if (r2 == 1) {
            return "INSTRUMENT_CLUSTER";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("MAIN");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("INSTRUMENT_CLUSTER");
        } else {
            r2 = 0;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
