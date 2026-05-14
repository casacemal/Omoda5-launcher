package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.IOUtils;
import com.chery.libvr.bean.params.ParamsResValue;
import java.io.Closeable;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Date;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;

/* loaded from: classes.dex */
public abstract class JSONLexerBase implements JSONLexer, Closeable {
    protected static final int INT_MULTMIN_RADIX_TEN = -214748364;
    protected static final long MULTMIN_RADIX_TEN = -922337203685477580L;

    /* renamed from: bp */
    protected int f71bp;

    /* renamed from: ch */
    protected char f72ch;
    protected int eofPos;
    protected int features;
    protected boolean hasSpecial;

    /* renamed from: np */
    protected int f73np;
    protected int pos;
    protected char[] sbuf;

    /* renamed from: sp */
    protected int f74sp;
    protected String stringDefaultValue;
    protected int token;
    private static final ThreadLocal<char[]> SBUF_LOCAL = new ThreadLocal<>();
    protected static final char[] typeFieldName = ("\"" + JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
    protected static final int[] digits = new int[103];
    protected Calendar calendar = null;
    protected TimeZone timeZone = JSON.defaultTimeZone;
    protected Locale locale = JSON.defaultLocale;
    public int matchStat = 0;
    protected int nanos = 0;

    public static boolean isWhitespace(char c) {
        return c <= ' ' && (c == ' ' || c == '\n' || c == '\r' || c == '\t' || c == '\f' || c == '\b');
    }

    public abstract String addSymbol(int r1, int r2, int r3, SymbolTable symbolTable);

    protected abstract void arrayCopy(int r1, char[] cArr, int r3, int r4);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    protected abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int r1);

    protected abstract void copyTo(int r1, int r2, char[] cArr);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract BigDecimal decimalValue();

