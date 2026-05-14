package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;

/* loaded from: classes.dex */
public class SymbolTable {
    private final int indexMask;
    private final String[] symbols;

    public SymbolTable(int r4) {
        this.indexMask = r4 - 1;
        this.symbols = new String[r4];
        addSymbol("$ref", 0, 4, 1185263);
        addSymbol(JSON.DEFAULT_TYPE_KEY, 0, JSON.DEFAULT_TYPE_KEY.length(), JSON.DEFAULT_TYPE_KEY.hashCode());
    }

    public String addSymbol(char[] cArr, int r3, int r4) {
        return addSymbol(cArr, r3, r4, hash(cArr, r3, r4));
    }

    public String addSymbol(char[] cArr, int r5, int r6, int r7) {
        int r0 = this.indexMask & r7;
        String str = this.symbols[r0];
        if (str != null) {
            boolean z = false;
            if (r7 == str.hashCode() && r6 == str.length()) {
                int r3 = 0;
                while (true) {
                    if (r3 >= r6) {
                        z = true;
                        break;
                    }
                    if (cArr[r5 + r3] != str.charAt(r3)) {
                        break;
                    }
                    r3++;
                }
            }
            return z ? str : new String(cArr, r5, r6);
        }
        String strIntern = new String(cArr, r5, r6).intern();
        this.symbols[r0] = strIntern;
        return strIntern;
    }

    public String addSymbol(String str, int r8, int r9, int r10) {
        return addSymbol(str, r8, r9, r10, false);
    }

    public String addSymbol(String str, int r5, int r6, int r7, boolean z) {
        int r0 = this.indexMask & r7;
        String str2 = this.symbols[r0];
        if (str2 != null) {
            if (r7 == str2.hashCode() && r6 == str2.length() && str.startsWith(str2, r5)) {
                return str2;
            }
            String strSubString = subString(str, r5, r6);
            if (z) {
                this.symbols[r0] = strSubString;
            }
            return strSubString;
        }
        if (r6 != str.length()) {
            str = subString(str, r5, r6);
        }
        String strIntern = str.intern();
        this.symbols[r0] = strIntern;
        return strIntern;
    }

    private static String subString(String str, int r3, int r4) {
        char[] cArr = new char[r4];
        str.getChars(r3, r4 + r3, cArr, 0);
        return new String(cArr);
    }

    public static int hash(char[] cArr, int r4, int r5) {
        int r0 = 0;
        int r1 = 0;
        while (r0 < r5) {
            r1 = (r1 * 31) + cArr[r4];
            r0++;
            r4++;
        }
        return r1;
    }
}
