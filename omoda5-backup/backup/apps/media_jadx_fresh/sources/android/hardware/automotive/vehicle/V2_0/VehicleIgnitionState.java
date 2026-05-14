package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleIgnitionState {
    public static final int ACC = 3;
    public static final int LOCK = 1;
    public static final int OFF = 2;

    /* renamed from: ON */
    public static final int f6ON = 4;
    public static final int START = 5;
    public static final int UNDEFINED = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "UNDEFINED";
        }
        if (r2 == 1) {
            return "LOCK";
        }
        if (r2 == 2) {
            return "OFF";
        }
        if (r2 == 3) {
            return "ACC";
        }
        if (r2 == 4) {
            return "ON";
        }
        if (r2 == 5) {
            return "START";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("UNDEFINED");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("LOCK");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("OFF");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("ACC");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("ON");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("START");
            r2 |= 5;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
