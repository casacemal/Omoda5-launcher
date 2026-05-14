package android.hardware.automotive.YFvehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YFVehicleAreaTire {
    public static final int BACK_LEFT = 4;
    public static final int BACK_RIGHT = 8;
    public static final int FRONT_LEFT = 1;
    public static final int FRONT_RIGHT = 2;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "FRONT_LEFT";
        }
        if (r2 == 2) {
            return "FRONT_RIGHT";
        }
        if (r2 == 4) {
            return "BACK_LEFT";
        }
        if (r2 == 8) {
            return "BACK_RIGHT";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("FRONT_LEFT");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("FRONT_RIGHT");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("BACK_LEFT");
            r2 |= 4;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("BACK_RIGHT");
            r2 |= 8;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
