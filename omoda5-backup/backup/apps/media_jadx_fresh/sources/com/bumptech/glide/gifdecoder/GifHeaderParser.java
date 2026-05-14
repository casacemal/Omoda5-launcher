package com.bumptech.glide.gifdecoder;

import android.util.Log;
import androidx.appcompat.widget.ActivityChooserView;
import androidx.core.view.ViewCompat;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;

/* loaded from: classes.dex */
public class GifHeaderParser {
    static final int DEFAULT_FRAME_DELAY = 10;
    private static final int DESCRIPTOR_MASK_INTERLACE_FLAG = 64;
    private static final int DESCRIPTOR_MASK_LCT_FLAG = 128;
    private static final int DESCRIPTOR_MASK_LCT_SIZE = 7;
    private static final int EXTENSION_INTRODUCER = 33;
    private static final int GCE_DISPOSAL_METHOD_SHIFT = 2;
    private static final int GCE_MASK_DISPOSAL_METHOD = 28;
    private static final int GCE_MASK_TRANSPARENT_COLOR_FLAG = 1;
    private static final int IMAGE_SEPARATOR = 44;
    private static final int LABEL_APPLICATION_EXTENSION = 255;
    private static final int LABEL_COMMENT_EXTENSION = 254;
    private static final int LABEL_GRAPHIC_CONTROL_EXTENSION = 249;
    private static final int LABEL_PLAIN_TEXT_EXTENSION = 1;
    private static final int LSD_MASK_GCT_FLAG = 128;
    private static final int LSD_MASK_GCT_SIZE = 7;
    private static final int MASK_INT_LOWEST_BYTE = 255;
    private static final int MAX_BLOCK_SIZE = 256;
    static final int MIN_FRAME_DELAY = 2;
    private static final String TAG = "GifHeaderParser";
    private static final int TRAILER = 59;
    private final byte[] block = new byte[256];
    private int blockSize = 0;
    private GifHeader header;
    private ByteBuffer rawData;

    public GifHeaderParser setData(ByteBuffer byteBuffer) {
        reset();
        ByteBuffer byteBufferAsReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
        this.rawData = byteBufferAsReadOnlyBuffer;
        byteBufferAsReadOnlyBuffer.position(0);
        this.rawData.order(ByteOrder.LITTLE_ENDIAN);
        return this;
    }

    public GifHeaderParser setData(byte[] bArr) {
        if (bArr != null) {
            setData(ByteBuffer.wrap(bArr));
        } else {
            this.rawData = null;
            this.header.status = 2;
        }
        return this;
    }

    public void clear() {
        this.rawData = null;
        this.header = null;
    }

    private void reset() {
        this.rawData = null;
        Arrays.fill(this.block, (byte) 0);
        this.header = new GifHeader();
        this.blockSize = 0;
    }

    public GifHeader parseHeader() {
        if (this.rawData == null) {
            throw new IllegalStateException("You must call setData() before parseHeader()");
        }
        if (err()) {
            return this.header;
        }
        readHeader();
        if (!err()) {
            readContents();
            if (this.header.frameCount < 0) {
                this.header.status = 1;
            }
        }
        return this.header;
    }

    public boolean isAnimated() {
        readHeader();
        if (!err()) {
            readContents(2);
        }
        return this.header.frameCount > 1;
    }

    private void readContents() {
        readContents(ActivityChooserView.ActivityChooserViewAdapter.MAX_ACTIVITY_COUNT_UNLIMITED);
    }

    private void readContents(int r6) {
        boolean z = false;
        while (!z && !err() && this.header.frameCount <= r6) {
            int r2 = read();
            if (r2 == 33) {
                int r22 = read();
                if (r22 == 1) {
                    skip();
                } else if (r22 == LABEL_GRAPHIC_CONTROL_EXTENSION) {
                    this.header.currentFrame = new GifFrame();
                    readGraphicControlExt();
                } else if (r22 == LABEL_COMMENT_EXTENSION) {
                    skip();
                } else if (r22 == 255) {
                    readBlock();
                    StringBuilder sb = new StringBuilder();
                    for (int r3 = 0; r3 < 11; r3++) {
                        sb.append((char) this.block[r3]);
                    }
                    if (sb.toString().equals("NETSCAPE2.0")) {
                        readNetscapeExt();
                    } else {
                        skip();
                    }
                } else {
                    skip();
                }
            } else if (r2 == 44) {
                if (this.header.currentFrame == null) {
                    this.header.currentFrame = new GifFrame();
                }
                readBitmap();
            } else if (r2 != 59) {
                this.header.status = 1;
            } else {
                z = true;
            }
        }
    }

