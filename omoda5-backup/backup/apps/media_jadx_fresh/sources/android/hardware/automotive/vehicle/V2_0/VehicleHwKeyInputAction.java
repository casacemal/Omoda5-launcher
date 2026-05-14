package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleHwKeyInputAction {
    public static final int ACTION_DOWN = 1;
    public static final int ACTION_UP = 0;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "ACTION_DOWN";
        }
        if (r2 == 0) {
            return "ACTION_UP";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("ACTION_DOWN");
        } else {
            r2 = 0;
        }
        arrayList.add("ACTION_UP");
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
