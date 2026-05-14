package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class Label {
    static final int FORWARD_REFERENCE_HANDLE_MASK = 268435455;
    static final int FORWARD_REFERENCE_TYPE_MASK = -268435456;
    static final int FORWARD_REFERENCE_TYPE_SHORT = 268435456;
    static final int FORWARD_REFERENCE_TYPE_WIDE = 536870912;
    int inputStackTop;
    Label next;
    int outputStackMax;
    int position;
    private int referenceCount;
    private int[] srcAndRefPositions;
    int status;
    Label successor;

    void put(MethodWriter methodWriter, ByteVector byteVector, int r4, boolean z) {
        if ((this.status & 2) != 0) {
            if (z) {
                byteVector.putInt(this.position - r4);
                return;
            } else {
                byteVector.putShort(this.position - r4);
                return;
            }
        }
        if (z) {
            addReference(r4, byteVector.length, 536870912);
            byteVector.putInt(-1);
        } else {
            addReference(r4, byteVector.length, 268435456);
            byteVector.putShort(-1);
        }
    }

    private void addReference(int r5, int r6, int r7) {
        if (this.srcAndRefPositions == null) {
            this.srcAndRefPositions = new int[6];
        }
        int r0 = this.referenceCount;
        int[] r2 = this.srcAndRefPositions;
        if (r0 >= r2.length) {
            int[] r02 = new int[r2.length + 6];
            System.arraycopy(r2, 0, r02, 0, r2.length);
            this.srcAndRefPositions = r02;
        }
        int[] r03 = this.srcAndRefPositions;
        int r1 = this.referenceCount;
        int r22 = r1 + 1;
        this.referenceCount = r22;
        r03[r1] = r5;
        this.referenceCount = r22 + 1;
        r03[r22] = r6 | r7;
    }

    void resolve(MethodWriter methodWriter, int r6, byte[] bArr) {
        this.status |= 2;
        this.position = r6;
        int r5 = 0;
        while (r5 < this.referenceCount) {
            int[] r0 = this.srcAndRefPositions;
            int r1 = r5 + 1;
            int r52 = r0[r5];
            int r2 = r1 + 1;
            int r02 = r0[r1];
            int r12 = FORWARD_REFERENCE_HANDLE_MASK & r02;
            int r53 = r6 - r52;
            if ((r02 & (-268435456)) == 268435456) {
                bArr[r12] = (byte) (r53 >>> 8);
                bArr[r12 + 1] = (byte) r53;
            } else {
                int r03 = r12 + 1;
                bArr[r12] = (byte) (r53 >>> 24);
                int r13 = r03 + 1;
                bArr[r03] = (byte) (r53 >>> 16);
                bArr[r13] = (byte) (r53 >>> 8);
                bArr[r13 + 1] = (byte) r53;
            }
            r5 = r2;
        }
    }
}
