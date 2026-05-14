package com.p003hp.hpl.sparta;

import java.io.IOException;
import java.io.Writer;
import java.util.Enumeration;

/* loaded from: classes.dex */
public class Text extends Node {
    private StringBuffer text_;

    public Text(char c) {
        StringBuffer stringBuffer = new StringBuffer();
        this.text_ = stringBuffer;
        stringBuffer.append(c);
    }

    public Text(String str) {
        this.text_ = new StringBuffer(str);
    }

    public void appendData(char c) {
        this.text_.append(c);
        notifyObservers();
    }

    public void appendData(String str) {
        this.text_.append(str);
        notifyObservers();
    }

    public void appendData(char[] cArr, int r3, int r4) {
        this.text_.append(cArr, r3, r4);
        notifyObservers();
    }

    @Override // com.p003hp.hpl.sparta.Node
    public Object clone() {
        return new Text(this.text_.toString());
    }

    @Override // com.p003hp.hpl.sparta.Node
    protected int computeHashCode() {
        return this.text_.toString().hashCode();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Text) {
            return this.text_.toString().equals(((Text) obj).text_.toString());
        }
        return false;
    }

    public String getData() {
        return this.text_.toString();
    }

    public void setData(String str) {
        this.text_ = new StringBuffer(str);
        notifyObservers();
    }

    @Override // com.p003hp.hpl.sparta.Node
    void toString(Writer writer) throws IOException {
        writer.write(this.text_.toString());
    }

    @Override // com.p003hp.hpl.sparta.Node
    void toXml(Writer writer) throws IOException {
        String string = this.text_.toString();
        if (string.length() < 50) {
            Node.htmlEncode(writer, string);
            return;
        }
        writer.write("<![CDATA[");
        writer.write(string);
        writer.write("]]>");
    }

    @Override // com.p003hp.hpl.sparta.Node
    public Element xpathSelectElement(String str) {
        throw new Error("Sorry, not implemented");
    }

    @Override // com.p003hp.hpl.sparta.Node
    public Enumeration xpathSelectElements(String str) {
        throw new Error("Sorry, not implemented");
    }

    @Override // com.p003hp.hpl.sparta.Node
    public String xpathSelectString(String str) {
        throw new Error("Sorry, not implemented");
    }

    @Override // com.p003hp.hpl.sparta.Node
    public Enumeration xpathSelectStrings(String str) {
        throw new Error("Sorry, not implemented");
    }
}
