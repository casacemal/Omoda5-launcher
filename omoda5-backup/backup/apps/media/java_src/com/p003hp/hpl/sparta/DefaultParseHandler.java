package com.p003hp.hpl.sparta;

/* loaded from: classes.dex */
public class DefaultParseHandler implements ParseHandler {
    private ParseSource parseSource_ = null;

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public void characters(char[] cArr, int r2, int r3) throws ParseException {
    }

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public void endDocument() throws ParseException {
    }

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public void endElement(Element element) throws ParseException {
    }

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public ParseSource getParseSource() {
        return this.parseSource_;
    }

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public void setParseSource(ParseSource parseSource) {
        this.parseSource_ = parseSource;
    }

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public void startDocument() throws ParseException {
    }

    @Override // com.p003hp.hpl.sparta.ParseHandler
    public void startElement(Element element) throws ParseException {
    }
}
