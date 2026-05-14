package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Obd2IgnitionMonitorKind {
    public static final int COMPRESSION = 1;
    public static final int SPARK = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "SPARK";
        }
        if (r2 == 1) {
            return "COMPRESSION";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("SPARK");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("COMPRESSION");
        } else {
            r2 = 0;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
