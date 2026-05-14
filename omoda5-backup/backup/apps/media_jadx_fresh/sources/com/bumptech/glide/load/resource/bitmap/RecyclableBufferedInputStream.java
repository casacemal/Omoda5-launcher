package com.bumptech.glide.load.resource.bitmap;

import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class RecyclableBufferedInputStream extends FilterInputStream {
    private volatile byte[] buf;
    private final ArrayPool byteArrayPool;
    private int count;
    private int marklimit;
    private int markpos;
    private int pos;

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    public RecyclableBufferedInputStream(InputStream inputStream, ArrayPool arrayPool) {
        this(inputStream, arrayPool, 65536);
    }

    RecyclableBufferedInputStream(InputStream inputStream, ArrayPool arrayPool, int r3) {
        super(inputStream);
        this.markpos = -1;
        this.byteArrayPool = arrayPool;
        this.buf = (byte[]) arrayPool.get(r3, byte[].class);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = this.in;
        if (this.buf == null || inputStream == null) {
            throw streamClosed();
        }
        return (this.count - this.pos) + inputStream.available();
    }

    private static IOException streamClosed() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    public synchronized void fixMarkLimit() {
        this.marklimit = this.buf.length;
    }

    public synchronized void release() {
        if (this.buf != null) {
            this.byteArrayPool.put(this.buf);
            this.buf = null;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.buf != null) {
            this.byteArrayPool.put(this.buf);
            this.buf = null;
        }
        InputStream inputStream = this.in;
        this.in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    private int fillbuf(InputStream inputStream, byte[] bArr) throws IOException {
        int r0 = this.markpos;
        if (r0 != -1) {
            int r3 = this.pos - r0;
            int r4 = this.marklimit;
            if (r3 < r4) {
                if (r0 == 0 && r4 > bArr.length && this.count == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= r4) {
                        r4 = length;
                    }
                    byte[] bArr2 = (byte[]) this.byteArrayPool.get(r4, byte[].class);
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.buf = bArr2;
                    this.byteArrayPool.put(bArr);
                    bArr = bArr2;
                } else {
                    int r02 = this.markpos;
                    if (r02 > 0) {
                        System.arraycopy(bArr, r02, bArr, 0, bArr.length - r02);
                    }
                }
                int r03 = this.pos - this.markpos;
                this.pos = r03;
                this.markpos = 0;
                this.count = 0;
                int r6 = inputStream.read(bArr, r03, bArr.length - r03);
                int r7 = this.pos;
                if (r6 > 0) {
                    r7 += r6;
                }
                this.count = r7;
                return r6;
            }
        }
        int r62 = inputStream.read(bArr);
        if (r62 > 0) {
            this.markpos = -1;
            this.pos = 0;
            this.count = r62;
        }
        return r62;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int r2) {
        this.marklimit = Math.max(this.marklimit, r2);
        this.markpos = this.pos;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.buf;
        InputStream inputStream = this.in;
        if (bArr == null || inputStream == null) {
            throw streamClosed();
        }
        if (this.pos >= this.count && fillbuf(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.buf && (bArr = this.buf) == null) {
            throw streamClosed();
        }
        if (this.count - this.pos <= 0) {
            return -1;
        }
        int r1 = this.pos;
        this.pos = r1 + 1;
        return bArr[r1] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int r7, int r8) throws IOException {
        int r2;
        int r3;
        byte[] bArr2 = this.buf;
        if (bArr2 == null) {
            throw streamClosed();
        }
        if (r8 == 0) {
            return 0;
        }
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw streamClosed();
        }
        if (this.pos < this.count) {
            int r22 = this.count - this.pos >= r8 ? r8 : this.count - this.pos;
            System.arraycopy(bArr2, this.pos, bArr, r7, r22);
            this.pos += r22;
            if (r22 == r8 || inputStream.available() == 0) {
                return r22;
            }
            r7 += r22;
            r2 = r8 - r22;
        } else {
            r2 = r8;
        }
        while (true) {
            if (this.markpos == -1 && r2 >= bArr2.length) {
                r3 = inputStream.read(bArr, r7, r2);
                if (r3 == -1) {
                    return r2 != r8 ? r8 - r2 : -1;
                }
            } else {
                if (fillbuf(inputStream, bArr2) == -1) {
                    return r2 != r8 ? r8 - r2 : -1;
                }
                if (bArr2 != this.buf && (bArr2 = this.buf) == null) {
                    throw streamClosed();
                }
                r3 = this.count - this.pos >= r2 ? r2 : this.count - this.pos;
                System.arraycopy(bArr2, this.pos, bArr, r7, r3);
                this.pos += r3;
            }
            r2 -= r3;
            if (r2 == 0) {
                return r8;
            }
            if (inputStream.available() == 0) {
                return r8 - r2;
            }
            r7 += r3;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.buf == null) {
            throw new IOException("Stream is closed");
        }
        if (-1 == this.markpos) {
            throw new InvalidMarkException("Mark has been invalidated, pos: " + this.pos + " markLimit: " + this.marklimit);
        }
        this.pos = this.markpos;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        if (j < 1) {
            return 0L;
        }
        byte[] bArr = this.buf;
        if (bArr == null) {
            throw streamClosed();
        }
        InputStream inputStream = this.in;
        if (inputStream == null) {
            throw streamClosed();
        }
        if (this.count - this.pos >= j) {
            this.pos = (int) (this.pos + j);
            return j;
        }
        long j2 = this.count - this.pos;
        this.pos = this.count;
        if (this.markpos != -1 && j <= this.marklimit) {
            if (fillbuf(inputStream, bArr) == -1) {
                return j2;
            }
            if (this.count - this.pos >= j - j2) {
                this.pos = (int) ((this.pos + j) - j2);
                return j;
            }
            long j3 = (j2 + this.count) - this.pos;
            this.pos = this.count;
            return j3;
        }
        return j2 + inputStream.skip(j - j2);
    }

    static class InvalidMarkException extends IOException {
        private static final long serialVersionUID = -4338378848813561757L;

        InvalidMarkException(String str) {
            super(str);
        }
    }
}
