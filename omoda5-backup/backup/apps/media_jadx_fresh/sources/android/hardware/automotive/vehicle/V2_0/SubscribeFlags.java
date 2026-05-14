package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class SubscribeFlags {
    public static final int EVENTS_FROM_ANDROID = 2;
    public static final int EVENTS_FROM_CAR = 1;
    public static final int UNDEFINED = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "UNDEFINED";
        }
        if (r2 == 1) {
            return "EVENTS_FROM_CAR";
        }
        if (r2 == 2) {
            return "EVENTS_FROM_ANDROID";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("UNDEFINED");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("EVENTS_FROM_CAR");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("EVENTS_FROM_ANDROID");
            r2 |= 2;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
