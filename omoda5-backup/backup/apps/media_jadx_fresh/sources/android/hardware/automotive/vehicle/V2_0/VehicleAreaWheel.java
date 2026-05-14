package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehicleAreaWheel {
    public static final int LEFT_FRONT = 1;
    public static final int LEFT_REAR = 4;
    public static final int RIGHT_FRONT = 2;
    public static final int RIGHT_REAR = 8;
    public static final int UNKNOWN = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "UNKNOWN";
        }
        if (r2 == 1) {
            return "LEFT_FRONT";
        }
        if (r2 == 2) {
            return "RIGHT_FRONT";
        }
        if (r2 == 4) {
            return "LEFT_REAR";
        }
        if (r2 == 8) {
            return "RIGHT_REAR";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("UNKNOWN");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("LEFT_FRONT");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("RIGHT_FRONT");
            r2 |= 2;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("LEFT_REAR");
            r2 |= 4;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("RIGHT_REAR");
            r2 |= 8;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
