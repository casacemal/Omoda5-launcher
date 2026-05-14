package com.p003hp.hpl.sparta;

import java.io.PrintStream;

/* loaded from: classes.dex */
class DefaultLog implements ParseLog {
    DefaultLog() {
    }

    @Override // com.p003hp.hpl.sparta.ParseLog
    public void error(String str, String str2, int r4) {
        PrintStream printStream = System.err;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2);
        stringBuffer.append("(");
        stringBuffer.append(r4);
        stringBuffer.append("): ");
        stringBuffer.append(str);
        stringBuffer.append(" (ERROR)");
        printStream.println(stringBuffer.toString());
    }

    @Override // com.p003hp.hpl.sparta.ParseLog
    public void note(String str, String str2, int r4) {
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2);
        stringBuffer.append("(");
        stringBuffer.append(r4);
        stringBuffer.append("): ");
        stringBuffer.append(str);
        stringBuffer.append(" (NOTE)");
        printStream.println(stringBuffer.toString());
    }

    @Override // com.p003hp.hpl.sparta.ParseLog
    public void warning(String str, String str2, int r4) {
        PrintStream printStream = System.out;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(str2);
        stringBuffer.append("(");
        stringBuffer.append(r4);
        stringBuffer.append("): ");
        stringBuffer.append(str);
        stringBuffer.append(" (WARNING)");
        printStream.println(stringBuffer.toString());
    }
}
