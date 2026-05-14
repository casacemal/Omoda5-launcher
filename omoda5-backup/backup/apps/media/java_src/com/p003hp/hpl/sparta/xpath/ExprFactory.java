package com.p003hp.hpl.sparta.xpath;

import java.io.IOException;

/* loaded from: classes.dex */
public class ExprFactory {
    static BooleanExpr createExpr(XPath xPath, SimpleStreamTokenizer simpleStreamTokenizer) throws XPathException, IOException, NumberFormatException {
        int r14;
        int r142;
        int r0 = simpleStreamTokenizer.ttype;
        if (r0 == -3) {
            if (!simpleStreamTokenizer.sval.equals("text")) {
                throw new XPathException(xPath, "at beginning of expression", simpleStreamTokenizer, "text()");
            }
            if (simpleStreamTokenizer.nextToken() != 40) {
                throw new XPathException(xPath, "after text", simpleStreamTokenizer, "(");
            }
            if (simpleStreamTokenizer.nextToken() != 41) {
                throw new XPathException(xPath, "after text(", simpleStreamTokenizer, ")");
            }
            int r02 = simpleStreamTokenizer.nextToken();
            if (r02 != 33) {
                if (r02 != 61) {
                    return TextExistsExpr.INSTANCE;
                }
                simpleStreamTokenizer.nextToken();
                if (simpleStreamTokenizer.ttype != 34 && simpleStreamTokenizer.ttype != 39) {
                    throw new XPathException(xPath, "right hand side of equals", simpleStreamTokenizer, "quoted string");
                }
                String str = simpleStreamTokenizer.sval;
                simpleStreamTokenizer.nextToken();
                return new TextEqualsExpr(str);
            }
            simpleStreamTokenizer.nextToken();
            if (simpleStreamTokenizer.ttype != 61) {
                throw new XPathException(xPath, "after !", simpleStreamTokenizer, "=");
            }
            simpleStreamTokenizer.nextToken();
            if (simpleStreamTokenizer.ttype != 34 && simpleStreamTokenizer.ttype != 39) {
                throw new XPathException(xPath, "right hand side of !=", simpleStreamTokenizer, "quoted string");
            }
            String str2 = simpleStreamTokenizer.sval;
            simpleStreamTokenizer.nextToken();
            return new TextNotEqualsExpr(str2);
        }
        if (r0 == -2) {
            int r143 = simpleStreamTokenizer.nval;
            simpleStreamTokenizer.nextToken();
            return new PositionEqualsExpr(r143);
        }
        if (r0 != 64) {
            throw new XPathException(xPath, "at beginning of expression", simpleStreamTokenizer, "@, number, or text()");
        }
        if (simpleStreamTokenizer.nextToken() != -3) {
            throw new XPathException(xPath, "after @", simpleStreamTokenizer, "name");
        }
        String str3 = simpleStreamTokenizer.sval;
        int r6 = simpleStreamTokenizer.nextToken();
        if (r6 == 33) {
            simpleStreamTokenizer.nextToken();
            if (simpleStreamTokenizer.ttype != 61) {
                throw new XPathException(xPath, "after !", simpleStreamTokenizer, "=");
            }
            simpleStreamTokenizer.nextToken();
            if (simpleStreamTokenizer.ttype != 34 && simpleStreamTokenizer.ttype != 39) {
                throw new XPathException(xPath, "right hand side of !=", simpleStreamTokenizer, "quoted string");
            }
            String str4 = simpleStreamTokenizer.sval;
            simpleStreamTokenizer.nextToken();
            return new AttrNotEqualsExpr(str3, str4);
        }
        switch (r6) {
            case 60:
                simpleStreamTokenizer.nextToken();
                if (simpleStreamTokenizer.ttype == 34 || simpleStreamTokenizer.ttype == 39) {
                    r14 = Integer.parseInt(simpleStreamTokenizer.sval);
                } else {
                    if (simpleStreamTokenizer.ttype != -2) {
                        throw new XPathException(xPath, "right hand side of less-than", simpleStreamTokenizer, "quoted string or number");
                    }
                    r14 = simpleStreamTokenizer.nval;
                }
                simpleStreamTokenizer.nextToken();
                return new AttrLessExpr(str3, r14);
            case 61:
                simpleStreamTokenizer.nextToken();
                if (simpleStreamTokenizer.ttype != 34 && simpleStreamTokenizer.ttype != 39) {
                    throw new XPathException(xPath, "right hand side of equals", simpleStreamTokenizer, "quoted string");
                }
                String str5 = simpleStreamTokenizer.sval;
                simpleStreamTokenizer.nextToken();
                return new AttrEqualsExpr(str3, str5);
            case 62:
                simpleStreamTokenizer.nextToken();
                if (simpleStreamTokenizer.ttype == 34 || simpleStreamTokenizer.ttype == 39) {
                    r142 = Integer.parseInt(simpleStreamTokenizer.sval);
                } else {
                    if (simpleStreamTokenizer.ttype != -2) {
                        throw new XPathException(xPath, "right hand side of greater-than", simpleStreamTokenizer, "quoted string or number");
                    }
                    r142 = simpleStreamTokenizer.nval;
                }
                simpleStreamTokenizer.nextToken();
                return new AttrGreaterExpr(str3, r142);
            default:
                return new AttrExistsExpr(str3);
        }
    }
}
