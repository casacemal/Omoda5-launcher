package com.avn.tools.bytes;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class ByteUtils {
    public static byte[] intTo1BytesBig(int r2) {
        return new byte[]{(byte) (r2 & 255)};
    }

    public static byte[] intTo2BytesBig(int r3) {
        return new byte[]{(byte) ((r3 >> 8) & 255), (byte) (r3 & 255)};
    }

    public static byte[] intTo2BytesSmall(int r3) {
        return new byte[]{(byte) (r3 & 255), (byte) ((r3 >> 8) & 255)};
    }

    public static byte[] intTo3BytesBig(int r3) {
        return new byte[]{(byte) ((r3 >> 16) & 255), (byte) ((r3 >> 8) & 255), (byte) (r3 & 255)};
    }

    public static byte[] intTo3BytesSmall(int r3) {
        return new byte[]{(byte) (r3 & 255), (byte) ((r3 >> 8) & 255), (byte) ((r3 >> 16) & 255)};
    }

    public static byte[] intTo4BytesBig(int r3) {
        return new byte[]{(byte) ((r3 >> 24) & 255), (byte) ((r3 >> 16) & 255), (byte) ((r3 >> 8) & 255), (byte) (r3 & 255)};
    }

    public static byte[] toCopyOf(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] intToTimeBytes(int r4) {
        int r1 = r4 / 3600;
        int r42 = r4 - (r1 * 3600);
        int r2 = r42 / 60;
        return new byte[]{(byte) ((r42 - (r2 * 60)) & 255), (byte) (r2 & 255), (byte) (r1 & 255)};
    }

    public static byte[] toCNStrtoBytes(String str) {
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }
}
