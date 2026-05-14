package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class ExifOrientationStream extends FilterInputStream {
    private static final byte[] EXIF_SEGMENT;
    private static final int ORIENTATION_POSITION;
    private static final int SEGMENT_LENGTH;
    private static final int SEGMENT_START_POSITION = 2;
    private final byte orientation;
    private int position;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        EXIF_SEGMENT = bArr;
        int length = bArr.length;
        SEGMENT_LENGTH = length;
        ORIENTATION_POSITION = length + 2;
    }

    public ExifOrientationStream(InputStream inputStream, int r3) {
        super(inputStream);
        if (r3 < -1 || r3 > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + r3);
        }
        this.orientation = (byte) r3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int r1) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int r0;
        int r2;
        int r02 = this.position;
        if (r02 < 2 || r02 > (r2 = ORIENTATION_POSITION)) {
            r0 = super.read();
        } else if (r02 == r2) {
            r0 = this.orientation;
        } else {
            r0 = EXIF_SEGMENT[r02 - 2] & 255;
        }
        if (r0 != -1) {
            this.position++;
        }
        return r0;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int r5, int r6) throws IOException {
        int r4;
        int r0 = this.position;
        int r1 = ORIENTATION_POSITION;
        if (r0 > r1) {
            r4 = super.read(bArr, r5, r6);
        } else if (r0 == r1) {
            bArr[r5] = this.orientation;
            r4 = 1;
        } else if (r0 < 2) {
            r4 = super.read(bArr, r5, 2 - r0);
        } else {
            int r62 = Math.min(r1 - r0, r6);
            System.arraycopy(EXIF_SEGMENT, this.position - 2, bArr, r5, r62);
            r4 = r62;
        }
        if (r4 > 0) {
            this.position += r4;
        }
        return r4;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long jSkip = super.skip(j);
        if (jSkip > 0) {
            this.position = (int) (this.position + jSkip);
        }
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }
}
