package androidx.core.util;

import java.io.PrintWriter;

/* loaded from: classes.dex */
public final class TimeUtils {
    public static final int HUNDRED_DAY_FIELD_LEN = 19;
    private static final int SECONDS_PER_DAY = 86400;
    private static final int SECONDS_PER_HOUR = 3600;
    private static final int SECONDS_PER_MINUTE = 60;
    private static final Object sFormatSync = new Object();
    private static char[] sFormatStr = new char[24];

    private static int accumField(int r2, int r3, boolean z, int r5) {
        if (r2 > 99 || (z && r5 >= 3)) {
            return r3 + 3;
        }
        if (r2 > 9 || (z && r5 >= 2)) {
            return r3 + 2;
        }
        if (z || r2 > 0) {
            return r3 + 1;
        }
        return 0;
    }

    private static int printField(char[] cArr, int r3, char c, int r5, boolean z, int r7) {
        int r1;
        if (!z && r3 <= 0) {
            return r5;
        }
        if ((!z || r7 < 3) && r3 <= 99) {
            r1 = r5;
        } else {
            int r0 = r3 / 100;
            cArr[r5] = (char) (r0 + 48);
            r1 = r5 + 1;
            r3 -= r0 * 100;
        }
        if ((z && r7 >= 2) || r3 > 9 || r5 != r1) {
            int r52 = r3 / 10;
            cArr[r1] = (char) (r52 + 48);
            r1++;
            r3 -= r52 * 10;
        }
        cArr[r1] = (char) (r3 + 48);
        int r12 = r1 + 1;
        cArr[r12] = c;
        return r12 + 1;
    }

    private static int formatDurationLocked(long j, int r19) {
        char c;
        int r6;
        int r1;
        int r13;
        int r0;
        int r8;
        long j2 = j;
        if (sFormatStr.length < r19) {
            sFormatStr = new char[r19];
        }
        char[] cArr = sFormatStr;
        if (j2 == 0) {
            int r02 = r19 - 1;
            while (r02 > 0) {
                cArr[0] = ' ';
            }
            cArr[0] = '0';
            return 1;
        }
        if (j2 > 0) {
            c = '+';
        } else {
            c = '-';
            j2 = -j2;
        }
        int r12 = (int) (j2 % 1000);
        int r03 = (int) Math.floor(j2 / 1000);
        if (r03 > SECONDS_PER_DAY) {
            r6 = r03 / SECONDS_PER_DAY;
            r03 -= SECONDS_PER_DAY * r6;
        } else {
            r6 = 0;
        }
        if (r03 > SECONDS_PER_HOUR) {
            r1 = r03 / SECONDS_PER_HOUR;
            r03 -= r1 * SECONDS_PER_HOUR;
        } else {
            r1 = 0;
        }
        if (r03 > 60) {
            int r7 = r03 / 60;
            r13 = r03 - (r7 * 60);
            r0 = r7;
        } else {
            r13 = r03;
            r0 = 0;
        }
        if (r19 != 0) {
            int r72 = accumField(r6, 1, false, 0);
            int r73 = r72 + accumField(r1, 1, r72 > 0, 2);
            int r74 = r73 + accumField(r0, 1, r73 > 0, 2);
            int r75 = r74 + accumField(r13, 1, r74 > 0, 2);
            r8 = 0;
            for (int r76 = r75 + accumField(r12, 2, true, r75 > 0 ? 3 : 0) + 1; r76 < r19; r76++) {
                cArr[r8] = ' ';
                r8++;
            }
        } else {
            r8 = 0;
        }
        cArr[r8] = c;
        int r9 = r8 + 1;
        boolean z = r19 != 0;
        int r77 = printField(cArr, r6, 'd', r9, false, 0);
        int r78 = printField(cArr, r1, 'h', r77, r77 != r9, z ? 2 : 0);
        int r79 = printField(cArr, r0, 'm', r78, r78 != r9, z ? 2 : 0);
        int r710 = printField(cArr, r13, 's', r79, r79 != r9, z ? 2 : 0);
        int r04 = printField(cArr, r12, 'm', r710, true, (!z || r710 == r9) ? 0 : 3);
        cArr[r04] = 's';
        return r04 + 1;
    }

    public static void formatDuration(long j, StringBuilder sb) {
        synchronized (sFormatSync) {
            sb.append(sFormatStr, 0, formatDurationLocked(j, 0));
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter, int r5) {
        synchronized (sFormatSync) {
            printWriter.print(new String(sFormatStr, 0, formatDurationLocked(j, r5)));
        }
    }

    public static void formatDuration(long j, PrintWriter printWriter) {
        formatDuration(j, printWriter, 0);
    }

    public static void formatDuration(long j, long j2, PrintWriter printWriter) {
        if (j == 0) {
            printWriter.print("--");
        } else {
            formatDuration(j - j2, printWriter, 0);
        }
    }

    private TimeUtils() {
    }
}
