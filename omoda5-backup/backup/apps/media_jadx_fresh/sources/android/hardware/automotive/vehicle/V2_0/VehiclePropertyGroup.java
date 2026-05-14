package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehiclePropertyGroup {
    public static final int MASK = -268435456;
    public static final int SYSTEM = 268435456;
    public static final int VENDOR = 536870912;

    public static final String toString(int r2) {
        if (r2 == 268435456) {
            return "SYSTEM";
        }
        if (r2 == 536870912) {
            return "VENDOR";
        }
        if (r2 == -268435456) {
            return "MASK";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r1 = 268435456;
        if ((r4 & 268435456) == 268435456) {
            arrayList.add("SYSTEM");
        } else {
            r1 = 0;
        }
        if ((r4 & 536870912) == 536870912) {
            arrayList.add("VENDOR");
            r1 |= 536870912;
        }
        if ((r4 & MASK) == -268435456) {
            arrayList.add("MASK");
            r1 |= MASK;
        }
        if (r4 != r1) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r1)));
        }
        return String.join(" | ", arrayList);
    }
}
