package com.p003hp.hpl.sparta.xpath;

/* loaded from: classes.dex */
public abstract class AttrRelationalExpr extends AttrExpr {
    private final int attrValue_;

    AttrRelationalExpr(String str, int r2) {
        super(str);
        this.attrValue_ = r2;
    }

    public double getAttrValue() {
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
