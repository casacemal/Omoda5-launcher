package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VmsMessageWithLayerAndPublisherIdIntegerValuesIndex {
    public static final int LAYER_SUBTYPE = 2;
    public static final int LAYER_TYPE = 1;
    public static final int LAYER_VERSION = 3;
    public static final int MESSAGE_TYPE = 0;
    public static final int PUBLISHER_ID = 4;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "MESSAGE_TYPE";
        }
        if (r2 == 1) {
            return "LAYER_TYPE";
        }
        if (r2 == 2) {
            return "LAYER_SUBTYPE";
        }
        if (r2 == 3) {
            return "LAYER_VERSION";
        }
        if (r2 == 4) {
            return "PUBLISHER_ID";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("MESSAGE_TYPE");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("LAYER_TYPE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("LAYER_SUBTYPE");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("LAYER_VERSION");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("PUBLISHER_ID");
            r2 |= 4;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
