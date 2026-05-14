package com.alibaba.fastjson.util;

import androidx.appcompat.widget.ActivityChooserView;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.asm.Opcodes;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.security.AccessController;
import java.security.PrivilegedAction;
import java.util.Arrays;
import java.util.Properties;

/* loaded from: classes.dex */
public class IOUtils {
    public static final char[] ASCII_CHARS;

    /* renamed from: CA */
    public static final char[] f78CA;
    static final char[] DigitOnes;
    static final char[] DigitTens;
    public static final String FASTJSON_COMPATIBLEWITHFIELDNAME = "fastjson.compatibleWithFieldName";
    public static final String FASTJSON_COMPATIBLEWITHJAVABEAN = "fastjson.compatibleWithJavaBean";
    public static final String FASTJSON_PROPERTIES = "fastjson.properties";

    /* renamed from: IA */
    public static final int[] f79IA;
    static final char[] digits;
    public static final char[] replaceChars;
    static final int[] sizeTable;
    public static final byte[] specicalFlags_doubleQuotes;
    public static final boolean[] specicalFlags_doubleQuotesFlags;
    public static final byte[] specicalFlags_singleQuotes;
    public static final boolean[] specicalFlags_singleQuotesFlags;
    public static final Properties DEFAULT_PROPERTIES = new Properties();
    public static final Charset UTF8 = Charset.forName("UTF-8");
    public static final char[] DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public static final boolean[] firstIdentifierFlags = new boolean[256];
    public static final boolean[] identifierFlags = new boolean[256];

    public static int stringSize(long j) {
        long j2 = 10;
        for (int r0 = 1; r0 < 19; r0++) {
            if (j < j2) {
                return r0;
            }
            j2 *= 10;
        }
        return 19;
    }

