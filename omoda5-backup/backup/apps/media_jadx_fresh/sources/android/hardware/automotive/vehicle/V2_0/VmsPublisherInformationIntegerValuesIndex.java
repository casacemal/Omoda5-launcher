package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VmsPublisherInformationIntegerValuesIndex {
    public static final int MESSAGE_TYPE = 0;
    public static final int PUBLISHER_ID = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "MESSAGE_TYPE";
        }
        if (r2 == 1) {
            return "PUBLISHER_ID";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("MESSAGE_TYPE");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("PUBLISHER_ID");
        } else {
            r2 = 0;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
