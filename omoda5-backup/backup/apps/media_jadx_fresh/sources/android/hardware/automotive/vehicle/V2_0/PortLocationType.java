package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class PortLocationType {
    public static final int FRONT = 5;
    public static final int FRONT_LEFT = 1;
    public static final int FRONT_RIGHT = 2;
    public static final int REAR = 6;
    public static final int REAR_LEFT = 4;
    public static final int REAR_RIGHT = 3;
    public static final int UNKNOWN = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "UNKNOWN";
        }
        if (r2 == 1) {
            return "FRONT_LEFT";
        }
        if (r2 == 2) {
            return "FRONT_RIGHT";
        }
        if (r2 == 3) {
            return "REAR_RIGHT";
        }
        if (r2 == 4) {
            return "REAR_LEFT";
        }
        if (r2 == 5) {
            return "FRONT";
        }
        if (r2 == 6) {
            return "REAR";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("UNKNOWN");
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
        if ((r4 & 3) == 3) {
            arrayList.add("REAR_RIGHT");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("REAR_LEFT");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("FRONT");
            r2 |= 5;
        }
        if ((r4 & 6) == 6) {
            arrayList.add("REAR");
            r2 |= 6;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
