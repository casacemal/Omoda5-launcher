package com.alibaba.fastjson.util;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Base64 {

    /* renamed from: CA */
    public static final char[] f76CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();

    /* renamed from: IA */
    public static final int[] f77IA;

    static {
        int[] r0 = new int[256];
        f77IA = r0;
        Arrays.fill(r0, -1);
        int length = f76CA.length;
        for (int r2 = 0; r2 < length; r2++) {
            f77IA[f76CA[r2]] = r2;
        }
        f77IA[61] = 0;
    }

    public static byte[] decodeFast(char[] cArr, int r13, int r14) {
        int r142;
        int r0 = 0;
        if (r14 == 0) {
            return new byte[0];
        }
        int r1 = (r13 + r14) - 1;
        while (r13 < r1 && f77IA[cArr[r13]] < 0) {
            r13++;
        }
        while (r1 > 0 && f77IA[cArr[r1]] < 0) {
            r1--;
        }
        int r3 = cArr[r1] == '=' ? cArr[r1 + (-1)] == '=' ? 2 : 1 : 0;
        int r4 = (r1 - r13) + 1;
        if (r14 > 76) {
            r142 = (cArr[76] == '\r' ? r4 / 78 : 0) << 1;
        } else {
            r142 = 0;
        }
        int r42 = (((r4 - r142) * 6) >> 3) - r3;
        byte[] bArr = new byte[r42];
        int r6 = (r42 / 3) * 3;
        int r7 = 0;
        int r8 = 0;
        while (r7 < r6) {
            int[] r9 = f77IA;
            int r10 = r13 + 1;
            int r11 = r10 + 1;
            int r132 = (r9[cArr[r13]] << 18) | (r9[cArr[r10]] << 12);
            int r102 = r11 + 1;
            int r133 = r132 | (r9[cArr[r11]] << 6);
            int r112 = r102 + 1;
            int r134 = r133 | r9[cArr[r102]];
            int r92 = r7 + 1;
            bArr[r7] = (byte) (r134 >> 16);
            int r72 = r92 + 1;
            bArr[r92] = (byte) (r134 >> 8);
            int r93 = r72 + 1;
            bArr[r72] = (byte) r134;
            if (r142 > 0 && (r8 = r8 + 1) == 19) {
                r112 += 2;
                r8 = 0;
            }
            r13 = r112;
            r7 = r93;
        }
        if (r7 < r42) {
            int r143 = 0;
            while (r13 <= r1 - r3) {
                r0 |= f77IA[cArr[r13]] << (18 - (r143 * 6));
                r143++;
                r13++;
            }
            int r12 = 16;
            while (r7 < r42) {
                bArr[r7] = (byte) (r0 >> r12);
                r12 -= 8;
                r7++;
            }
        }
        return bArr;
    }

    public static byte[] decodeFast(String str, int r13, int r14) {
        int r142;
        int r0 = 0;
        if (r14 == 0) {
            return new byte[0];
        }
        int r1 = (r13 + r14) - 1;
        while (r13 < r1 && f77IA[str.charAt(r13)] < 0) {
            r13++;
        }
        while (r1 > 0 && f77IA[str.charAt(r1)] < 0) {
            r1--;
        }
        int r3 = str.charAt(r1) == '=' ? str.charAt(r1 + (-1)) == '=' ? 2 : 1 : 0;
        int r4 = (r1 - r13) + 1;
        if (r14 > 76) {
            r142 = (str.charAt(76) == '\r' ? r4 / 78 : 0) << 1;
        } else {
            r142 = 0;
        }
        int r42 = (((r4 - r142) * 6) >> 3) - r3;
        byte[] bArr = new byte[r42];
        int r6 = (r42 / 3) * 3;
        int r7 = 0;
        int r8 = 0;
        while (r7 < r6) {
            int r10 = r13 + 1;
            int r11 = r10 + 1;
            int r132 = (f77IA[str.charAt(r13)] << 18) | (f77IA[str.charAt(r10)] << 12);
            int r102 = r11 + 1;
            int r133 = r132 | (f77IA[str.charAt(r11)] << 6);
            int r112 = r102 + 1;
            int r134 = r133 | f77IA[str.charAt(r102)];
            int r9 = r7 + 1;
            bArr[r7] = (byte) (r134 >> 16);
            int r72 = r9 + 1;
            bArr[r9] = (byte) (r134 >> 8);
            int r92 = r72 + 1;
            bArr[r72] = (byte) r134;
            if (r142 > 0 && (r8 = r8 + 1) == 19) {
                r112 += 2;
                r8 = 0;
            }
            r13 = r112;
            r7 = r92;
        }
        if (r7 < r42) {
            int r143 = 0;
            while (r13 <= r1 - r3) {
                r0 |= f77IA[str.charAt(r13)] << (18 - (r143 * 6));
                r143++;
                r13++;
            }
            int r12 = 16;
            while (r7 < r42) {
                bArr[r7] = (byte) (r0 >> r12);
                r12 -= 8;
                r7++;
            }
        }
        return bArr;
    }

    public static byte[] decodeFast(String str) {
        int r0;
        int length = str.length();
        int r1 = 0;
        if (length == 0) {
            return new byte[0];
        }
        int r2 = length - 1;
        int r3 = 0;
        while (r3 < r2 && f77IA[str.charAt(r3) & 255] < 0) {
            r3++;
        }
        while (r2 > 0 && f77IA[str.charAt(r2) & 255] < 0) {
            r2--;
        }
        int r4 = str.charAt(r2) == '=' ? str.charAt(r2 + (-1)) == '=' ? 2 : 1 : 0;
        int r5 = (r2 - r3) + 1;
        if (length > 76) {
            r0 = (str.charAt(76) == '\r' ? r5 / 78 : 0) << 1;
        } else {
            r0 = 0;
        }
        int r52 = (((r5 - r0) * 6) >> 3) - r4;
        byte[] bArr = new byte[r52];
        int r8 = (r52 / 3) * 3;
        int r9 = 0;
        int r10 = 0;
        while (r9 < r8) {
            int r12 = r3 + 1;
            int r13 = r12 + 1;
            int r32 = (f77IA[str.charAt(r3)] << 18) | (f77IA[str.charAt(r12)] << 12);
            int r122 = r13 + 1;
            int r33 = r32 | (f77IA[str.charAt(r13)] << 6);
            int r132 = r122 + 1;
            int r34 = r33 | f77IA[str.charAt(r122)];
            int r11 = r9 + 1;
            bArr[r9] = (byte) (r34 >> 16);
            int r92 = r11 + 1;
            bArr[r11] = (byte) (r34 >> 8);
            int r112 = r92 + 1;
            bArr[r92] = (byte) r34;
            if (r0 > 0 && (r10 = r10 + 1) == 19) {
                r132 += 2;
                r10 = 0;
            }
            r3 = r132;
            r9 = r112;
        }
        if (r9 < r52) {
            int r02 = 0;
            while (r3 <= r2 - r4) {
                r1 |= f77IA[str.charAt(r3)] << (18 - (r02 * 6));
                r02++;
                r3++;
            }
            int r14 = 16;
            while (r9 < r52) {
                bArr[r9] = (byte) (r1 >> r14);
                r14 -= 8;
                r9++;
            }
        }
        return bArr;
    }
}
