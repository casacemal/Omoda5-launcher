package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import java.io.CharArrayReader;
import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.math.BigDecimal;
import java.math.MathContext;

/* loaded from: classes.dex */
public final class JSONReaderScanner extends JSONLexerBase {
    private static final ThreadLocal<char[]> BUF_LOCAL = new ThreadLocal<>();
    private char[] buf;
    private int bufLength;
    private Reader reader;

    public JSONReaderScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(String str, int r3) {
        this(new StringReader(str), r3);
    }

    public JSONReaderScanner(char[] cArr, int r3) {
        this(cArr, r3, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(Reader reader) {
        this(reader, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(Reader reader, int r3) throws IOException {
        super(r3);
        this.reader = reader;
        char[] cArr = BUF_LOCAL.get();
        this.buf = cArr;
        if (cArr != null) {
            BUF_LOCAL.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[16384];
        }
        try {
            this.bufLength = reader.read(this.buf);
            this.f71bp = -1;
            next();
            if (this.f72ch == 65279) {
                next();
            }
        } catch (IOException e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public JSONReaderScanner(char[] cArr, int r4, int r5) {
        this(new CharArrayReader(cArr, 0, r4), r5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int r8) throws IOException {
        int r0 = this.bufLength;
        if (r8 >= r0) {
            if (r0 == -1) {
                return r8 < this.f74sp ? this.buf[r8] : JSONLexer.EOI;
            }
            if (this.f71bp == 0) {
                char[] cArr = this.buf;
                int length = (cArr.length * 3) / 2;
                char[] cArr2 = new char[length];
                System.arraycopy(cArr, this.f71bp, cArr2, 0, this.bufLength);
                int r02 = this.bufLength;
                try {
                    this.bufLength += this.reader.read(cArr2, r02, length - r02);
                    this.buf = cArr2;
                } catch (IOException e) {
                    throw new JSONException(e.getMessage(), e);
                }
            } else {
                int r03 = this.bufLength - this.f71bp;
                if (r03 > 0) {
                    System.arraycopy(this.buf, this.f71bp, this.buf, 0, r03);
                }
                try {
                    int r4 = this.reader.read(this.buf, r03, this.buf.length - r03);
                    this.bufLength = r4;
                    if (r4 == 0) {
                        throw new JSONException("illegal state, textLength is zero");
                    }
                    if (r4 == -1) {
                        return JSONLexer.EOI;
                    }
                    this.bufLength = r4 + r03;
                    r8 -= this.f71bp;
                    this.f73np -= this.f71bp;
                    this.f71bp = 0;
                } catch (IOException e2) {
                    throw new JSONException(e2.getMessage(), e2);
                }
            }
        }
        return this.buf[r8];
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int r4) throws IOException {
        int r42 = r4 - this.f71bp;
        while (true) {
            char cCharAt = charAt(this.f71bp + r42);
            if (c == cCharAt) {
                return r42 + this.f71bp;
            }
            if (cCharAt == 26) {
                return -1;
            }
            r42++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int r1, int r2, int r3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.buf, r1, r2, r3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() throws IOException {
        int r0 = this.f71bp + 1;
        this.f71bp = r0;
        int r1 = this.bufLength;
        if (r0 >= r1) {
            if (r1 == -1) {
                return JSONLexer.EOI;
            }
            if (this.f74sp > 0) {
                int r12 = this.bufLength - this.f74sp;
                if (this.f72ch == '\"' && r12 > 0) {
                    r12--;
                }
                char[] cArr = this.buf;
                System.arraycopy(cArr, r12, cArr, 0, this.f74sp);
            }
            this.f73np = -1;
            int r13 = this.f74sp;
            this.f71bp = r13;
            try {
                int r4 = this.f71bp;
                int length = this.buf.length - r4;
                if (length == 0) {
                    char[] cArr2 = new char[this.buf.length * 2];
                    System.arraycopy(this.buf, 0, cArr2, 0, this.buf.length);
                    this.buf = cArr2;
                    length = cArr2.length - r4;
                }
                int r3 = this.reader.read(this.buf, this.f71bp, length);
                this.bufLength = r3;
                if (r3 == 0) {
                    throw new JSONException("illegal stat, textLength is zero");
                }
                if (r3 == -1) {
                    this.f72ch = JSONLexer.EOI;
                    return JSONLexer.EOI;
                }
                this.bufLength = r3 + this.f71bp;
                r0 = r13;
            } catch (IOException e) {
                throw new JSONException(e.getMessage(), e);
            }
        }
        char c = this.buf[r0];
        this.f72ch = c;
        return c;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void copyTo(int r2, int r3, char[] cArr) {
        System.arraycopy(this.buf, r2, cArr, 0, r3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        for (int r1 = 0; r1 < cArr.length; r1++) {
            if (charAt(this.f71bp + r1) != cArr[r1]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token == 26) {
            throw new JSONException("TODO");
        }
        return IOUtils.decodeBase64(this.buf, this.f73np + 1, this.f74sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void arrayCopy(int r1, char[] cArr, int r3, int r4) {
        System.arraycopy(this.buf, r1, cArr, r3, r4);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        if (!this.hasSpecial) {
            int r0 = this.f73np + 1;
            if (r0 < 0) {
                throw new IllegalStateException();
            }
            if (r0 > this.buf.length - this.f74sp) {
                throw new IllegalStateException();
            }
            return new String(this.buf, r0, this.f74sp);
        }
        return new String(this.sbuf, 0, this.f74sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int r2, int r3) {
        if (r3 < 0) {
            throw new StringIndexOutOfBoundsException(r3);
        }
        return new String(this.buf, r2, r3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int r3, int r4) {
        if (r4 < 0) {
            throw new StringIndexOutOfBoundsException(r4);
        }
        if (r3 == 0) {
            return this.buf;
        }
        char[] cArr = new char[r4];
        System.arraycopy(this.buf, r3, cArr, 0, r4);
        return cArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() throws IOException {
        int r0 = this.f73np;
        if (r0 == -1) {
            r0 = 0;
        }
        char cCharAt = charAt((this.f74sp + r0) - 1);
        int r2 = this.f74sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            r2--;
        }
        return new String(this.buf, r0, r2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() throws IOException {
        int r0 = this.f73np;
        if (r0 == -1) {
            r0 = 0;
        }
        char cCharAt = charAt((this.f74sp + r0) - 1);
        int r2 = this.f74sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            r2--;
        }
        if (r2 > 65535) {
            throw new JSONException("decimal overflow");
        }
        return new BigDecimal(this.buf, r0, r2, MathContext.UNLIMITED);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        super.close();
        char[] cArr = this.buf;
        if (cArr.length <= 65536) {
            BUF_LOCAL.set(cArr);
        }
        this.buf = null;
        IOUtils.close(this.reader);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.bufLength == -1 || this.f71bp == this.buf.length) {
            return true;
        }
        return this.f72ch == 26 && this.f71bp + 1 >= this.buf.length;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final boolean isBlankInput() {
        int r1 = 0;
        while (true) {
            char c = this.buf[r1];
            if (c == 26) {
                this.token = 20;
                return true;
            }
            if (!isWhitespace(c)) {
                return false;
            }
            r1++;
        }
    }
}
