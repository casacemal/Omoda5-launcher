package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleApPowerStateReqIndex {
    public static final int ADDITIONAL = 1;
    public static final int STATE = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "STATE";
        }
        if (r2 == 1) {
            return "ADDITIONAL";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("STATE");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("ADDITIONAL");
        } else {
            r2 = 0;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
