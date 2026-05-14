package com.p003hp.hpl.sparta.xpath;

import com.p003hp.hpl.sparta.Sparta;

/* loaded from: classes.dex */
public abstract class AttrCompareExpr extends AttrExpr {
    private final String attrValue_;

    AttrCompareExpr(String str, String str2) {
        super(str);
        this.attrValue_ = Sparta.intern(str2);
    }

    public String getAttrValue() {
        return this.attrValue_;
    }

    protected String toString(String str) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("[");
        stringBuffer.append(super.toString());
        stringBuffer.append(str);
        stringBuffer.append("'");
        stringBuffer.append(this.attrValue_);
        stringBuffer.append("']");
        return stringBuffer.toString();
    }
}
