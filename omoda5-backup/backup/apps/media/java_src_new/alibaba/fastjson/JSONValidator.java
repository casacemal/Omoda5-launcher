package com.alibaba.fastjson;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Reader;

/* loaded from: classes.dex */
public abstract class JSONValidator implements Cloneable, Closeable {

    /* renamed from: ch */
    protected char f66ch;
    protected boolean eof;
    protected Type type;
    protected int pos = -1;
    protected int count = 0;
    protected boolean supportMultiValue = true;

    public enum Type {
        Object,
        Array,
        Value
    }

    static final boolean isWhiteSpace(char c) {
        return c == ' ' || c == '\t' || c == '\r' || c == '\n' || c == '\f' || c == '\b';
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    abstract void next();

    public static JSONValidator fromUtf8(byte[] bArr) {
        return new UTF8Validator(bArr);
    }

    public static JSONValidator fromUtf8(InputStream inputStream) {
        return new UTF8InputStreamValidator(inputStream);
    }

    public static JSONValidator from(String str) {
        return new UTF16Validator(str);
    }

    public static JSONValidator from(Reader reader) {
        return new ReaderValidator(reader);
    }

    public boolean isSupportMultiValue() {
        return this.supportMultiValue;
    }

    public void setSupportMultiValue(boolean z) {
        this.supportMultiValue = z;
    }

    public Type getType() {
        if (this.type == null) {
            validate();
        }
        return this.type;
    }

    public boolean validate() {
        while (any()) {
            this.count++;
            if (this.eof) {
                return true;
            }
            if (!this.supportMultiValue) {
                return false;
            }
            skipWhiteSpace();
            if (this.eof) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:130:0x0187  */
    /* JADX WARN: Removed duplicated region for block: B:186:? A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean any() {
        /*
            Method dump skipped, instructions count: 536
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONValidator.any():boolean");
    }

    protected void fieldName() {
        next();
        while (true) {
            char c = this.f66ch;
            if (c == '\\') {
                next();
                if (this.f66ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c == '\"') {
                    next();
                    return;
                }
                next();
            }
        }
    }

    protected boolean string() {
        next();
        while (!this.eof) {
            char c = this.f66ch;
            if (c == '\\') {
                next();
                if (this.f66ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                    next();
                } else {
                    next();
                }
            } else {
                if (c == '\"') {
                    next();
                    return true;
                }
                next();
            }
        }
        return false;
    }

    void skipWhiteSpace() {
        while (isWhiteSpace(this.f66ch)) {
            next();
        }
    }

    static class UTF8Validator extends JSONValidator {
        private final byte[] bytes;

        public UTF8Validator(byte[] bArr) {
            this.bytes = bArr;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        void next() {
            this.pos++;
            int r0 = this.pos;
            byte[] bArr = this.bytes;
            if (r0 >= bArr.length) {
                this.f66ch = (char) 0;
                this.eof = true;
            } else {
                this.f66ch = (char) bArr[this.pos];
            }
        }
    }

    static class UTF8InputStreamValidator extends JSONValidator {
        private static final ThreadLocal<byte[]> bufLocal = new ThreadLocal<>();
        private byte[] buf;

        /* renamed from: is */
        private final InputStream f68is;
        private int end = -1;
        private int readCount = 0;

        public UTF8InputStreamValidator(InputStream inputStream) throws IOException {
            this.f68is = inputStream;
            byte[] bArr = bufLocal.get();
            this.buf = bArr;
            if (bArr != null) {
                bufLocal.set(null);
            } else {
                this.buf = new byte[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        void next() throws IOException {
            if (this.pos < this.end) {
                byte[] bArr = this.buf;
                int r1 = this.pos + 1;
                this.pos = r1;
                this.f66ch = (char) bArr[r1];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                int r12 = this.f68is.read(this.buf, 0, this.buf.length);
                this.readCount++;
                if (r12 > 0) {
                    this.f66ch = (char) this.buf[0];
                    this.pos = 0;
                    this.end = r12 - 1;
                } else {
                    if (r12 == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.f66ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.f66ch = (char) 0;
                    this.eof = true;
                    throw new JSONException("read error");
                }
            } catch (IOException unused) {
                throw new JSONException("read error");
            }
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            bufLocal.set(this.buf);
            this.f68is.close();
        }
    }

    static class UTF16Validator extends JSONValidator {
        private final String str;

        public UTF16Validator(String str) {
            this.str = str;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        void next() {
            this.pos++;
            if (this.pos >= this.str.length()) {
                this.f66ch = (char) 0;
                this.eof = true;
            } else {
                this.f66ch = this.str.charAt(this.pos);
            }
        }

        @Override // com.alibaba.fastjson.JSONValidator
        protected final void fieldName() {
            char cCharAt;
            int r0 = this.pos;
            do {
                r0++;
                if (r0 >= this.str.length() || (cCharAt = this.str.charAt(r0)) == '\\') {
                    next();
                    while (true) {
                        if (this.f66ch == '\\') {
                            next();
                            if (this.f66ch == 'u') {
                                next();
                                next();
                                next();
                                next();
                                next();
                            } else {
                                next();
                            }
                        } else {
                            if (this.f66ch == '\"') {
                                next();
                                return;
                            }
                            next();
                        }
                    }
                }
            } while (cCharAt != '\"');
            int r02 = r0 + 1;
            this.f66ch = this.str.charAt(r02);
            this.pos = r02;
        }

        @Override // com.alibaba.fastjson.JSONValidator
        final void skipWhiteSpace() {
            if (this.f66ch > '\r') {
                return;
            }
            while (isWhiteSpace(this.f66ch)) {
                next();
            }
        }
    }

    static class ReaderValidator extends JSONValidator {
        private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
        private char[] buf;

        /* renamed from: r */
        final Reader f67r;
        private int end = -1;
        private int readCount = 0;

        ReaderValidator(Reader reader) throws IOException {
            this.f67r = reader;
            char[] cArr = bufLocal.get();
            this.buf = cArr;
            if (cArr != null) {
                bufLocal.set(null);
            } else {
                this.buf = new char[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        void next() throws IOException {
            if (this.pos < this.end) {
                char[] cArr = this.buf;
                int r1 = this.pos + 1;
                this.pos = r1;
                this.f66ch = cArr[r1];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                int r12 = this.f67r.read(this.buf, 0, this.buf.length);
                this.readCount++;
                if (r12 > 0) {
                    this.f66ch = this.buf[0];
                    this.pos = 0;
                    this.end = r12 - 1;
                } else {
                    if (r12 == -1) {
                        this.pos = 0;
                        this.end = 0;
                        this.buf = null;
                        this.f66ch = (char) 0;
                        this.eof = true;
                        return;
                    }
                    this.pos = 0;
                    this.end = 0;
                    this.buf = null;
                    this.f66ch = (char) 0;
                    this.eof = true;
                    throw new JSONException("read error");
                }
            } catch (IOException unused) {
                throw new JSONException("read error");
            }
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            bufLocal.set(this.buf);
            this.f67r.close();
        }
    }
}
