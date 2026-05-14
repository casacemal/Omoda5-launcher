package com.p003hp.hpl.sparta.xpath;

/* loaded from: classes.dex */
public class AttrTest extends NodeTest {
    private final String attrName_;

    AttrTest(String str) {
        this.attrName_ = str;
    }

    @Override // com.p003hp.hpl.sparta.xpath.NodeTest
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public String getAttrName() {
        return this.attrName_;
    }

    @Override // com.p003hp.hpl.sparta.xpath.NodeTest
    public boolean isStringValue() {
        return true;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("@");
        stringBuffer.append(this.attrName_);
        return stringBuffer.toString();
    }
}
