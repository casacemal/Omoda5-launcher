package com.avn.tools.string;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class StringUtils {
    private static final String TAG = "StringUtils";
    static char ch1 = '0';
    static char ch2 = 'W';
    static char ch3 = 16;
    static char[] inchar = new char[2];

    public static boolean isEmpty(String str) {
        return str == null || str.length() == 0;
    }

    public static int parseInt(String str) {
        if (str != null) {
            return Integer.parseInt(str);
        }
        return 0;
    }

    public static String toString(byte[] bArr) {
        return toString(bArr, -1);
    }

    public static String toString(byte[] bArr, int r2) {
        return toString(bArr, 0, r2);
    }

    public static String toString(byte[] bArr, int r5, int r6) {
        if (bArr == null) {
            return null;
        }
        int length = bArr.length;
        if (r6 > 0) {
            if (length <= r6) {
                r6 = length;
            }
            length = r6;
        }
        if (r5 >= length) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        while (r5 != length) {
            String hexString = Integer.toHexString(bArr[r5] & 255);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
            r5++;
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] toBytes(java.lang.String r10) {
        /*
            if (r10 == 0) goto L68
            int r0 = r10.length()
            if (r0 > 0) goto L9
            goto L68
        L9:
            int r0 = r10.length()
            int r0 = r0 / 2
            byte[] r1 = new byte[r0]
            r2 = 0
            r3 = r2
            r4 = r3
        L14:
            if (r3 >= r0) goto L67
            char[] r5 = com.avn.tools.string.StringUtils.inchar
            int r6 = r3 * 2
            char r7 = r10.charAt(r6)
            r5[r2] = r7
            char[] r5 = com.avn.tools.string.StringUtils.inchar
            r7 = 1
            int r6 = r6 + r7
            char r6 = r10.charAt(r6)
            r5[r7] = r6
            char[] r5 = com.avn.tools.string.StringUtils.inchar
            char r6 = r5[r2]
            r8 = 97
            r9 = 57
            if (r6 > r9) goto L3d
            char r4 = r5[r2]
            char r5 = com.avn.tools.string.StringUtils.ch1
            int r4 = r4 - r5
            char r5 = com.avn.tools.string.StringUtils.ch3
        L3b:
            int r4 = r4 * r5
            goto L49
        L3d:
            char r6 = r5[r2]
            if (r6 < r8) goto L49
            char r4 = r5[r2]
            char r5 = com.avn.tools.string.StringUtils.ch2
            int r4 = r4 - r5
            char r5 = com.avn.tools.string.StringUtils.ch3
            goto L3b
        L49:
            char[] r5 = com.avn.tools.string.StringUtils.inchar
            char r6 = r5[r7]
            if (r6 > r9) goto L56
            char r5 = r5[r7]
            char r6 = com.avn.tools.string.StringUtils.ch1
        L53:
            int r5 = r5 - r6
            int r4 = r4 + r5
            goto L5f
        L56:
            char r6 = r5[r7]
            if (r6 < r8) goto L5f
            char r5 = r5[r7]
            char r6 = com.avn.tools.string.StringUtils.ch2
            goto L53
        L5f:
            r5 = r4 & 255(0xff, float:3.57E-43)
            byte r5 = (byte) r5
            r1[r3] = r5
            int r3 = r3 + 1
            goto L14
        L67:
            return r1
        L68:
            r10 = 0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.avn.tools.string.StringUtils.toBytes(java.lang.String):byte[]");
    }

    public static byte[] toString2Bytes(String str) {
        char[] charArray = str.trim().toCharArray();
        int length = charArray.length;
        byte[] bArr = new byte[length];
        for (int r2 = 0; r2 < length; r2++) {
            bArr[r2] = (byte) charArray[r2];
        }
        return bArr;
    }

    public static Integer toHex2Dec(String str) {
        return Integer.valueOf(Integer.parseInt(str, 16));
    }

    public static String toCNByte2String(String str) {
        try {
            byte[] bytes = toBytes(str);
            if (bytes != null) {
                return new String(bytes, "UTF-8");
            }
            return null;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String removeNullEnd(String str) {
        if (!str.contains("00")) {
            return str;
        }
        String strSubstring = str.substring(0, str.indexOf("00"));
        if (strSubstring.length() < 0 || strSubstring.length() % 2 != 1) {
            return strSubstring;
        }
        return strSubstring + "0";
    }

    public static String toASCIIString(String str) {
        return toASCIIString(str, str.length());
    }

    private static String toASCIIString(String str, int r2) {
        return toASCIIString(str, 0, r2);
    }

    private static String toASCIIString(String str, int r4, int r5) {
        StringBuilder sb = new StringBuilder();
        while (r4 < r5) {
            int r1 = r4 + 2;
            sb.append((char) Integer.parseInt(str.substring(r4, r1), 16));
            r4 = r1;
        }
        return sb.toString();
    }
}
