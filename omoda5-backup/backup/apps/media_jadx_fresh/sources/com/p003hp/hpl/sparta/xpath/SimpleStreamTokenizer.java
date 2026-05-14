package com.p003hp.hpl.sparta.xpath;

import java.io.IOException;
import java.io.Reader;

/* loaded from: classes.dex */
public class SimpleStreamTokenizer {
    private static final int QUOTE = -6;
    public static final int TT_EOF = -1;
    public static final int TT_NUMBER = -2;
    public static final int TT_WORD = -3;
    private static final int WHITESPACE = -5;
    private int nextType_;
    private final Reader reader_;
    public int ttype = Integer.MIN_VALUE;
    public int nval = Integer.MIN_VALUE;
    public String sval = "";
    private final StringBuffer buf_ = new StringBuffer();
    private final int[] charType_ = new int[256];
    private boolean pushedBack_ = false;
    private char inQuote_ = 0;

    public SimpleStreamTokenizer(Reader reader) throws IOException {
        this.reader_ = reader;
        for (char c = 0; c < this.charType_.length; c = (char) (c + 1)) {
            if (('A' <= c && c <= 'Z') || (('a' <= c && c <= 'z') || c == '-')) {
                this.charType_[c] = -3;
            } else if ('0' <= c && c <= '9') {
                this.charType_[c] = -2;
            } else if (c < 0 || c > ' ') {
                this.charType_[c] = c;
            } else {
                this.charType_[c] = WHITESPACE;
            }
        }
        nextToken();
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x00a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int nextToken() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p003hp.hpl.sparta.xpath.SimpleStreamTokenizer.nextToken():int");
    }

    public void ordinaryChar(char c) {
        this.charType_[c] = c;
    }

    public void pushBack() {
        this.pushedBack_ = true;
    }

    public String toString() {
        int r0 = this.ttype;
        if (r0 != -3) {
            if (r0 == -2) {
                return Integer.toString(this.nval);
            }
            if (r0 == -1) {
                return "(EOF)";
            }
            if (r0 != 34) {
                if (r0 != 39) {
                    StringBuffer stringBuffer = new StringBuffer();
                    stringBuffer.append("'");
                    stringBuffer.append((char) this.ttype);
                    stringBuffer.append("'");
                    return stringBuffer.toString();
                }
                StringBuffer stringBuffer2 = new StringBuffer();
                stringBuffer2.append("'");
                stringBuffer2.append(this.sval);
                stringBuffer2.append("'");
                return stringBuffer2.toString();
            }
        }
        StringBuffer stringBuffer3 = new StringBuffer();
        stringBuffer3.append("\"");
        stringBuffer3.append(this.sval);
        stringBuffer3.append("\"");
        return stringBuffer3.toString();
    }

    public void wordChars(char c, char c2) {
        while (c <= c2) {
            this.charType_[c] = -3;
            c = (char) (c + 1);
        }
    }
}
