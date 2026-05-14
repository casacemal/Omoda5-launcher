package android.hardware.automotive.YFvehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class YFVehiclePropertyID {
    public static final int MASK = 65535;

    public static final String toString(int r2) {
        if (r2 == 65535) {
            return "MASK";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r1 = 65535;
        if ((r4 & 65535) == 65535) {
            arrayList.add("MASK");
        } else {
            r1 = 0;
        }
        if (r4 != r1) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r1)));
        }
        return String.join(" | ", arrayList);
    }
}