    static {
        char c = 0;
        while (true) {
            boolean[] zArr = firstIdentifierFlags;
            if (c >= zArr.length) {
                break;
            }
            if (c >= 'A' && c <= 'Z') {
                zArr[c] = true;
            } else if (c >= 'a' && c <= 'z') {
                firstIdentifierFlags[c] = true;
            } else if (c == '_' || c == '$') {
                firstIdentifierFlags[c] = true;
            }
            c = (char) (c + 1);
        }
        char c2 = 0;
        while (true) {
            boolean[] zArr2 = identifierFlags;
            if (c2 < zArr2.length) {
                if (c2 >= 'A' && c2 <= 'Z') {
                    zArr2[c2] = true;
                } else if (c2 >= 'a' && c2 <= 'z') {
                    identifierFlags[c2] = true;
                } else if (c2 == '_') {
                    identifierFlags[c2] = true;
                } else if (c2 >= '0' && c2 <= '9') {
                    identifierFlags[c2] = true;
                }
                c2 = (char) (c2 + 1);
            } else {
                try {
                    break;
                } catch (Throwable unused) {
                }
            }
        }
        loadPropertiesFromFile();
        byte[] bArr = new byte[Opcodes.IF_ICMPLT];
        specicalFlags_doubleQuotes = bArr;
        byte[] bArr2 = new byte[Opcodes.IF_ICMPLT];
        specicalFlags_singleQuotes = bArr2;
        specicalFlags_doubleQuotesFlags = new boolean[Opcodes.IF_ICMPLT];
        specicalFlags_singleQuotesFlags = new boolean[Opcodes.IF_ICMPLT];
        replaceChars = new char[93];
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int r4 = 14; r4 <= 31; r4++) {
            specicalFlags_doubleQuotes[r4] = 4;
            specicalFlags_singleQuotes[r4] = 4;
        }
        for (int r0 = 127; r0 < 160; r0++) {
            specicalFlags_doubleQuotes[r0] = 4;
            specicalFlags_singleQuotes[r0] = 4;
        }
        for (int r02 = 0; r02 < 161; r02++) {
            specicalFlags_doubleQuotesFlags[r02] = specicalFlags_doubleQuotes[r02] != 0;
            specicalFlags_singleQuotesFlags[r02] = specicalFlags_singleQuotes[r02] != 0;
        }
        char[] cArr = replaceChars;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        ASCII_CHARS = new char[]{'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
        digits = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
        DigitTens = new char[]{'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
        DigitOnes = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
        sizeTable = new int[]{9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED};
        f78CA = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
        int[] r03 = new int[256];
        f79IA = r03;
        Arrays.fill(r03, -1);
        int length = f78CA.length;
        for (int r2 = 0; r2 < length; r2++) {
            f79IA[f78CA[r2]] = r2;
        }
        f79IA[61] = 0;
    }

    public static String getStringProperty(String str) {
        String property;
        try {
            property = System.getProperty(str);
        } catch (SecurityException unused) {
            property = null;
        }
        return property == null ? DEFAULT_PROPERTIES.getProperty(str) : property;
    }

    public static void loadPropertiesFromFile() throws IOException {
        InputStream inputStream = (InputStream) AccessController.doPrivileged(new PrivilegedAction<InputStream>() { // from class: com.alibaba.fastjson.util.IOUtils.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.security.PrivilegedAction
            public InputStream run() {
                ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                if (contextClassLoader != null) {
                    return contextClassLoader.getResourceAsStream(IOUtils.FASTJSON_PROPERTIES);
                }
                return ClassLoader.getSystemResourceAsStream(IOUtils.FASTJSON_PROPERTIES);
            }
        });
        if (inputStream != null) {
            try {
                DEFAULT_PROPERTIES.load(inputStream);
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static void close(Closeable closeable) throws IOException {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception unused) {
            }
        }
    }

    public static void getChars(long j, int r9, char[] cArr) {
        char c;
        if (j < 0) {
            c = '-';
            j = -j;
        } else {
            c = 0;
        }
        while (j > 2147483647L) {
            long j2 = j / 100;
            int r7 = (int) (j - (((j2 << 6) + (j2 << 5)) + (j2 << 2)));
            int r92 = r9 - 1;
            cArr[r92] = DigitOnes[r7];
            r9 = r92 - 1;
            cArr[r9] = DigitTens[r7];
            j = j2;
        }
        int r72 = (int) j;
        while (r72 >= 65536) {
            int r8 = r72 / 100;
            int r73 = r72 - (((r8 << 6) + (r8 << 5)) + (r8 << 2));
            int r93 = r9 - 1;
            cArr[r93] = DigitOnes[r73];
            r9 = r93 - 1;
            cArr[r9] = DigitTens[r73];
            r72 = r8;
        }
        while (true) {
            int r82 = (52429 * r72) >>> 19;
            r9--;
            cArr[r9] = digits[r72 - ((r82 << 3) + (r82 << 1))];
            if (r82 == 0) {
                break;
            } else {
                r72 = r82;
            }
        }
        if (c != 0) {
            cArr[r9 - 1] = c;
        }
    }

    public static void getChars(int r4, int r5, char[] cArr) {
        char c;
        if (r4 < 0) {
            c = '-';
            r4 = -r4;
        } else {
            c = 0;
        }
        while (r4 >= 65536) {
            int r1 = r4 / 100;
            int r42 = r4 - (((r1 << 6) + (r1 << 5)) + (r1 << 2));
            int r52 = r5 - 1;
            cArr[r52] = DigitOnes[r42];
            r5 = r52 - 1;
            cArr[r5] = DigitTens[r42];
            r4 = r1;
        }
        while (true) {
            int r12 = (52429 * r4) >>> 19;
            r5--;
            cArr[r5] = digits[r4 - ((r12 << 3) + (r12 << 1))];
            if (r12 == 0) {
                break;
            } else {
                r4 = r12;
            }
        }
        if (c != 0) {
            cArr[r5 - 1] = c;
        }
    }

    public static void getChars(byte b, int r5, char[] cArr) {
        char c;
        int r4;
        if (b < 0) {
            c = '-';
            r4 = -b;
        } else {
            c = 0;
            r4 = b;
        }
        while (true) {
            int r1 = (52429 * r4) >>> 19;
            r5--;
            cArr[r5] = digits[r4 - ((r1 << 3) + (r1 << 1))];
            if (r1 == 0) {
                break;
            } else {
                r4 = r1;
            }
        }
        if (c != 0) {
            cArr[r5 - 1] = c;
        }
    }

    public static int stringSize(int r2) {
        int r0 = 0;
        while (r2 > sizeTable[r0]) {
            r0++;
        }
        return r0 + 1;
    }

    public static void decode(CharsetDecoder charsetDecoder, ByteBuffer byteBuffer, CharBuffer charBuffer) throws CharacterCodingException {
        try {
            CoderResult coderResultDecode = charsetDecoder.decode(byteBuffer, charBuffer, true);
            if (!coderResultDecode.isUnderflow()) {
                coderResultDecode.throwException();
            }
            CoderResult coderResultFlush = charsetDecoder.flush(charBuffer);
            if (coderResultFlush.isUnderflow()) {
                return;
            }
            coderResultFlush.throwException();
        } catch (CharacterCodingException e) {
            throw new JSONException("utf8 decode error, " + e.getMessage(), e);
        }
    }

    public static boolean firstIdentifier(char c) {
        boolean[] zArr = firstIdentifierFlags;
        return c < zArr.length && zArr[c];
    }

    public static boolean isIdent(char c) {
        boolean[] zArr = identifierFlags;
        return c < zArr.length && zArr[c];
    }

    public static byte[] decodeBase64(char[] cArr, int r13, int r14) {
        int r142;
        int r0 = 0;
        if (r14 == 0) {
            return new byte[0];
        }
        int r1 = (r13 + r14) - 1;
        while (r13 < r1 && f79IA[cArr[r13]] < 0) {
            r13++;
        }
        while (r1 > 0 && f79IA[cArr[r1]] < 0) {
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
            int[] r9 = f79IA;
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
                r0 |= f79IA[cArr[r13]] << (18 - (r143 * 6));
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

    public static byte[] decodeBase64(String str, int r13, int r14) {
        int r142;
        int r0 = 0;
        if (r14 == 0) {
            return new byte[0];
        }
        int r1 = (r13 + r14) - 1;
        while (r13 < r1 && f79IA[str.charAt(r13)] < 0) {
            r13++;
        }
        while (r1 > 0 && f79IA[str.charAt(r1)] < 0) {
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
            int r132 = (f79IA[str.charAt(r13)] << 18) | (f79IA[str.charAt(r10)] << 12);
            int r102 = r11 + 1;
            int r133 = r132 | (f79IA[str.charAt(r11)] << 6);
            int r112 = r102 + 1;
            int r134 = r133 | f79IA[str.charAt(r102)];
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
                r0 |= f79IA[str.charAt(r13)] << (18 - (r143 * 6));
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

    public static byte[] decodeBase64(String str) {
        int r0;
        int length = str.length();
        int r1 = 0;
        if (length == 0) {
            return new byte[0];
        }
        int r2 = length - 1;
        int r3 = 0;
        while (r3 < r2 && f79IA[str.charAt(r3) & 255] < 0) {
            r3++;
        }
        while (r2 > 0 && f79IA[str.charAt(r2) & 255] < 0) {
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
            int r32 = (f79IA[str.charAt(r3)] << 18) | (f79IA[str.charAt(r12)] << 12);
            int r122 = r13 + 1;
            int r33 = r32 | (f79IA[str.charAt(r13)] << 6);
            int r132 = r122 + 1;
            int r34 = r33 | f79IA[str.charAt(r122)];
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
                r1 |= f79IA[str.charAt(r3)] << (18 - (r02 * 6));
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0086  */
    /* JADX WARN: Type inference failed for: r10v16, types: [int] */
    /* JADX WARN: Type inference failed for: r10v25, types: [int] */
    /* JADX WARN: Type inference failed for: r10v26 */
    /* JADX WARN: Type inference failed for: r10v3, types: [char, int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int encodeUTF8(char[] r9, int r10, int r11, byte[] r12) {
        /*
            Method dump skipped, instructions count: 202
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.IOUtils.encodeUTF8(char[], int, int, byte[]):int");
    }

    public static int decodeUTF8(byte[] bArr, int r10, int r11, char[] cArr) {
        int r0 = r10 + r11;
        int r112 = Math.min(r11, cArr.length);
        int r2 = 0;
        while (r2 < r112 && bArr[r10] >= 0) {
            cArr[r2] = (char) bArr[r10];
            r2++;
            r10++;
        }
        while (r10 < r0) {
            int r113 = r10 + 1;
            byte b = bArr[r10];
            if (b >= 0) {
                cArr[r2] = (char) b;
                r10 = r113;
                r2++;
            } else {
                if ((b >> 5) != -2 || (b & 30) == 0) {
                    if ((b >> 4) == -2) {
                        int r3 = r113 + 1;
                        if (r3 < r0) {
                            byte b2 = bArr[r113];
                            int r4 = r3 + 1;
                            byte b3 = bArr[r3];
                            if ((b != -32 || (b2 & 224) != 128) && (b2 & 192) == 128 && (b3 & 192) == 128) {
                                char c = (char) (((b << 12) ^ (b2 << 6)) ^ ((-123008) ^ b3));
                                if (c >= 55296 && c < 57344) {
                                    return -1;
                                }
                                cArr[r2] = c;
                                r2++;
                                r10 = r4;
                            }
                        }
                        return -1;
                    }
                    if ((b >> 3) == -2 && r113 + 2 < r0) {
                        int r32 = r113 + 1;
                        byte b4 = bArr[r113];
                        int r42 = r32 + 1;
                        byte b5 = bArr[r32];
                        int r7 = r42 + 1;
                        byte b6 = bArr[r42];
                        int r102 = (((b << 18) ^ (b4 << 12)) ^ (b5 << 6)) ^ (3678080 ^ b6);
                        if ((b4 & 192) == 128 && (b5 & 192) == 128 && (b6 & 192) == 128 && r102 >= 65536 && r102 < 1114112) {
                            int r114 = r2 + 1;
                            cArr[r2] = (char) ((r102 >>> 10) + 55232);
                            r2 = r114 + 1;
                            cArr[r114] = (char) ((r102 & 1023) + 56320);
                            r10 = r7;
                        }
                    }
                    return -1;
                }
                if (r113 >= r0) {
                    return -1;
                }
                int r33 = r113 + 1;
                byte b7 = bArr[r113];
                if ((b7 & 192) != 128) {
                    return -1;
                }
                cArr[r2] = (char) (((b << 6) ^ b7) ^ 3968);
                r10 = r33;
                r2++;
            }
        }
        return r2;
    }

    public static String readAll(Reader reader) throws IOException {
        StringBuilder sb = new StringBuilder();
        try {
            char[] cArr = new char[2048];
            while (true) {
                int r4 = reader.read(cArr, 0, 2048);
                if (r4 >= 0) {
                    sb.append(cArr, 0, r4);
                } else {
                    return sb.toString();
                }
            }
        } catch (Exception e) {
            throw new JSONException("read string from reader error", e);
        }
    }

    public static boolean isValidJsonpQueryParam(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        int length = str.length();
        for (int r2 = 0; r2 < length; r2++) {
            char cCharAt = str.charAt(r2);
            if (cCharAt != '.' && !isIdent(cCharAt)) {
                return false;
            }
        }
        return true;
    }
}
