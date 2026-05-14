package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleApPowerStateReq {
    public static final int CANCEL_SHUTDOWN = 2;
    public static final int FINISHED = 3;

    /* renamed from: ON */
    public static final int f5ON = 0;
    public static final int SHUTDOWN_PREPARE = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "ON";
        }
        if (r2 == 1) {
            return "SHUTDOWN_PREPARE";
        }
        if (r2 == 2) {
            return "CANCEL_SHUTDOWN";
        }
        if (r2 == 3) {
            return "FINISHED";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("ON");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("SHUTDOWN_PREPARE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("CANCEL_SHUTDOWN");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("FINISHED");
            r2 |= 3;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
