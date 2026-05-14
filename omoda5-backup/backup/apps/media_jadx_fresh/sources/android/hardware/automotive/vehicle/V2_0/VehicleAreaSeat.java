package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleAreaSeat {
    public static final int ROW_1_CENTER = 2;
    public static final int ROW_1_LEFT = 1;
    public static final int ROW_1_RIGHT = 4;
    public static final int ROW_2_CENTER = 32;
    public static final int ROW_2_LEFT = 16;
    public static final int ROW_2_RIGHT = 64;
    public static final int ROW_3_CENTER = 512;
    public static final int ROW_3_LEFT = 256;
    public static final int ROW_3_RIGHT = 1024;

    public static final String toString(int r2) {
        if (r2 == 1) {
            return "ROW_1_LEFT";
        }
        if (r2 == 2) {
            return "ROW_1_CENTER";
        }
        if (r2 == 4) {
            return "ROW_1_RIGHT";
        }
        if (r2 == 16) {
            return "ROW_2_LEFT";
        }
        if (r2 == 32) {
            return "ROW_2_CENTER";
        }
        if (r2 == 64) {
            return "ROW_2_RIGHT";
        }
        if (r2 == 256) {
            return "ROW_3_LEFT";
        }
        if (r2 == 512) {
            return "ROW_3_CENTER";
        }
        if (r2 == 1024) {
            return "ROW_3_RIGHT";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("ROW_1_LEFT");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("ROW_1_CENTER");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("ROW_1_RIGHT");
            r2 |= 4;
        }
        if ((r4 & 16) == 16) {
            arrayList.add("ROW_2_LEFT");
            r2 |= 16;
        }
        if ((r4 & 32) == 32) {
            arrayList.add("ROW_2_CENTER");
            r2 |= 32;
        }
        if ((r4 & 64) == 64) {
            arrayList.add("ROW_2_RIGHT");
            r2 |= 64;
        }
        if ((r4 & 256) == 256) {
            arrayList.add("ROW_3_LEFT");
            r2 |= 256;
        }
        if ((r4 & 512) == 512) {
            arrayList.add("ROW_3_CENTER");
            r2 |= 512;
        }
        if ((r4 & 1024) == 1024) {
            arrayList.add("ROW_3_RIGHT");
            r2 |= 1024;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
