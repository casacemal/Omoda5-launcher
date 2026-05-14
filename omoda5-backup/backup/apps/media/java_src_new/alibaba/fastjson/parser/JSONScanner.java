package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.util.ASMUtils;
import com.alibaba.fastjson.util.IOUtils;
import java.math.BigDecimal;
import java.math.MathContext;
import java.util.Calendar;
import java.util.Date;
import java.util.SimpleTimeZone;
import java.util.TimeZone;

/* loaded from: classes.dex */
public final class JSONScanner extends JSONLexerBase {
    private final int len;
    private final String text;

    static boolean checkDate(char c, char c2, char c3, char c4, char c5, char c6, int r9, int r10) {
        if (c >= '0' && c <= '9' && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            if (c5 == '0') {
                if (c6 < '1' || c6 > '9') {
                    return false;
                }
            } else if (c5 != '1' || (c6 != '0' && c6 != '1' && c6 != '2')) {
                return false;
            }
            if (r9 == 48) {
                return r10 >= 49 && r10 <= 57;
            }
            if (r9 != 49 && r9 != 50) {
                return r9 == 51 && (r10 == 48 || r10 == 49);
            }
            if (r10 >= 48 && r10 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c, char c2, char c3, char c4, char c5, char c6) {
        if (c == '0') {
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        } else {
            if (c != '1') {
                if (c == '2' && c2 >= '0' && c2 <= '4') {
                }
                return false;
            }
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        }
        if (c3 < '0' || c3 > '5') {
            if (c3 != '6' || c4 != '0') {
                return false;
            }
        } else if (c4 < '0' || c4 > '9') {
            return false;
        }
        return (c5 < '0' || c5 > '5') ? c5 == '6' && c6 == '0' : c6 >= '0' && c6 <= '9';
    }

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(String str, int r2) {
        super(r2);
        this.text = str;
        this.len = str.length();
        this.f71bp = -1;
        next();
        if (this.f72ch == 65279) {
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int r2) {
        return r2 >= this.len ? JSONLexer.EOI : this.text.charAt(r2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int r0 = this.f71bp + 1;
        this.f71bp = r0;
        char cCharAt = r0 >= this.len ? JSONLexer.EOI : this.text.charAt(r0);
        this.f72ch = cCharAt;
        return cCharAt;
    }

    public JSONScanner(char[] cArr, int r3) {
        this(cArr, r3, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int r4, int r5) {
        this(new String(cArr, 0, r4), r5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void copyTo(int r2, int r3, char[] cArr) {
        this.text.getChars(r2, r3 + r2, cArr, 0);
    }

    static boolean charArrayCompare(String str, int r6, char[] cArr) {
        int length = cArr.length;
        if (length + r6 > str.length()) {
            return false;
        }
        for (int r1 = 0; r1 < length; r1++) {
            if (cArr[r1] != str.charAt(r6 + r1)) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.f71bp, cArr);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int r2) {
        return this.text.indexOf(c, r2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int r1, int r2, int r3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, r1, r2, r3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token == 26) {
            int r0 = this.f73np + 1;
            int r2 = this.f74sp;
            if (r2 % 2 != 0) {
                throw new JSONException("illegal state. " + r2);
            }
            int r22 = r2 / 2;
            byte[] bArr = new byte[r22];
            for (int r1 = 0; r1 < r22; r1++) {
                int r5 = (r1 * 2) + r0;
                char cCharAt = this.text.charAt(r5);
                char cCharAt2 = this.text.charAt(r5 + 1);
                char c = '0';
                int r4 = cCharAt - (cCharAt <= '9' ? '0' : '7');
                if (cCharAt2 > '9') {
                    c = '7';
                }
                bArr[r1] = (byte) ((r4 << 4) | (cCharAt2 - c));
            }
            return bArr;
        }
        if (!this.hasSpecial) {
            return IOUtils.decodeBase64(this.text, this.f73np + 1, this.f74sp);
        }
        return IOUtils.decodeBase64(new String(this.sbuf, 0, this.f74sp));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        if (!this.hasSpecial) {
            return subString(this.f73np + 1, this.f74sp);
        }
        return new String(this.sbuf, 0, this.f74sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int r5, int r6) {
        if (ASMUtils.IS_ANDROID) {
            if (r6 < this.sbuf.length) {
                this.text.getChars(r5, r5 + r6, this.sbuf, 0);
                return new String(this.sbuf, 0, r6);
            }
            char[] cArr = new char[r6];
            this.text.getChars(r5, r6 + r5, cArr, 0);
            return new String(cArr);
        }
        return this.text.substring(r5, r6 + r5);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int r4, int r5) {
        if (ASMUtils.IS_ANDROID && r5 < this.sbuf.length) {
            this.text.getChars(r4, r5 + r4, this.sbuf, 0);
            return this.sbuf;
        }
        char[] cArr = new char[r5];
        this.text.getChars(r4, r5 + r4, cArr, 0);
        return cArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() {
        char cCharAt = charAt((this.f73np + this.f74sp) - 1);
        int r1 = this.f74sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            r1--;
        }
        return subString(this.f73np, r1);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final BigDecimal decimalValue() {
        char cCharAt = charAt((this.f73np + this.f74sp) - 1);
        int r1 = this.f74sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            r1--;
        }
        if (r1 > 65535) {
            throw new JSONException("decimal overflow");
        }
        int r0 = this.f73np;
        if (r1 < this.sbuf.length) {
            this.text.getChars(r0, r0 + r1, this.sbuf, 0);
            return new BigDecimal(this.sbuf, 0, r1, MathContext.UNLIMITED);
        }
        char[] cArr = new char[r1];
        this.text.getChars(r0, r0 + r1, cArr, 0);
        return new BigDecimal(cArr, 0, r1, MathContext.UNLIMITED);
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        return scanISO8601DateIfMatch(z, this.len - this.f71bp);
    }

    private boolean scanISO8601DateIfMatch(boolean z, int r36) throws NumberFormatException {
        int r14;
        boolean z2;
        char c;
        char cCharAt;
        char c2;
        char c3;
        char c4;
        int r0;
        int r1;
        int r2;
        int r12;
        char c5;
        char c6;
        char cCharAt2;
        char c7;
        char c8;
        char c9;
        int r02;
        char c10;
        char c11;
        char c12;
        char c13;
        int r13;
        char c14;
        char c15;
        char c16;
        int r03;
        char cCharAt3;
        char cCharAt4;
        char cCharAt5;
        int r8;
        char cCharAt6;
        char cCharAt7;
        char cCharAt8;
        if (r36 < 8) {
            return false;
        }
        char cCharAt9 = charAt(this.f71bp);
        char cCharAt10 = charAt(this.f71bp + 1);
        char cCharAt11 = charAt(this.f71bp + 2);
        int r16 = 3;
        char cCharAt12 = charAt(this.f71bp + 3);
        char cCharAt13 = charAt(this.f71bp + 4);
        int r6 = 5;
        char cCharAt14 = charAt(this.f71bp + 5);
        char cCharAt15 = charAt(this.f71bp + 6);
        char cCharAt16 = charAt(this.f71bp + 7);
        if (!z) {
            if (r36 > 13) {
                char cCharAt17 = charAt((this.f71bp + r36) - 1);
                char cCharAt18 = charAt((this.f71bp + r36) - 2);
                if (cCharAt9 == '/' && cCharAt10 == 'D' && cCharAt11 == 'a' && cCharAt12 == 't' && cCharAt13 == 'e' && cCharAt14 == '(' && cCharAt17 == '/' && cCharAt18 == ')') {
                    int r04 = -1;
                    for (int r15 = 6; r15 < r36; r15++) {
                        char cCharAt19 = charAt(this.f71bp + r15);
                        if (cCharAt19 != '+') {
                            if (cCharAt19 < '0' || cCharAt19 > '9') {
                                break;
                            }
                        } else {
                            r04 = r15;
                        }
                    }
                    if (r04 == -1) {
                        return false;
                    }
                    int r17 = this.f71bp + 6;
                    long j = Long.parseLong(subString(r17, (this.f71bp + r04) - r17));
                    this.calendar = Calendar.getInstance(this.timeZone, this.locale);
                    this.calendar.setTimeInMillis(j);
                    this.token = 5;
                    return true;
                }
            }
            r6 = 5;
        }
        if (r36 == 8 || r36 == 14) {
            r14 = r6;
            z2 = false;
            c = ':';
        } else {
            if (!(r36 == 16 && ((cCharAt8 = charAt(this.f71bp + 10)) == 'T' || cCharAt8 == ' ')) && (r36 != 17 || charAt(this.f71bp + 6) == '-')) {
                if (r36 < 9) {
                    return false;
                }
                char cCharAt20 = charAt(this.f71bp + 8);
                char cCharAt21 = charAt(this.f71bp + 9);
                if ((cCharAt13 == '-' && cCharAt16 == '-') || (cCharAt13 == '/' && cCharAt16 == '/')) {
                    if (cCharAt21 == ' ') {
                        c10 = cCharAt14;
                        c11 = cCharAt12;
                        c12 = cCharAt9;
                        c13 = cCharAt10;
                        c14 = '0';
                        r13 = 9;
                        cCharAt10 = cCharAt20;
                        c16 = cCharAt15;
                        c15 = cCharAt11;
                    } else {
                        c11 = cCharAt12;
                        c12 = cCharAt9;
                        r13 = 10;
                        c14 = cCharAt20;
                        c16 = cCharAt15;
                        c15 = cCharAt11;
                        c10 = cCharAt14;
                        c13 = cCharAt10;
                        cCharAt10 = cCharAt21;
                    }
                } else if (cCharAt13 == '-' && cCharAt15 == '-') {
                    if (cCharAt20 == ' ') {
                        c15 = cCharAt11;
                        c16 = cCharAt14;
                        c12 = cCharAt9;
                        c13 = cCharAt10;
                        c10 = '0';
                        r13 = 8;
                        cCharAt10 = cCharAt16;
                        c11 = cCharAt12;
                        c14 = '0';
                    } else {
                        c15 = cCharAt11;
                        c12 = cCharAt9;
                        c10 = '0';
                        r13 = 9;
                        c16 = cCharAt14;
                        c13 = cCharAt10;
                        cCharAt10 = cCharAt20;
                        c14 = cCharAt16;
                        c11 = cCharAt12;
                    }
                } else if ((cCharAt11 == '.' && cCharAt14 == '.') || (cCharAt11 == '-' && cCharAt14 == '-')) {
                    c13 = cCharAt16;
                    c11 = cCharAt21;
                    c10 = cCharAt12;
                    c14 = cCharAt9;
                    r13 = 10;
                    c16 = cCharAt13;
                    c12 = cCharAt15;
                    c15 = cCharAt20;
                } else if (cCharAt20 == 'T') {
                    c10 = cCharAt13;
                    c16 = cCharAt14;
                    c12 = cCharAt9;
                    c13 = cCharAt10;
                    r13 = 8;
                    cCharAt10 = cCharAt16;
                    c11 = cCharAt12;
                    c14 = cCharAt15;
                    c15 = cCharAt11;
                } else {
                    if (cCharAt13 != 24180 && cCharAt13 != 45380) {
                        return false;
                    }
                    if (cCharAt16 != 26376 && cCharAt16 != 50900) {
                        if (cCharAt15 != 26376 && cCharAt15 != 50900) {
                            return false;
                        }
                        if (cCharAt20 == 26085 || cCharAt20 == 51068) {
                            c15 = cCharAt11;
                            c16 = cCharAt14;
                            c12 = cCharAt9;
                            c13 = cCharAt10;
                            r13 = 10;
                            c10 = '0';
                            cCharAt10 = cCharAt16;
                            c11 = cCharAt12;
                            c14 = '0';
                        } else {
                            if (cCharAt21 != 26085 && cCharAt21 != 51068) {
                                return false;
                            }
                            c15 = cCharAt11;
                            c12 = cCharAt9;
                            r13 = 10;
                            c10 = '0';
                            c16 = cCharAt14;
                            c13 = cCharAt10;
                            cCharAt10 = cCharAt20;
                            c14 = cCharAt16;
                            c11 = cCharAt12;
                        }
                    } else if (cCharAt21 == 26085 || cCharAt21 == 51068) {
                        c10 = cCharAt14;
                        c11 = cCharAt12;
                        c12 = cCharAt9;
                        c13 = cCharAt10;
                        r13 = 10;
                        c14 = '0';
                        cCharAt10 = cCharAt20;
                        c16 = cCharAt15;
                        c15 = cCharAt11;
                    } else {
                        if (charAt(this.f71bp + 10) != 26085 && charAt(this.f71bp + 10) != 51068) {
                            return false;
                        }
                        c11 = cCharAt12;
                        c12 = cCharAt9;
                        r13 = 11;
                        c14 = cCharAt20;
                        c16 = cCharAt15;
                        c15 = cCharAt11;
                        c10 = cCharAt14;
                        c13 = cCharAt10;
                        cCharAt10 = cCharAt21;
                    }
                }
                if (!checkDate(c12, c13, c15, c11, c10, c16, c14, cCharAt10)) {
                    return false;
                }
                setCalendar(c12, c13, c15, c11, c10, c16, c14, cCharAt10);
                char cCharAt22 = charAt(this.f71bp + r13);
                char c17 = 'T';
                if (cCharAt22 == 'T') {
                    if (r36 == 16 && r13 == 8 && charAt(this.f71bp + 15) == 'Z') {
                        char cCharAt23 = charAt(this.f71bp + r13 + 1);
                        char cCharAt24 = charAt(this.f71bp + r13 + 2);
                        char cCharAt25 = charAt(this.f71bp + r13 + 3);
                        char cCharAt26 = charAt(this.f71bp + r13 + 4);
                        char cCharAt27 = charAt(this.f71bp + r13 + 5);
                        char cCharAt28 = charAt(this.f71bp + r13 + 6);
                        if (!checkTime(cCharAt23, cCharAt24, cCharAt25, cCharAt26, cCharAt27, cCharAt28)) {
                            return false;
                        }
                        setTime(cCharAt23, cCharAt24, cCharAt25, cCharAt26, cCharAt27, cCharAt28);
                        this.calendar.set(14, 0);
                        if (this.calendar.getTimeZone().getRawOffset() != 0) {
                            String[] availableIDs = TimeZone.getAvailableIDs(0);
                            if (availableIDs.length > 0) {
                                this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
                            }
                        }
                        this.token = 5;
                        return true;
                    }
                    c17 = 'T';
                }
                if (cCharAt22 != c17 && (cCharAt22 != ' ' || z)) {
                    if (cCharAt22 == '\"' || cCharAt22 == 26 || cCharAt22 == 26085 || cCharAt22 == 51068) {
                        this.calendar.set(11, 0);
                        this.calendar.set(12, 0);
                        this.calendar.set(13, 0);
                        this.calendar.set(14, 0);
                        int r05 = this.f71bp + r13;
                        this.f71bp = r05;
                        this.f72ch = charAt(r05);
                        this.token = 5;
                        return true;
                    }
                    if ((cCharAt22 != '+' && cCharAt22 != '-') || this.len != r13 + 6 || charAt(this.f71bp + r13 + 3) != ':' || charAt(this.f71bp + r13 + 4) != '0' || charAt(this.f71bp + r13 + 5) != '0') {
                        return false;
                    }
                    setTime('0', '0', '0', '0', '0', '0');
                    this.calendar.set(14, 0);
                    setTimeZone(cCharAt22, charAt(this.f71bp + r13 + 1), charAt(this.f71bp + r13 + 2));
                    return true;
                }
                if (r36 < r13 + 9 || charAt(this.f71bp + r13 + 3) != ':' || charAt(this.f71bp + r13 + 6) != ':') {
                    return false;
                }
                char cCharAt29 = charAt(this.f71bp + r13 + 1);
                char cCharAt30 = charAt(this.f71bp + r13 + 2);
                char cCharAt31 = charAt(this.f71bp + r13 + 4);
                char cCharAt32 = charAt(this.f71bp + r13 + 5);
                char cCharAt33 = charAt(this.f71bp + r13 + 7);
                char cCharAt34 = charAt(this.f71bp + r13 + 8);
                if (!checkTime(cCharAt29, cCharAt30, cCharAt31, cCharAt32, cCharAt33, cCharAt34)) {
                    return false;
                }
                setTime(cCharAt29, cCharAt30, cCharAt31, cCharAt32, cCharAt33, cCharAt34);
                int r18 = -1;
                if (charAt(this.f71bp + r13 + 9) == '.') {
                    int r06 = r13 + 11;
                    if (r36 < r06 || (cCharAt5 = charAt(this.f71bp + r13 + 10)) < '0' || cCharAt5 > '9') {
                        return false;
                    }
                    int r19 = cCharAt5 - '0';
                    if (r36 <= r06 || (cCharAt7 = charAt(this.f71bp + r13 + 11)) < '0' || cCharAt7 > '9') {
                        r8 = 1;
                    } else {
                        r19 = (r19 * 10) + (cCharAt7 - '0');
                        r8 = 2;
                    }
                    if (r8 != 2 || (cCharAt6 = charAt(this.f71bp + r13 + 12)) < '0' || cCharAt6 > '9') {
                        r03 = r19;
                        r18 = r8;
                    } else {
                        r03 = (cCharAt6 - '0') + (r19 * 10);
                        r18 = 3;
                    }
                } else {
                    r03 = 0;
                }
                this.calendar.set(14, r03);
                char cCharAt35 = charAt(this.f71bp + r13 + 10 + r18);
                if (cCharAt35 == ' ') {
                    r18++;
                    cCharAt35 = charAt(this.f71bp + r13 + 10 + r18);
                }
                int r62 = r18;
                char c18 = cCharAt35;
                if (c18 == '+' || c18 == '-') {
                    char cCharAt36 = charAt(this.f71bp + r13 + 10 + r62 + 1);
                    if (cCharAt36 < '0' || cCharAt36 > '1' || (cCharAt3 = charAt(this.f71bp + r13 + 10 + r62 + 2)) < '0' || cCharAt3 > '9') {
                        return false;
                    }
                    char cCharAt37 = charAt(this.f71bp + r13 + 10 + r62 + 3);
                    char c19 = '3';
                    if (cCharAt37 == ':') {
                        char cCharAt38 = charAt(this.f71bp + r13 + 10 + r62 + 4);
                        cCharAt4 = charAt(this.f71bp + r13 + 10 + r62 + 5);
                        if (cCharAt38 == '4' && cCharAt4 == '5') {
                            if (cCharAt36 != '1' || (cCharAt3 != '2' && cCharAt3 != '3')) {
                                if (cCharAt36 != '0') {
                                    return false;
                                }
                                if (cCharAt3 != '5' && cCharAt3 != '8') {
                                    return false;
                                }
                            }
                        } else if ((cCharAt38 != '0' && cCharAt38 != '3') || cCharAt4 != '0') {
                            return false;
                        }
                        c19 = cCharAt38;
                        r16 = 6;
                    } else {
                        if (cCharAt37 == '0') {
                            char cCharAt39 = charAt(this.f71bp + r13 + 10 + r62 + 4);
                            if (cCharAt39 != '0' && cCharAt39 != '3') {
                                return false;
                            }
                            c19 = cCharAt39;
                        } else {
                            if (cCharAt37 != '3' || charAt(this.f71bp + r13 + 10 + r62 + 4) != '0') {
                                if (cCharAt37 == '4' && charAt(this.f71bp + r13 + 10 + r62 + 4) == '5') {
                                    cCharAt4 = '5';
                                    r16 = 5;
                                    c19 = '4';
                                } else {
                                    c19 = '0';
                                }
                            }
                            cCharAt4 = '0';
                        }
                        r16 = 5;
                        cCharAt4 = '0';
                    }
                    setTimeZone(c18, cCharAt36, cCharAt3, c19, cCharAt4);
                } else if (c18 == 'Z') {
                    if (this.calendar.getTimeZone().getRawOffset() != 0) {
                        String[] availableIDs2 = TimeZone.getAvailableIDs(0);
                        if (availableIDs2.length > 0) {
                            this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs2[0]));
                        }
                    }
                    r16 = 1;
                } else {
                    r16 = 0;
                }
                int r132 = r13 + 10 + r62 + r16;
                char cCharAt40 = charAt(this.f71bp + r132);
                if (cCharAt40 != 26 && cCharAt40 != '\"') {
                    return false;
                }
                int r07 = this.f71bp + r132;
                this.f71bp = r07;
                this.f72ch = charAt(r07);
                this.token = 5;
                return true;
            }
            z2 = false;
            c = ':';
            r14 = 5;
        }
        if (z) {
            return z2;
        }
        char cCharAt41 = charAt(this.f71bp + 8);
        boolean z3 = cCharAt13 == '-' && cCharAt16 == '-';
        boolean z4 = z3 && r36 == 16;
        boolean z5 = z3 && r36 == 17;
        if (z5 || z4) {
            cCharAt = charAt(this.f71bp + 9);
            c2 = cCharAt14;
            c3 = cCharAt15;
            c4 = cCharAt41;
        } else if (cCharAt13 == '-' && cCharAt15 == '-') {
            c3 = cCharAt14;
            cCharAt = cCharAt16;
            c2 = '0';
            c4 = '0';
        } else {
            c2 = cCharAt13;
            c3 = cCharAt14;
            c4 = cCharAt15;
            cCharAt = cCharAt16;
        }
        if (!checkDate(cCharAt9, cCharAt10, cCharAt11, cCharAt12, c2, c3, c4, cCharAt)) {
            return false;
        }
        setCalendar(cCharAt9, cCharAt10, cCharAt11, cCharAt12, c2, c3, c4, cCharAt);
        if (r36 != 8) {
            char cCharAt42 = charAt(this.f71bp + 9);
            char cCharAt43 = charAt(this.f71bp + 10);
            char cCharAt44 = charAt(this.f71bp + 11);
            char cCharAt45 = charAt(this.f71bp + 12);
            char cCharAt46 = charAt(this.f71bp + 13);
            if ((z5 && cCharAt43 == 'T' && cCharAt46 == c && charAt(this.f71bp + 16) == 'Z') || (z4 && ((cCharAt43 == ' ' || cCharAt43 == 'T') && cCharAt46 == c))) {
                char cCharAt47 = charAt(this.f71bp + 14);
                cCharAt2 = charAt(this.f71bp + 15);
                c6 = cCharAt47;
                c8 = cCharAt44;
                c5 = cCharAt45;
                c7 = '0';
                c9 = '0';
            } else {
                c5 = cCharAt42;
                c6 = cCharAt43;
                cCharAt2 = cCharAt44;
                c7 = cCharAt45;
                c8 = cCharAt41;
                c9 = cCharAt46;
            }
            if (!checkTime(c8, c5, c6, cCharAt2, c7, c9)) {
                return false;
            }
            if (r36 != 17 || z5) {
                r02 = 0;
            } else {
                char cCharAt48 = charAt(this.f71bp + 14);
                char cCharAt49 = charAt(this.f71bp + 15);
                char cCharAt50 = charAt(this.f71bp + 16);
                if (cCharAt48 < '0' || cCharAt48 > '9' || cCharAt49 < '0' || cCharAt49 > '9' || cCharAt50 < '0' || cCharAt50 > '9') {
                    return false;
                }
                r02 = ((cCharAt48 - '0') * 100) + ((cCharAt49 - '0') * 10) + (cCharAt50 - '0');
            }
            r1 = (c9 - '0') + ((c7 - '0') * 10);
            r12 = ((c8 - '0') * 10) + (c5 - '0');
            r2 = r02;
            r0 = ((c6 - '0') * 10) + (cCharAt2 - '0');
        } else {
            r0 = 0;
            r1 = 0;
            r2 = 0;
            r12 = 0;
        }
        this.calendar.set(11, r12);
        this.calendar.set(12, r0);
        this.calendar.set(13, r1);
        this.calendar.set(14, r2);
        this.token = r14;
        return true;
    }

    protected void setTime(char c, char c2, char c3, char c4, char c5, char c6) {
        this.calendar.set(11, ((c - '0') * 10) + (c2 - '0'));
        this.calendar.set(12, ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(13, ((c5 - '0') * 10) + (c6 - '0'));
    }

    protected void setTimeZone(char c, char c2, char c3) {
        setTimeZone(c, c2, c3, '0', '0');
    }

    protected void setTimeZone(char c, char c2, char c3, char c4, char c5) {
        int r2 = ((((c2 - '0') * 10) + (c3 - '0')) * 3600 * 1000) + ((((c4 - '0') * 10) + (c5 - '0')) * 60 * 1000);
        if (c == '-') {
            r2 = -r2;
        }
        if (this.calendar.getTimeZone().getRawOffset() != r2) {
            this.calendar.setTimeZone(new SimpleTimeZone(r2, Integer.toString(r2)));
        }
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        this.calendar = Calendar.getInstance(this.timeZone, this.locale);
        this.calendar.set(1, ((c - '0') * 1000) + ((c2 - '0') * 100) + ((c3 - '0') * 10) + (c4 - '0'));
        this.calendar.set(2, (((c5 - '0') * 10) + (c6 - '0')) - 1);
        this.calendar.set(5, ((c7 - '0') * 10) + (c8 - '0'));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.f71bp != this.len) {
            return this.f72ch == 26 && this.f71bp + 1 >= this.len;
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0067, code lost:
    
        if (r15 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0069, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x006b, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006c, code lost:
    
        if (r3 >= 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006e, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0070, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0071, code lost:
    
        if (r6 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0073, code lost:
    
        if (r15 == '\"') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0075, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0077, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0078, code lost:
    
        r15 = r11 + 1;
        r4 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x007e, code lost:
    
        r11 = r15;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
    
        if (r15 == ',') goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0086, code lost:
    
        if (r15 != '}') goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x008d, code lost:
    
        if (isWhitespace(r15) == false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008f, code lost:
    
        r15 = r11 + 1;
        r4 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0096, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0098, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0099, code lost:
    
        r11 = r11 - 1;
        r14.f71bp = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x009e, code lost:
    
        if (r15 != ',') goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a0, code lost:
    
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
        r14.f72ch = charAt(r15);
        r14.matchStat = 3;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00b0, code lost:
    
        if (r7 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00b3, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00b4, code lost:
    
        if (r15 != '}') goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b6, code lost:
    
        r14.f71bp = r11;
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
        r15 = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00c1, code lost:
    
        if (r15 != ',') goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00c3, code lost:
    
        r14.token = 16;
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
        r14.f72ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00d3, code lost:
    
        if (r15 != ']') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00d5, code lost:
    
        r14.token = 15;
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
        r14.f72ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e5, code lost:
    
        if (r15 != '}') goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e7, code lost:
    
        r14.token = 13;
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
        r14.f72ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x00f9, code lost:
    
        if (r15 != 26) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00fb, code lost:
    
        r14.token = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00ff, code lost:
    
        r14.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0107, code lost:
    
        if (isWhitespace(r15) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0109, code lost:
    
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
        r15 = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0113, code lost:
    
        r14.f71bp = r1;
        r14.f72ch = r2;
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0119, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x011a, code lost:
    
        if (r7 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x011d, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x007e, code lost:
    
        r11 = r15;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return r3;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanFieldInt(char[] r15) {
        /*
            Method dump skipped, instructions count: 289
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldInt(char[]):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String scanFieldString(char[] cArr) {
        this.matchStat = 0;
        int r1 = this.f71bp;
        char c = this.f72ch;
        while (!charArrayCompare(this.text, this.f71bp, cArr)) {
            if (isWhitespace(this.f72ch)) {
                next();
                while (isWhitespace(this.f72ch)) {
                    next();
                }
            } else {
                this.matchStat = -2;
                return stringDefaultValue();
            }
        }
        int length = this.f71bp + cArr.length;
        int r4 = length + 1;
        char cCharAt = charAt(length);
        int r7 = 0;
        if (cCharAt != '\"') {
            while (isWhitespace(cCharAt)) {
                r7++;
                int r3 = r4 + 1;
                char cCharAt2 = charAt(r4);
                r4 = r3;
                cCharAt = cCharAt2;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        int r32 = indexOf('\"', r4);
        if (r32 == -1) {
            throw new JSONException("unclosed str");
        }
        String strSubString = subString(r4, r32 - r4);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int r9 = 0;
                for (int r42 = r32 - 1; r42 >= 0 && charAt(r42) == '\\'; r42--) {
                    r9++;
                }
                if (r9 % 2 == 0) {
                    break;
                }
                r32 = indexOf('\"', r32 + 1);
            }
            int length2 = r32 - (((this.f71bp + cArr.length) + 1) + r7);
            strSubString = readString(sub_chars(this.f71bp + cArr.length + 1 + r7, length2), length2);
        }
        if ((this.features & Feature.TrimStringFieldValue.mask) != 0) {
            strSubString = strSubString.trim();
        }
        char cCharAt3 = charAt(r32 + 1);
        while (cCharAt3 != ',' && cCharAt3 != '}') {
            if (isWhitespace(cCharAt3)) {
                r32++;
                cCharAt3 = charAt(r32 + 1);
            } else {
                this.matchStat = -1;
                return stringDefaultValue();
            }
        }
        this.f71bp = r32 + 1;
        this.f72ch = cCharAt3;
        if (cCharAt3 == ',') {
            int r13 = this.f71bp + 1;
            this.f71bp = r13;
            this.f72ch = charAt(r13);
            this.matchStat = 3;
            return strSubString;
        }
        int r132 = this.f71bp + 1;
        this.f71bp = r132;
        char cCharAt4 = charAt(r132);
        if (cCharAt4 == ',') {
            this.token = 16;
            int r133 = this.f71bp + 1;
            this.f71bp = r133;
            this.f72ch = charAt(r133);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int r134 = this.f71bp + 1;
            this.f71bp = r134;
            this.f72ch = charAt(r134);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int r135 = this.f71bp + 1;
            this.f71bp = r135;
            this.f72ch = charAt(r135);
        } else if (cCharAt4 == 26) {
            this.token = 20;
        } else {
            this.f71bp = r1;
            this.f72ch = c;
            this.matchStat = -1;
            return stringDefaultValue();
        }
        this.matchStat = 4;
        return strSubString;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanFieldDate(char[] cArr) {
        char cCharAt;
        long j;
        char cCharAt2;
        Date date;
        int r5;
        boolean z = false;
        this.matchStat = 0;
        int r3 = this.f71bp;
        char c = this.f72ch;
        if (!charArrayCompare(this.text, this.f71bp, cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = this.f71bp + cArr.length;
        int r1 = length + 1;
        char cCharAt3 = charAt(length);
        if (cCharAt3 == '\"') {
            int r52 = indexOf('\"', r1);
            if (r52 == -1) {
                throw new JSONException("unclosed str");
            }
            this.f71bp = r1;
            if (scanISO8601DateIfMatch(false, r52 - r1)) {
                date = this.calendar.getTime();
                cCharAt2 = charAt(r52 + 1);
                this.f71bp = r3;
                while (cCharAt2 != ',' && cCharAt2 != '}') {
                    if (isWhitespace(cCharAt2)) {
                        r52++;
                        cCharAt2 = charAt(r52 + 1);
                    } else {
                        this.matchStat = -1;
                        return null;
                    }
                }
                this.f71bp = r52 + 1;
                this.f72ch = cCharAt2;
            } else {
                this.f71bp = r3;
                this.matchStat = -1;
                return null;
            }
        } else {
            char c2 = '9';
            char c3 = '0';
            if (cCharAt3 != '-' && (cCharAt3 < '0' || cCharAt3 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt3 == '-') {
                cCharAt3 = charAt(r1);
                r1++;
                z = true;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                cCharAt = cCharAt3;
                j = 0;
            } else {
                j = cCharAt3 - '0';
                while (true) {
                    r5 = r1 + 1;
                    cCharAt = charAt(r1);
                    if (cCharAt < c3 || cCharAt > c2) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    r1 = r5;
                    c2 = '9';
                    c3 = '0';
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.f71bp = r5 - 1;
                }
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            cCharAt2 = cCharAt;
            date = new Date(j);
        }
        if (cCharAt2 == ',') {
            int r2 = this.f71bp + 1;
            this.f71bp = r2;
            this.f72ch = charAt(r2);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        int r22 = this.f71bp + 1;
        this.f71bp = r22;
        char cCharAt4 = charAt(r22);
        if (cCharAt4 == ',') {
            this.token = 16;
            int r23 = this.f71bp + 1;
            this.f71bp = r23;
            this.f72ch = charAt(r23);
        } else if (cCharAt4 == ']') {
            this.token = 15;
            int r24 = this.f71bp + 1;
            this.f71bp = r24;
            this.f72ch = charAt(r24);
        } else if (cCharAt4 == '}') {
            this.token = 13;
            int r25 = this.f71bp + 1;
            this.f71bp = r25;
            this.f72ch = charAt(r25);
        } else if (cCharAt4 == 26) {
            this.token = 20;
        } else {
            this.f71bp = r3;
            this.f72ch = c;
            this.matchStat = -1;
            return null;
        }
        this.matchStat = 4;
        return date;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        this.matchStat = 0;
        while (!charArrayCompare(this.text, this.f71bp, cArr)) {
            if (isWhitespace(this.f72ch)) {
                next();
                while (isWhitespace(this.f72ch)) {
                    next();
                }
            } else {
                this.matchStat = -2;
                return 0L;
            }
        }
        int length = this.f71bp + cArr.length;
        int r11 = length + 1;
        char cCharAt = charAt(length);
        if (cCharAt != '\"') {
            while (isWhitespace(cCharAt)) {
                cCharAt = charAt(r11);
                r11++;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
        }
        long j = -3750763034362895579L;
        while (true) {
            int r0 = r11 + 1;
            char cCharAt2 = charAt(r11);
            if (cCharAt2 == '\"') {
                this.f71bp = r0;
                char cCharAt3 = charAt(this.f71bp);
                this.f72ch = cCharAt3;
                while (cCharAt3 != ',') {
                    if (cCharAt3 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            this.token = 16;
                            int r112 = this.f71bp + 1;
                            this.f71bp = r112;
                            this.f72ch = charAt(r112);
                        } else if (current == ']') {
                            this.token = 15;
                            int r113 = this.f71bp + 1;
                            this.f71bp = r113;
                            this.f72ch = charAt(r113);
                        } else if (current == '}') {
                            this.token = 13;
                            int r114 = this.f71bp + 1;
                            this.f71bp = r114;
                            this.f72ch = charAt(r114);
                        } else if (current == 26) {
                            this.token = 20;
                        } else {
                            this.matchStat = -1;
                            return 0L;
                        }
                        this.matchStat = 4;
                        return j;
                    }
                    if (isWhitespace(cCharAt3)) {
                        int r115 = this.f71bp + 1;
                        this.f71bp = r115;
                        cCharAt3 = charAt(r115);
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                }
                int r116 = this.f71bp + 1;
                this.f71bp = r116;
                this.f72ch = charAt(r116);
                this.matchStat = 3;
                return j;
            }
            if (r0 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ cCharAt2) * 1099511628211L;
            r11 = r0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00dd, code lost:
    
        if (r1 != ']') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e3, code lost:
    
        if (r3.size() != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e5, code lost:
    
        r1 = r9 + 1;
        r2 = charAt(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ef, code lost:
    
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f2, code lost:
    
        return null;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r18, java.lang.Class<?> r19) {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldLong(char[] cArr) {
        boolean z;
        int r5;
        char cCharAt;
        this.matchStat = 0;
        int r3 = this.f71bp;
        char c = this.f72ch;
        if (!charArrayCompare(this.text, this.f71bp, cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = this.f71bp + cArr.length;
        int r1 = length + 1;
        char cCharAt2 = charAt(length);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            cCharAt2 = charAt(r1);
            r1++;
        }
        if (cCharAt2 == '-') {
            z = true;
            cCharAt2 = charAt(r1);
            r1++;
        } else {
            z = false;
        }
        if (cCharAt2 >= '0') {
            char c2 = '9';
            if (cCharAt2 <= '9') {
                long j = cCharAt2 - '0';
                while (true) {
                    r5 = r1 + 1;
                    cCharAt = charAt(r1);
                    if (cCharAt < '0' || cCharAt > c2) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    r1 = r5;
                    c2 = '9';
                }
                if (cCharAt == '.') {
                    this.matchStat = -1;
                    return 0L;
                }
                if (z2) {
                    if (cCharAt != '\"') {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int r12 = r5 + 1;
                    char cCharAt3 = charAt(r5);
                    r5 = r12;
                    cCharAt = cCharAt3;
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.f71bp = r5 - 1;
                }
                if (!(j >= 0 || (j == Long.MIN_VALUE && z))) {
                    this.f71bp = r3;
                    this.f72ch = c;
                    this.matchStat = -1;
                    return 0L;
                }
                while (cCharAt != ',') {
                    if (cCharAt == '}') {
                        int r13 = this.f71bp + 1;
                        this.f71bp = r13;
                        char cCharAt4 = charAt(r13);
                        while (true) {
                            if (cCharAt4 == ',') {
                                this.token = 16;
                                int r14 = this.f71bp + 1;
                                this.f71bp = r14;
                                this.f72ch = charAt(r14);
                                break;
                            }
                            if (cCharAt4 == ']') {
                                this.token = 15;
                                int r15 = this.f71bp + 1;
                                this.f71bp = r15;
                                this.f72ch = charAt(r15);
                                break;
                            }
                            if (cCharAt4 == '}') {
                                this.token = 13;
                                int r16 = this.f71bp + 1;
                                this.f71bp = r16;
                                this.f72ch = charAt(r16);
                                break;
                            }
                            if (cCharAt4 == 26) {
                                this.token = 20;
                                break;
                            }
                            if (isWhitespace(cCharAt4)) {
                                int r17 = this.f71bp + 1;
                                this.f71bp = r17;
                                cCharAt4 = charAt(r17);
                            } else {
                                this.f71bp = r3;
                                this.f72ch = c;
                                this.matchStat = -1;
                                return 0L;
                            }
                        }
                        this.matchStat = 4;
                        return z ? -j : j;
                    }
                    if (isWhitespace(cCharAt)) {
                        this.f71bp = r5;
                        int r18 = r5 + 1;
                        char cCharAt5 = charAt(r5);
                        r5 = r18;
                        cCharAt = cCharAt5;
                    } else {
                        this.matchStat = -1;
                        return 0L;
                    }
                }
                int r19 = this.f71bp + 1;
                this.f71bp = r19;
                this.f72ch = charAt(r19);
                this.matchStat = 3;
                this.token = 16;
                return z ? -j : j;
            }
        }
        this.f71bp = r3;
        this.f72ch = c;
        this.matchStat = -1;
        return 0L;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x00fd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x010e  */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanFieldBoolean(char[] r11) {
        /*
            Method dump skipped, instructions count: 398
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldBoolean(char[]):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
    
        if (r4 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0084, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0086, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0087, code lost:
    
        if (r7 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0089, code lost:
    
        if (r4 == '\"') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x008b, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x008d, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008e, code lost:
    
        r4 = charAt(r13);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0095, code lost:
    
        if (r3 >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0097, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0099, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009c, code lost:
    
        if (r4 != r17) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x009e, code lost:
    
        r16.f71bp = r13;
        r16.f72ch = charAt(r16.f71bp);
        r16.matchStat = 3;
        r16.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ad, code lost:
    
        if (r8 == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b0, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00b5, code lost:
    
        if (isWhitespace(r4) == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b7, code lost:
    
        r4 = charAt(r13);
        r13 = r13 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00bf, code lost:
    
        r16.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c1, code lost:
    
        if (r8 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00c4, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return r3;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int scanInt(char r17) {
        /*
            Method dump skipped, instructions count: 310
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanInt(char):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00c4 -> B:52:0x00b4). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDouble(char):double");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c) {
        int r2;
        char cCharAt;
        boolean z = false;
        this.matchStat = 0;
        int r22 = this.f71bp;
        int r3 = r22 + 1;
        char cCharAt2 = charAt(r22);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            int r23 = r3 + 1;
            char cCharAt3 = charAt(r3);
            r3 = r23;
            cCharAt2 = cCharAt3;
        }
        boolean z3 = cCharAt2 == '-';
        if (z3) {
            int r24 = r3 + 1;
            char cCharAt4 = charAt(r3);
            r3 = r24;
            cCharAt2 = cCharAt4;
        }
        char c2 = '0';
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j = cCharAt2 - '0';
            while (true) {
                r2 = r3 + 1;
                cCharAt = charAt(r3);
                if (cCharAt < c2 || cCharAt > '9') {
                    break;
                }
                j = (j * 10) + (cCharAt - '0');
                r3 = r2;
                c2 = '0';
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (z2) {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(r2);
                r2++;
            }
            if (j >= 0 || (j == Long.MIN_VALUE && z3)) {
                z = true;
            }
            if (!z) {
                this.matchStat = -1;
                return 0L;
            }
            while (cCharAt != c) {
                if (isWhitespace(cCharAt)) {
                    cCharAt = charAt(r2);
                    r2++;
                } else {
                    this.matchStat = -1;
                    return j;
                }
            }
            this.f71bp = r2;
            this.f72ch = charAt(this.f71bp);
            this.matchStat = 3;
            this.token = 16;
            return z3 ? -j : j;
        }
        if (cCharAt2 == 'n') {
            int r1 = r3 + 1;
            if (charAt(r3) == 'u') {
                int r25 = r1 + 1;
                if (charAt(r1) == 'l') {
                    int r12 = r25 + 1;
                    if (charAt(r25) == 'l') {
                        this.matchStat = 5;
                        int r32 = r12 + 1;
                        char cCharAt5 = charAt(r12);
                        if (z2 && cCharAt5 == '\"') {
                            int r13 = r32 + 1;
                            char cCharAt6 = charAt(r32);
                            r32 = r13;
                            cCharAt5 = cCharAt6;
                        }
                        while (cCharAt5 != ',') {
                            if (cCharAt5 == ']') {
                                this.f71bp = r32;
                                this.f72ch = charAt(this.f71bp);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0L;
                            }
                            if (isWhitespace(cCharAt5)) {
                                int r14 = r32 + 1;
                                char cCharAt7 = charAt(r32);
                                r32 = r14;
                                cCharAt5 = cCharAt7;
                            } else {
                                this.matchStat = -1;
                                return 0L;
                            }
                        }
                        this.f71bp = r32;
                        this.f72ch = charAt(this.f71bp);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0L;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public Date scanDate(char c) {
        char cCharAt;
        long j;
        Date date;
        int r4;
        boolean z = false;
        this.matchStat = 0;
        int r2 = this.f71bp;
        char c2 = this.f72ch;
        int r42 = this.f71bp;
        int r5 = r42 + 1;
        char cCharAt2 = charAt(r42);
        if (cCharAt2 == '\"') {
            int r43 = indexOf('\"', r5);
            if (r43 == -1) {
                throw new JSONException("unclosed str");
            }
            this.f71bp = r5;
            if (scanISO8601DateIfMatch(false, r43 - r5)) {
                date = this.calendar.getTime();
                cCharAt = charAt(r43 + 1);
                this.f71bp = r2;
                while (cCharAt != ',' && cCharAt != ']') {
                    if (isWhitespace(cCharAt)) {
                        r43++;
                        cCharAt = charAt(r43 + 1);
                    } else {
                        this.f71bp = r2;
                        this.f72ch = c2;
                        this.matchStat = -1;
                        return null;
                    }
                }
                this.f71bp = r43 + 1;
                this.f72ch = cCharAt;
            } else {
                this.f71bp = r2;
                this.f72ch = c2;
                this.matchStat = -1;
                return null;
            }
        } else {
            char c3 = '9';
            char c4 = '0';
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                if (cCharAt2 == 'n') {
                    int r1 = r5 + 1;
                    if (charAt(r5) == 'u') {
                        int r44 = r1 + 1;
                        if (charAt(r1) == 'l') {
                            int r12 = r44 + 1;
                            if (charAt(r44) == 'l') {
                                cCharAt = charAt(r12);
                                this.f71bp = r12;
                                date = null;
                            }
                        }
                    }
                }
                this.f71bp = r2;
                this.f72ch = c2;
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(r5);
                r5++;
                z = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                cCharAt = cCharAt2;
                j = 0;
            } else {
                j = cCharAt2 - '0';
                while (true) {
                    r4 = r5 + 1;
                    cCharAt = charAt(r5);
                    if (cCharAt < c4 || cCharAt > c3) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    r5 = r4;
                    c3 = '9';
                    c4 = '0';
                }
                if (cCharAt == ',' || cCharAt == ']') {
                    this.f71bp = r4 - 1;
                }
            }
            if (j < 0) {
                this.f71bp = r2;
                this.f72ch = c2;
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new Date(j);
        }
        if (cCharAt == ',') {
            int r22 = this.f71bp + 1;
            this.f71bp = r22;
            this.f72ch = charAt(r22);
            this.matchStat = 3;
            return date;
        }
        int r45 = this.f71bp + 1;
        this.f71bp = r45;
        char cCharAt3 = charAt(r45);
        if (cCharAt3 == ',') {
            this.token = 16;
            int r23 = this.f71bp + 1;
            this.f71bp = r23;
            this.f72ch = charAt(r23);
        } else if (cCharAt3 == ']') {
            this.token = 15;
            int r24 = this.f71bp + 1;
            this.f71bp = r24;
            this.f72ch = charAt(r24);
        } else if (cCharAt3 == '}') {
            this.token = 13;
            int r25 = this.f71bp + 1;
            this.f71bp = r25;
            this.f72ch = charAt(r25);
        } else if (cCharAt3 == 26) {
            this.f72ch = JSONLexer.EOI;
            this.token = 20;
        } else {
            this.f71bp = r2;
            this.f72ch = c2;
            this.matchStat = -1;
            return null;
        }
        this.matchStat = 4;
        return date;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void arrayCopy(int r1, char[] cArr, int r3, int r4) {
        this.text.getChars(r1, r4 + r1, cArr, r3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String info() {
        StringBuilder sb = new StringBuilder();
        int r3 = 0;
        int r4 = 1;
        int r5 = 1;
        while (r3 < this.f71bp) {
            if (this.text.charAt(r3) == '\n') {
                r4++;
                r5 = 1;
            }
            r3++;
            r5++;
        }
        sb.append("pos ");
        sb.append(this.f71bp);
        sb.append(", line ");
        sb.append(r4);
        sb.append(", column ");
        sb.append(r5);
        if (this.text.length() < 65535) {
            sb.append(this.text);
        } else {
            sb.append(this.text.substring(0, 65535));
        }
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public String[] scanFieldStringArray(char[] cArr, int r10, SymbolTable symbolTable) {
        int r5;
        char cCharAt;
        int r0 = this.f71bp;
        char c = this.f72ch;
        while (isWhitespace(this.f72ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.f71bp + cArr.length;
            int r6 = length + 1;
            char cCharAt2 = this.text.charAt(length);
            while (isWhitespace(cCharAt2)) {
                cCharAt2 = this.text.charAt(r6);
                r6++;
            }
            if (cCharAt2 == ':') {
                r5 = r6 + 1;
                cCharAt = this.text.charAt(r6);
                while (isWhitespace(cCharAt)) {
                    cCharAt = this.text.charAt(r5);
                    r5++;
                }
            } else {
                this.matchStat = -1;
                return null;
            }
        } else {
            r5 = this.f71bp + 1;
            cCharAt = this.f72ch;
        }
        if (cCharAt == '[') {
            this.f71bp = r5;
            this.f72ch = this.text.charAt(this.f71bp);
            String[] strArr = r10 >= 0 ? new String[r10] : new String[4];
            int r102 = 0;
            while (true) {
                if (isWhitespace(this.f72ch)) {
                    next();
                } else {
                    if (this.f72ch != '\"') {
                        this.f71bp = r0;
                        this.f72ch = c;
                        this.matchStat = -1;
                        return null;
                    }
                    String strScanSymbol = scanSymbol(symbolTable, '\"');
                    if (r102 == strArr.length) {
                        String[] strArr2 = new String[strArr.length + (strArr.length >> 1) + 1];
                        System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                        strArr = strArr2;
                    }
                    int r62 = r102 + 1;
                    strArr[r102] = strScanSymbol;
                    while (isWhitespace(this.f72ch)) {
                        next();
                    }
                    if (this.f72ch == ',') {
                        next();
                        r102 = r62;
                    } else {
                        if (strArr.length != r62) {
                            String[] strArr3 = new String[r62];
                            System.arraycopy(strArr, 0, strArr3, 0, r62);
                            strArr = strArr3;
                        }
                        while (isWhitespace(this.f72ch)) {
                            next();
                        }
                        if (this.f72ch == ']') {
                            next();
                            return strArr;
                        }
                        this.f71bp = r0;
                        this.f72ch = c;
                        this.matchStat = -1;
                        return null;
                    }
                }
            }
        } else {
            if (cCharAt == 'n' && this.text.startsWith("ull", this.f71bp + 1)) {
                this.f71bp += 4;
                this.f72ch = this.text.charAt(this.f71bp);
                return null;
            }
            this.matchStat = -1;
            return null;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean matchField2(char[] cArr) {
        while (isWhitespace(this.f72ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.f71bp + cArr.length;
        int r3 = length + 1;
        char cCharAt = this.text.charAt(length);
        while (isWhitespace(cCharAt)) {
            cCharAt = this.text.charAt(r3);
            r3++;
        }
        if (cCharAt == ':') {
            this.f71bp = r3;
            this.f72ch = charAt(this.f71bp);
            return true;
        }
        this.matchStat = -2;
        return false;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject() {
        skipObject(false);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject(boolean z) {
        int r7 = this.f71bp;
        boolean z2 = false;
        int r2 = 0;
        while (r7 < this.text.length()) {
            char cCharAt = this.text.charAt(r7);
            if (cCharAt == '\\') {
                if (r7 >= this.len - 1) {
                    this.f72ch = cCharAt;
                    this.f71bp = r7;
                    throw new JSONException("illegal str, " + info());
                }
                r7++;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z2 && r2 - 1 == -1) {
                    this.f71bp = r7 + 1;
                    int r72 = this.f71bp;
                    int length = this.text.length();
                    char cCharAt2 = JSONLexer.EOI;
                    if (r72 == length) {
                        this.f72ch = JSONLexer.EOI;
                        this.token = 20;
                        return;
                    }
                    this.f72ch = this.text.charAt(this.f71bp);
                    if (this.f72ch == ',') {
                        this.token = 16;
                        int r73 = this.f71bp + 1;
                        this.f71bp = r73;
                        if (r73 < this.text.length()) {
                            cCharAt2 = this.text.charAt(r73);
                        }
                        this.f72ch = cCharAt2;
                        return;
                    }
                    if (this.f72ch == '}') {
                        this.token = 13;
                        next();
                        return;
                    } else if (this.f72ch == ']') {
                        this.token = 15;
                        next();
                        return;
                    } else {
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z2) {
                r2++;
            }
            r7++;
        }
        for (int r0 = 0; r0 < this.f71bp; r0++) {
            if (r0 < this.text.length() && this.text.charAt(r0) == ' ') {
                r7++;
            }
        }
        if (r7 != this.text.length()) {
            return;
        }
        throw new JSONException("illegal str, " + info());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipArray() {
        skipArray(false);
    }

    public final void skipArray(boolean z) {
        int r0 = this.f71bp;
        boolean z2 = false;
        int r2 = 0;
        while (r0 < this.text.length()) {
            char cCharAt = this.text.charAt(r0);
            if (cCharAt == '\\') {
                if (r0 >= this.len - 1) {
                    this.f72ch = cCharAt;
                    this.f71bp = r0;
                    throw new JSONException("illegal str, " + info());
                }
                r0++;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (cCharAt != '[') {
                char cCharAt2 = JSONLexer.EOI;
                if (cCharAt == '{' && z) {
                    int r3 = this.f71bp + 1;
                    this.f71bp = r3;
                    if (r3 < this.text.length()) {
                        cCharAt2 = this.text.charAt(r3);
                    }
                    this.f72ch = cCharAt2;
                    skipObject(z);
                } else if (cCharAt == ']' && !z2 && r2 - 1 == -1) {
                    this.f71bp = r0 + 1;
                    if (this.f71bp == this.text.length()) {
                        this.f72ch = JSONLexer.EOI;
                        this.token = 20;
                        return;
                    } else {
                        this.f72ch = this.text.charAt(this.f71bp);
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z2) {
                r2++;
            }
            r0++;
        }
        if (r0 != this.text.length()) {
            return;
        }
        throw new JSONException("illegal str, " + info());
    }

    public final void skipString() {
        if (this.f72ch == '\"') {
            int r0 = this.f71bp;
            while (true) {
                r0++;
                if (r0 < this.text.length()) {
                    char cCharAt = this.text.charAt(r0);
                    if (cCharAt == '\\') {
                        if (r0 < this.len - 1) {
                            r0++;
                        }
                    } else if (cCharAt == '\"') {
                        String str = this.text;
                        int r02 = r0 + 1;
                        this.f71bp = r02;
                        this.f72ch = str.charAt(r02);
                        return;
                    }
                } else {
                    throw new JSONException("unclosed str");
                }
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0093, code lost:
    
        if (r3 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x009b, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illegal json.");
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean seekArrayToItem(int r11) {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.seekArrayToItem(int):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public int seekObjectToField(long j, boolean z) {
        int r2 = -1;
        if (this.token == 20) {
            return -1;
        }
        if (this.token != 13) {
            int r4 = 15;
            if (this.token != 15) {
                int r5 = 16;
                if (this.token != 12 && this.token != 16) {
                    throw new UnsupportedOperationException(JSONToken.name(this.token));
                }
                while (this.f72ch != '}') {
                    if (this.f72ch == 26) {
                        return r2;
                    }
                    if (this.f72ch != '\"') {
                        skipWhitespace();
                    }
                    if (this.f72ch == '\"') {
                        long j2 = -3750763034362895579L;
                        int r1 = this.f71bp + 1;
                        while (true) {
                            if (r1 >= this.text.length()) {
                                break;
                            }
                            char cCharAt = this.text.charAt(r1);
                            if (cCharAt == '\\') {
                                r1++;
                                if (r1 == this.text.length()) {
                                    throw new JSONException("unclosed str, " + info());
                                }
                                cCharAt = this.text.charAt(r1);
                            }
                            if (cCharAt == '\"') {
                                this.f71bp = r1 + 1;
                                this.f72ch = this.f71bp >= this.text.length() ? (char) 26 : this.text.charAt(this.f71bp);
                            } else {
                                j2 = (j2 ^ cCharAt) * 1099511628211L;
                                r1++;
                            }
                        }
                        if (j2 == j) {
                            if (this.f72ch != ':') {
                                skipWhitespace();
                            }
                            if (this.f72ch != ':') {
                                return 3;
                            }
                            int r12 = this.f71bp + 1;
                            this.f71bp = r12;
                            this.f72ch = r12 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(r12);
                            if (this.f72ch == ',') {
                                int r13 = this.f71bp + 1;
                                this.f71bp = r13;
                                this.f72ch = r13 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(r13);
                                this.token = r5;
                                return 3;
                            }
                            if (this.f72ch == ']') {
                                int r14 = this.f71bp + 1;
                                this.f71bp = r14;
                                this.f72ch = r14 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(r14);
                                this.token = r4;
                                return 3;
                            }
                            if (this.f72ch == '}') {
                                int r15 = this.f71bp + 1;
                                this.f71bp = r15;
                                this.f72ch = r15 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(r15);
                                this.token = 13;
                                return 3;
                            }
                            if (this.f72ch >= '0' && this.f72ch <= '9') {
                                this.f74sp = 0;
                                this.pos = this.f71bp;
                                scanNumber();
                                return 3;
                            }
                            nextToken(2);
                            return 3;
                        }
                        if (this.f72ch != ':') {
                            skipWhitespace();
                        }
                        if (this.f72ch == ':') {
                            int r16 = this.f71bp + 1;
                            this.f71bp = r16;
                            this.f72ch = r16 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(r16);
                            if (this.f72ch != '\"' && this.f72ch != '\'' && this.f72ch != '{' && this.f72ch != '[' && this.f72ch != '0' && this.f72ch != '1' && this.f72ch != '2' && this.f72ch != '3' && this.f72ch != '4' && this.f72ch != '5' && this.f72ch != '6' && this.f72ch != '7' && this.f72ch != '8' && this.f72ch != '9' && this.f72ch != '+' && this.f72ch != '-') {
                                skipWhitespace();
                            }
                            if (this.f72ch == '-' || this.f72ch == '+' || (this.f72ch >= '0' && this.f72ch <= '9')) {
                                next();
                                while (this.f72ch >= '0' && this.f72ch <= '9') {
                                    next();
                                }
                                if (this.f72ch == '.') {
                                    next();
                                    while (this.f72ch >= '0' && this.f72ch <= '9') {
                                        next();
                                    }
                                }
                                if (this.f72ch == 'E' || this.f72ch == 'e') {
                                    next();
                                    if (this.f72ch == '-' || this.f72ch == '+') {
                                        next();
                                    }
                                    while (this.f72ch >= '0' && this.f72ch <= '9') {
                                        next();
                                    }
                                }
                                if (this.f72ch != ',') {
                                    skipWhitespace();
                                }
                                if (this.f72ch == ',') {
                                    next();
                                }
                            } else if (this.f72ch == '\"') {
                                skipString();
                                if (this.f72ch != ',' && this.f72ch != '}') {
                                    skipWhitespace();
                                }
                                if (this.f72ch == ',') {
                                    next();
                                }
                            } else if (this.f72ch == 't') {
                                next();
                                if (this.f72ch == 'r') {
                                    next();
                                    if (this.f72ch == 'u') {
                                        next();
                                        if (this.f72ch == 'e') {
                                            next();
                                        }
                                    }
                                }
                                if (this.f72ch != ',' && this.f72ch != '}') {
                                    skipWhitespace();
                                }
                                if (this.f72ch == ',') {
                                    next();
                                }
                            } else if (this.f72ch == 'n') {
                                next();
                                if (this.f72ch == 'u') {
                                    next();
                                    if (this.f72ch == 'l') {
                                        next();
                                        if (this.f72ch == 'l') {
                                            next();
                                        }
                                    }
                                }
                                if (this.f72ch != ',' && this.f72ch != '}') {
                                    skipWhitespace();
                                }
                                if (this.f72ch == ',') {
                                    next();
                                }
                            } else if (this.f72ch == 'f') {
                                next();
                                if (this.f72ch == 'a') {
                                    next();
                                    if (this.f72ch == 'l') {
                                        next();
                                        if (this.f72ch == 's') {
                                            next();
                                            if (this.f72ch == 'e') {
                                                next();
                                            }
                                        }
                                    }
                                }
                                if (this.f72ch != ',' && this.f72ch != '}') {
                                    skipWhitespace();
                                }
                                if (this.f72ch == ',') {
                                    next();
                                }
                            } else if (this.f72ch == '{') {
                                int r17 = this.f71bp + 1;
                                this.f71bp = r17;
                                this.f72ch = r17 >= this.text.length() ? JSONLexer.EOI : this.text.charAt(r17);
                                if (z) {
                                    this.token = 12;
                                    return 1;
                                }
                                skipObject(false);
                                if (this.token == 13) {
                                    return -1;
                                }
                            } else if (this.f72ch == '[') {
                                next();
                                if (z) {
                                    this.token = 14;
                                    return 2;
                                }
                                skipArray(false);
                                if (this.token == 13) {
                                    return -1;
                                }
                            } else {
                                throw new UnsupportedOperationException();
                            }
                            r2 = -1;
                            r4 = 15;
                            r5 = 16;
                        } else {
                            throw new JSONException("illegal json, " + info());
                        }
                    } else {
                        throw new UnsupportedOperationException();
                    }
                }
                next();
                nextToken();
                return r2;
            }
        }
        nextToken();
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0194, code lost:
    
        if (r14.f72ch == '{') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0198, code lost:
    
        if (r14.f72ch == '[') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x019c, code lost:
    
        if (r14.f72ch == '0') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01a2, code lost:
    
        if (r14.f72ch == '1') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01a8, code lost:
    
        if (r14.f72ch == '2') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01ae, code lost:
    
        if (r14.f72ch == '3') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01b4, code lost:
    
        if (r14.f72ch == '4') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01ba, code lost:
    
        if (r14.f72ch == '5') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01c0, code lost:
    
        if (r14.f72ch == '6') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01c6, code lost:
    
        if (r14.f72ch == '7') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01cc, code lost:
    
        if (r14.f72ch == '8') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01d0, code lost:
    
        if (r14.f72ch == '9') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01d4, code lost:
    
        if (r14.f72ch == '+') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01d8, code lost:
    
        if (r14.f72ch == '-') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01da, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01df, code lost:
    
        if (r14.f72ch == '-') goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01e3, code lost:
    
        if (r14.f72ch == '+') goto L199;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01e7, code lost:
    
        if (r14.f72ch < '0') goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01eb, code lost:
    
        if (r14.f72ch > '9') goto L210;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01f0, code lost:
    
        if (r14.f72ch != '\"') goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01f2, code lost:
    
        skipString();
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01f7, code lost:
    
        if (r14.f72ch == ',') goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01fb, code lost:
    
        if (r14.f72ch == '}') goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x01fd, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0202, code lost:
    
        if (r14.f72ch != ',') goto L221;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0204, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x020b, code lost:
    
        if (r14.f72ch != '{') goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x020d, code lost:
    
        r2 = r14.f71bp + 1;
        r14.f71bp = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0219, code lost:
    
        if (r2 < r14.text.length()) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x021c, code lost:
    
        r4 = r14.text.charAt(r2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0222, code lost:
    
        r14.f72ch = r4;
        skipObject(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x022b, code lost:
    
        if (r14.f72ch != '[') goto L215;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x022d, code lost:
    
        next();
        skipArray(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x023a, code lost:
    
        throw new java.lang.UnsupportedOperationException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x023b, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0240, code lost:
    
        if (r14.f72ch < '0') goto L228;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0244, code lost:
    
        if (r14.f72ch > '9') goto L229;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0246, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x024e, code lost:
    
        if (r14.f72ch != '.') goto L174;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x0250, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0255, code lost:
    
        if (r14.f72ch < '0') goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0259, code lost:
    
        if (r14.f72ch > '9') goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x025b, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x0263, code lost:
    
        if (r14.f72ch == 'E') goto L178;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x0269, code lost:
    
        if (r14.f72ch != 'e') goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x026b, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x0270, code lost:
    
        if (r14.f72ch == '-') goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x0274, code lost:
    
        if (r14.f72ch != '+') goto L234;
     */
    /* JADX WARN: Code restructure failed: missing block: B:182:0x0276, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x027b, code lost:
    
        if (r14.f72ch < '0') goto L232;
     */
    /* JADX WARN: Code restructure failed: missing block: B:186:0x027f, code lost:
    
        if (r14.f72ch > '9') goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x0281, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0287, code lost:
    
        if (r14.f72ch == ',') goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x0289, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x028e, code lost:
    
        if (r14.f72ch != ',') goto L217;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0290, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x02af, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illegal json, " + info());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a6, code lost:
    
        r8 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a9, code lost:
    
        if (r8 >= r15.length) goto L226;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00af, code lost:
    
        if (r6 != r15[r8]) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b2, code lost:
    
        r8 = r8 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b5, code lost:
    
        r8 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00be, code lost:
    
        if (r8 == (-1)) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00c2, code lost:
    
        if (r14.f72ch == ':') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c4, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c9, code lost:
    
        if (r14.f72ch != ':') goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00cb, code lost:
    
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d7, code lost:
    
        if (r15 < r14.text.length()) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d9, code lost:
    
        r15 = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00db, code lost:
    
        r15 = r14.text.charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00e1, code lost:
    
        r14.f72ch = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00e5, code lost:
    
        if (r14.f72ch != ',') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e7, code lost:
    
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f3, code lost:
    
        if (r15 < r14.text.length()) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f6, code lost:
    
        r4 = r14.text.charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00fc, code lost:
    
        r14.f72ch = r4;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0105, code lost:
    
        if (r14.f72ch != ']') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0107, code lost:
    
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0113, code lost:
    
        if (r15 < r14.text.length()) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0116, code lost:
    
        r4 = r14.text.charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x011c, code lost:
    
        r14.f72ch = r4;
        r14.token = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0125, code lost:
    
        if (r14.f72ch != '}') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0127, code lost:
    
        r15 = r14.f71bp + 1;
        r14.f71bp = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0133, code lost:
    
        if (r15 < r14.text.length()) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0136, code lost:
    
        r4 = r14.text.charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013c, code lost:
    
        r14.f72ch = r4;
        r14.token = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0145, code lost:
    
        if (r14.f72ch < '0') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0149, code lost:
    
        if (r14.f72ch > '9') goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x014b, code lost:
    
        r14.f74sp = 0;
        r14.pos = r14.f71bp;
        scanNumber();
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0155, code lost:
    
        nextToken(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0159, code lost:
    
        r14.matchStat = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x015c, code lost:
    
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x015f, code lost:
    
        if (r14.f72ch == ':') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0161, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0166, code lost:
    
        if (r14.f72ch != ':') goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0168, code lost:
    
        r3 = r14.f71bp + 1;
        r14.f71bp = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0174, code lost:
    
        if (r3 < r14.text.length()) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0176, code lost:
    
        r3 = 26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0178, code lost:
    
        r3 = r14.text.charAt(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x017e, code lost:
    
        r14.f72ch = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x018a, code lost:
    
        if (r14.f72ch == '\"') goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0190, code lost:
    
        if (r14.f72ch == '\'') goto L129;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int seekObjectToField(long[] r15) {
        /*
            Method dump skipped, instructions count: 694
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.seekObjectToField(long[]):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public String scanTypeName(SymbolTable symbolTable) {
        int r0;
        if (!this.text.startsWith("\"@type\":\"", this.f71bp) || (r0 = this.text.indexOf(34, this.f71bp + 9)) == -1) {
            return null;
        }
        this.f71bp += 9;
        int r2 = 0;
        for (int r3 = this.f71bp; r3 < r0; r3++) {
            r2 = (r2 * 31) + this.text.charAt(r3);
        }
        String strAddSymbol = addSymbol(this.f71bp, r0 - this.f71bp, r2, symbolTable);
        char cCharAt = this.text.charAt(r0 + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        this.f71bp = r0 + 2;
        this.f72ch = this.text.charAt(this.f71bp);
        return strAddSymbol;
    }
}
