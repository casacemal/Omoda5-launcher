package com.alibaba.fastjson.util;

import com.alibaba.fastjson.asm.Opcodes;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;

/* loaded from: classes.dex */
public class UTF8Decoder extends CharsetDecoder {
    private static final Charset charset = Charset.forName("UTF-8");

    private static boolean isMalformed2(int r0, int r1) {
        return (r0 & 30) == 0 || (r1 & Opcodes.CHECKCAST) != 128;
    }

    private static boolean isMalformed3(int r2, int r3, int r4) {
        return ((r2 != -32 || (r3 & 224) != 128) && (r3 & Opcodes.CHECKCAST) == 128 && (r4 & Opcodes.CHECKCAST) == 128) ? false : true;
    }

    private static boolean isMalformed4(int r1, int r2, int r3) {
        return ((r1 & Opcodes.CHECKCAST) == 128 && (r2 & Opcodes.CHECKCAST) == 128 && (r3 & Opcodes.CHECKCAST) == 128) ? false : true;
    }

    private static boolean isNotContinuation(int r1) {
        return (r1 & Opcodes.CHECKCAST) != 128;
    }

    public UTF8Decoder() {
        super(charset, 1.0f, 1.0f);
    }

    private static CoderResult lookupN(ByteBuffer byteBuffer, int r3) {
        for (int r0 = 1; r0 < r3; r0++) {
            if (isNotContinuation(byteBuffer.get())) {
                return CoderResult.malformedForLength(r0);
            }
        }
        return CoderResult.malformedForLength(r3);
    }

    public static CoderResult malformedN(ByteBuffer byteBuffer, int r8) {
        int r1 = 1;
        if (r8 == 1) {
            byte b = byteBuffer.get();
            if ((b >> 2) == -2) {
                return byteBuffer.remaining() < 4 ? CoderResult.UNDERFLOW : lookupN(byteBuffer, 5);
            }
            if ((b >> 1) == -2) {
                if (byteBuffer.remaining() < 5) {
                    return CoderResult.UNDERFLOW;
                }
                return lookupN(byteBuffer, 6);
            }
            return CoderResult.malformedForLength(1);
        }
        if (r8 == 2) {
            return CoderResult.malformedForLength(1);
        }
        if (r8 == 3) {
            byte b2 = byteBuffer.get();
            byte b3 = byteBuffer.get();
            if ((b2 != -32 || (b3 & 224) != 128) && !isNotContinuation(b3)) {
                r1 = 2;
            }
            return CoderResult.malformedForLength(r1);
        }
        if (r8 == 4) {
            int r82 = byteBuffer.get() & 255;
            int r0 = byteBuffer.get() & 255;
            if (r82 > 244 || ((r82 == 240 && (r0 < 144 || r0 > 191)) || ((r82 == 244 && (r0 & 240) != 128) || isNotContinuation(r0)))) {
                return CoderResult.malformedForLength(1);
            }
            return isNotContinuation(byteBuffer.get()) ? CoderResult.malformedForLength(2) : CoderResult.malformedForLength(3);
        }
        throw new IllegalStateException();
    }

    private static CoderResult malformed(ByteBuffer byteBuffer, int r2, CharBuffer charBuffer, int r4, int r5) {
        byteBuffer.position(r2 - byteBuffer.arrayOffset());
        CoderResult coderResultMalformedN = malformedN(byteBuffer, r5);
        byteBuffer.position(r2);
        charBuffer.position(r4);
        return coderResultMalformedN;
    }

    private static CoderResult xflow(Buffer buffer, int r1, int r2, Buffer buffer2, int r4, int r5) {
        buffer.position(r1);
        buffer2.position(r4);
        return (r5 == 0 || r2 - r1 < r5) ? CoderResult.UNDERFLOW : CoderResult.OVERFLOW;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0093, code lost:
    
        return xflow(r12, r4, r5, r13, r7, 2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ca, code lost:
    
        return xflow(r12, r4, r5, r13, r7, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012f, code lost:
    
        return xflow(r12, r4, r5, r13, r7, 4);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.nio.charset.CoderResult decodeArrayLoop(java.nio.ByteBuffer r12, java.nio.CharBuffer r13) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.util.UTF8Decoder.decodeArrayLoop(java.nio.ByteBuffer, java.nio.CharBuffer):java.nio.charset.CoderResult");
    }

    @Override // java.nio.charset.CharsetDecoder
    protected CoderResult decodeLoop(ByteBuffer byteBuffer, CharBuffer charBuffer) {
        return decodeArrayLoop(byteBuffer, charBuffer);
    }
}
