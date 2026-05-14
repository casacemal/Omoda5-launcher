package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class ByteVector {
    public byte[] data;
    public int length;

    public ByteVector() {
        this.data = new byte[64];
    }

    public ByteVector(int r1) {
        this.data = new byte[r1];
    }

    public ByteVector putByte(int r4) {
        int r0 = this.length;
        int r1 = r0 + 1;
        if (r1 > this.data.length) {
            enlarge(1);
        }
        this.data[r0] = (byte) r4;
        this.length = r1;
        return this;
    }

    ByteVector put11(int r4, int r5) {
        int r0 = this.length;
        if (r0 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        int r2 = r0 + 1;
        bArr[r0] = (byte) r4;
        bArr[r2] = (byte) r5;
        this.length = r2 + 1;
        return this;
    }

    public ByteVector putShort(int r5) {
        int r0 = this.length;
        if (r0 + 2 > this.data.length) {
            enlarge(2);
        }
        byte[] bArr = this.data;
        int r2 = r0 + 1;
        bArr[r0] = (byte) (r5 >>> 8);
        bArr[r2] = (byte) r5;
        this.length = r2 + 1;
        return this;
    }

    public ByteVector put12(int r4, int r5) {
        int r0 = this.length;
        if (r0 + 3 > this.data.length) {
            enlarge(3);
        }
        byte[] bArr = this.data;
        int r2 = r0 + 1;
        bArr[r0] = (byte) r4;
        int r42 = r2 + 1;
        bArr[r2] = (byte) (r5 >>> 8);
        bArr[r42] = (byte) r5;
        this.length = r42 + 1;
        return this;
    }

    public ByteVector putInt(int r5) {
        int r0 = this.length;
        if (r0 + 4 > this.data.length) {
            enlarge(4);
        }
        byte[] bArr = this.data;
        int r2 = r0 + 1;
        bArr[r0] = (byte) (r5 >>> 24);
        int r02 = r2 + 1;
        bArr[r2] = (byte) (r5 >>> 16);
        int r22 = r02 + 1;
        bArr[r02] = (byte) (r5 >>> 8);
        bArr[r22] = (byte) r5;
        this.length = r22 + 1;
        return this;
    }

    public ByteVector putUTF8(String str) {
        int length = str.length();
        int r1 = this.length;
        if (r1 + 2 + length > this.data.length) {
            enlarge(length + 2);
        }
        byte[] bArr = this.data;
        int r3 = r1 + 1;
        bArr[r1] = (byte) (length >>> 8);
        int r12 = r3 + 1;
        bArr[r3] = (byte) length;
        int r32 = 0;
        while (r32 < length) {
            char cCharAt = str.charAt(r32);
            if ((cCharAt >= 1 && cCharAt <= 127) || (cCharAt >= 19968 && cCharAt <= 40959)) {
                bArr[r12] = (byte) cCharAt;
                r32++;
                r12++;
            } else {
                throw new UnsupportedOperationException();
            }
        }
        this.length = r12;
        return this;
    }

    public ByteVector putByteArray(byte[] bArr, int r4, int r5) {
        if (this.length + r5 > this.data.length) {
            enlarge(r5);
        }
        if (bArr != null) {
            System.arraycopy(bArr, r4, this.data, this.length, r5);
        }
        this.length += r5;
        return this;
    }

    private void enlarge(int r4) {
        int length = this.data.length * 2;
        int r1 = this.length + r4;
        if (length <= r1) {
            length = r1;
        }
        byte[] bArr = new byte[length];
        System.arraycopy(this.data, 0, bArr, 0, this.length);
        this.data = bArr;
    }
}
