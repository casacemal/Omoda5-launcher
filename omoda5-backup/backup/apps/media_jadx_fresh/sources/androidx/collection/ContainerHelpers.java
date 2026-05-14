package androidx.collection;

/* loaded from: classes.dex */
class ContainerHelpers {
    static final int[] EMPTY_INTS = new int[0];
    static final long[] EMPTY_LONGS = new long[0];
    static final Object[] EMPTY_OBJECTS = new Object[0];

    public static int idealByteArraySize(int r2) {
        for (int r0 = 4; r0 < 32; r0++) {
            int r1 = (1 << r0) - 12;
            if (r2 <= r1) {
                return r1;
            }
        }
        return r2;
    }

    public static int idealIntArraySize(int r0) {
        return idealByteArraySize(r0 * 4) / 4;
    }

    public static int idealLongArraySize(int r0) {
        return idealByteArraySize(r0 * 8) / 8;
    }

    public static boolean equal(Object obj, Object obj2) {
        return obj == obj2 || (obj != null && obj.equals(obj2));
    }

    static int binarySearch(int[] r3, int r4, int r5) {
        int r42 = r4 - 1;
        int r0 = 0;
        while (r0 <= r42) {
            int r1 = (r0 + r42) >>> 1;
            int r2 = r3[r1];
            if (r2 < r5) {
                r0 = r1 + 1;
            } else {
                if (r2 <= r5) {
                    return r1;
                }
                r42 = r1 - 1;
            }
        }
        return ~r0;
    }

    static int binarySearch(long[] jArr, int r5, long j) {
        int r52 = r5 - 1;
        int r0 = 0;
        while (r0 <= r52) {
            int r1 = (r0 + r52) >>> 1;
            long j2 = jArr[r1];
            if (j2 < j) {
                r0 = r1 + 1;
            } else {
                if (j2 <= j) {
                    return r1;
                }
                r52 = r1 - 1;
            }
        }
        return ~r0;
    }

    private ContainerHelpers() {
    }
}
