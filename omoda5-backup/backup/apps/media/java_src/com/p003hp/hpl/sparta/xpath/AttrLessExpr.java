package com.p003hp.hpl.sparta.xpath;

/* loaded from: classes.dex */
public class AttrLessExpr extends AttrRelationalExpr {
    public AttrLessExpr(String str, int r2) {
        super(str, r2);
    }

    @Override // com.p003hp.hpl.sparta.xpath.BooleanExpr
    public void accept(BooleanExprVisitor booleanExprVisitor) throws XPathException {
        booleanExprVisitor.visit(this);
    }

    @Override // com.p003hp.hpl.sparta.xpath.AttrExpr
    public String toString() {
        return toString("<");
    }
}
