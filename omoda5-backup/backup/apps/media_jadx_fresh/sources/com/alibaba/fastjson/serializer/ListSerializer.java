package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.List;

/* loaded from: classes.dex */
public final class ListSerializer implements ObjectSerializer {
    public static final ListSerializer instance = new ListSerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r25) throws IOException {
        char c;
        int r16;
        Object obj3;
        boolean z;
        char c2;
        boolean z2 = jSONSerializer.out.isEnabled(SerializerFeature.WriteClassName) || SerializerFeature.isEnabled(r25, SerializerFeature.WriteClassName);
        SerializeWriter serializeWriter = jSONSerializer.out;
        Type collectionItemType = z2 ? TypeUtils.getCollectionItemType(type) : null;
        if (obj == null) {
            serializeWriter.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        List list = (List) obj;
        if (list.size() == 0) {
            serializeWriter.append((CharSequence) "[]");
            return;
        }
        SerialContext serialContext = jSONSerializer.context;
        jSONSerializer.setContext(serialContext, obj, obj2, 0);
        try {
            char c3 = ',';
            char c4 = ']';
            if (serializeWriter.isEnabled(SerializerFeature.PrettyFormat)) {
                serializeWriter.append('[');
                jSONSerializer.incrementIndent();
                int r12 = 0;
                for (Object obj4 : list) {
                    if (r12 != 0) {
                        serializeWriter.append(c3);
                    }
                    jSONSerializer.println();
                    if (obj4 != null) {
                        if (jSONSerializer.containsReference(obj4)) {
                            jSONSerializer.writeReference(obj4);
                            c2 = c4;
                        } else {
                            ObjectSerializer objectWriter = jSONSerializer.getObjectWriter(obj4.getClass());
                            c2 = c4;
                            jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                            objectWriter.write(jSONSerializer, obj4, Integer.valueOf(r12), collectionItemType, r25);
                        }
                    } else {
                        c2 = c4;
                        jSONSerializer.out.writeNull();
                    }
                    r12++;
                    c4 = c2;
                    c3 = ',';
                }
                jSONSerializer.decrementIdent();
                jSONSerializer.println();
                serializeWriter.append(c4);
                return;
            }
            char c5 = ']';
            serializeWriter.append('[');
            int size = list.size();
            int r6 = 0;
            while (r6 < size) {
                Object obj5 = list.get(r6);
                if (r6 != 0) {
                    c = ',';
                    serializeWriter.append(',');
                } else {
                    c = ',';
                }
                if (obj5 == null) {
                    serializeWriter.append((CharSequence) "null");
                } else {
                    Class<?> cls = obj5.getClass();
                    if (cls == Integer.class) {
                        serializeWriter.writeInt(((Integer) obj5).intValue());
                    } else if (cls == Long.class) {
                        long jLongValue = ((Long) obj5).longValue();
                        if (z2) {
                            serializeWriter.writeLong(jLongValue);
                            serializeWriter.write(76);
                        } else {
                            serializeWriter.writeLong(jLongValue);
                        }
                    } else if ((SerializerFeature.DisableCircularReferenceDetect.mask & r25) != 0) {
                        r16 = r6;
                        jSONSerializer.getObjectWriter(obj5.getClass()).write(jSONSerializer, obj5, Integer.valueOf(r6), collectionItemType, r25);
                        z = z2;
                        r6 = r16 + 1;
                        z2 = z;
                        c5 = ']';
                    } else {
                        r16 = r6;
                        if (serializeWriter.disableCircularReferenceDetect) {
                            obj3 = obj5;
                            z = z2;
                        } else {
                            obj3 = obj5;
                            z = z2;
                            jSONSerializer.context = new SerialContext(serialContext, obj, obj2, 0, 0);
                        }
                        if (jSONSerializer.containsReference(obj3)) {
                            jSONSerializer.writeReference(obj3);
                        } else {
                            ObjectSerializer objectWriter2 = jSONSerializer.getObjectWriter(obj3.getClass());
                            if ((SerializerFeature.WriteClassName.mask & r25) != 0 && (objectWriter2 instanceof JavaBeanSerializer)) {
                                ((JavaBeanSerializer) objectWriter2).writeNoneASM(jSONSerializer, obj3, Integer.valueOf(r16), collectionItemType, r25);
                            } else {
                                objectWriter2.write(jSONSerializer, obj3, Integer.valueOf(r16), collectionItemType, r25);
                            }
                        }
                        r6 = r16 + 1;
                        z2 = z;
                        c5 = ']';
                    }
                }
                r16 = r6;
                z = z2;
                r6 = r16 + 1;
                z2 = z;
                c5 = ']';
            }
            serializeWriter.append(c5);
        } finally {
            jSONSerializer.context = serialContext;
        }
    }
}
