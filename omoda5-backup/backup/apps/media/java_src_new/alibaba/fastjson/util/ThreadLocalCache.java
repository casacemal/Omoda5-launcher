package com.alibaba.fastjson.util;

import java.lang.ref.SoftReference;
import java.nio.charset.CharsetDecoder;

/* loaded from: classes.dex */
public class ThreadLocalCache {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final int BYTES_CACH_INIT_SIZE = 1024;
    public static final int BYTES_CACH_INIT_SIZE_EXP = 10;
    public static final int BYTES_CACH_MAX_SIZE = 131072;
    public static final int BYTES_CACH_MAX_SIZE_EXP = 17;
    public static final int CHARS_CACH_INIT_SIZE = 1024;
    public static final int CHARS_CACH_INIT_SIZE_EXP = 10;
    public static final int CHARS_CACH_MAX_SIZE = 131072;
    public static final int CHARS_CACH_MAX_SIZE_EXP = 17;
    private static final ThreadLocal<SoftReference<char[]>> charsBufLocal = new ThreadLocal<>();
    private static final ThreadLocal<CharsetDecoder> decoderLocal = new ThreadLocal<>();
    private static final ThreadLocal<SoftReference<byte[]>> bytesBufLocal = new ThreadLocal<>();

    public static CharsetDecoder getUTF8Decoder() {
        CharsetDecoder charsetDecoder = decoderLocal.get();
        if (charsetDecoder != null) {
            return charsetDecoder;
        }
        UTF8Decoder uTF8Decoder = new UTF8Decoder();
        decoderLocal.set(uTF8Decoder);
        return uTF8Decoder;
    }

    public static void clearChars() {
        charsBufLocal.set(null);
    }

    public static char[] getChars(int r2) {
        SoftReference<char[]> softReference = charsBufLocal.get();
        if (softReference == null) {
            return allocate(r2);
        }
        char[] cArr = softReference.get();
        if (cArr == null) {
            return allocate(r2);
        }
        return cArr.length < r2 ? allocate(r2) : cArr;
    }

    private static char[] allocate(int r2) {
        if (r2 > 131072) {
            return new char[r2];
        }
        char[] cArr = new char[getAllocateLengthExp(10, 17, r2)];
        charsBufLocal.set(new SoftReference<>(cArr));
        return cArr;
    }

    private static int getAllocateLengthExp(int r1, int r2, int r3) {
        return (r3 >>> r1) <= 0 ? 1 << r1 : 1 << (32 - Integer.numberOfLeadingZeros(r3 - 1));
    }

    public static void clearBytes() {
        bytesBufLocal.set(null);
    }

    public static byte[] getBytes(int r2) {
        SoftReference<byte[]> softReference = bytesBufLocal.get();
        if (softReference == null) {
            return allocateBytes(r2);
        }
        byte[] bArr = softReference.get();
        if (bArr == null) {
            return allocateBytes(r2);
        }
        return bArr.length < r2 ? allocateBytes(r2) : bArr;
    }

    private static byte[] allocateBytes(int r2) {
        if (r2 > 131072) {
            return new byte[r2];
        }
        byte[] bArr = new byte[getAllocateLengthExp(10, 17, r2)];
        bytesBufLocal.set(new SoftReference<>(bArr));
        return bArr;
    }
}
