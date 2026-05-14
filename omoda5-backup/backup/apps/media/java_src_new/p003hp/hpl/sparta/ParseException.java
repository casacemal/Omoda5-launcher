package com.p003hp.hpl.sparta;

/* loaded from: classes.dex */
public class ParseException extends Exception {
    private Throwable cause_;
    private int lineNumber_;

    public ParseException(ParseCharStream parseCharStream, char c, char c2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("got '");
        stringBuffer.append(c);
        stringBuffer.append("' instead of expected '");
        stringBuffer.append(c2);
        stringBuffer.append("'");
        this(parseCharStream, stringBuffer.toString());
    }

    public ParseException(ParseCharStream parseCharStream, char c, String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("got '");
        stringBuffer.append(c);
        stringBuffer.append("' instead of ");
        stringBuffer.append(str);
        stringBuffer.append(" as expected");
        this(parseCharStream, stringBuffer.toString());
    }

    public ParseException(ParseCharStream parseCharStream, char c, char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("got '");
        stringBuffer.append(c);
        stringBuffer.append("' instead of ");
        stringBuffer.append(toString(cArr));
        this(parseCharStream, stringBuffer.toString());
    }

    public ParseException(ParseCharStream parseCharStream, String str) {
        this(parseCharStream.getLog(), parseCharStream.getSystemId(), parseCharStream.getLineNumber(), parseCharStream.getLastCharRead(), parseCharStream.getHistory(), str);
    }

    public ParseException(ParseCharStream parseCharStream, String str, String str2) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("got \"");
        stringBuffer.append(str);
        stringBuffer.append("\" instead of \"");
        stringBuffer.append(str2);
        stringBuffer.append("\" as expected");
        this(parseCharStream, stringBuffer.toString());
    }

    public ParseException(ParseCharStream parseCharStream, String str, char[] cArr) {
        this(parseCharStream, str, new String(cArr));
    }

    public ParseException(ParseLog parseLog, String str, int r9, int r10, String str2, String str3) {
        this(str, r9, r10, str2, str3);
        parseLog.error(str3, str, r9);
    }

    public ParseException(String str) {
        super(str);
        this.lineNumber_ = -1;
        this.cause_ = null;
    }

    public ParseException(String str, int r2, int r3, String str2, String str3) {
        super(toMessage(str, r2, r3, str2, str3));
        this.lineNumber_ = -1;
        this.cause_ = null;
        this.lineNumber_ = r2;
    }

    public ParseException(String str, Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append(" ");
        stringBuffer.append(th);
        super(stringBuffer.toString());
        this.lineNumber_ = -1;
        this.cause_ = null;
        this.cause_ = th;
    }

    static String charRepr(int r2) {
        if (r2 == -1) {
            return "EOF";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("");
        stringBuffer.append((char) r2);
        return stringBuffer.toString();
    }

    private static String toMessage(String str, int r2, int r3, String str2, String str3) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str);
        stringBuffer.append("(");
        stringBuffer.append(r2);
        stringBuffer.append("): \n");
        stringBuffer.append(str2);
        stringBuffer.append("\nLast character read was '");
        stringBuffer.append(charRepr(r3));
        stringBuffer.append("'\n");
        stringBuffer.append(str3);
        return stringBuffer.toString();
    }

    private static String toString(char[] cArr) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(cArr[0]);
        for (int r1 = 1; r1 < cArr.length; r1++) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("or ");
            stringBuffer2.append(cArr[r1]);
            stringBuffer.append(stringBuffer2.toString());
        }
        return stringBuffer.toString();
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause_;
    }

    public int getLineNumber() {
        return this.lineNumber_;
    }
}
