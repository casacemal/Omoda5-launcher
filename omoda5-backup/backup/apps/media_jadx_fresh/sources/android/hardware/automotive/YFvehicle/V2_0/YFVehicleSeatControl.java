package android.hardware.automotive.YFvehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YFVehicleSeatControl {
    public static final int CUSHION = 7;
    public static final int LOWERBOLSTER = 4;
    public static final int LOWERLUMBAR = 1;
    public static final int LUMBAR = 6;
    public static final int MIDDLELUMBAR = 2;
    public static final int UPPERBOLSTER = 5;
    public static final int UPPERLUMBAR = 3;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "LOWERLUMBAR";
        }
        if (r2 == 2) {
            return "MIDDLELUMBAR";
        }
        if (r2 == 3) {
            return "UPPERLUMBAR";
        }
        if (r2 == 4) {
            return "LOWERBOLSTER";
        }
        if (r2 == 5) {
            return "UPPERBOLSTER";
        }
        if (r2 == 6) {
            return "LUMBAR";
        }
        if (r2 == 7) {
            return "CUSHION";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("LOWERLUMBAR");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("MIDDLELUMBAR");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("UPPERLUMBAR");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("LOWERBOLSTER");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("UPPERBOLSTER");
            r2 |= 5;
        }
        if ((r4 & 6) == 6) {
            arrayList.add("LUMBAR");
            r2 |= 6;
        }
        if ((r4 & 7) == 7) {
            arrayList.add("CUSHION");
            r2 |= 7;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