    public abstract int indexOf(char c, int r2);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        return "";
    }

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        return null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract String stringVal();

    public abstract String subString(int r1, int r2);

    protected abstract char[] sub_chars(int r1, int r2);

    protected void lexError(String str, Object... objArr) {
        this.token = 1;
    }

    static {
        for (int r0 = 48; r0 <= 57; r0++) {
            digits[r0] = r0 - 48;
        }
        for (int r02 = 97; r02 <= 102; r02++) {
            digits[r02] = (r02 - 97) + 10;
        }
        for (int r03 = 65; r03 <= 70; r03++) {
            digits[r03] = (r03 - 65) + 10;
        }
    }

    public JSONLexerBase(int r3) {
        this.stringDefaultValue = null;
        this.features = r3;
        if ((r3 & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        char[] cArr = SBUF_LOCAL.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public void setToken(int r1) {
        this.token = r1;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() {
        this.f74sp = 0;
        while (true) {
            this.pos = this.f71bp;
            char c = this.f72ch;
            if (c == '/') {
                skipComment();
            } else {
                if (c == '\"') {
                    scanString();
                    return;
                }
                if (c == ',') {
                    next();
                    this.token = 16;
                    return;
                }
                if (c >= '0' && c <= '9') {
                    scanNumber();
                    return;
                }
                char c2 = this.f72ch;
                if (c2 == '-') {
                    scanNumber();
                    return;
                }
                switch (c2) {
                    case '\b':
                    case '\t':
                    case '\n':
                    case '\f':
                    case '\r':
                    case ' ':
                        next();
                        break;
                    case '\'':
                        if (!isEnabled(Feature.AllowSingleQuotes)) {
                            throw new JSONException("Feature.AllowSingleQuotes is false");
                        }
                        scanStringSingleQuote();
                        return;
                    case '(':
                        next();
                        this.token = 10;
                        return;
                    case ')':
                        next();
                        this.token = 11;
                        return;
                    case '+':
                        next();
                        scanNumber();
                        return;
                    case '.':
                        next();
                        this.token = 25;
                        return;
                    case ':':
                        next();
                        this.token = 17;
                        return;
                    case ';':
                        next();
                        this.token = 24;
                        return;
                    case 'N':
                    case 'S':
                    case 'T':
                    case 'u':
                        scanIdent();
                        return;
                    case '[':
                        next();
                        this.token = 14;
                        return;
                    case ']':
                        next();
                        this.token = 15;
                        return;
                    case 'f':
                        scanFalse();
                        return;
                    case 'n':
                        scanNullOrNew();
                        return;
                    case 't':
                        scanTrue();
                        return;
                    case 'x':
                        scanHex();
                        return;
                    case '{':
                        next();
                        this.token = 12;
                        return;
                    case '}':
                        next();
                        this.token = 13;
                        return;
                    default:
                        if (isEOF()) {
                            if (this.token == 20) {
                                throw new JSONException("EOF error");
                            }
                            this.token = 20;
                            int r0 = this.f71bp;
                            this.pos = r0;
                            this.eofPos = r0;
                            return;
                        }
                        char c3 = this.f72ch;
                        if (c3 <= 31 || c3 == 127) {
                            next();
                            break;
                        } else {
                            lexError("illegal.char", String.valueOf((int) c3));
                            next();
                            return;
                        }
                        break;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:110:0x007b A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void nextToken(int r11) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.nextToken(int):void");
    }

    public final void nextIdent() {
        while (isWhitespace(this.f72ch)) {
            next();
        }
        char c = this.f72ch;
        if (c == '_' || c == '$' || Character.isLetter(c)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() {
        nextTokenWithChar(':');
    }

    public final void nextTokenWithChar(char c) {
        this.f74sp = 0;
        while (true) {
            char c2 = this.f72ch;
            if (c2 == c) {
                next();
                nextToken();
                return;
            }
            if (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b') {
                next();
            } else {
                throw new JSONException("not match " + c + " - " + this.f72ch + ", info : " + info());
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String tokenName() {
        return JSONToken.name(this.token);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    public final String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number integerValue() throws NumberFormatException {
        long j;
        long j2;
        boolean z = false;
        if (this.f73np == -1) {
            this.f73np = 0;
        }
        int r1 = this.f73np;
        int r3 = this.f74sp + r1;
        char c = ' ';
        char cCharAt = charAt(r3 - 1);
        if (cCharAt == 'B') {
            r3--;
            c = 'B';
        } else if (cCharAt == 'L') {
            r3--;
            c = 'L';
        } else if (cCharAt == 'S') {
            r3--;
            c = 'S';
        }
        if (charAt(this.f73np) == '-') {
            j = Long.MIN_VALUE;
            r1++;
            z = true;
        } else {
            j = -9223372036854775807L;
        }
        long j3 = MULTMIN_RADIX_TEN;
        if (r1 < r3) {
            j2 = -(charAt(r1) - '0');
            r1++;
        } else {
            j2 = 0;
        }
        while (r1 < r3) {
            int r5 = r1 + 1;
            int r12 = charAt(r1) - '0';
            if (j2 < j3) {
                return new BigInteger(numberString(), 10);
            }
            long j4 = j2 * 10;
            long j5 = r12;
            if (j4 < j + j5) {
                return new BigInteger(numberString(), 10);
            }
            j2 = j4 - j5;
            r1 = r5;
            j3 = MULTMIN_RADIX_TEN;
        }
        if (!z) {
            long j6 = -j2;
            if (j6 > 2147483647L || c == 'L') {
                return Long.valueOf(j6);
            }
            if (c == 'S') {
                return Short.valueOf((short) j6);
            }
            if (c == 'B') {
                return Byte.valueOf((byte) j6);
            }
            return Integer.valueOf((int) j6);
        }
        if (r1 <= this.f73np + 1) {
            throw new NumberFormatException(numberString());
        }
        if (j2 < -2147483648L || c == 'L') {
            return Long.valueOf(j2);
        }
        if (c == 'S') {
            return Short.valueOf((short) j2);
        }
        if (c == 'B') {
            return Byte.valueOf((byte) j2);
        }
        return Integer.valueOf((int) j2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int r1) {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() throws NumberFormatException {
        char cCharAt;
        String strNumberString = numberString();
        float f = Float.parseFloat(strNumberString);
        if ((f != 0.0f && f != Float.POSITIVE_INFINITY) || (cCharAt = strNumberString.charAt(0)) <= '0' || cCharAt > '9') {
            return f;
        }
        throw new JSONException("float overflow : " + strNumberString);
    }

    public double doubleValue() {
        return Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(Feature feature, boolean z) {
        int r2 = Feature.config(this.features, feature, z);
        this.features = r2;
        if ((r2 & Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int r1) {
        return (this.features & r1) != 0;
    }

    public final boolean isEnabled(int r1, int r2) {
        return ((this.features & r2) == 0 && (r1 & r2) == 0) ? false : true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.f72ch;
    }

    protected void skipComment() {
        char c;
        next();
        char c2 = this.f72ch;
        if (c2 == '/') {
            do {
                next();
                c = this.f72ch;
                if (c == '\n') {
                    next();
                    return;
                }
            } while (c != 26);
            return;
        }
        if (c2 == '*') {
            next();
            while (true) {
                char c3 = this.f72ch;
                if (c3 == 26) {
                    return;
                }
                if (c3 == '*') {
                    next();
                    if (this.f72ch == '/') {
                        next();
                        return;
                    }
                } else {
                    next();
                }
            }
        } else {
            throw new JSONException("invalid comment");
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable) {
        skipWhitespace();
        char c = this.f72ch;
        if (c == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (c == '\'') {
            if (!isEnabled(Feature.AllowSingleQuotes)) {
                throw new JSONException("syntax error");
            }
            return scanSymbol(symbolTable, '\'');
        }
        if (c == '}') {
            next();
            this.token = 13;
            return null;
        }
        if (c == ',') {
            next();
            this.token = 16;
            return null;
        }
        if (c == 26) {
            this.token = 20;
            return null;
        }
        if (!isEnabled(Feature.AllowUnQuotedFieldNames)) {
            throw new JSONException("syntax error");
        }
        return scanSymbolUnQuoted(symbolTable);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbol(SymbolTable symbolTable, char c) throws NumberFormatException {
        String strAddSymbol;
        this.f73np = this.f71bp;
        this.f74sp = 0;
        boolean z = false;
        int r2 = 0;
        while (true) {
            char next = next();
            if (next == c) {
                this.token = 4;
                if (!z) {
                    int r15 = this.f73np;
                    strAddSymbol = addSymbol(r15 == -1 ? 0 : r15 + 1, this.f74sp, r2, symbolTable);
                } else {
                    strAddSymbol = symbolTable.addSymbol(this.sbuf, 0, this.f74sp, r2);
                }
                this.f74sp = 0;
                next();
                return strAddSymbol;
            }
            if (next == 26) {
                throw new JSONException("unclosed.str");
            }
            if (next == '\\') {
                if (!z) {
                    int r1 = this.f74sp;
                    char[] cArr = this.sbuf;
                    if (r1 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (r1 <= length) {
                            r1 = length;
                        }
                        char[] cArr2 = new char[r1];
                        char[] cArr3 = this.sbuf;
                        System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                        this.sbuf = cArr2;
                    }
                    arrayCopy(this.f73np + 1, this.sbuf, 0, this.f74sp);
                    z = true;
                }
                char next2 = next();
                if (next2 == '\"') {
                    r2 = (r2 * 31) + 34;
                    putChar('\"');
                } else if (next2 != '\'') {
                    if (next2 != 'F') {
                        if (next2 == '\\') {
                            r2 = (r2 * 31) + 92;
                            putChar('\\');
                        } else if (next2 == 'b') {
                            r2 = (r2 * 31) + 8;
                            putChar('\b');
                        } else if (next2 != 'f') {
                            if (next2 == 'n') {
                                r2 = (r2 * 31) + 10;
                                putChar('\n');
                            } else if (next2 == 'r') {
                                r2 = (r2 * 31) + 13;
                                putChar('\r');
                            } else if (next2 != 'x') {
                                switch (next2) {
                                    case '/':
                                        r2 = (r2 * 31) + 47;
                                        putChar('/');
                                        break;
                                    case '0':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 0);
                                        break;
                                    case '1':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 1);
                                        break;
                                    case '2':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 2);
                                        break;
                                    case '3':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 3);
                                        break;
                                    case '4':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 4);
                                        break;
                                    case '5':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 5);
                                        break;
                                    case '6':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 6);
                                        break;
                                    case '7':
                                        r2 = (r2 * 31) + next2;
                                        putChar((char) 7);
                                        break;
                                    default:
                                        switch (next2) {
                                            case 't':
                                                r2 = (r2 * 31) + 9;
                                                putChar('\t');
                                                break;
                                            case 'u':
                                                int r3 = Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16);
                                                r2 = (r2 * 31) + r3;
                                                putChar((char) r3);
                                                break;
                                            case 'v':
                                                r2 = (r2 * 31) + 11;
                                                putChar((char) 11);
                                                break;
                                            default:
                                                this.f72ch = next2;
                                                throw new JSONException("unclosed.str.lit");
                                        }
                                }
                            } else {
                                char next3 = next();
                                this.f72ch = next3;
                                char next4 = next();
                                this.f72ch = next4;
                                int[] r5 = digits;
                                char c2 = (char) ((r5[next3] * 16) + r5[next4]);
                                r2 = (r2 * 31) + c2;
                                putChar(c2);
                            }
                        }
                    }
                    r2 = (r2 * 31) + 12;
                    putChar('\f');
                } else {
                    r2 = (r2 * 31) + 39;
                    putChar('\'');
                }
            } else {
                r2 = (r2 * 31) + next;
                if (!z) {
                    this.f74sp++;
                } else {
                    int r4 = this.f74sp;
                    char[] cArr4 = this.sbuf;
                    if (r4 == cArr4.length) {
                        putChar(next);
                    } else {
                        this.f74sp = r4 + 1;
                        cArr4[r4] = next;
                    }
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.f74sp = 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final String scanSymbolUnQuoted(SymbolTable symbolTable) {
        if (this.token == 1 && this.pos == 0 && this.f71bp == 1) {
            this.f71bp = 0;
        }
        boolean[] zArr = IOUtils.firstIdentifierFlags;
        int r3 = this.f72ch;
        if (!(r3 >= zArr.length || zArr[r3])) {
            throw new JSONException("illegal identifier : " + this.f72ch + info());
        }
        boolean[] zArr2 = IOUtils.identifierFlags;
        this.f73np = this.f71bp;
        this.f74sp = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            r3 = (r3 * 31) + next;
            this.f74sp++;
        }
        this.f72ch = charAt(this.f71bp);
        this.token = 18;
        if (this.f74sp == 4 && r3 == 3392903 && charAt(this.f73np) == 'n' && charAt(this.f73np + 1) == 'u' && charAt(this.f73np + 2) == 'l' && charAt(this.f73np + 3) == 'l') {
            return null;
        }
        if (symbolTable == null) {
            return subString(this.f73np, this.f74sp);
        }
        return addSymbol(this.f73np, this.f74sp, r3, symbolTable);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanString() {
        char next;
        char next2;
        this.f73np = this.f71bp;
        this.hasSpecial = false;
        while (true) {
            char next3 = next();
            if (next3 == '\"') {
                this.token = 4;
                this.f72ch = next();
                return;
            }
            if (next3 != 26) {
                boolean z = true;
                if (next3 == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int r1 = this.f74sp;
                        char[] cArr = this.sbuf;
                        if (r1 >= cArr.length) {
                            int length = cArr.length * 2;
                            if (r1 <= length) {
                                r1 = length;
                            }
                            char[] cArr2 = new char[r1];
                            char[] cArr3 = this.sbuf;
                            System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.f73np + 1, this.f74sp, this.sbuf);
                    }
                    char next4 = next();
                    if (next4 == '\"') {
                        putChar('\"');
                    } else if (next4 != '\'') {
                        if (next4 != 'F') {
                            if (next4 == '\\') {
                                putChar('\\');
                            } else if (next4 == 'b') {
                                putChar('\b');
                            } else if (next4 != 'f') {
                                if (next4 == 'n') {
                                    putChar('\n');
                                } else if (next4 == 'r') {
                                    putChar('\r');
                                } else if (next4 != 'x') {
                                    switch (next4) {
                                        case '/':
                                            putChar('/');
                                            break;
                                        case '0':
                                            putChar((char) 0);
                                            break;
                                        case '1':
                                            putChar((char) 1);
                                            break;
                                        case '2':
                                            putChar((char) 2);
                                            break;
                                        case '3':
                                            putChar((char) 3);
                                            break;
                                        case '4':
                                            putChar((char) 4);
                                            break;
                                        case '5':
                                            putChar((char) 5);
                                            break;
                                        case '6':
                                            putChar((char) 6);
                                            break;
                                        case '7':
                                            putChar((char) 7);
                                            break;
                                        default:
                                            switch (next4) {
                                                case 't':
                                                    putChar('\t');
                                                    break;
                                                case 'u':
                                                    putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                    break;
                                                case 'v':
                                                    putChar((char) 11);
                                                    break;
                                                default:
                                                    this.f72ch = next4;
                                                    throw new JSONException("unclosed string : " + next4);
                                            }
                                    }
                                } else {
                                    next = next();
                                    next2 = next();
                                    boolean z2 = (next >= '0' && next <= '9') || (next >= 'a' && next <= 'f') || (next >= 'A' && next <= 'F');
                                    if ((next2 < '0' || next2 > '9') && ((next2 < 'a' || next2 > 'f') && (next2 < 'A' || next2 > 'F'))) {
                                        z = false;
                                    }
                                    if (z2 && z) {
                                        int[] r3 = digits;
                                        putChar((char) ((r3[next] * 16) + r3[next2]));
                                    }
                                }
                            }
                        }
                        putChar('\f');
                    } else {
                        putChar('\'');
                    }
                } else if (!this.hasSpecial) {
                    this.f74sp++;
                } else {
                    int r2 = this.f74sp;
                    char[] cArr4 = this.sbuf;
                    if (r2 == cArr4.length) {
                        putChar(next3);
                    } else {
                        this.f74sp = r2 + 1;
                        cArr4[r2] = next3;
                    }
                }
            } else if (!isEOF()) {
                putChar(JSONLexer.EOI);
            } else {
                throw new JSONException("unclosed string : " + next3);
            }
        }
        throw new JSONException("invalid escape character \\x" + next + next2);
    }

    public Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public TimeZone getTimeZone() {
        return this.timeZone;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(Locale locale) {
        this.locale = locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int r3;
        boolean z;
        int r1 = 0;
        if (this.f73np == -1) {
            this.f73np = 0;
        }
        int r0 = this.f73np;
        int r2 = this.f74sp + r0;
        if (charAt(r0) == '-') {
            r3 = Integer.MIN_VALUE;
            r0++;
            z = true;
        } else {
            r3 = -2147483647;
            z = false;
        }
        if (r0 < r2) {
            r1 = -(charAt(r0) - '0');
            r0++;
        }
        while (r0 < r2) {
            int r8 = r0 + 1;
            char cCharAt = charAt(r0);
            if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B') {
                r0 = r8;
                break;
            }
            int r02 = cCharAt - '0';
            if (r1 < -214748364) {
                throw new NumberFormatException(numberString());
            }
            int r12 = r1 * 10;
            if (r12 < r3 + r02) {
                throw new NumberFormatException(numberString());
            }
            r1 = r12 - r02;
            r0 = r8;
        }
        if (!z) {
            return -r1;
        }
        if (r0 > this.f73np + 1) {
            return r1;
        }
        throw new NumberFormatException(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        return this.f74sp == 4 && charAt(this.f73np + 1) == '$' && charAt(this.f73np + 2) == 'r' && charAt(this.f73np + 3) == 'e' && charAt(this.f73np + 4) == 'f';
    }

    public final int scanType(String str) {
        this.matchStat = 0;
        if (!charArrayCompare(typeFieldName)) {
            return -2;
        }
        int length = this.f71bp + typeFieldName.length;
        int length2 = str.length();
        for (int r0 = 0; r0 < length2; r0++) {
            if (str.charAt(r0) != charAt(length + r0)) {
                return -1;
            }
        }
        int r1 = length + length2;
        if (charAt(r1) != '\"') {
            return -1;
        }
        int r12 = r1 + 1;
        char cCharAt = charAt(r12);
        this.f72ch = cCharAt;
        if (cCharAt == ',') {
            int r13 = r12 + 1;
            this.f72ch = charAt(r13);
            this.f71bp = r13;
            this.token = 16;
            return 3;
        }
        if (cCharAt == '}') {
            r12++;
            char cCharAt2 = charAt(r12);
            this.f72ch = cCharAt2;
            if (cCharAt2 == ',') {
                this.token = 16;
                r12++;
                this.f72ch = charAt(r12);
            } else if (cCharAt2 == ']') {
                this.token = 15;
                r12++;
                this.f72ch = charAt(r12);
            } else if (cCharAt2 == '}') {
                this.token = 13;
                r12++;
                this.f72ch = charAt(r12);
            } else {
                if (cCharAt2 != 26) {
                    return -1;
                }
                this.token = 20;
            }
            this.matchStat = 4;
        }
        this.f71bp = r12;
        return this.matchStat;
    }

    public final boolean matchField(char[] cArr) {
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.f72ch)) {
                return false;
            }
            next();
        }
        int length = this.f71bp + cArr.length;
        this.f71bp = length;
        char cCharAt = charAt(length);
        this.f72ch = cCharAt;
        if (cCharAt == '{') {
            next();
            this.token = 12;
        } else if (cCharAt == '[') {
            next();
            this.token = 14;
        } else if (cCharAt == 'S' && charAt(this.f71bp + 1) == 'e' && charAt(this.f71bp + 2) == 't' && charAt(this.f71bp + 3) == '[') {
            int r4 = this.f71bp + 3;
            this.f71bp = r4;
            this.f72ch = charAt(r4);
            this.token = 21;
        } else {
            nextToken();
        }
        return true;
    }

    public int matchField(long j) {
        throw new UnsupportedOperationException();
    }

    public boolean seekArrayToItem(int r1) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToField(long j, boolean z) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToField(long[] jArr) {
        throw new UnsupportedOperationException();
    }

    public int seekObjectToFieldDeepScan(long j) {
        throw new UnsupportedOperationException();
    }

    public void skipObject() {
        throw new UnsupportedOperationException();
    }

    public void skipObject(boolean z) {
        throw new UnsupportedOperationException();
    }

    public void skipArray() {
        throw new UnsupportedOperationException();
    }

    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return stringDefaultValue();
        }
        int length = cArr.length;
        int r3 = length + 1;
        if (charAt(this.f71bp + length) != '\"') {
            this.matchStat = -1;
            return stringDefaultValue();
        }
        int r1 = indexOf('\"', this.f71bp + cArr.length + 1);
        if (r1 == -1) {
            throw new JSONException("unclosed str");
        }
        int length2 = this.f71bp + cArr.length + 1;
        String strSubString = subString(length2, r1 - length2);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int r7 = 0;
                for (int r5 = r1 - 1; r5 >= 0 && charAt(r5) == '\\'; r5--) {
                    r7++;
                }
                if (r7 % 2 == 0) {
                    break;
                }
                r1 = indexOf('\"', r1 + 1);
            }
            int r0 = this.f71bp;
            int length3 = r1 - ((cArr.length + r0) + 1);
            strSubString = readString(sub_chars(r0 + cArr.length + 1, length3), length3);
        }
        int r02 = this.f71bp;
        int length4 = r3 + (r1 - ((cArr.length + r02) + 1)) + 1;
        int r10 = length4 + 1;
        char cCharAt = charAt(r02 + length4);
        if (cCharAt == ',') {
            int r03 = this.f71bp + r10;
            this.f71bp = r03;
            this.f72ch = charAt(r03);
            this.matchStat = 3;
            return strSubString;
        }
        if (cCharAt == '}') {
            int r32 = r10 + 1;
            char cCharAt2 = charAt(this.f71bp + r10);
            if (cCharAt2 == ',') {
                this.token = 16;
                int r102 = this.f71bp + r32;
                this.f71bp = r102;
                this.f72ch = charAt(r102);
            } else if (cCharAt2 == ']') {
                this.token = 15;
                int r103 = this.f71bp + r32;
                this.f71bp = r103;
                this.f72ch = charAt(r103);
            } else if (cCharAt2 == '}') {
                this.token = 13;
                int r104 = this.f71bp + r32;
                this.f71bp = r104;
                this.f72ch = charAt(r104);
            } else if (cCharAt2 == 26) {
                this.token = 20;
                this.f71bp += r32 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            this.matchStat = 4;
            return strSubString;
        }
        this.matchStat = -1;
        return stringDefaultValue();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanString(char c) {
        this.matchStat = 0;
        char cCharAt = charAt(this.f71bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.f71bp + 1) == 'u' && charAt(this.f71bp + 1 + 1) == 'l' && charAt(this.f71bp + 1 + 2) == 'l') {
                if (charAt(this.f71bp + 4) == c) {
                    int r13 = this.f71bp + 5;
                    this.f71bp = r13;
                    this.f72ch = charAt(r13);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        }
        int r5 = 1;
        while (cCharAt != '\"') {
            if (isWhitespace(cCharAt)) {
                cCharAt = charAt(this.f71bp + r5);
                r5++;
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int r1 = this.f71bp + r5;
        int r7 = indexOf('\"', r1);
        if (r7 == -1) {
            throw new JSONException("unclosed str");
        }
        String strSubString = subString(this.f71bp + r5, r7 - r1);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int r10 = 0;
                for (int r8 = r7 - 1; r8 >= 0 && charAt(r8) == '\\'; r8--) {
                    r10++;
                }
                if (r10 % 2 == 0) {
                    break;
                }
                r7 = indexOf('\"', r7 + 1);
            }
            int r0 = r7 - r1;
            strSubString = readString(sub_chars(this.f71bp + 1, r0), r0);
        }
        int r52 = r5 + (r7 - r1) + 1;
        int r12 = r52 + 1;
        char cCharAt2 = charAt(this.f71bp + r52);
        while (cCharAt2 != c) {
            if (!isWhitespace(cCharAt2)) {
                if (cCharAt2 == ']') {
                    int r132 = this.f71bp + r12;
                    this.f71bp = r132;
                    this.f72ch = charAt(r132);
                    this.matchStat = -1;
                }
                return strSubString;
            }
            cCharAt2 = charAt(this.f71bp + r12);
            r12++;
        }
        int r133 = this.f71bp + r12;
        this.f71bp = r133;
        this.f72ch = charAt(r133);
        this.matchStat = 3;
        this.token = 16;
        return strSubString;
    }

    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int r3 = length + 1;
        if (charAt(this.f71bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = -3750763034362895579L;
        while (true) {
            int r7 = r3 + 1;
            char cCharAt = charAt(this.f71bp + r3);
            if (cCharAt == '\"') {
                int r0 = r7 + 1;
                char cCharAt2 = charAt(this.f71bp + r7);
                if (cCharAt2 == ',') {
                    int r11 = this.f71bp + r0;
                    this.f71bp = r11;
                    this.f72ch = charAt(r11);
                    this.matchStat = 3;
                    return j;
                }
                if (cCharAt2 == '}') {
                    int r8 = r0 + 1;
                    char cCharAt3 = charAt(this.f71bp + r0);
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int r112 = this.f71bp + r8;
                        this.f71bp = r112;
                        this.f72ch = charAt(r112);
                    } else if (cCharAt3 == ']') {
                        this.token = 15;
                        int r113 = this.f71bp + r8;
                        this.f71bp = r113;
                        this.f72ch = charAt(r113);
                    } else if (cCharAt3 == '}') {
                        this.token = 13;
                        int r114 = this.f71bp + r8;
                        this.f71bp = r114;
                        this.f72ch = charAt(r114);
                    } else if (cCharAt3 == 26) {
                        this.token = 20;
                        this.f71bp += r8 - 1;
                        this.f72ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.matchStat = 4;
                    return j;
                }
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ cCharAt) * 1099511628211L;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            r3 = r7;
        }
    }

    public long scanEnumSymbol(char[] cArr) {
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int r3 = length + 1;
        if (charAt(this.f71bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = -3750763034362895579L;
        while (true) {
            int r7 = r3 + 1;
            char cCharAt = charAt(this.f71bp + r3);
            if (cCharAt == '\"') {
                int r0 = r7 + 1;
                char cCharAt2 = charAt(this.f71bp + r7);
                if (cCharAt2 == ',') {
                    int r11 = this.f71bp + r0;
                    this.f71bp = r11;
                    this.f72ch = charAt(r11);
                    this.matchStat = 3;
                    return j;
                }
                if (cCharAt2 == '}') {
                    int r8 = r0 + 1;
                    char cCharAt3 = charAt(this.f71bp + r0);
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int r112 = this.f71bp + r8;
                        this.f71bp = r112;
                        this.f72ch = charAt(r112);
                    } else if (cCharAt3 == ']') {
                        this.token = 15;
                        int r113 = this.f71bp + r8;
                        this.f71bp = r113;
                        this.f72ch = charAt(r113);
                    } else if (cCharAt3 == '}') {
                        this.token = 13;
                        int r114 = this.f71bp + r8;
                        this.f71bp = r114;
                        this.f72ch = charAt(r114);
                    } else if (cCharAt3 == 26) {
                        this.token = 20;
                        this.f71bp += r8 - 1;
                        this.f72ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                    this.matchStat = 4;
                    return j;
                }
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ ((cCharAt < 'A' || cCharAt > 'Z') ? cCharAt : cCharAt + ' ')) * 1099511628211L;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            r3 = r7;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public Enum<?> scanEnum(Class<?> cls, SymbolTable symbolTable, char c) {
        String strScanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c);
        if (strScanSymbolWithSeperator == null) {
            return null;
        }
        return Enum.valueOf(cls, strScanSymbolWithSeperator);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public String scanSymbolWithSeperator(SymbolTable symbolTable, char c) {
        int r0 = 0;
        this.matchStat = 0;
        char cCharAt = charAt(this.f71bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.f71bp + 1) == 'u' && charAt(this.f71bp + 1 + 1) == 'l' && charAt(this.f71bp + 1 + 2) == 'l') {
                if (charAt(this.f71bp + 4) == c) {
                    int r10 = this.f71bp + 5;
                    this.f71bp = r10;
                    this.f72ch = charAt(r10);
                    this.matchStat = 3;
                    return null;
                }
                this.matchStat = -1;
                return null;
            }
            this.matchStat = -1;
            return null;
        }
        if (cCharAt != '\"') {
            this.matchStat = -1;
            return null;
        }
        int r1 = 1;
        while (true) {
            int r8 = r1 + 1;
            char cCharAt2 = charAt(this.f71bp + r1);
            if (cCharAt2 == '\"') {
                int r12 = this.f71bp;
                int r3 = r12 + 0 + 1;
                String strAddSymbol = addSymbol(r3, ((r12 + r8) - r3) - 1, r0, symbolTable);
                int r13 = r8 + 1;
                char cCharAt3 = charAt(this.f71bp + r8);
                while (cCharAt3 != c) {
                    if (isWhitespace(cCharAt3)) {
                        cCharAt3 = charAt(this.f71bp + r13);
                        r13++;
                    } else {
                        this.matchStat = -1;
                        return strAddSymbol;
                    }
                }
                int r11 = this.f71bp + r13;
                this.f71bp = r11;
                this.f72ch = charAt(r11);
                this.matchStat = 3;
                return strAddSymbol;
            }
            r0 = (r0 * 31) + cCharAt2;
            if (cCharAt2 == '\\') {
                this.matchStat = -1;
                return null;
            }
            r1 = r8;
        }
    }

    public Collection<String> newCollectionByType(Class<?> cls) {
        if (cls.isAssignableFrom(HashSet.class)) {
            return new HashSet();
        }
        if (cls.isAssignableFrom(ArrayList.class)) {
            return new ArrayList();
        }
        if (cls.isAssignableFrom(LinkedList.class)) {
            return new LinkedList();
        }
        try {
            return (Collection) cls.newInstance();
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00e8, code lost:
    
        if (r12 != ']') goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ee, code lost:
    
        if (r13.size() != 0) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00f0, code lost:
    
        r12 = charAt(r11.f71bp + r1);
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0170, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illega str");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r12, java.lang.Class<?> r13) {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void scanStringArray(Collection<String> collection, char c) {
        int r13;
        char cCharAt;
        int r3;
        char cCharAt2;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.f71bp + 0);
        char c2 = 'u';
        char c3 = 'n';
        if (cCharAt3 == 'n' && charAt(this.f71bp + 1) == 'u' && charAt(this.f71bp + 1 + 1) == 'l' && charAt(this.f71bp + 1 + 2) == 'l' && charAt(this.f71bp + 1 + 3) == c) {
            int r1 = this.f71bp + 5;
            this.f71bp = r1;
            this.f72ch = charAt(r1);
            this.matchStat = 5;
            return;
        }
        if (cCharAt3 != '[') {
            this.matchStat = -1;
            return;
        }
        char cCharAt4 = charAt(this.f71bp + 1);
        int r10 = 2;
        while (true) {
            if (cCharAt4 == c3 && charAt(this.f71bp + r10) == c2 && charAt(this.f71bp + r10 + 1) == 'l' && charAt(this.f71bp + r10 + 2) == 'l') {
                int r102 = r10 + 3;
                r13 = r102 + 1;
                cCharAt = charAt(this.f71bp + r102);
                collection.add(null);
            } else {
                if (cCharAt4 == ']' && collection.size() == 0) {
                    r3 = r10 + 1;
                    cCharAt2 = charAt(this.f71bp + r10);
                    break;
                }
                if (cCharAt4 != '\"') {
                    this.matchStat = -1;
                    return;
                }
                int r4 = this.f71bp + r10;
                int r14 = indexOf('\"', r4);
                if (r14 == -1) {
                    throw new JSONException("unclosed str");
                }
                String strSubString = subString(this.f71bp + r10, r14 - r4);
                if (strSubString.indexOf(92) != -1) {
                    while (true) {
                        int r5 = 0;
                        for (int r32 = r14 - 1; r32 >= 0 && charAt(r32) == '\\'; r32--) {
                            r5++;
                        }
                        if (r5 % 2 == 0) {
                            break;
                        } else {
                            r14 = indexOf('\"', r14 + 1);
                        }
                    }
                    int r33 = r14 - r4;
                    strSubString = readString(sub_chars(this.f71bp + r10, r33), r33);
                }
                int r42 = this.f71bp;
                int r103 = r10 + (r14 - (r42 + r10)) + 1;
                r13 = r103 + 1;
                cCharAt = charAt(r42 + r103);
                collection.add(strSubString);
            }
            if (cCharAt == ',') {
                r10 = r13 + 1;
                cCharAt4 = charAt(this.f71bp + r13);
                c2 = 'u';
                c3 = 'n';
            } else if (cCharAt == ']') {
                r3 = r13 + 1;
                cCharAt2 = charAt(this.f71bp + r13);
            } else {
                this.matchStat = -1;
                return;
            }
        }
        if (cCharAt2 == c) {
            int r12 = this.f71bp + r3;
            this.f71bp = r12;
            this.f72ch = charAt(r12);
            this.matchStat = 3;
            return;
        }
        this.matchStat = -1;
    }

    public int scanFieldInt(char[] cArr) {
        int r9;
        char cCharAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int r3 = length + 1;
        char cCharAt2 = charAt(this.f71bp + length);
        boolean z = cCharAt2 == '-';
        if (z) {
            cCharAt2 = charAt(this.f71bp + r3);
            r3++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int r1 = cCharAt2 - '0';
        while (true) {
            r9 = r3 + 1;
            cCharAt = charAt(this.f71bp + r3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            r1 = (r1 * 10) + (cCharAt - '0');
            r3 = r9;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if ((r1 < 0 || r9 > cArr.length + 14) && !(r1 == Integer.MIN_VALUE && r9 == 17 && z)) {
            this.matchStat = -1;
            return 0;
        }
        if (cCharAt == ',') {
            int r0 = this.f71bp + r9;
            this.f71bp = r0;
            this.f72ch = charAt(r0);
            this.matchStat = 3;
            this.token = 16;
            return z ? -r1 : r1;
        }
        if (cCharAt == '}') {
            int r8 = r9 + 1;
            char cCharAt3 = charAt(this.f71bp + r9);
            if (cCharAt3 == ',') {
                this.token = 16;
                int r11 = this.f71bp + r8;
                this.f71bp = r11;
                this.f72ch = charAt(r11);
            } else if (cCharAt3 == ']') {
                this.token = 15;
                int r112 = this.f71bp + r8;
                this.f71bp = r112;
                this.f72ch = charAt(r112);
            } else if (cCharAt3 == '}') {
                this.token = 13;
                int r113 = this.f71bp + r8;
                this.f71bp = r113;
                this.f72ch = charAt(r113);
            } else if (cCharAt3 == 26) {
                this.token = 20;
                this.f71bp += r8 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return 0;
            }
            this.matchStat = 4;
            return z ? -r1 : r1;
        }
        this.matchStat = -1;
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:63:0x011f, code lost:
    
        r2 = r4;
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0122, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] scanFieldIntArray(char[] r18) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldIntArray(char[]):int[]");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00ab  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanBoolean(char r10) {
        /*
            r9 = this;
            r0 = 0
            r9.matchStat = r0
            int r1 = r9.f71bp
            int r1 = r1 + r0
            char r1 = r9.charAt(r1)
            r2 = 3
            r3 = 5
            r4 = 101(0x65, float:1.42E-43)
            r5 = -1
            r6 = 2
            r7 = 1
            r8 = 116(0x74, float:1.63E-43)
            if (r1 != r8) goto L42
            int r1 = r9.f71bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r8 = 114(0x72, float:1.6E-43)
            if (r1 != r8) goto L3f
            int r1 = r9.f71bp
            int r1 = r1 + r7
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r8 = 117(0x75, float:1.64E-43)
            if (r1 != r8) goto L3f
            int r1 = r9.f71bp
            int r1 = r1 + r7
            int r1 = r1 + r6
            char r1 = r9.charAt(r1)
            if (r1 != r4) goto L3f
            int r0 = r9.f71bp
            int r0 = r0 + 4
            char r1 = r9.charAt(r0)
            goto L8b
        L3f:
            r9.matchStat = r5
            return r0
        L42:
            r8 = 102(0x66, float:1.43E-43)
            if (r1 != r8) goto L7f
            int r1 = r9.f71bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r8 = 97
            if (r1 != r8) goto L7c
            int r1 = r9.f71bp
            int r1 = r1 + r7
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r8 = 108(0x6c, float:1.51E-43)
            if (r1 != r8) goto L7c
            int r1 = r9.f71bp
            int r1 = r1 + r7
            int r1 = r1 + r6
            char r1 = r9.charAt(r1)
            r6 = 115(0x73, float:1.61E-43)
            if (r1 != r6) goto L7c
            int r1 = r9.f71bp
            int r1 = r1 + r7
            int r1 = r1 + r2
            char r1 = r9.charAt(r1)
            if (r1 != r4) goto L7c
            int r1 = r9.f71bp
            r4 = 6
            int r1 = r1 + r3
            char r1 = r9.charAt(r1)
            goto Lba
        L7c:
            r9.matchStat = r5
            return r0
        L7f:
            r3 = 49
            if (r1 != r3) goto L8d
            int r0 = r9.f71bp
            int r0 = r0 + r7
            char r1 = r9.charAt(r0)
            r3 = r6
        L8b:
            r0 = r7
            goto L9b
        L8d:
            r3 = 48
            if (r1 != r3) goto L9a
            int r1 = r9.f71bp
            int r1 = r1 + r7
            char r1 = r9.charAt(r1)
            r3 = r6
            goto L9b
        L9a:
            r3 = r7
        L9b:
            if (r1 != r10) goto Lab
            int r10 = r9.f71bp
            int r10 = r10 + r3
            r9.f71bp = r10
            char r10 = r9.charAt(r10)
            r9.f72ch = r10
            r9.matchStat = r2
            return r0
        Lab:
            boolean r1 = isWhitespace(r1)
            if (r1 == 0) goto Lbc
            int r1 = r9.f71bp
            int r4 = r3 + 1
            int r1 = r1 + r3
            char r1 = r9.charAt(r1)
        Lba:
            r3 = r4
            goto L9b
        Lbc:
            r9.matchStat = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanBoolean(char):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int scanInt(char c) {
        int r6;
        int r3;
        char cCharAt;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f71bp + 0);
        boolean z = cCharAt2 == '\"';
        if (z) {
            cCharAt2 = charAt(this.f71bp + 1);
            r6 = 2;
        } else {
            r6 = 1;
        }
        boolean z2 = cCharAt2 == '-';
        if (z2) {
            cCharAt2 = charAt(this.f71bp + r6);
            r6++;
        }
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            int r1 = cCharAt2 - '0';
            while (true) {
                r3 = r6 + 1;
                cCharAt = charAt(this.f71bp + r6);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                r1 = (r1 * 10) + (cCharAt - '0');
                r6 = r3;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0;
            }
            if (r1 < 0) {
                this.matchStat = -1;
                return 0;
            }
            while (cCharAt != c) {
                if (isWhitespace(cCharAt)) {
                    char cCharAt3 = charAt(this.f71bp + r3);
                    r3++;
                    cCharAt = cCharAt3;
                } else {
                    this.matchStat = -1;
                    return z2 ? -r1 : r1;
                }
            }
            int r14 = this.f71bp + r3;
            this.f71bp = r14;
            this.f72ch = charAt(r14);
            this.matchStat = 3;
            this.token = 16;
            return z2 ? -r1 : r1;
        }
        if (cCharAt2 == 'n' && charAt(this.f71bp + r6) == 'u' && charAt(this.f71bp + r6 + 1) == 'l' && charAt(this.f71bp + r6 + 2) == 'l') {
            this.matchStat = 5;
            int r62 = r6 + 3;
            int r32 = r62 + 1;
            char cCharAt4 = charAt(this.f71bp + r62);
            if (z && cCharAt4 == '\"') {
                int r2 = r32 + 1;
                cCharAt4 = charAt(this.f71bp + r32);
                r32 = r2;
            }
            while (cCharAt4 != ',') {
                if (cCharAt4 == ']') {
                    int r12 = this.f71bp + r32;
                    this.f71bp = r12;
                    this.f72ch = charAt(r12);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0;
                }
                if (isWhitespace(cCharAt4)) {
                    int r22 = r32 + 1;
                    cCharAt4 = charAt(this.f71bp + r32);
                    r32 = r22;
                } else {
                    this.matchStat = -1;
                    return 0;
                }
            }
            int r13 = this.f71bp + r32;
            this.f71bp = r13;
            this.f72ch = charAt(r13);
            this.matchStat = 5;
            this.token = 16;
            return 0;
        }
        this.matchStat = -1;
        return 0;
    }

    public boolean scanFieldBoolean(char[] cArr) {
        boolean z;
        int r1;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int r2 = length + 1;
        char cCharAt = charAt(this.f71bp + length);
        if (cCharAt == 't') {
            int r12 = r2 + 1;
            if (charAt(this.f71bp + r2) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int r22 = r12 + 1;
            if (charAt(this.f71bp + r12) != 'u') {
                this.matchStat = -1;
                return false;
            }
            r1 = r22 + 1;
            if (charAt(this.f71bp + r22) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = true;
        } else if (cCharAt == 'f') {
            int r13 = r2 + 1;
            if (charAt(this.f71bp + r2) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int r23 = r13 + 1;
            if (charAt(this.f71bp + r13) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int r14 = r23 + 1;
            if (charAt(this.f71bp + r23) != 's') {
                this.matchStat = -1;
                return false;
            }
            int r24 = r14 + 1;
            if (charAt(this.f71bp + r14) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = false;
            r1 = r24;
        } else {
            this.matchStat = -1;
            return false;
        }
        int r3 = r1 + 1;
        char cCharAt2 = charAt(this.f71bp + r1);
        if (cCharAt2 == ',') {
            int r0 = this.f71bp + r3;
            this.f71bp = r0;
            this.f72ch = charAt(r0);
            this.matchStat = 3;
            this.token = 16;
            return z;
        }
        if (cCharAt2 == '}') {
            int r8 = r3 + 1;
            char cCharAt3 = charAt(this.f71bp + r3);
            if (cCharAt3 == ',') {
                this.token = 16;
                int r02 = this.f71bp + r8;
                this.f71bp = r02;
                this.f72ch = charAt(r02);
            } else if (cCharAt3 == ']') {
                this.token = 15;
                int r03 = this.f71bp + r8;
                this.f71bp = r03;
                this.f72ch = charAt(r03);
            } else if (cCharAt3 == '}') {
                this.token = 13;
                int r04 = this.f71bp + r8;
                this.f71bp = r04;
                this.f72ch = charAt(r04);
            } else if (cCharAt3 == 26) {
                this.token = 20;
                this.f71bp += r8 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return false;
            }
            this.matchStat = 4;
            return z;
        }
        this.matchStat = -1;
        return false;
    }

    public long scanFieldLong(char[] cArr) {
        boolean z;
        int r14;
        char cCharAt;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int r7 = length + 1;
        char cCharAt2 = charAt(this.f71bp + length);
        if (cCharAt2 == '-') {
            cCharAt2 = charAt(this.f71bp + r7);
            r7++;
            z = true;
        } else {
            z = false;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j = cCharAt2 - '0';
        while (true) {
            r14 = r7 + 1;
            cCharAt = charAt(this.f71bp + r7);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j = (j * 10) + (cCharAt - '0');
            r7 = r14;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (!(r14 - cArr.length < 21 && (j >= 0 || (j == Long.MIN_VALUE && z)))) {
            this.matchStat = -1;
            return 0L;
        }
        if (cCharAt == ',') {
            int r2 = this.f71bp + r14;
            this.f71bp = r2;
            this.f72ch = charAt(r2);
            this.matchStat = 3;
            this.token = 16;
            return z ? -j : j;
        }
        if (cCharAt == '}') {
            int r9 = r14 + 1;
            char cCharAt3 = charAt(this.f71bp + r14);
            if (cCharAt3 == ',') {
                this.token = 16;
                int r1 = this.f71bp + r9;
                this.f71bp = r1;
                this.f72ch = charAt(r1);
            } else if (cCharAt3 == ']') {
                this.token = 15;
                int r12 = this.f71bp + r9;
                this.f71bp = r12;
                this.f72ch = charAt(r12);
            } else if (cCharAt3 == '}') {
                this.token = 13;
                int r13 = this.f71bp + r9;
                this.f71bp = r13;
                this.f72ch = charAt(r13);
            } else if (cCharAt3 == 26) {
                this.token = 20;
                this.f71bp += r9 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return 0L;
            }
            this.matchStat = 4;
            return z ? -j : j;
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int r7;
        int r17;
        char cCharAt;
        char c2;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f71bp + 0);
        boolean z = cCharAt2 == '\"';
        if (z) {
            cCharAt2 = charAt(this.f71bp + 1);
            r7 = 2;
        } else {
            r7 = 1;
        }
        boolean z2 = cCharAt2 == '-';
        if (z2) {
            cCharAt2 = charAt(this.f71bp + r7);
            r7++;
        }
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j = cCharAt2 - '0';
            while (true) {
                r17 = r7 + 1;
                cCharAt = charAt(this.f71bp + r7);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j = (j * 10) + (cCharAt - '0');
                r7 = r17;
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (!(j >= 0 || (j == Long.MIN_VALUE && z2))) {
                throw new NumberFormatException(subString(this.f71bp, r17 - 1));
            }
            if (!z) {
                c2 = c;
            } else {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(this.f71bp + r17);
                c2 = c;
                r17++;
            }
            while (cCharAt != c2) {
                if (isWhitespace(cCharAt)) {
                    cCharAt = charAt(this.f71bp + r17);
                    r17++;
                } else {
                    this.matchStat = -1;
                    return j;
                }
            }
            int r3 = this.f71bp + r17;
            this.f71bp = r3;
            this.f72ch = charAt(r3);
            this.matchStat = 3;
            this.token = 16;
            return z2 ? -j : j;
        }
        if (cCharAt2 == 'n' && charAt(this.f71bp + r7) == 'u' && charAt(this.f71bp + r7 + 1) == 'l' && charAt(this.f71bp + r7 + 2) == 'l') {
            this.matchStat = 5;
            int r72 = r7 + 3;
            int r4 = r72 + 1;
            char cCharAt3 = charAt(this.f71bp + r72);
            if (z && cCharAt3 == '\"') {
                int r32 = r4 + 1;
                cCharAt3 = charAt(this.f71bp + r4);
                r4 = r32;
            }
            while (cCharAt3 != ',') {
                if (cCharAt3 == ']') {
                    int r2 = this.f71bp + r4;
                    this.f71bp = r2;
                    this.f72ch = charAt(r2);
                    this.matchStat = 5;
                    this.token = 15;
                    return 0L;
                }
                if (isWhitespace(cCharAt3)) {
                    int r33 = r4 + 1;
                    cCharAt3 = charAt(this.f71bp + r4);
                    r4 = r33;
                } else {
                    this.matchStat = -1;
                    return 0L;
                }
            }
            int r22 = this.f71bp + r4;
            this.f71bp = r22;
            this.f72ch = charAt(r22);
            this.matchStat = 5;
            this.token = 16;
            return 0L;
        }
        this.matchStat = -1;
        return 0L;
    }

    public final float scanFieldFloat(char[] cArr) throws NumberFormatException {
        int r17;
        char cCharAt;
        boolean z;
        long j;
        int length;
        int r9;
        float f;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int r6 = length2 + 1;
        char cCharAt2 = charAt(this.f71bp + length2);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            cCharAt2 = charAt(this.f71bp + r6);
            r6++;
        }
        boolean z3 = cCharAt2 == '-';
        if (z3) {
            cCharAt2 = charAt(this.f71bp + r6);
            r6++;
        }
        if (cCharAt2 >= '0') {
            char c = '9';
            if (cCharAt2 <= '9') {
                long j2 = cCharAt2 - '0';
                while (true) {
                    r17 = r6 + 1;
                    cCharAt = charAt(this.f71bp + r6);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j2 = (j2 * 10) + (cCharAt - '0');
                    r6 = r17;
                }
                if (cCharAt == '.') {
                    int r5 = r17 + 1;
                    char cCharAt3 = charAt(this.f71bp + r17);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    z = z2;
                    j2 = (j2 * 10) + (cCharAt3 - '0');
                    j = 10;
                    while (true) {
                        r17 = r5 + 1;
                        cCharAt = charAt(this.f71bp + r5);
                        if (cCharAt < '0' || cCharAt > c) {
                            break;
                        }
                        j2 = (j2 * 10) + (cCharAt - '0');
                        j *= 10;
                        r5 = r17;
                        c = '9';
                    }
                } else {
                    z = z2;
                    j = 1;
                }
                boolean z4 = cCharAt == 'e' || cCharAt == 'E';
                if (z4) {
                    int r14 = r17 + 1;
                    cCharAt = charAt(this.f71bp + r17);
                    if (cCharAt == '+' || cCharAt == '-') {
                        int r92 = r14 + 1;
                        cCharAt = charAt(this.f71bp + r14);
                        r17 = r92;
                    } else {
                        r17 = r14;
                    }
                    while (cCharAt >= '0' && cCharAt <= '9') {
                        int r93 = r17 + 1;
                        cCharAt = charAt(this.f71bp + r17);
                        r17 = r93;
                    }
                }
                if (!z) {
                    int r8 = this.f71bp;
                    length = cArr.length + r8;
                    r9 = ((r8 + r17) - length) - 1;
                } else {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    int r82 = r17 + 1;
                    cCharAt = charAt(this.f71bp + r17);
                    int r94 = this.f71bp;
                    length = cArr.length + r94 + 1;
                    r9 = ((r94 + r82) - length) - 2;
                    r17 = r82;
                }
                if (z4 || r9 >= 17) {
                    f = Float.parseFloat(subString(length, r9));
                } else {
                    f = (float) (j2 / j);
                    if (z3) {
                        f = -f;
                    }
                }
                if (cCharAt == ',') {
                    int r2 = this.f71bp + r17;
                    this.f71bp = r2;
                    this.f72ch = charAt(r2);
                    this.matchStat = 3;
                    this.token = 16;
                    return f;
                }
                if (cCharAt == '}') {
                    int r7 = r17 + 1;
                    char cCharAt4 = charAt(this.f71bp + r17);
                    if (cCharAt4 == ',') {
                        this.token = 16;
                        int r22 = this.f71bp + r7;
                        this.f71bp = r22;
                        this.f72ch = charAt(r22);
                    } else if (cCharAt4 == ']') {
                        this.token = 15;
                        int r23 = this.f71bp + r7;
                        this.f71bp = r23;
                        this.f72ch = charAt(r23);
                    } else if (cCharAt4 == '}') {
                        this.token = 13;
                        int r24 = this.f71bp + r7;
                        this.f71bp = r24;
                        this.f72ch = charAt(r24);
                    } else if (cCharAt4 == 26) {
                        this.f71bp += r7 - 1;
                        this.token = 20;
                        this.f72ch = JSONLexer.EOI;
                    } else {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    this.matchStat = 4;
                    return f;
                }
                this.matchStat = -1;
                return 0.0f;
            }
        }
        boolean z5 = z2;
        if (cCharAt2 == 'n' && charAt(this.f71bp + r6) == 'u' && charAt(this.f71bp + r6 + 1) == 'l' && charAt(this.f71bp + r6 + 2) == 'l') {
            this.matchStat = 5;
            int r62 = r6 + 3;
            int r72 = r62 + 1;
            char cCharAt5 = charAt(this.f71bp + r62);
            if (z5 && cCharAt5 == '\"') {
                cCharAt5 = charAt(this.f71bp + r72);
                r72++;
            }
            while (cCharAt5 != ',') {
                if (cCharAt5 == '}') {
                    int r25 = this.f71bp + r72;
                    this.f71bp = r25;
                    this.f72ch = charAt(r25);
                    this.matchStat = 5;
                    this.token = 13;
                    return 0.0f;
                }
                if (isWhitespace(cCharAt5)) {
                    cCharAt5 = charAt(this.f71bp + r72);
                    r72++;
                } else {
                    this.matchStat = -1;
                    return 0.0f;
                }
            }
            int r26 = this.f71bp + r72;
            this.f71bp = r26;
            this.f72ch = charAt(r26);
            this.matchStat = 5;
            this.token = 16;
            return 0.0f;
        }
        this.matchStat = -1;
        return 0.0f;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final float scanFloat(char c) throws NumberFormatException {
        int r7;
        int r17;
        char cCharAt;
        int r5;
        int r3;
        float f;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f71bp + 0);
        boolean z = cCharAt2 == '\"';
        if (z) {
            cCharAt2 = charAt(this.f71bp + 1);
            r7 = 2;
        } else {
            r7 = 1;
        }
        boolean z2 = cCharAt2 == '-';
        if (z2) {
            cCharAt2 = charAt(this.f71bp + r7);
            r7++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            if (cCharAt2 == 'n' && charAt(this.f71bp + r7) == 'u' && charAt(this.f71bp + r7 + 1) == 'l' && charAt(this.f71bp + r7 + 2) == 'l') {
                this.matchStat = 5;
                int r72 = r7 + 3;
                int r4 = r72 + 1;
                char cCharAt3 = charAt(this.f71bp + r72);
                if (z && cCharAt3 == '\"') {
                    cCharAt3 = charAt(this.f71bp + r4);
                    r4++;
                }
                while (cCharAt3 != ',') {
                    if (cCharAt3 == ']') {
                        int r2 = this.f71bp + r4;
                        this.f71bp = r2;
                        this.f72ch = charAt(r2);
                        this.matchStat = 5;
                        this.token = 15;
                        return 0.0f;
                    }
                    if (isWhitespace(cCharAt3)) {
                        cCharAt3 = charAt(this.f71bp + r4);
                        r4++;
                    } else {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                }
                int r22 = this.f71bp + r4;
                this.f71bp = r22;
                this.f72ch = charAt(r22);
                this.matchStat = 5;
                this.token = 16;
                return 0.0f;
            }
            this.matchStat = -1;
            return 0.0f;
        }
        long j = cCharAt2 - '0';
        while (true) {
            r17 = r7 + 1;
            cCharAt = charAt(this.f71bp + r7);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j = (j * 10) + (cCharAt - '0');
            r7 = r17;
        }
        long j2 = 1;
        if (cCharAt == '.') {
            int r73 = r17 + 1;
            char cCharAt4 = charAt(this.f71bp + r17);
            if (cCharAt4 < '0' || cCharAt4 > '9') {
                this.matchStat = -1;
                return 0.0f;
            }
            j = (j * 10) + (cCharAt4 - '0');
            j2 = 10;
            while (true) {
                r17 = r73 + 1;
                cCharAt = charAt(this.f71bp + r73);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j = (j * 10) + (cCharAt - '0');
                j2 *= 10;
                r73 = r17;
            }
        }
        long j3 = j2;
        boolean z3 = cCharAt == 'e' || cCharAt == 'E';
        if (z3) {
            int r74 = r17 + 1;
            char cCharAt5 = charAt(this.f71bp + r17);
            if (cCharAt5 == '+' || cCharAt5 == '-') {
                int r6 = r74 + 1;
                cCharAt = charAt(this.f71bp + r74);
                r17 = r6;
            } else {
                r17 = r74;
                cCharAt = cCharAt5;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                int r62 = r17 + 1;
                cCharAt = charAt(this.f71bp + r17);
                r17 = r62;
            }
        }
        if (!z) {
            r5 = this.f71bp;
            r3 = ((r5 + r17) - r5) - 1;
        } else {
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0.0f;
            }
            int r42 = r17 + 1;
            cCharAt = charAt(this.f71bp + r17);
            int r32 = this.f71bp;
            r5 = r32 + 1;
            r3 = ((r32 + r42) - r5) - 2;
            r17 = r42;
        }
        if (z3 || r3 >= 17) {
            f = Float.parseFloat(subString(r5, r3));
        } else {
            f = (float) (j / j3);
            if (z2) {
                f = -f;
            }
        }
        if (cCharAt == c) {
            int r23 = this.f71bp + r17;
            this.f71bp = r23;
            this.f72ch = charAt(r23);
            this.matchStat = 3;
            this.token = 16;
            return f;
        }
        this.matchStat = -1;
        return f;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00c7 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00c9 -> B:53:0x00b7). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r21) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 437
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDouble(char):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00ad A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x00af -> B:50:0x009d). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal scanDecimal(char r19) {
        /*
            Method dump skipped, instructions count: 487
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanDecimal(char):java.math.BigDecimal");
    }

    /* JADX WARN: Code restructure failed: missing block: B:103:0x01b8, code lost:
    
        r1 = r4;
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01bb, code lost:
    
        return r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a5, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a7, code lost:
    
        return r4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] scanFieldFloatArray(char[] r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray(char[]):float[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b5, code lost:
    
        r21.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b9, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x013b, code lost:
    
        r4 = r18 + 1;
        r1 = charAt(r21.f71bp + r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0146, code lost:
    
        if (r2 == r3.length) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0148, code lost:
    
        r5 = new float[r2];
        r6 = 0;
        java.lang.System.arraycopy(r3, 0, r5, 0, r2);
        r3 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0150, code lost:
    
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0152, code lost:
    
        if (r8 < r7.length) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0154, code lost:
    
        r5 = new float[(r7.length * 3) / 2][];
        java.lang.System.arraycopy(r3, r6, r5, r6, r2);
        r7 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x015f, code lost:
    
        r5 = r8 + 1;
        r7[r8] = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0165, code lost:
    
        if (r1 != ',') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0167, code lost:
    
        r3 = r4 + 1;
        r2 = charAt(r21.f71bp + r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0175, code lost:
    
        if (r1 != ']') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0177, code lost:
    
        r3 = r4 + 1;
        r2 = charAt(r21.f71bp + r4);
        r8 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0182, code lost:
    
        r2 = r1;
        r3 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0197, code lost:
    
        r21.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x019d, code lost:
    
        return (float[][]) null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] scanFieldFloatArray2(char[] r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 544
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray2(char[]):float[][]");
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00dc A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x00de -> B:55:0x00ca). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final double scanFieldDouble(char[] r24) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 564
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDouble(char[]):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00b8 A[ADDED_TO_REGION] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x00ba -> B:52:0x00a8). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigDecimal scanFieldDecimal(char[] r18) {
        /*
            Method dump skipped, instructions count: 513
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldDecimal(char[]):java.math.BigDecimal");
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        r16 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigInteger scanFieldBigInteger(char[] r21) {
        /*
            Method dump skipped, instructions count: 453
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldBigInteger(char[]):java.math.BigInteger");
    }

    public Date scanFieldDate(char[] cArr) {
        int r1;
        long j;
        Date date;
        int r3;
        char cCharAt;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int r6 = length + 1;
        char cCharAt2 = charAt(this.f71bp + length);
        if (cCharAt2 == '\"') {
            int r32 = indexOf('\"', this.f71bp + cArr.length + 1);
            if (r32 == -1) {
                throw new JSONException("unclosed str");
            }
            int length2 = this.f71bp + cArr.length + 1;
            String strSubString = subString(length2, r32 - length2);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int r11 = 0;
                    for (int r9 = r32 - 1; r9 >= 0 && charAt(r9) == '\\'; r9--) {
                        r11++;
                    }
                    if (r11 % 2 == 0) {
                        break;
                    }
                    r32 = indexOf('\"', r32 + 1);
                }
                int r5 = this.f71bp;
                int length3 = r32 - ((cArr.length + r5) + 1);
                strSubString = readString(sub_chars(r5 + cArr.length + 1, length3), length3);
            }
            int r52 = this.f71bp;
            int length4 = r6 + (r32 - ((cArr.length + r52) + 1)) + 1;
            r1 = length4 + 1;
            cCharAt2 = charAt(r52 + length4);
            JSONScanner jSONScanner = new JSONScanner(strSubString);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    date = jSONScanner.getCalendar().getTime();
                } else {
                    this.matchStat = -1;
                    return null;
                }
            } finally {
                jSONScanner.close();
            }
        } else {
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(this.f71bp + r6);
                r6++;
                z = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                r1 = r6;
                j = 0;
            } else {
                j = cCharAt2 - '0';
                while (true) {
                    r3 = r6 + 1;
                    cCharAt = charAt(this.f71bp + r6);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    r6 = r3;
                }
                cCharAt2 = cCharAt;
                r1 = r3;
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        }
        if (cCharAt2 == ',') {
            int r33 = this.f71bp + r1;
            this.f71bp = r33;
            this.f72ch = charAt(r33);
            this.matchStat = 3;
            return date;
        }
        if (cCharAt2 == '}') {
            int r92 = r1 + 1;
            char cCharAt3 = charAt(this.f71bp + r1);
            if (cCharAt3 == ',') {
                this.token = 16;
                int r12 = this.f71bp + r92;
                this.f71bp = r12;
                this.f72ch = charAt(r12);
            } else if (cCharAt3 == ']') {
                this.token = 15;
                int r13 = this.f71bp + r92;
                this.f71bp = r13;
                this.f72ch = charAt(r13);
            } else if (cCharAt3 == '}') {
                this.token = 13;
                int r14 = this.f71bp + r92;
                this.f71bp = r14;
                this.f72ch = charAt(r14);
            } else if (cCharAt3 == 26) {
                this.token = 20;
                this.f71bp += r92 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return date;
        }
        this.matchStat = -1;
        return null;
    }

    public Date scanDate(char c) {
        long j;
        int r14;
        Date date;
        boolean z = false;
        this.matchStat = 0;
        char cCharAt = charAt(this.f71bp + 0);
        int r4 = 5;
        if (cCharAt == '\"') {
            int r2 = indexOf('\"', this.f71bp + 1);
            if (r2 == -1) {
                throw new JSONException("unclosed str");
            }
            int r42 = this.f71bp + 1;
            String strSubString = subString(r42, r2 - r42);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int r10 = 0;
                    for (int r43 = r2 - 1; r43 >= 0 && charAt(r43) == '\\'; r43--) {
                        r10++;
                    }
                    if (r10 % 2 == 0) {
                        break;
                    }
                    r2 = indexOf('\"', r2 + 1);
                }
                int r44 = this.f71bp;
                int r5 = r2 - (r44 + 1);
                strSubString = readString(sub_chars(r44 + 1, r5), r5);
            }
            int r52 = this.f71bp;
            int r22 = (r2 - (r52 + 1)) + 1 + 1;
            int r9 = r22 + 1;
            cCharAt = charAt(r52 + r22);
            JSONScanner jSONScanner = new JSONScanner(strSubString);
            try {
                if (jSONScanner.scanISO8601DateIfMatch(false)) {
                    date = jSONScanner.getCalendar().getTime();
                    jSONScanner.close();
                    r4 = r9;
                } else {
                    this.matchStat = -1;
                    return null;
                }
            } finally {
                jSONScanner.close();
            }
        } else {
            char c2 = '9';
            int r102 = 2;
            if (cCharAt == '-' || (cCharAt >= '0' && cCharAt <= '9')) {
                if (cCharAt == '-') {
                    cCharAt = charAt(this.f71bp + 1);
                    z = true;
                } else {
                    r102 = 1;
                }
                if (cCharAt < '0' || cCharAt > '9') {
                    j = 0;
                    r14 = r102;
                } else {
                    j = cCharAt - '0';
                    while (true) {
                        r14 = r102 + 1;
                        cCharAt = charAt(this.f71bp + r102);
                        if (cCharAt < '0' || cCharAt > c2) {
                            break;
                        }
                        j = (j * 10) + (cCharAt - '0');
                        r102 = r14;
                        c2 = '9';
                    }
                }
                if (j < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                date = new Date(j);
                r4 = r14;
            } else if (cCharAt == 'n' && charAt(this.f71bp + 1) == 'u' && charAt(this.f71bp + 1 + 1) == 'l' && charAt(this.f71bp + 1 + 2) == 'l') {
                this.matchStat = 5;
                cCharAt = charAt(this.f71bp + 4);
                date = null;
            } else {
                this.matchStat = -1;
                return null;
            }
        }
        if (cCharAt == ',') {
            int r23 = this.f71bp + r4;
            this.f71bp = r23;
            this.f72ch = charAt(r23);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        if (cCharAt == ']') {
            int r11 = r4 + 1;
            char cCharAt2 = charAt(this.f71bp + r4);
            if (cCharAt2 == ',') {
                this.token = 16;
                int r24 = this.f71bp + r11;
                this.f71bp = r24;
                this.f72ch = charAt(r24);
            } else if (cCharAt2 == ']') {
                this.token = 15;
                int r25 = this.f71bp + r11;
                this.f71bp = r25;
                this.f72ch = charAt(r25);
            } else if (cCharAt2 == '}') {
                this.token = 13;
                int r26 = this.f71bp + r11;
                this.f71bp = r26;
                this.f72ch = charAt(r26);
            } else if (cCharAt2 == 26) {
                this.token = 20;
                this.f71bp += r11 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return date;
        }
        this.matchStat = -1;
        return null;
    }

    public UUID scanFieldUUID(char[] cArr) {
        char cCharAt;
        int r1;
        UUID r2;
        int r3;
        int r10;
        int r102;
        int r32;
        int r33;
        int r34;
        int r35;
        int r36;
        int r37;
        int r38;
        int r39;
        int r13;
        int r132;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int r7 = length + 1;
        char cCharAt2 = charAt(this.f71bp + length);
        char c = 4;
        if (cCharAt2 == '\"') {
            int r310 = indexOf('\"', this.f71bp + cArr.length + 1);
            if (r310 == -1) {
                throw new JSONException("unclosed str");
            }
            int length2 = this.f71bp + cArr.length + 1;
            int r12 = r310 - length2;
            char c2 = 'F';
            char c3 = 'f';
            char c4 = 'A';
            char c5 = '0';
            if (r12 == 36) {
                int r122 = 0;
                long j = 0;
                while (r122 < 8) {
                    char cCharAt3 = charAt(length2 + r122);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        if (cCharAt3 >= 'a' && cCharAt3 <= 'f') {
                            r13 = cCharAt3 - 'a';
                        } else {
                            if (cCharAt3 < 'A' || cCharAt3 > c2) {
                                this.matchStat = -2;
                                return null;
                            }
                            r13 = cCharAt3 - 'A';
                        }
                        r132 = r13 + 10;
                    } else {
                        r132 = cCharAt3 - '0';
                    }
                    j = (j << 4) | r132;
                    r122++;
                    r310 = r310;
                    c2 = 'F';
                }
                int r21 = r310;
                int r22 = 9;
                int r311 = 13;
                while (r22 < r311) {
                    char cCharAt4 = charAt(length2 + r22);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                            r38 = cCharAt4 - 'a';
                        } else {
                            if (cCharAt4 < c4 || cCharAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r38 = cCharAt4 - 'A';
                        }
                        r39 = r38 + 10;
                    } else {
                        r39 = cCharAt4 - '0';
                    }
                    j = (j << c) | r39;
                    r22++;
                    r311 = 13;
                    c4 = 'A';
                    c = 4;
                }
                long j2 = j;
                for (int r23 = 14; r23 < 18; r23++) {
                    char cCharAt5 = charAt(length2 + r23);
                    if (cCharAt5 < '0' || cCharAt5 > '9') {
                        if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                            r36 = cCharAt5 - 'a';
                        } else {
                            if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r36 = cCharAt5 - 'A';
                        }
                        r37 = r36 + 10;
                    } else {
                        r37 = cCharAt5 - '0';
                    }
                    j2 = (j2 << 4) | r37;
                }
                long j3 = 0;
                for (int r24 = 19; r24 < 23; r24++) {
                    char cCharAt6 = charAt(length2 + r24);
                    if (cCharAt6 < '0' || cCharAt6 > '9') {
                        if (cCharAt6 >= 'a' && cCharAt6 <= 'f') {
                            r34 = cCharAt6 - 'a';
                        } else {
                            if (cCharAt6 < 'A' || cCharAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r34 = cCharAt6 - 'A';
                        }
                        r35 = r34 + 10;
                    } else {
                        r35 = cCharAt6 - '0';
                    }
                    j3 = (j3 << 4) | r35;
                }
                int r25 = 24;
                long j4 = j3;
                int r312 = 36;
                while (r25 < r312) {
                    char cCharAt7 = charAt(length2 + r25);
                    if (cCharAt7 < c5 || cCharAt7 > '9') {
                        if (cCharAt7 >= 'a' && cCharAt7 <= c3) {
                            r32 = cCharAt7 - 'a';
                        } else {
                            if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r32 = cCharAt7 - 'A';
                        }
                        r33 = r32 + 10;
                    } else {
                        r33 = cCharAt7 - '0';
                    }
                    j4 = (j4 << 4) | r33;
                    r25++;
                    r7 = r7;
                    r312 = 36;
                    c5 = '0';
                    c3 = 'f';
                }
                r2 = new UUID(j2, j4);
                int r313 = this.f71bp;
                int length3 = r7 + (r21 - ((cArr.length + r313) + 1)) + 1;
                r1 = length3 + 1;
                cCharAt = charAt(r313 + length3);
            } else {
                if (r12 == 32) {
                    long j5 = 0;
                    for (int r314 = 0; r314 < 16; r314++) {
                        char cCharAt8 = charAt(length2 + r314);
                        if (cCharAt8 < '0' || cCharAt8 > '9') {
                            if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                                r10 = cCharAt8 - 'a';
                            } else {
                                if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                }
                                r10 = cCharAt8 - 'A';
                            }
                            r102 = r10 + 10;
                        } else {
                            r102 = cCharAt8 - '0';
                        }
                        j5 = (j5 << 4) | r102;
                    }
                    int r103 = 16;
                    long j6 = 0;
                    for (int r26 = 32; r103 < r26; r26 = 32) {
                        char cCharAt9 = charAt(length2 + r103);
                        if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                            r3 = cCharAt9 - '0';
                        } else if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                            r3 = (cCharAt9 - 'a') + 10;
                        } else {
                            if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r3 = (cCharAt9 - 'A') + 10;
                            j6 = (j6 << 4) | r3;
                            r103++;
                        }
                        j6 = (j6 << 4) | r3;
                        r103++;
                    }
                    r2 = new UUID(j5, j6);
                    int r315 = this.f71bp;
                    int length4 = r7 + (r310 - ((cArr.length + r315) + 1)) + 1;
                    r1 = length4 + 1;
                    cCharAt = charAt(r315 + length4);
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
        } else {
            if (cCharAt2 == 'n') {
                int r72 = r7 + 1;
                if (charAt(this.f71bp + r7) == 'u') {
                    int r27 = r72 + 1;
                    if (charAt(this.f71bp + r72) == 'l') {
                        int r4 = r27 + 1;
                        if (charAt(this.f71bp + r27) == 'l') {
                            cCharAt = charAt(this.f71bp + r4);
                            r1 = r4 + 1;
                            r2 = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        if (cCharAt == ',') {
            int r316 = this.f71bp + r1;
            this.f71bp = r316;
            this.f72ch = charAt(r316);
            this.matchStat = 3;
            return r2;
        }
        if (cCharAt == '}') {
            int r73 = r1 + 1;
            char cCharAt10 = charAt(this.f71bp + r1);
            if (cCharAt10 == ',') {
                this.token = 16;
                int r14 = this.f71bp + r73;
                this.f71bp = r14;
                this.f72ch = charAt(r14);
            } else if (cCharAt10 == ']') {
                this.token = 15;
                int r15 = this.f71bp + r73;
                this.f71bp = r15;
                this.f72ch = charAt(r15);
            } else if (cCharAt10 == '}') {
                this.token = 13;
                int r16 = this.f71bp + r73;
                this.f71bp = r16;
                this.f72ch = charAt(r16);
            } else if (cCharAt10 == 26) {
                this.token = 20;
                this.f71bp += r73 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return r2;
        }
        this.matchStat = -1;
        return null;
    }

    public UUID scanUUID(char c) {
        int r2;
        char cCharAt;
        UUID r1;
        int r4;
        int r10;
        int r102;
        int r12;
        int r122;
        int r42;
        int r43;
        int r44;
        int r45;
        int r11;
        int r112;
        int r103;
        int r104;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.f71bp + 0);
        int r3 = 13;
        char c2 = 4;
        if (cCharAt2 == '\"') {
            int r22 = indexOf('\"', this.f71bp + 1);
            if (r22 == -1) {
                throw new JSONException("unclosed str");
            }
            int r5 = this.f71bp + 1;
            int r113 = r22 - r5;
            char c3 = 'f';
            char c4 = 'A';
            char c5 = 'a';
            if (r113 == 36) {
                int r114 = 0;
                long j = 0;
                while (r114 < 8) {
                    char cCharAt3 = charAt(r5 + r114);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        if (cCharAt3 >= 'a' && cCharAt3 <= c3) {
                            r103 = cCharAt3 - 'a';
                        } else {
                            if (cCharAt3 < 'A' || cCharAt3 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r103 = cCharAt3 - 'A';
                        }
                        r104 = r103 + 10;
                    } else {
                        r104 = cCharAt3 - '0';
                    }
                    j = (j << 4) | r104;
                    r114++;
                    c3 = 'f';
                }
                int r105 = 9;
                while (r105 < r3) {
                    char cCharAt4 = charAt(r5 + r105);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                            r11 = cCharAt4 - 'a';
                        } else {
                            if (cCharAt4 < c4 || cCharAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r11 = cCharAt4 - 'A';
                        }
                        r112 = r11 + 10;
                    } else {
                        r112 = cCharAt4 - '0';
                    }
                    j = (j << 4) | r112;
                    r105++;
                    r3 = 13;
                    c4 = 'A';
                }
                long j2 = j;
                for (int r32 = 14; r32 < 18; r32++) {
                    char cCharAt5 = charAt(r5 + r32);
                    if (cCharAt5 < '0' || cCharAt5 > '9') {
                        if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                            r44 = cCharAt5 - 'a';
                        } else {
                            if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r44 = cCharAt5 - 'A';
                        }
                        r45 = r44 + 10;
                    } else {
                        r45 = cCharAt5 - '0';
                    }
                    j2 = (j2 << 4) | r45;
                }
                int r33 = 19;
                long j3 = 0;
                while (r33 < 23) {
                    char cCharAt6 = charAt(r5 + r33);
                    if (cCharAt6 < '0' || cCharAt6 > '9') {
                        if (cCharAt6 >= c5 && cCharAt6 <= 'f') {
                            r42 = cCharAt6 - 'a';
                        } else {
                            if (cCharAt6 < 'A' || cCharAt6 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r42 = cCharAt6 - 'A';
                        }
                        r43 = r42 + 10;
                    } else {
                        r43 = cCharAt6 - '0';
                    }
                    j3 = (j3 << c2) | r43;
                    r33++;
                    c5 = 'a';
                    c2 = 4;
                }
                long j4 = j3;
                for (int r34 = 24; r34 < 36; r34++) {
                    char cCharAt7 = charAt(r5 + r34);
                    if (cCharAt7 < '0' || cCharAt7 > '9') {
                        if (cCharAt7 >= 'a' && cCharAt7 <= 'f') {
                            r12 = cCharAt7 - 'a';
                        } else {
                            if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r12 = cCharAt7 - 'A';
                        }
                        r122 = r12 + 10;
                    } else {
                        r122 = cCharAt7 - '0';
                    }
                    j4 = (j4 << 4) | r122;
                }
                r1 = new UUID(j2, j4);
                int r35 = this.f71bp;
                int r106 = 1 + (r22 - (r35 + 1)) + 1;
                r2 = r106 + 1;
                cCharAt = charAt(r35 + r106);
            } else {
                if (r113 == 32) {
                    long j5 = 0;
                    for (int r46 = 0; r46 < 16; r46++) {
                        char cCharAt8 = charAt(r5 + r46);
                        if (cCharAt8 < '0' || cCharAt8 > '9') {
                            if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                                r10 = cCharAt8 - 'a';
                            } else {
                                if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                }
                                r10 = cCharAt8 - 'A';
                            }
                            r102 = r10 + 10;
                        } else {
                            r102 = cCharAt8 - '0';
                        }
                        j5 = (j5 << 4) | r102;
                    }
                    int r107 = 16;
                    long j6 = 0;
                    for (int r36 = 32; r107 < r36; r36 = 32) {
                        char cCharAt9 = charAt(r5 + r107);
                        if (cCharAt9 >= '0' && cCharAt9 <= '9') {
                            r4 = cCharAt9 - '0';
                        } else if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                            r4 = (cCharAt9 - 'a') + 10;
                        } else {
                            if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            r4 = (cCharAt9 - 'A') + 10;
                        }
                        j6 = (j6 << 4) | r4;
                        r107++;
                    }
                    r1 = new UUID(j5, j6);
                    int r37 = this.f71bp;
                    int r108 = 1 + (r22 - (r37 + 1)) + 1;
                    r2 = r108 + 1;
                    cCharAt = charAt(r37 + r108);
                } else {
                    this.matchStat = -1;
                    return null;
                }
            }
        } else if (cCharAt2 == 'n' && charAt(this.f71bp + 1) == 'u' && charAt(this.f71bp + 2) == 'l' && charAt(this.f71bp + 3) == 'l') {
            r2 = 5;
            cCharAt = charAt(this.f71bp + 4);
            r1 = null;
        } else {
            this.matchStat = -1;
            return null;
        }
        if (cCharAt == ',') {
            int r38 = this.f71bp + r2;
            this.f71bp = r38;
            this.f72ch = charAt(r38);
            this.matchStat = 3;
            return r1;
        }
        if (cCharAt == ']') {
            int r52 = r2 + 1;
            char cCharAt10 = charAt(this.f71bp + r2);
            if (cCharAt10 == ',') {
                this.token = 16;
                int r23 = this.f71bp + r52;
                this.f71bp = r23;
                this.f72ch = charAt(r23);
            } else if (cCharAt10 == ']') {
                this.token = 15;
                int r24 = this.f71bp + r52;
                this.f71bp = r24;
                this.f72ch = charAt(r24);
            } else if (cCharAt10 == '}') {
                this.token = 13;
                int r25 = this.f71bp + r52;
                this.f71bp = r25;
                this.f72ch = charAt(r25);
            } else if (cCharAt10 == 26) {
                this.token = 20;
                this.f71bp += r52 - 1;
                this.f72ch = JSONLexer.EOI;
            } else {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 4;
            return r1;
        }
        this.matchStat = -1;
        return null;
    }

    public final void scanTrue() {
        if (this.f72ch != 't') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f72ch != 'r') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f72ch != 'u') {
            throw new JSONException("error parse true");
        }
        next();
        if (this.f72ch != 'e') {
            throw new JSONException("error parse true");
        }
        next();
        char c = this.f72ch;
        if (c == ' ' || c == ',' || c == '}' || c == ']' || c == '\n' || c == '\r' || c == '\t' || c == 26 || c == '\f' || c == '\b' || c == ':' || c == '/') {
            this.token = 6;
            return;
        }
        throw new JSONException("scan true error");
    }

    public final void scanNullOrNew() {
        scanNullOrNew(true);
    }

    public final void scanNullOrNew(boolean z) {
        char c;
        if (this.f72ch != 'n') {
            throw new JSONException("error parse null or new");
        }
        next();
        char c2 = this.f72ch;
        if (c2 != 'u') {
            if (c2 != 'e') {
                throw new JSONException("error parse new");
            }
            next();
            if (this.f72ch != 'w') {
                throw new JSONException("error parse new");
            }
            next();
            char c3 = this.f72ch;
            if (c3 == ' ' || c3 == ',' || c3 == '}' || c3 == ']' || c3 == '\n' || c3 == '\r' || c3 == '\t' || c3 == 26 || c3 == '\f' || c3 == '\b') {
                this.token = 9;
                return;
            }
            throw new JSONException("scan new error");
        }
        next();
        if (this.f72ch != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        if (this.f72ch != 'l') {
            throw new JSONException("error parse null");
        }
        next();
        char c4 = this.f72ch;
        if (c4 == ' ' || c4 == ',' || c4 == '}' || c4 == ']' || c4 == '\n' || c4 == '\r' || c4 == '\t' || c4 == 26 || ((c4 == ':' && z) || (c = this.f72ch) == '\f' || c == '\b')) {
            this.token = 8;
            return;
        }
        throw new JSONException("scan null error");
    }

    public final void scanFalse() {
        if (this.f72ch != 'f') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f72ch != 'a') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f72ch != 'l') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f72ch != 's') {
            throw new JSONException("error parse false");
        }
        next();
        if (this.f72ch != 'e') {
            throw new JSONException("error parse false");
        }
        next();
        char c = this.f72ch;
        if (c == ' ' || c == ',' || c == '}' || c == ']' || c == '\n' || c == '\r' || c == '\t' || c == 26 || c == '\f' || c == '\b' || c == ':' || c == '/') {
            this.token = 7;
            return;
        }
        throw new JSONException("scan false error");
    }

    public final void scanIdent() {
        this.f73np = this.f71bp - 1;
        this.hasSpecial = false;
        do {
            this.f74sp++;
            next();
        } while (Character.isLetterOrDigit(this.f72ch));
        String strStringVal = stringVal();
        if ("null".equalsIgnoreCase(strStringVal)) {
            this.token = 8;
            return;
        }
        if ("new".equals(strStringVal)) {
            this.token = 9;
            return;
        }
        if (ParamsResValue.RainState.RAIN.equals(strStringVal)) {
            this.token = 6;
            return;
        }
        if (ParamsResValue.RainState.NO_RAIN.equals(strStringVal)) {
            this.token = 7;
            return;
        }
        if ("undefined".equals(strStringVal)) {
            this.token = 23;
            return;
        }
        if ("Set".equals(strStringVal)) {
            this.token = 21;
        } else if ("TreeSet".equals(strStringVal)) {
            this.token = 22;
        } else {
            this.token = 18;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readString(char[] r12, int r13) {
        /*
            Method dump skipped, instructions count: 290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.readString(char[], int):java.lang.String");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int r1 = 0;
        while (true) {
            char cCharAt = charAt(r1);
            if (cCharAt == 26) {
                this.token = 20;
                return true;
            }
            if (!isWhitespace(cCharAt)) {
                return false;
            }
            r1++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
        while (true) {
            char c = this.f72ch;
            if (c > '/') {
                return;
            }
            if (c == ' ' || c == '\r' || c == '\n' || c == '\t' || c == '\f' || c == '\b') {
                next();
            } else if (c != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    private void scanStringSingleQuote() {
        char next;
        char next2;
        this.f73np = this.f71bp;
        this.hasSpecial = false;
        while (true) {
            char next3 = next();
            if (next3 == '\'') {
                this.token = 4;
                next();
                return;
            }
            if (next3 != 26) {
                boolean z = true;
                if (next3 == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int r1 = this.f74sp;
                        char[] cArr = this.sbuf;
                        if (r1 > cArr.length) {
                            char[] cArr2 = new char[r1 * 2];
                            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.f73np + 1, this.f74sp, this.sbuf);
                    }
                    char next4 = next();
                    if (next4 == '\"') {
                        putChar('\"');
                    } else if (next4 != '\'') {
                        if (next4 != 'F') {
                            if (next4 == '\\') {
                                putChar('\\');
                            } else if (next4 == 'b') {
                                putChar('\b');
                            } else if (next4 != 'f') {
                                if (next4 == 'n') {
                                    putChar('\n');
                                } else if (next4 == 'r') {
                                    putChar('\r');
                                } else if (next4 != 'x') {
                                    switch (next4) {
                                        case '/':
                                            putChar('/');
                                            break;
                                        case '0':
                                            putChar((char) 0);
                                            break;
                                        case '1':
                                            putChar((char) 1);
                                            break;
                                        case '2':
                                            putChar((char) 2);
                                            break;
                                        case '3':
                                            putChar((char) 3);
                                            break;
                                        case '4':
                                            putChar((char) 4);
                                            break;
                                        case '5':
                                            putChar((char) 5);
                                            break;
                                        case '6':
                                            putChar((char) 6);
                                            break;
                                        case '7':
                                            putChar((char) 7);
                                            break;
                                        default:
                                            switch (next4) {
                                                case 't':
                                                    putChar('\t');
                                                    break;
                                                case 'u':
                                                    putChar((char) Integer.parseInt(new String(new char[]{next(), next(), next(), next()}), 16));
                                                    break;
                                                case 'v':
                                                    putChar((char) 11);
                                                    break;
                                                default:
                                                    this.f72ch = next4;
                                                    throw new JSONException("unclosed single-quote string");
                                            }
                                    }
                                } else {
                                    next = next();
                                    next2 = next();
                                    boolean z2 = (next >= '0' && next <= '9') || (next >= 'a' && next <= 'f') || (next >= 'A' && next <= 'F');
                                    if ((next2 < '0' || next2 > '9') && ((next2 < 'a' || next2 > 'f') && (next2 < 'A' || next2 > 'F'))) {
                                        z = false;
                                    }
                                    if (z2 && z) {
                                        int[] r3 = digits;
                                        putChar((char) ((r3[next] * 16) + r3[next2]));
                                    }
                                }
                            }
                        }
                        putChar('\f');
                    } else {
                        putChar('\'');
                    }
                } else if (!this.hasSpecial) {
                    this.f74sp++;
                } else {
                    int r2 = this.f74sp;
                    char[] cArr3 = this.sbuf;
                    if (r2 == cArr3.length) {
                        putChar(next3);
                    } else {
                        this.f74sp = r2 + 1;
                        cArr3[r2] = next3;
                    }
                }
            } else if (!isEOF()) {
                putChar(JSONLexer.EOI);
            } else {
                throw new JSONException("unclosed single-quote string");
            }
        }
        throw new JSONException("invalid escape character \\x" + next + next2);
    }

    protected final void putChar(char c) {
        int r0 = this.f74sp;
        char[] cArr = this.sbuf;
        if (r0 == cArr.length) {
            char[] cArr2 = new char[cArr.length * 2];
            System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
            this.sbuf = cArr2;
        }
        char[] cArr3 = this.sbuf;
        int r1 = this.f74sp;
        this.f74sp = r1 + 1;
        cArr3[r1] = c;
    }

    public final void scanHex() {
        char next;
        if (this.f72ch != 'x') {
            throw new JSONException("illegal state. " + this.f72ch);
        }
        next();
        if (this.f72ch != '\'') {
            throw new JSONException("illegal state. " + this.f72ch);
        }
        this.f73np = this.f71bp;
        next();
        if (this.f72ch == '\'') {
            next();
            this.token = 26;
            return;
        }
        while (true) {
            next = next();
            if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                break;
            } else {
                this.f74sp++;
            }
        }
        if (next == '\'') {
            this.f74sp++;
            next();
            this.token = 26;
        } else {
            throw new JSONException("illegal state. " + next);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00cb  */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanNumber() {
        /*
            Method dump skipped, instructions count: 215
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanNumber():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0084  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005b -> B:12:0x0032). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long longValue() throws java.lang.NumberFormatException {
        /*
            r15 = this;
            int r0 = r15.f73np
            r1 = 0
            r2 = -1
            if (r0 != r2) goto L8
            r15.f73np = r1
        L8:
            int r0 = r15.f73np
            int r2 = r15.f74sp
            int r2 = r2 + r0
            char r3 = r15.charAt(r0)
            r4 = 45
            r5 = 1
            if (r3 != r4) goto L1c
            r3 = -9223372036854775808
            int r0 = r0 + 1
            r1 = r5
            goto L21
        L1c:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L21:
            r6 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            if (r0 >= r2) goto L34
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r9 = (long) r0
        L32:
            r0 = r8
            goto L36
        L34:
            r9 = 0
        L36:
            if (r0 >= r2) goto L72
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            r11 = 76
            if (r0 == r11) goto L71
            r11 = 83
            if (r0 == r11) goto L71
            r11 = 66
            if (r0 != r11) goto L4b
            goto L71
        L4b:
            int r0 = r0 + (-48)
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 < 0) goto L67
            r11 = 10
            long r9 = r9 * r11
            long r11 = (long) r0
            long r13 = r3 + r11
            int r0 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r0 < 0) goto L5d
            long r9 = r9 - r11
            goto L32
        L5d:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.numberString()
            r0.<init>(r15)
            throw r0
        L67:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.numberString()
            r0.<init>(r15)
            throw r0
        L71:
            r0 = r8
        L72:
            if (r1 == 0) goto L84
            int r1 = r15.f73np
            int r1 = r1 + r5
            if (r0 <= r1) goto L7a
            return r9
        L7a:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r15 = r15.numberString()
            r0.<init>(r15)
            throw r0
        L84:
            long r0 = -r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.longValue():long");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final Number decimalValue(boolean z) {
        char cCharAt = charAt((this.f73np + this.f74sp) - 1);
        try {
            if (cCharAt == 'F') {
                return Float.valueOf(Float.parseFloat(numberString()));
            }
            if (cCharAt == 'D') {
                return Double.valueOf(Double.parseDouble(numberString()));
            }
            if (z) {
                return decimalValue();
            }
            return Double.valueOf(doubleValue());
        } catch (NumberFormatException e) {
            throw new JSONException(e.getMessage() + ", " + info());
        }
    }

    public String[] scanFieldStringArray(char[] cArr, int r2, SymbolTable symbolTable) {
        throw new UnsupportedOperationException();
    }

    public boolean matchField2(char[] cArr) {
        throw new UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int getFeatures() {
        return this.features;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setFeatures(int r1) {
        this.features = r1;
    }
}
