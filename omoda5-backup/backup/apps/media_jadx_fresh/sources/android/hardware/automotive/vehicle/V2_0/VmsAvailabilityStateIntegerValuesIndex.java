package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VmsAvailabilityStateIntegerValuesIndex {
    public static final int LAYERS_START = 3;
    public static final int MESSAGE_TYPE = 0;
    public static final int NUMBER_OF_ASSOCIATED_LAYERS = 2;
    public static final int SEQUENCE_NUMBER = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "MESSAGE_TYPE";
        }
        if (r2 == 1) {
            return "SEQUENCE_NUMBER";
        }
        if (r2 == 2) {
            return "NUMBER_OF_ASSOCIATED_LAYERS";
        }
        if (r2 == 3) {
            return "LAYERS_START";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("MESSAGE_TYPE");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("SEQUENCE_NUMBER");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("NUMBER_OF_ASSOCIATED_LAYERS");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("LAYERS_START");
            r2 |= 3;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
