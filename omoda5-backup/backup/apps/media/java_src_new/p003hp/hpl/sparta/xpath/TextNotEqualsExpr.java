package com.p003hp.hpl.sparta.xpath;

/* loaded from: classes.dex */
public class TextNotEqualsExpr extends TextCompareExpr {
    TextNotEqualsExpr(String str) {
        super(str);
    }

    @Override // com.p003hp.hpl.sparta.xpath.BooleanExpr
    public void accept(BooleanExprVisitor booleanExprVisitor) throws XPathException {
        booleanExprVisitor.visit(this);
    }

    public String toString() {
        return toString("!=");
    }
}
