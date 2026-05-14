package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.ParseContext;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.awt.Color;
import java.awt.Font;
import java.awt.Point;
import java.awt.Rectangle;
import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public class AwtCodec implements ObjectSerializer, ObjectDeserializer {
    public static final AwtCodec instance = new AwtCodec();

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public int getFastMatchToken() {
        return 12;
    }

    public static boolean support(Class<?> cls) {
        return cls == Point.class || cls == Rectangle.class || cls == Font.class || cls == Color.class;
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r7) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull();
            return;
        }
        if (obj instanceof Point) {
            Point point = (Point) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Point.class, '{'), "x", point.x);
            serializeWriter.writeFieldValue(',', "y", point.y);
        } else if (obj instanceof Font) {
            Font font = (Font) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Font.class, '{'), "name", font.getName());
            serializeWriter.writeFieldValue(',', "style", font.getStyle());
            serializeWriter.writeFieldValue(',', "size", font.getSize());
        } else if (obj instanceof Rectangle) {
            Rectangle rectangle = (Rectangle) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Rectangle.class, '{'), "x", rectangle.x);
            serializeWriter.writeFieldValue(',', "y", rectangle.y);
            serializeWriter.writeFieldValue(',', "width", rectangle.width);
            serializeWriter.writeFieldValue(',', "height", rectangle.height);
        } else if (obj instanceof Color) {
            Color color = (Color) obj;
            serializeWriter.writeFieldValue(writeClassName(serializeWriter, Color.class, '{'), "r", color.getRed());
            serializeWriter.writeFieldValue(',', "g", color.getGreen());
            serializeWriter.writeFieldValue(',', "b", color.getBlue());
            if (color.getAlpha() > 0) {
                serializeWriter.writeFieldValue(',', "alpha", color.getAlpha());
            }
        } else {
            throw new JSONException("not support awt class : " + obj.getClass().getName());
        }
        serializeWriter.write(125);
    }

    protected char writeClassName(SerializeWriter serializeWriter, Class<?> cls, char c) {
        if (!serializeWriter.isEnabled(SerializerFeature.WriteClassName)) {
            return c;
        }
        serializeWriter.write(123);
        serializeWriter.writeFieldName(JSON.DEFAULT_TYPE_KEY);
        serializeWriter.writeString(cls.getName());
        return ',';
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser defaultJSONParser, Type type, Object obj) {
        T t;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken(16);
            return null;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new JSONException("syntax error");
        }
        jSONLexer.nextToken();
        if (type == Point.class) {
            t = (T) parsePoint(defaultJSONParser, obj);
        } else if (type == Rectangle.class) {
            t = (T) parseRectangle(defaultJSONParser);
        } else if (type == Color.class) {
            t = (T) parseColor(defaultJSONParser);
        } else if (type == Font.class) {
            t = (T) parseFont(defaultJSONParser);
        } else {
            throw new JSONException("not support awt class : " + type);
        }
        ParseContext context = defaultJSONParser.getContext();
        defaultJSONParser.setContext(t, obj);
        defaultJSONParser.setContext(context);
        return t;
    }

    protected Font parseFont(DefaultJSONParser defaultJSONParser) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int r8 = 0;
        String strStringVal = null;
        int r0 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() == 4) {
                String strStringVal2 = jSONLexer.stringVal();
                jSONLexer.nextTokenWithColon(2);
                if (strStringVal2.equalsIgnoreCase("name")) {
                    if (jSONLexer.token() == 4) {
                        strStringVal = jSONLexer.stringVal();
                        jSONLexer.nextToken();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if (strStringVal2.equalsIgnoreCase("style")) {
                    if (jSONLexer.token() == 2) {
                        r8 = jSONLexer.intValue();
                        jSONLexer.nextToken();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if (strStringVal2.equalsIgnoreCase("size")) {
                    if (jSONLexer.token() == 2) {
                        r0 = jSONLexer.intValue();
                        jSONLexer.nextToken();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else {
                    throw new JSONException("syntax error, " + strStringVal2);
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
            } else {
                throw new JSONException("syntax error");
            }
        }
        jSONLexer.nextToken();
        return new Font(strStringVal, r8, r0);
    }

    protected Color parseColor(DefaultJSONParser defaultJSONParser) {
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int r9 = 0;
        int r0 = 0;
        int r1 = 0;
        int r2 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() == 4) {
                String strStringVal = jSONLexer.stringVal();
                jSONLexer.nextTokenWithColon(2);
                if (jSONLexer.token() == 2) {
                    int r4 = jSONLexer.intValue();
                    jSONLexer.nextToken();
                    if (strStringVal.equalsIgnoreCase("r")) {
                        r9 = r4;
                    } else if (strStringVal.equalsIgnoreCase("g")) {
                        r0 = r4;
                    } else if (strStringVal.equalsIgnoreCase("b")) {
                        r1 = r4;
                    } else {
                        if (!strStringVal.equalsIgnoreCase("alpha")) {
                            throw new JSONException("syntax error, " + strStringVal);
                        }
                        r2 = r4;
                    }
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                } else {
                    throw new JSONException("syntax error");
                }
            } else {
                throw new JSONException("syntax error");
            }
        }
        jSONLexer.nextToken();
        return new Color(r9, r0, r1, r2);
    }

    protected Rectangle parseRectangle(DefaultJSONParser defaultJSONParser) {
        int r4;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int r9 = 0;
        int r0 = 0;
        int r1 = 0;
        int r2 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() == 4) {
                String strStringVal = jSONLexer.stringVal();
                jSONLexer.nextTokenWithColon(2);
                int r7 = jSONLexer.token();
                if (r7 == 2) {
                    r4 = jSONLexer.intValue();
                    jSONLexer.nextToken();
                } else if (r7 == 3) {
                    r4 = (int) jSONLexer.floatValue();
                    jSONLexer.nextToken();
                } else {
                    throw new JSONException("syntax error");
                }
                if (strStringVal.equalsIgnoreCase("x")) {
                    r9 = r4;
                } else if (strStringVal.equalsIgnoreCase("y")) {
                    r0 = r4;
                } else if (strStringVal.equalsIgnoreCase("width")) {
                    r1 = r4;
                } else {
                    if (!strStringVal.equalsIgnoreCase("height")) {
                        throw new JSONException("syntax error, " + strStringVal);
                    }
                    r2 = r4;
                }
                if (jSONLexer.token() == 16) {
                    jSONLexer.nextToken(4);
                }
            } else {
                throw new JSONException("syntax error");
            }
        }
        jSONLexer.nextToken();
        return new Rectangle(r9, r0, r1, r2);
    }

    protected Point parsePoint(DefaultJSONParser defaultJSONParser, Object obj) {
        int r5;
        JSONLexer jSONLexer = defaultJSONParser.lexer;
        int r1 = 0;
        int r2 = 0;
        while (jSONLexer.token() != 13) {
            if (jSONLexer.token() == 4) {
                String strStringVal = jSONLexer.stringVal();
                if (JSON.DEFAULT_TYPE_KEY.equals(strStringVal)) {
                    defaultJSONParser.acceptType("java.awt.Point");
                } else {
                    if ("$ref".equals(strStringVal)) {
                        return (Point) parseRef(defaultJSONParser, obj);
                    }
                    jSONLexer.nextTokenWithColon(2);
                    int r6 = jSONLexer.token();
                    if (r6 == 2) {
                        r5 = jSONLexer.intValue();
                        jSONLexer.nextToken();
                    } else if (r6 == 3) {
                        r5 = (int) jSONLexer.floatValue();
                        jSONLexer.nextToken();
                    } else {
                        throw new JSONException("syntax error : " + jSONLexer.tokenName());
                    }
                    if (strStringVal.equalsIgnoreCase("x")) {
                        r1 = r5;
                    } else {
                        if (!strStringVal.equalsIgnoreCase("y")) {
                            throw new JSONException("syntax error, " + strStringVal);
                        }
                        r2 = r5;
                    }
                    if (jSONLexer.token() == 16) {
                        jSONLexer.nextToken(4);
                    }
                }
            } else {
                throw new JSONException("syntax error");
            }
        }
        jSONLexer.nextToken();
        return new Point(r1, r2);
    }

    private Object parseRef(DefaultJSONParser defaultJSONParser, Object obj) {
        JSONLexer lexer = defaultJSONParser.getLexer();
        lexer.nextTokenWithColon(4);
        String strStringVal = lexer.stringVal();
        defaultJSONParser.setContext(defaultJSONParser.getContext(), obj);
        defaultJSONParser.addResolveTask(new DefaultJSONParser.ResolveTask(defaultJSONParser.getContext(), strStringVal));
        defaultJSONParser.popContext();
        defaultJSONParser.setResolveStatus(1);
        lexer.nextToken(13);
        defaultJSONParser.accept(13);
        return null;
    }
}
