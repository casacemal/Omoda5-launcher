package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class FuelType {
    public static final int FUEL_TYPE_BIODIESEL = 5;
    public static final int FUEL_TYPE_CNG = 8;
    public static final int FUEL_TYPE_DIESEL_1 = 3;
    public static final int FUEL_TYPE_DIESEL_2 = 4;
    public static final int FUEL_TYPE_E85 = 6;
    public static final int FUEL_TYPE_ELECTRIC = 10;
    public static final int FUEL_TYPE_HYDROGEN = 11;
    public static final int FUEL_TYPE_LEADED = 2;
    public static final int FUEL_TYPE_LNG = 9;
    public static final int FUEL_TYPE_LPG = 7;
    public static final int FUEL_TYPE_OTHER = 12;
    public static final int FUEL_TYPE_UNKNOWN = 0;
    public static final int FUEL_TYPE_UNLEADED = 1;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "FUEL_TYPE_UNKNOWN";
        }
        if (r2 == 1) {
            return "FUEL_TYPE_UNLEADED";
        }
        if (r2 == 2) {
            return "FUEL_TYPE_LEADED";
        }
        if (r2 == 3) {
            return "FUEL_TYPE_DIESEL_1";
        }
        if (r2 == 4) {
            return "FUEL_TYPE_DIESEL_2";
        }
        if (r2 == 5) {
            return "FUEL_TYPE_BIODIESEL";
        }
        if (r2 == 6) {
            return "FUEL_TYPE_E85";
        }
        if (r2 == 7) {
            return "FUEL_TYPE_LPG";
        }
        if (r2 == 8) {
            return "FUEL_TYPE_CNG";
        }
        if (r2 == 9) {
            return "FUEL_TYPE_LNG";
        }
        if (r2 == 10) {
            return "FUEL_TYPE_ELECTRIC";
        }
        if (r2 == 11) {
            return "FUEL_TYPE_HYDROGEN";
        }
        if (r2 == 12) {
            return "FUEL_TYPE_OTHER";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("FUEL_TYPE_UNKNOWN");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("FUEL_TYPE_UNLEADED");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("FUEL_TYPE_LEADED");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("FUEL_TYPE_DIESEL_1");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("FUEL_TYPE_DIESEL_2");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("FUEL_TYPE_BIODIESEL");
            r2 |= 5;
        }
        if ((r4 & 6) == 6) {
            arrayList.add("FUEL_TYPE_E85");
            r2 |= 6;
        }
        if ((r4 & 7) == 7) {
            arrayList.add("FUEL_TYPE_LPG");
            r2 |= 7;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("FUEL_TYPE_CNG");
            r2 |= 8;
        }
        if ((r4 & 9) == 9) {
            arrayList.add("FUEL_TYPE_LNG");
            r2 |= 9;
        }
        if ((r4 & 10) == 10) {
            arrayList.add("FUEL_TYPE_ELECTRIC");
            r2 |= 10;
        }
        if ((r4 & 11) == 11) {
            arrayList.add("FUEL_TYPE_HYDROGEN");
            r2 |= 11;
        }
        if ((r4 & 12) == 12) {
            arrayList.add("FUEL_TYPE_OTHER");
            r2 |= 12;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
