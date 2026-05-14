package com.p003hp.hpl.sparta.xpath;

import com.p003hp.hpl.sparta.Sparta;

/* loaded from: classes.dex */
public class ElementTest extends NodeTest {
    private final String tagName_;

    ElementTest(String str) {
        this.tagName_ = Sparta.intern(str);
    }

    @Override // com.p003hp.hpl.sparta.xpath.NodeTest
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    public String getTagName() {
        return this.tagName_;
    }

    @Override // com.p003hp.hpl.sparta.xpath.NodeTest
    public boolean isStringValue() {
        return false;
    }

    public String toString() {
        return this.tagName_;
    }
}
