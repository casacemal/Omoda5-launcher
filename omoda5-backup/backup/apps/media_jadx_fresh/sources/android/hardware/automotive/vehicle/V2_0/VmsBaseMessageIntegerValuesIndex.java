package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VmsBaseMessageIntegerValuesIndex {
    public static final int MESSAGE_TYPE = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "MESSAGE_TYPE";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r3) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("MESSAGE_TYPE");
        if (r3 != 0) {
            arrayList.add("0x" + Integer.toHexString(r3 & (-1)));
        }
        return String.join(" | ", arrayList);
    }
}
