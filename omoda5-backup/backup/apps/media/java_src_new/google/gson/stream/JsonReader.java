package com.google.gson.stream;

import com.chery.libvr.bean.params.ParamsResValue;
import com.google.gson.internal.JsonReaderInternalAccess;
import com.google.gson.internal.bind.JsonTreeReader;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.Reader;
import java.util.Arrays;

/* loaded from: classes.dex */
public class JsonReader implements Closeable {
    private static final long MIN_INCOMPLETE_INTEGER = -922337203685477580L;
    private static final char[] NON_EXECUTE_PREFIX = ")]}'\n".toCharArray();
    private static final int NUMBER_CHAR_DECIMAL = 3;
    private static final int NUMBER_CHAR_DIGIT = 2;
    private static final int NUMBER_CHAR_EXP_DIGIT = 7;
    private static final int NUMBER_CHAR_EXP_E = 5;
    private static final int NUMBER_CHAR_EXP_SIGN = 6;
    private static final int NUMBER_CHAR_FRACTION_DIGIT = 4;
    private static final int NUMBER_CHAR_NONE = 0;
    private static final int NUMBER_CHAR_SIGN = 1;
    private static final int PEEKED_BEGIN_ARRAY = 3;
    private static final int PEEKED_BEGIN_OBJECT = 1;
    private static final int PEEKED_BUFFERED = 11;
    private static final int PEEKED_DOUBLE_QUOTED = 9;
    private static final int PEEKED_DOUBLE_QUOTED_NAME = 13;
    private static final int PEEKED_END_ARRAY = 4;
    private static final int PEEKED_END_OBJECT = 2;
    private static final int PEEKED_EOF = 17;
    private static final int PEEKED_FALSE = 6;
    private static final int PEEKED_LONG = 15;
    private static final int PEEKED_NONE = 0;
    private static final int PEEKED_NULL = 7;
    private static final int PEEKED_NUMBER = 16;
    private static final int PEEKED_SINGLE_QUOTED = 8;
    private static final int PEEKED_SINGLE_QUOTED_NAME = 12;
    private static final int PEEKED_TRUE = 5;
    private static final int PEEKED_UNQUOTED = 10;
    private static final int PEEKED_UNQUOTED_NAME = 14;

    /* renamed from: in */
    private final Reader f315in;
    private int[] pathIndices;
    private String[] pathNames;
    private long peekedLong;
    private int peekedNumberLength;
    private String peekedString;
    private int[] stack;
    private int stackSize;
    private boolean lenient = false;
    private final char[] buffer = new char[1024];
    private int pos = 0;
    private int limit = 0;
    private int lineNumber = 0;
    private int lineStart = 0;
    int peeked = 0;

    static {
        JsonReaderInternalAccess.INSTANCE = new JsonReaderInternalAccess() { // from class: com.google.gson.stream.JsonReader.1
            @Override // com.google.gson.internal.JsonReaderInternalAccess
            public void promoteNameToValue(JsonReader jsonReader) throws IOException {
                if (jsonReader instanceof JsonTreeReader) {
                    ((JsonTreeReader) jsonReader).promoteNameToValue();
                    return;
                }
                int r2 = jsonReader.peeked;
                if (r2 == 0) {
                    r2 = jsonReader.doPeek();
                }
                if (r2 == 13) {
                    jsonReader.peeked = 9;
                    return;
                }
                if (r2 == 12) {
                    jsonReader.peeked = 8;
                    return;
                }
                if (r2 == 14) {
                    jsonReader.peeked = 10;
                    return;
                }
                throw new IllegalStateException("Expected a name but was " + jsonReader.peek() + jsonReader.locationString());
            }
        };
    }

    public JsonReader(Reader reader) {
        int[] r2 = new int[32];
        this.stack = r2;
        this.stackSize = 0;
        this.stackSize = 0 + 1;
        r2[0] = 6;
        this.pathNames = new String[32];
        this.pathIndices = new int[32];
        if (reader == null) {
            throw new NullPointerException("in == null");
        }
        this.f315in = reader;
    }

    public final void setLenient(boolean z) {
        this.lenient = z;
    }

    public final boolean isLenient() {
        return this.lenient;
    }

