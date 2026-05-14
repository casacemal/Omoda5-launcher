package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleApPowerStateReport {
    public static final int DEEP_SLEEP_ENTRY = 2;
    public static final int DEEP_SLEEP_EXIT = 3;

    /* renamed from: ON */
    public static final int f4ON = 6;
    public static final int SHUTDOWN_CANCELLED = 8;
    public static final int SHUTDOWN_POSTPONE = 4;
    public static final int SHUTDOWN_PREPARE = 7;
    public static final int SHUTDOWN_START = 5;
    public static final int WAIT_FOR_VHAL = 1;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "WAIT_FOR_VHAL";
        }
        if (r2 == 2) {
            return "DEEP_SLEEP_ENTRY";
        }
        if (r2 == 3) {
            return "DEEP_SLEEP_EXIT";
        }
        if (r2 == 4) {
            return "SHUTDOWN_POSTPONE";
        }
        if (r2 == 5) {
            return "SHUTDOWN_START";
        }
        if (r2 == 6) {
            return "ON";
        }
        if (r2 == 7) {
            return "SHUTDOWN_PREPARE";
        }
        if (r2 == 8) {
            return "SHUTDOWN_CANCELLED";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("WAIT_FOR_VHAL");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("DEEP_SLEEP_ENTRY");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("DEEP_SLEEP_EXIT");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("SHUTDOWN_POSTPONE");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("SHUTDOWN_START");
            r2 |= 5;
        }
        if ((r4 & 6) == 6) {
            arrayList.add("ON");
            r2 |= 6;
        }
        if ((r4 & 7) == 7) {
            arrayList.add("SHUTDOWN_PREPARE");
            r2 |= 7;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("SHUTDOWN_CANCELLED");
            r2 |= 8;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
