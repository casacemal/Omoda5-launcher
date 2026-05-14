package com.p003hp.hpl.sparta;

/* loaded from: classes.dex */
public interface ParseHandler {
    void characters(char[] cArr, int r2, int r3) throws ParseException;

    void endDocument() throws ParseException;

    void endElement(Element element) throws ParseException;

    ParseSource getParseSource();

    void setParseSource(ParseSource parseSource);

    void startDocument() throws ParseException;

    void startElement(Element element) throws ParseException;
}
