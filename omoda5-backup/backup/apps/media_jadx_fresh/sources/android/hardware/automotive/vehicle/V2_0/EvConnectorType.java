package android.hardware.automotive.vehicle.V2_0;

import com.chery.libvr.bean.params.ParamsType;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class EvConnectorType {
    public static final int GBT_AC = 10;
    public static final int GBT_DC = 11;
    public static final int IEC_TYPE_1_AC = 1;
    public static final int IEC_TYPE_1_CCS_DC = 5;
    public static final int IEC_TYPE_2_AC = 2;
    public static final int IEC_TYPE_2_CCS_DC = 6;
    public static final int IEC_TYPE_3_AC = 3;
    public static final int IEC_TYPE_4_DC = 4;
    public static final int OTHER = 101;
    public static final int TESLA_HPWC = 8;
    public static final int TESLA_ROADSTER = 7;
    public static final int TESLA_SUPERCHARGER = 9;
    public static final int UNKNOWN = 0;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "UNKNOWN";
        }
        if (r2 == 1) {
            return "IEC_TYPE_1_AC";
        }
        if (r2 == 2) {
            return "IEC_TYPE_2_AC";
        }
        if (r2 == 3) {
            return "IEC_TYPE_3_AC";
        }
        if (r2 == 4) {
            return "IEC_TYPE_4_DC";
        }
        if (r2 == 5) {
            return "IEC_TYPE_1_CCS_DC";
        }
        if (r2 == 6) {
            return "IEC_TYPE_2_CCS_DC";
        }
        if (r2 == 7) {
            return "TESLA_ROADSTER";
        }
        if (r2 == 8) {
            return "TESLA_HPWC";
        }
        if (r2 == 9) {
            return "TESLA_SUPERCHARGER";
        }
        if (r2 == 10) {
            return "GBT_AC";
        }
        if (r2 == 11) {
            return "GBT_DC";
        }
        if (r2 == 101) {
            return ParamsType.CallRecordType.OTHER;
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("UNKNOWN");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("IEC_TYPE_1_AC");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("IEC_TYPE_2_AC");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("IEC_TYPE_3_AC");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("IEC_TYPE_4_DC");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("IEC_TYPE_1_CCS_DC");
            r2 |= 5;
        }
        if ((r4 & 6) == 6) {
            arrayList.add("IEC_TYPE_2_CCS_DC");
            r2 |= 6;
        }
        if ((r4 & 7) == 7) {
            arrayList.add("TESLA_ROADSTER");
            r2 |= 7;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("TESLA_HPWC");
            r2 |= 8;
        }
        if ((r4 & 9) == 9) {
            arrayList.add("TESLA_SUPERCHARGER");
            r2 |= 9;
        }
        if ((r4 & 10) == 10) {
            arrayList.add("GBT_AC");
            r2 |= 10;
        }
        if ((r4 & 11) == 11) {
            arrayList.add("GBT_DC");
            r2 |= 11;
        }
        if ((r4 & 101) == 101) {
            arrayList.add(ParamsType.CallRecordType.OTHER);
            r2 |= 101;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
