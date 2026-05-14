package com.alibaba.fastjson.parser;

@Deprecated
/* loaded from: classes.dex */
public class DefaultExtJSONParser extends DefaultJSONParser {
    public DefaultExtJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance());
    }

    public DefaultExtJSONParser(String str, ParserConfig parserConfig) {
        super(str, parserConfig);
    }

    public DefaultExtJSONParser(String str, ParserConfig parserConfig, int r3) {
        super(str, parserConfig, r3);
    }

    public DefaultExtJSONParser(char[] cArr, int r2, ParserConfig parserConfig, int r4) {
        super(cArr, r2, parserConfig, r4);
    }
}
