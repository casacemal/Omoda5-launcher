package com.alibaba.fastjson.asm;

/* loaded from: classes.dex */
public class MethodCollector {
    protected boolean debugInfoPresent;
    private final int ignoreCount;
    private final int paramCount;
    private final StringBuilder result = new StringBuilder();
    private int currentParameter = 0;

    protected MethodCollector(int r1, int r2) {
        this.ignoreCount = r1;
        this.paramCount = r2;
        this.debugInfoPresent = r2 == 0;
    }

    protected void visitLocalVariable(String str, int r4) {
        int r0 = this.ignoreCount;
        if (r4 < r0 || r4 >= r0 + this.paramCount) {
            return;
        }
        if (!str.equals("arg" + this.currentParameter)) {
            this.debugInfoPresent = true;
        }
        this.result.append(',');
        this.result.append(str);
        this.currentParameter++;
    }

    protected String getResult() {
        return this.result.length() != 0 ? this.result.substring(1) : "";
    }
}
