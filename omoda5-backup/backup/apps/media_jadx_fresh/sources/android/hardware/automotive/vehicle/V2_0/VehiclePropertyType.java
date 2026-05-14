package android.hardware.automotive.vehicle.V2_0;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class VehiclePropertyType {
    public static final int BOOLEAN = 2097152;
    public static final int BYTES = 7340032;
    public static final int FLOAT = 6291456;
    public static final int FLOAT_VEC = 6356992;
    public static final int INT32 = 4194304;
    public static final int INT32_VEC = 4259840;
    public static final int INT64 = 5242880;
    public static final int INT64_VEC = 5308416;
    public static final int MASK = 16711680;
    public static final int MIXED = 14680064;
    public static final int STRING = 1048576;

    public static final String toString(int r2) {
        if (r2 == 1048576) {
            return "STRING";
        }
        if (r2 == 2097152) {
            return "BOOLEAN";
        }
        if (r2 == 4194304) {
            return "INT32";
        }
        if (r2 == 4259840) {
            return "INT32_VEC";
        }
        if (r2 == 5242880) {
            return "INT64";
        }
        if (r2 == 5308416) {
            return "INT64_VEC";
        }
        if (r2 == 6291456) {
            return "FLOAT";
        }
        if (r2 == 6356992) {
            return "FLOAT_VEC";
        }
        if (r2 == 7340032) {
            return "BYTES";
        }
        if (r2 == 14680064) {
            return "MIXED";
        }
        if (r2 == 16711680) {
            return "MASK";
        }
        return "0x" + Integer.toHexString(r2);
    }

    public static final String dumpBitfield(int r4) {
        ArrayList arrayList = new ArrayList();
        int r1 = 1048576;
        if ((r4 & 1048576) == 1048576) {
            arrayList.add("STRING");
        } else {
            r1 = 0;
        }
        if ((r4 & 2097152) == 2097152) {
            arrayList.add("BOOLEAN");
            r1 |= 2097152;
        }
        if ((r4 & 4194304) == 4194304) {
            arrayList.add("INT32");
            r1 |= 4194304;
        }
        if ((r4 & 4259840) == 4259840) {
            arrayList.add("INT32_VEC");
            r1 |= 4259840;
        }
        if ((r4 & 5242880) == 5242880) {
            arrayList.add("INT64");
            r1 |= 5242880;
        }
        if ((r4 & 5308416) == 5308416) {
            arrayList.add("INT64_VEC");
            r1 |= 5308416;
        }
        if ((r4 & 6291456) == 6291456) {
            arrayList.add("FLOAT");
            r1 |= 6291456;
        }
        if ((r4 & 6356992) == 6356992) {
            arrayList.add("FLOAT_VEC");
            r1 |= 6356992;
        }
        if ((r4 & 7340032) == 7340032) {
            arrayList.add("BYTES");
            r1 |= 7340032;
        }
        if ((r4 & 14680064) == 14680064) {
            arrayList.add("MIXED");
            r1 |= 14680064;
        }
        if ((r4 & 16711680) == 16711680) {
            arrayList.add("MASK");
            r1 |= 16711680;
        }
        if (r4 != r1) {
            arrayList.add("0x" + Integer.toHexString(r4 & (~r1)));
        }
        return String.join(" | ", arrayList);
    }
}