    public void beginArray() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 3) {
            push(1);
            this.pathIndices[this.stackSize - 1] = 0;
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_ARRAY but was " + peek() + locationString());
        }
    }

    public void endArray() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 4) {
            int r02 = this.stackSize - 1;
            this.stackSize = r02;
            int[] r1 = this.pathIndices;
            int r03 = r02 - 1;
            r1[r03] = r1[r03] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_ARRAY but was " + peek() + locationString());
    }

    public void beginObject() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 1) {
            push(3);
            this.peeked = 0;
        } else {
            throw new IllegalStateException("Expected BEGIN_OBJECT but was " + peek() + locationString());
        }
    }

    public void endObject() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 2) {
            int r02 = this.stackSize - 1;
            this.stackSize = r02;
            this.pathNames[r02] = null;
            int[] r1 = this.pathIndices;
            int r03 = r02 - 1;
            r1[r03] = r1[r03] + 1;
            this.peeked = 0;
            return;
        }
        throw new IllegalStateException("Expected END_OBJECT but was " + peek() + locationString());
    }

    public boolean hasNext() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        return (r0 == 2 || r0 == 4) ? false : true;
    }

    public JsonToken peek() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        switch (r0) {
            case 1:
                return JsonToken.BEGIN_OBJECT;
            case 2:
                return JsonToken.END_OBJECT;
            case 3:
                return JsonToken.BEGIN_ARRAY;
            case 4:
                return JsonToken.END_ARRAY;
            case 5:
            case 6:
                return JsonToken.BOOLEAN;
            case 7:
                return JsonToken.NULL;
            case 8:
            case 9:
            case 10:
            case 11:
                return JsonToken.STRING;
            case 12:
            case 13:
            case 14:
                return JsonToken.NAME;
            case 15:
            case 16:
                return JsonToken.NUMBER;
            case 17:
                return JsonToken.END_DOCUMENT;
            default:
                throw new AssertionError();
        }
    }

    int doPeek() throws IOException {
        int r1;
        int[] r0 = this.stack;
        int r12 = this.stackSize;
        int r2 = r0[r12 - 1];
        if (r2 == 1) {
            r0[r12 - 1] = 2;
        } else if (r2 == 2) {
            int r02 = nextNonWhitespace(true);
            if (r02 != 44) {
                if (r02 != 59) {
                    if (r02 == 93) {
                        this.peeked = 4;
                        return 4;
                    }
                    throw syntaxError("Unterminated array");
                }
                checkLenient();
            }
        } else {
            if (r2 == 3 || r2 == 5) {
                this.stack[this.stackSize - 1] = 4;
                if (r2 == 5 && (r1 = nextNonWhitespace(true)) != 44) {
                    if (r1 != 59) {
                        if (r1 == 125) {
                            this.peeked = 2;
                            return 2;
                        }
                        throw syntaxError("Unterminated object");
                    }
                    checkLenient();
                }
                int r13 = nextNonWhitespace(true);
                if (r13 == 34) {
                    this.peeked = 13;
                    return 13;
                }
                if (r13 == 39) {
                    checkLenient();
                    this.peeked = 12;
                    return 12;
                }
                if (r13 == 125) {
                    if (r2 != 5) {
                        this.peeked = 2;
                        return 2;
                    }
                    throw syntaxError("Expected name");
                }
                checkLenient();
                this.pos--;
                if (isLiteral((char) r13)) {
                    this.peeked = 14;
                    return 14;
                }
                throw syntaxError("Expected name");
            }
            if (r2 == 4) {
                r0[r12 - 1] = 5;
                int r03 = nextNonWhitespace(true);
                if (r03 != 58) {
                    if (r03 == 61) {
                        checkLenient();
                        if (this.pos < this.limit || fillBuffer(1)) {
                            char[] cArr = this.buffer;
                            int r14 = this.pos;
                            if (cArr[r14] == '>') {
                                this.pos = r14 + 1;
                            }
                        }
                    } else {
                        throw syntaxError("Expected ':'");
                    }
                }
            } else if (r2 == 6) {
                if (this.lenient) {
                    consumeNonExecutePrefix();
                }
                this.stack[this.stackSize - 1] = 7;
            } else if (r2 == 7) {
                if (nextNonWhitespace(false) == -1) {
                    this.peeked = 17;
                    return 17;
                }
                checkLenient();
                this.pos--;
            } else if (r2 == 8) {
                throw new IllegalStateException("JsonReader is closed");
            }
        }
        int r04 = nextNonWhitespace(true);
        if (r04 == 34) {
            this.peeked = 9;
            return 9;
        }
        if (r04 == 39) {
            checkLenient();
            this.peeked = 8;
            return 8;
        }
        if (r04 != 44 && r04 != 59) {
            if (r04 == 91) {
                this.peeked = 3;
                return 3;
            }
            if (r04 != 93) {
                if (r04 == 123) {
                    this.peeked = 1;
                    return 1;
                }
                this.pos--;
                int r05 = peekKeyword();
                if (r05 != 0) {
                    return r05;
                }
                int r06 = peekNumber();
                if (r06 != 0) {
                    return r06;
                }
                if (!isLiteral(this.buffer[this.pos])) {
                    throw syntaxError("Expected value");
                }
                checkLenient();
                this.peeked = 10;
                return 10;
            }
            if (r2 == 1) {
                this.peeked = 4;
                return 4;
            }
        }
        if (r2 == 1 || r2 == 2) {
            checkLenient();
            this.pos--;
            this.peeked = 7;
            return 7;
        }
        throw syntaxError("Unexpected value");
    }

    private int peekKeyword() throws IOException {
        int r0;
        String str;
        String str2;
        char c = this.buffer[this.pos];
        if (c == 't' || c == 'T') {
            r0 = 5;
            str = ParamsResValue.RainState.RAIN;
            str2 = "TRUE";
        } else if (c == 'f' || c == 'F') {
            r0 = 6;
            str = ParamsResValue.RainState.NO_RAIN;
            str2 = "FALSE";
        } else {
            if (c != 'n' && c != 'N') {
                return 0;
            }
            r0 = 7;
            str = "null";
            str2 = "NULL";
        }
        int length = str.length();
        for (int r5 = 1; r5 < length; r5++) {
            if (this.pos + r5 >= this.limit && !fillBuffer(r5 + 1)) {
                return 0;
            }
            char c2 = this.buffer[this.pos + r5];
            if (c2 != str.charAt(r5) && c2 != str2.charAt(r5)) {
                return 0;
            }
        }
        if ((this.pos + length < this.limit || fillBuffer(length + 1)) && isLiteral(this.buffer[this.pos + length])) {
            return 0;
        }
        this.pos += length;
        this.peeked = r0;
        return r0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0091, code lost:
    
        if (isLiteral(r14) != false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x0093, code lost:
    
        if (r9 != 2) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0095, code lost:
    
        if (r10 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x009b, code lost:
    
        if (r11 != Long.MIN_VALUE) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x009d, code lost:
    
        if (r13 == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00a3, code lost:
    
        if (r11 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00a5, code lost:
    
        if (r13 != false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00a7, code lost:
    
        if (r13 == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00aa, code lost:
    
        r11 = -r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00ab, code lost:
    
        r18.peekedLong = r11;
        r18.pos += r8;
        r18.peeked = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00b6, code lost:
    
        return 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00b7, code lost:
    
        if (r9 == 2) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00ba, code lost:
    
        if (r9 == 4) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00bd, code lost:
    
        if (r9 != 7) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00c0, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c2, code lost:
    
        r18.peekedNumberLength = r8;
        r18.peeked = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00c8, code lost:
    
        return 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00c9, code lost:
    
        return 0;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0031  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00eb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private int peekNumber() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.peekNumber():int");
    }

    private boolean isLiteral(char c) throws IOException {
        if (c == '\t' || c == '\n' || c == '\f' || c == '\r' || c == ' ') {
            return false;
        }
        if (c != '#') {
            if (c == ',') {
                return false;
            }
            if (c != '/' && c != '=') {
                if (c == '{' || c == '}' || c == ':') {
                    return false;
                }
                if (c != ';') {
                    switch (c) {
                        case '[':
                        case ']':
                            return false;
                        case '\\':
                            break;
                        default:
                            return true;
                    }
                }
            }
        }
        checkLenient();
        return false;
    }

    public String nextName() throws IOException {
        String strNextQuotedValue;
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 14) {
            strNextQuotedValue = nextUnquotedValue();
        } else if (r0 == 12) {
            strNextQuotedValue = nextQuotedValue('\'');
        } else if (r0 == 13) {
            strNextQuotedValue = nextQuotedValue('\"');
        } else {
            throw new IllegalStateException("Expected a name but was " + peek() + locationString());
        }
        this.peeked = 0;
        this.pathNames[this.stackSize - 1] = strNextQuotedValue;
        return strNextQuotedValue;
    }

    public String nextString() throws IOException {
        String str;
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 10) {
            str = nextUnquotedValue();
        } else if (r0 == 8) {
            str = nextQuotedValue('\'');
        } else if (r0 == 9) {
            str = nextQuotedValue('\"');
        } else if (r0 == 11) {
            str = this.peekedString;
            this.peekedString = null;
        } else if (r0 == 15) {
            str = Long.toString(this.peekedLong);
        } else if (r0 == 16) {
            str = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else {
            throw new IllegalStateException("Expected a string but was " + peek() + locationString());
        }
        this.peeked = 0;
        int[] r1 = this.pathIndices;
        int r4 = this.stackSize - 1;
        r1[r4] = r1[r4] + 1;
        return str;
    }

    public boolean nextBoolean() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 5) {
            this.peeked = 0;
            int[] r02 = this.pathIndices;
            int r4 = this.stackSize - 1;
            r02[r4] = r02[r4] + 1;
            return true;
        }
        if (r0 == 6) {
            this.peeked = 0;
            int[] r03 = this.pathIndices;
            int r42 = this.stackSize - 1;
            r03[r42] = r03[r42] + 1;
            return false;
        }
        throw new IllegalStateException("Expected a boolean but was " + peek() + locationString());
    }

    public void nextNull() throws IOException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 7) {
            this.peeked = 0;
            int[] r02 = this.pathIndices;
            int r3 = this.stackSize - 1;
            r02[r3] = r02[r3] + 1;
            return;
        }
        throw new IllegalStateException("Expected null but was " + peek() + locationString());
    }

    public double nextDouble() throws IOException, NumberFormatException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 15) {
            this.peeked = 0;
            int[] r02 = this.pathIndices;
            int r1 = this.stackSize - 1;
            r02[r1] = r02[r1] + 1;
            return this.peekedLong;
        }
        if (r0 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (r0 == 8 || r0 == 9) {
            this.peekedString = nextQuotedValue(r0 == 8 ? '\'' : '\"');
        } else if (r0 == 10) {
            this.peekedString = nextUnquotedValue();
        } else if (r0 != 11) {
            throw new IllegalStateException("Expected a double but was " + peek() + locationString());
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        if (!this.lenient && (Double.isNaN(d) || Double.isInfinite(d))) {
            throw new MalformedJsonException("JSON forbids NaN and infinities: " + d + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] r2 = this.pathIndices;
        int r6 = this.stackSize - 1;
        r2[r6] = r2[r6] + 1;
        return d;
    }

    public long nextLong() throws IOException, NumberFormatException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 15) {
            this.peeked = 0;
            int[] r02 = this.pathIndices;
            int r1 = this.stackSize - 1;
            r02[r1] = r02[r1] + 1;
            return this.peekedLong;
        }
        if (r0 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (r0 == 8 || r0 == 9 || r0 == 10) {
            if (r0 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(r0 == 8 ? '\'' : '\"');
            }
            try {
                long j = Long.parseLong(this.peekedString);
                this.peeked = 0;
                int[] r4 = this.pathIndices;
                int r5 = this.stackSize - 1;
                r4[r5] = r4[r5] + 1;
                return j;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected a long but was " + peek() + locationString());
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        long j2 = (long) d;
        if (j2 != d) {
            throw new NumberFormatException("Expected a long but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] r03 = this.pathIndices;
        int r8 = this.stackSize - 1;
        r03[r8] = r03[r8] + 1;
        return j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x005c, code lost:
    
        if (r1 != null) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x005e, code lost:
    
        r1 = new java.lang.StringBuilder(java.lang.Math.max((r2 - r3) * 2, 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
    
        r1.append(r0, r3, r2 - r3);
        r9.pos = r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nextQuotedValue(char r10) throws java.io.IOException {
        /*
            r9 = this;
            char[] r0 = r9.buffer
            r1 = 0
        L3:
            int r2 = r9.pos
            int r3 = r9.limit
        L7:
            r4 = r3
            r3 = r2
        L9:
            r5 = 16
            r6 = 1
            if (r2 >= r4) goto L5c
            int r7 = r2 + 1
            char r2 = r0[r2]
            if (r2 != r10) goto L28
            r9.pos = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L20
            java.lang.String r9 = new java.lang.String
            r9.<init>(r0, r3, r7)
            return r9
        L20:
            r1.append(r0, r3, r7)
            java.lang.String r9 = r1.toString()
            return r9
        L28:
            r8 = 92
            if (r2 != r8) goto L4f
            r9.pos = r7
            int r7 = r7 - r3
            int r7 = r7 - r6
            if (r1 != 0) goto L40
            int r1 = r7 + 1
            int r1 = r1 * 2
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r2.<init>(r1)
            r1 = r2
        L40:
            r1.append(r0, r3, r7)
            char r2 = r9.readEscapeCharacter()
            r1.append(r2)
            int r2 = r9.pos
            int r3 = r9.limit
            goto L7
        L4f:
            r5 = 10
            if (r2 != r5) goto L5a
            int r2 = r9.lineNumber
            int r2 = r2 + r6
            r9.lineNumber = r2
            r9.lineStart = r7
        L5a:
            r2 = r7
            goto L9
        L5c:
            if (r1 != 0) goto L6c
            int r1 = r2 - r3
            int r1 = r1 * 2
            java.lang.StringBuilder r4 = new java.lang.StringBuilder
            int r1 = java.lang.Math.max(r1, r5)
            r4.<init>(r1)
            r1 = r4
        L6c:
            int r4 = r2 - r3
            r1.append(r0, r3, r4)
            r9.pos = r2
            boolean r2 = r9.fillBuffer(r6)
            if (r2 == 0) goto L7a
            goto L3
        L7a:
            java.lang.String r10 = "Unterminated string"
            java.io.IOException r9 = r9.syntaxError(r10)
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextQuotedValue(char):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x004a, code lost:
    
        checkLenient();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:32:0x0044. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x008a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String nextUnquotedValue() throws java.io.IOException {
        /*
            r6 = this;
            r0 = 0
            r1 = 0
        L2:
            r2 = r0
        L3:
            int r3 = r6.pos
            int r4 = r3 + r2
            int r5 = r6.limit
            if (r4 >= r5) goto L4e
            char[] r4 = r6.buffer
            int r3 = r3 + r2
            char r3 = r4[r3]
            r4 = 9
            if (r3 == r4) goto L5c
            r4 = 10
            if (r3 == r4) goto L5c
            r4 = 12
            if (r3 == r4) goto L5c
            r4 = 13
            if (r3 == r4) goto L5c
            r4 = 32
            if (r3 == r4) goto L5c
            r4 = 35
            if (r3 == r4) goto L4a
            r4 = 44
            if (r3 == r4) goto L5c
            r4 = 47
            if (r3 == r4) goto L4a
            r4 = 61
            if (r3 == r4) goto L4a
            r4 = 123(0x7b, float:1.72E-43)
            if (r3 == r4) goto L5c
            r4 = 125(0x7d, float:1.75E-43)
            if (r3 == r4) goto L5c
            r4 = 58
            if (r3 == r4) goto L5c
            r4 = 59
            if (r3 == r4) goto L4a
            switch(r3) {
                case 91: goto L5c;
                case 92: goto L4a;
                case 93: goto L5c;
                default: goto L47;
            }
        L47:
            int r2 = r2 + 1
            goto L3
        L4a:
            r6.checkLenient()
            goto L5c
        L4e:
            char[] r3 = r6.buffer
            int r3 = r3.length
            if (r2 >= r3) goto L5e
            int r3 = r2 + 1
            boolean r3 = r6.fillBuffer(r3)
            if (r3 == 0) goto L5c
            goto L3
        L5c:
            r0 = r2
            goto L7e
        L5e:
            if (r1 != 0) goto L6b
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r3 = 16
            int r3 = java.lang.Math.max(r2, r3)
            r1.<init>(r3)
        L6b:
            char[] r3 = r6.buffer
            int r4 = r6.pos
            r1.append(r3, r4, r2)
            int r3 = r6.pos
            int r3 = r3 + r2
            r6.pos = r3
            r2 = 1
            boolean r2 = r6.fillBuffer(r2)
            if (r2 != 0) goto L2
        L7e:
            if (r1 != 0) goto L8a
            java.lang.String r1 = new java.lang.String
            char[] r2 = r6.buffer
            int r3 = r6.pos
            r1.<init>(r2, r3, r0)
            goto L95
        L8a:
            char[] r2 = r6.buffer
            int r3 = r6.pos
            r1.append(r2, r3, r0)
            java.lang.String r1 = r1.toString()
        L95:
            int r2 = r6.pos
            int r2 = r2 + r0
            r6.pos = r2
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.nextUnquotedValue():java.lang.String");
    }

    private void skipQuotedValue(char c) throws IOException {
        char[] cArr = this.buffer;
        do {
            int r1 = this.pos;
            int r2 = this.limit;
            while (r1 < r2) {
                int r4 = r1 + 1;
                char c2 = cArr[r1];
                if (c2 == c) {
                    this.pos = r4;
                    return;
                }
                if (c2 == '\\') {
                    this.pos = r4;
                    readEscapeCharacter();
                    r1 = this.pos;
                    r2 = this.limit;
                } else {
                    if (c2 == '\n') {
                        this.lineNumber++;
                        this.lineStart = r4;
                    }
                    r1 = r4;
                }
            }
            this.pos = r1;
        } while (fillBuffer(1));
        throw syntaxError("Unterminated string");
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0048, code lost:
    
        checkLenient();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void skipUnquotedValue() throws java.io.IOException {
        /*
            r4 = this;
        L0:
            r0 = 0
        L1:
            int r1 = r4.pos
            int r2 = r1 + r0
            int r3 = r4.limit
            if (r2 >= r3) goto L51
            char[] r2 = r4.buffer
            int r1 = r1 + r0
            char r1 = r2[r1]
            r2 = 9
            if (r1 == r2) goto L4b
            r2 = 10
            if (r1 == r2) goto L4b
            r2 = 12
            if (r1 == r2) goto L4b
            r2 = 13
            if (r1 == r2) goto L4b
            r2 = 32
            if (r1 == r2) goto L4b
            r2 = 35
            if (r1 == r2) goto L48
            r2 = 44
            if (r1 == r2) goto L4b
            r2 = 47
            if (r1 == r2) goto L48
            r2 = 61
            if (r1 == r2) goto L48
            r2 = 123(0x7b, float:1.72E-43)
            if (r1 == r2) goto L4b
            r2 = 125(0x7d, float:1.75E-43)
            if (r1 == r2) goto L4b
            r2 = 58
            if (r1 == r2) goto L4b
            r2 = 59
            if (r1 == r2) goto L48
            switch(r1) {
                case 91: goto L4b;
                case 92: goto L48;
                case 93: goto L4b;
                default: goto L45;
            }
        L45:
            int r0 = r0 + 1
            goto L1
        L48:
            r4.checkLenient()
        L4b:
            int r1 = r4.pos
            int r1 = r1 + r0
            r4.pos = r1
            return
        L51:
            int r1 = r1 + r0
            r4.pos = r1
            r0 = 1
            boolean r0 = r4.fillBuffer(r0)
            if (r0 != 0) goto L0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.gson.stream.JsonReader.skipUnquotedValue():void");
    }

    public int nextInt() throws IOException, NumberFormatException {
        int r0 = this.peeked;
        if (r0 == 0) {
            r0 = doPeek();
        }
        if (r0 == 15) {
            long j = this.peekedLong;
            int r4 = (int) j;
            if (j != r4) {
                throw new NumberFormatException("Expected an int but was " + this.peekedLong + locationString());
            }
            this.peeked = 0;
            int[] r02 = this.pathIndices;
            int r7 = this.stackSize - 1;
            r02[r7] = r02[r7] + 1;
            return r4;
        }
        if (r0 == 16) {
            this.peekedString = new String(this.buffer, this.pos, this.peekedNumberLength);
            this.pos += this.peekedNumberLength;
        } else if (r0 == 8 || r0 == 9 || r0 == 10) {
            if (r0 == 10) {
                this.peekedString = nextUnquotedValue();
            } else {
                this.peekedString = nextQuotedValue(r0 == 8 ? '\'' : '\"');
            }
            try {
                int r03 = Integer.parseInt(this.peekedString);
                this.peeked = 0;
                int[] r1 = this.pathIndices;
                int r42 = this.stackSize - 1;
                r1[r42] = r1[r42] + 1;
                return r03;
            } catch (NumberFormatException unused) {
            }
        } else {
            throw new IllegalStateException("Expected an int but was " + peek() + locationString());
        }
        this.peeked = 11;
        double d = Double.parseDouble(this.peekedString);
        int r43 = (int) d;
        if (r43 != d) {
            throw new NumberFormatException("Expected an int but was " + this.peekedString + locationString());
        }
        this.peekedString = null;
        this.peeked = 0;
        int[] r04 = this.pathIndices;
        int r72 = this.stackSize - 1;
        r04[r72] = r04[r72] + 1;
        return r43;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.peeked = 0;
        this.stack[0] = 8;
        this.stackSize = 1;
        this.f315in.close();
    }

    public void skipValue() throws IOException {
        int r1 = 0;
        do {
            int r2 = this.peeked;
            if (r2 == 0) {
                r2 = doPeek();
            }
            if (r2 == 3) {
                push(1);
            } else if (r2 == 1) {
                push(3);
            } else if (r2 == 4 || r2 == 2) {
                this.stackSize--;
                r1--;
                this.peeked = 0;
            } else {
                if (r2 == 14 || r2 == 10) {
                    skipUnquotedValue();
                } else if (r2 == 8 || r2 == 12) {
                    skipQuotedValue('\'');
                } else if (r2 == 9 || r2 == 13) {
                    skipQuotedValue('\"');
                } else if (r2 == 16) {
                    this.pos += this.peekedNumberLength;
                }
                this.peeked = 0;
            }
            r1++;
            this.peeked = 0;
        } while (r1 != 0);
        int[] r0 = this.pathIndices;
        int r12 = this.stackSize;
        int r22 = r12 - 1;
        r0[r22] = r0[r22] + 1;
        this.pathNames[r12 - 1] = "null";
    }

    private void push(int r4) {
        int r0 = this.stackSize;
        int[] r1 = this.stack;
        if (r0 == r1.length) {
            int r02 = r0 * 2;
            this.stack = Arrays.copyOf(r1, r02);
            this.pathIndices = Arrays.copyOf(this.pathIndices, r02);
            this.pathNames = (String[]) Arrays.copyOf(this.pathNames, r02);
        }
        int[] r03 = this.stack;
        int r12 = this.stackSize;
        this.stackSize = r12 + 1;
        r03[r12] = r4;
    }

    private boolean fillBuffer(int r7) throws IOException {
        int r1;
        char[] cArr = this.buffer;
        int r12 = this.lineStart;
        int r2 = this.pos;
        this.lineStart = r12 - r2;
        int r13 = this.limit;
        if (r13 != r2) {
            int r14 = r13 - r2;
            this.limit = r14;
            System.arraycopy(cArr, r2, cArr, 0, r14);
        } else {
            this.limit = 0;
        }
        this.pos = 0;
        do {
            Reader reader = this.f315in;
            int r22 = this.limit;
            int r15 = reader.read(cArr, r22, cArr.length - r22);
            if (r15 == -1) {
                return false;
            }
            int r23 = this.limit + r15;
            this.limit = r23;
            if (this.lineNumber == 0 && (r1 = this.lineStart) == 0 && r23 > 0 && cArr[0] == 65279) {
                this.pos++;
                this.lineStart = r1 + 1;
                r7++;
            }
        } while (this.limit < r7);
        return true;
    }

    private int nextNonWhitespace(boolean z) throws IOException {
        char[] cArr = this.buffer;
        int r1 = this.pos;
        int r2 = this.limit;
        while (true) {
            if (r1 == r2) {
                this.pos = r1;
                if (!fillBuffer(1)) {
                    if (!z) {
                        return -1;
                    }
                    throw new EOFException("End of input" + locationString());
                }
                r1 = this.pos;
                r2 = this.limit;
            }
            int r4 = r1 + 1;
            char c = cArr[r1];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = r4;
            } else if (c != ' ' && c != '\r' && c != '\t') {
                if (c == '/') {
                    this.pos = r4;
                    if (r4 == r2) {
                        this.pos = r4 - 1;
                        boolean zFillBuffer = fillBuffer(2);
                        this.pos++;
                        if (!zFillBuffer) {
                            return c;
                        }
                    }
                    checkLenient();
                    int r22 = this.pos;
                    char c2 = cArr[r22];
                    if (c2 == '*') {
                        this.pos = r22 + 1;
                        if (!skipTo("*/")) {
                            throw syntaxError("Unterminated comment");
                        }
                        r1 = this.pos + 2;
                        r2 = this.limit;
                    } else {
                        if (c2 != '/') {
                            return c;
                        }
                        this.pos = r22 + 1;
                        skipToEndOfLine();
                        r1 = this.pos;
                        r2 = this.limit;
                    }
                } else if (c == '#') {
                    this.pos = r4;
                    checkLenient();
                    skipToEndOfLine();
                    r1 = this.pos;
                    r2 = this.limit;
                } else {
                    this.pos = r4;
                    return c;
                }
            }
            r1 = r4;
        }
    }

    private void checkLenient() throws IOException {
        if (!this.lenient) {
            throw syntaxError("Use JsonReader.setLenient(true) to accept malformed JSON");
        }
    }

    private void skipToEndOfLine() throws IOException {
        char c;
        do {
            if (this.pos >= this.limit && !fillBuffer(1)) {
                return;
            }
            char[] cArr = this.buffer;
            int r1 = this.pos;
            int r3 = r1 + 1;
            this.pos = r3;
            c = cArr[r1];
            if (c == '\n') {
                this.lineNumber++;
                this.lineStart = r3;
                return;
            }
        } while (c != '\r');
    }

    private boolean skipTo(String str) throws IOException {
        int length = str.length();
        while (true) {
            if (this.pos + length > this.limit && !fillBuffer(length)) {
                return false;
            }
            char[] cArr = this.buffer;
            int r2 = this.pos;
            if (cArr[r2] != '\n') {
                for (int r3 = 0; r3 < length; r3++) {
                    if (this.buffer[this.pos + r3] != str.charAt(r3)) {
                        break;
                    }
                }
                return true;
            }
            this.lineNumber++;
            this.lineStart = r2 + 1;
            this.pos++;
        }
    }

    public String toString() {
        return getClass().getSimpleName() + locationString();
    }

    String locationString() {
        return " at line " + (this.lineNumber + 1) + " column " + ((this.pos - this.lineStart) + 1) + " path " + getPath();
    }

    public String getPath() {
        StringBuilder sb = new StringBuilder();
        sb.append('$');
        int r1 = this.stackSize;
        for (int r2 = 0; r2 < r1; r2++) {
            int r3 = this.stack[r2];
            if (r3 == 1 || r3 == 2) {
                sb.append('[');
                sb.append(this.pathIndices[r2]);
                sb.append(']');
            } else if (r3 == 3 || r3 == 4 || r3 == 5) {
                sb.append('.');
                String[] strArr = this.pathNames;
                if (strArr[r2] != null) {
                    sb.append(strArr[r2]);
                }
            }
        }
        return sb.toString();
    }

    private char readEscapeCharacter() throws IOException {
        int r6;
        int r62;
        if (this.pos == this.limit && !fillBuffer(1)) {
            throw syntaxError("Unterminated escape sequence");
        }
        char[] cArr = this.buffer;
        int r1 = this.pos;
        int r4 = r1 + 1;
        this.pos = r4;
        char c = cArr[r1];
        if (c == '\n') {
            this.lineNumber++;
            this.lineStart = r4;
        } else if (c != '\"' && c != '\'' && c != '/' && c != '\\') {
            if (c == 'b') {
                return '\b';
            }
            if (c == 'f') {
                return '\f';
            }
            if (c == 'n') {
                return '\n';
            }
            if (c == 'r') {
                return '\r';
            }
            if (c == 't') {
                return '\t';
            }
            if (c == 'u') {
                if (r4 + 4 > this.limit && !fillBuffer(4)) {
                    throw syntaxError("Unterminated escape sequence");
                }
                char c2 = 0;
                int r42 = this.pos;
                int r5 = r42 + 4;
                while (r42 < r5) {
                    char c3 = this.buffer[r42];
                    char c4 = (char) (c2 << 4);
                    if (c3 < '0' || c3 > '9') {
                        if (c3 >= 'a' && c3 <= 'f') {
                            r6 = c3 - 'a';
                        } else {
                            if (c3 < 'A' || c3 > 'F') {
                                throw new NumberFormatException("\\u" + new String(this.buffer, this.pos, 4));
                            }
                            r6 = c3 - 'A';
                        }
                        r62 = r6 + 10;
                    } else {
                        r62 = c3 - '0';
                    }
                    c2 = (char) (c4 + r62);
                    r42++;
                }
                this.pos += 4;
                return c2;
            }
            throw syntaxError("Invalid escape sequence");
        }
        return c;
    }

    private IOException syntaxError(String str) throws IOException {
        throw new MalformedJsonException(str + locationString());
    }

    private void consumeNonExecutePrefix() throws IOException {
        nextNonWhitespace(true);
        int r1 = this.pos - 1;
        this.pos = r1;
        char[] cArr = NON_EXECUTE_PREFIX;
        if (r1 + cArr.length > this.limit && !fillBuffer(cArr.length)) {
            return;
        }
        int r0 = 0;
        while (true) {
            char[] cArr2 = NON_EXECUTE_PREFIX;
            if (r0 < cArr2.length) {
                if (this.buffer[this.pos + r0] != cArr2[r0]) {
                    return;
                } else {
                    r0++;
                }
            } else {
                this.pos += cArr2.length;
                return;
            }
        }
    }
}