    private void readGraphicControlExt() {
        read();
        int r0 = read();
        this.header.currentFrame.dispose = (r0 & 28) >> 2;
        if (this.header.currentFrame.dispose == 0) {
            this.header.currentFrame.dispose = 1;
        }
        this.header.currentFrame.transparency = (r0 & 1) != 0;
        int r02 = readShort();
        if (r02 < 2) {
            r02 = 10;
        }
        this.header.currentFrame.delay = r02 * 10;
        this.header.currentFrame.transIndex = read();
        read();
    }

    private void readBitmap() {
        this.header.currentFrame.f85ix = readShort();
        this.header.currentFrame.f86iy = readShort();
        this.header.currentFrame.f84iw = readShort();
        this.header.currentFrame.f83ih = readShort();
        int r0 = read();
        boolean z = (r0 & 128) != 0;
        int r4 = (int) Math.pow(2.0d, (r0 & 7) + 1);
        this.header.currentFrame.interlace = (r0 & 64) != 0;
        if (z) {
            this.header.currentFrame.lct = readColorTable(r4);
        } else {
            this.header.currentFrame.lct = null;
        }
        this.header.currentFrame.bufferFrameStart = this.rawData.position();
        skipImageData();
        if (err()) {
            return;
        }
        this.header.frameCount++;
        this.header.frames.add(this.header.currentFrame);
    }

    private void readNetscapeExt() {
        do {
            readBlock();
            byte[] bArr = this.block;
            if (bArr[0] == 1) {
                this.header.loopCount = ((bArr[2] & 255) << 8) | (bArr[1] & 255);
            }
            if (this.blockSize <= 0) {
                return;
            }
        } while (!err());
    }

    private void readHeader() {
        StringBuilder sb = new StringBuilder();
        for (int r1 = 0; r1 < 6; r1++) {
            sb.append((char) read());
        }
        if (!sb.toString().startsWith("GIF")) {
            this.header.status = 1;
            return;
        }
        readLSD();
        if (!this.header.gctFlag || err()) {
            return;
        }
        GifHeader gifHeader = this.header;
        gifHeader.gct = readColorTable(gifHeader.gctSize);
        GifHeader gifHeader2 = this.header;
        gifHeader2.bgColor = gifHeader2.gct[this.header.bgIndex];
    }

    private void readLSD() {
        this.header.width = readShort();
        this.header.height = readShort();
        this.header.gctFlag = (read() & 128) != 0;
        this.header.gctSize = (int) Math.pow(2.0d, (r0 & 7) + 1);
        this.header.bgIndex = read();
        this.header.pixelAspect = read();
    }

    private int[] readColorTable(int r10) {
        byte[] bArr = new byte[r10 * 3];
        int[] r1 = null;
        try {
            this.rawData.get(bArr);
            r1 = new int[256];
            int r2 = 0;
            int r3 = 0;
            while (r2 < r10) {
                int r4 = r3 + 1;
                int r5 = r4 + 1;
                int r6 = r5 + 1;
                int r7 = r2 + 1;
                r1[r2] = ((bArr[r3] & 255) << 16) | ViewCompat.MEASURED_STATE_MASK | ((bArr[r4] & 255) << 8) | (bArr[r5] & 255);
                r3 = r6;
                r2 = r7;
            }
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable(TAG, 3)) {
                Log.d(TAG, "Format Error Reading Color Table", e);
            }
            this.header.status = 1;
        }
        return r1;
    }

    private void skipImageData() {
        read();
        skip();
    }

    private void skip() {
        int r0;
        do {
            r0 = read();
            this.rawData.position(Math.min(this.rawData.position() + r0, this.rawData.limit()));
        } while (r0 > 0);
    }

    private void readBlock() {
        int r0 = read();
        this.blockSize = r0;
        if (r0 > 0) {
            int r02 = 0;
            int r1 = 0;
            while (r02 < this.blockSize) {
                try {
                    r1 = this.blockSize - r02;
                    this.rawData.get(this.block, r02, r1);
                    r02 += r1;
                } catch (Exception e) {
                    if (Log.isLoggable(TAG, 3)) {
                        Log.d(TAG, "Error Reading Block n: " + r02 + " count: " + r1 + " blockSize: " + this.blockSize, e);
                    }
                    this.header.status = 1;
                    return;
                }
            }
        }
    }

    private int read() {
        try {
            return this.rawData.get() & 255;
        } catch (Exception unused) {
            this.header.status = 1;
            return 0;
        }
    }

    private int readShort() {
        return this.rawData.getShort();
    }

    private boolean err() {
        return this.header.status != 0;
    }
}
