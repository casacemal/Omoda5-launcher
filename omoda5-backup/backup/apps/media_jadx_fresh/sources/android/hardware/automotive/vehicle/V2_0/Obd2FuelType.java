package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class Obd2FuelType {
    public static final int BIFUEL_RUNNING_CNG = 13;
    public static final int BIFUEL_RUNNING_DIESEL = 23;
    public static final int BIFUEL_RUNNING_ELECTRIC = 15;
    public static final int BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION = 16;
    public static final int BIFUEL_RUNNING_ETHANOL = 11;
    public static final int BIFUEL_RUNNING_GASOLINE = 9;
    public static final int BIFUEL_RUNNING_LPG = 12;
    public static final int BIFUEL_RUNNING_METHANOL = 10;
    public static final int BIFUEL_RUNNING_PROPANE = 14;
    public static final int CNG = 6;
    public static final int DIESEL = 4;
    public static final int ELECTRIC = 8;
    public static final int ETHANOL = 3;
    public static final int GASOLINE = 1;
    public static final int HYBRID_DIESEL = 19;
    public static final int HYBRID_ELECTRIC = 20;
    public static final int HYBRID_ETHANOL = 18;
    public static final int HYBRID_GASOLINE = 17;
    public static final int HYBRID_REGENERATIVE = 22;
    public static final int HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION = 21;
    public static final int LPG = 5;
    public static final int METHANOL = 2;
    public static final int NOT_AVAILABLE = 0;
    public static final int PROPANE = 7;

    public static final String toString(int r2) {
        if (r2 == 0) {
            return "NOT_AVAILABLE";
        }
        if (r2 == 1) {
            return "GASOLINE";
        }
        if (r2 == 2) {
            return "METHANOL";
        }
        if (r2 == 3) {
            return "ETHANOL";
        }
        if (r2 == 4) {
            return "DIESEL";
        }
        if (r2 == 5) {
            return "LPG";
        }
        if (r2 == 6) {
            return "CNG";
        }
        if (r2 == 7) {
            return "PROPANE";
        }
        if (r2 == 8) {
            return "ELECTRIC";
        }
        if (r2 == 9) {
            return "BIFUEL_RUNNING_GASOLINE";
        }
        if (r2 == 10) {
            return "BIFUEL_RUNNING_METHANOL";
        }
        if (r2 == 11) {
            return "BIFUEL_RUNNING_ETHANOL";
        }
        if (r2 == 12) {
            return "BIFUEL_RUNNING_LPG";
        }
        if (r2 == 13) {
            return "BIFUEL_RUNNING_CNG";
        }
        if (r2 == 14) {
            return "BIFUEL_RUNNING_PROPANE";
        }
        if (r2 == 15) {
            return "BIFUEL_RUNNING_ELECTRIC";
        }
        if (r2 == 16) {
            return "BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION";
        }
        if (r2 == 17) {
            return "HYBRID_GASOLINE";
        }
        if (r2 == 18) {
            return "HYBRID_ETHANOL";
        }
        if (r2 == 19) {
            return "HYBRID_DIESEL";
        }
        if (r2 == 20) {
            return "HYBRID_ELECTRIC";
        }
        if (r2 == 21) {
            return "HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION";
        }
        if (r2 == 22) {
            return "HYBRID_REGENERATIVE";
        }
        if (r2 == 23) {
            return "BIFUEL_RUNNING_DIESEL";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        arrayList.add("NOT_AVAILABLE");
        int r2 = 1;
        if ((r4 & 1) == 1) {
            arrayList.add("GASOLINE");
        } else {
            r2 = 0;
        }
        if ((r4 & 2) == 2) {
            arrayList.add("METHANOL");
            r2 |= 2;
        }
        if ((r4 & 3) == 3) {
            arrayList.add("ETHANOL");
            r2 |= 3;
        }
        if ((r4 & 4) == 4) {
            arrayList.add("DIESEL");
            r2 |= 4;
        }
        if ((r4 & 5) == 5) {
            arrayList.add("LPG");
            r2 |= 5;
        }
        if ((r4 & 6) == 6) {
            arrayList.add("CNG");
            r2 |= 6;
        }
        if ((r4 & 7) == 7) {
            arrayList.add("PROPANE");
            r2 |= 7;
        }
        if ((r4 & 8) == 8) {
            arrayList.add("ELECTRIC");
            r2 |= 8;
        }
        if ((r4 & 9) == 9) {
            arrayList.add("BIFUEL_RUNNING_GASOLINE");
            r2 |= 9;
        }
        if ((r4 & 10) == 10) {
            arrayList.add("BIFUEL_RUNNING_METHANOL");
            r2 |= 10;
        }
        if ((r4 & 11) == 11) {
            arrayList.add("BIFUEL_RUNNING_ETHANOL");
            r2 |= 11;
        }
        if ((r4 & 12) == 12) {
            arrayList.add("BIFUEL_RUNNING_LPG");
            r2 |= 12;
        }
        if ((r4 & 13) == 13) {
            arrayList.add("BIFUEL_RUNNING_CNG");
            r2 |= 13;
        }
        if ((r4 & 14) == 14) {
            arrayList.add("BIFUEL_RUNNING_PROPANE");
            r2 |= 14;
        }
        if ((r4 & 15) == 15) {
            arrayList.add("BIFUEL_RUNNING_ELECTRIC");
            r2 |= 15;
        }
        if ((r4 & 16) == 16) {
            arrayList.add("BIFUEL_RUNNING_ELECTRIC_AND_COMBUSTION");
            r2 |= 16;
        }
        if ((r4 & 17) == 17) {
            arrayList.add("HYBRID_GASOLINE");
            r2 |= 17;
        }
        if ((r4 & 18) == 18) {
            arrayList.add("HYBRID_ETHANOL");
            r2 |= 18;
        }
        if ((r4 & 19) == 19) {
            arrayList.add("HYBRID_DIESEL");
            r2 |= 19;
        }
        if ((r4 & 20) == 20) {
            arrayList.add("HYBRID_ELECTRIC");
            r2 |= 20;
        }
        if ((r4 & 21) == 21) {
            arrayList.add("HYBRID_RUNNING_ELECTRIC_AND_COMBUSTION");
            r2 |= 21;
        }
        if ((r4 & 22) == 22) {
            arrayList.add("HYBRID_REGENERATIVE");
            r2 |= 22;
        }
        if ((r4 & 23) == 23) {
            arrayList.add("BIFUEL_RUNNING_DIESEL");
            r2 |= 23;
        }
        if (r4 != r2) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r2)));
        }
        return String.join(" | ", arrayList);
    }
}
