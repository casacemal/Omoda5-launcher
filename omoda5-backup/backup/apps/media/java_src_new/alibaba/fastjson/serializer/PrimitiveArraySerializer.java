package com.alibaba.fastjson.serializer;

import java.io.IOException;
import java.lang.reflect.Type;

/* loaded from: classes.dex */
public class PrimitiveArraySerializer implements ObjectSerializer {
    public static PrimitiveArraySerializer instance = new PrimitiveArraySerializer();

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r7) throws IOException {
        SerializeWriter serializeWriter = jSONSerializer.out;
        if (obj == null) {
            serializeWriter.writeNull(SerializerFeature.WriteNullListAsEmpty);
            return;
        }
        int r72 = 0;
        if (obj instanceof int[]) {
            int[] r4 = (int[]) obj;
            serializeWriter.write(91);
            while (r72 < r4.length) {
                if (r72 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeInt(r4[r72]);
                r72++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof short[]) {
            short[] sArr = (short[]) obj;
            serializeWriter.write(91);
            while (r72 < sArr.length) {
                if (r72 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeInt(sArr[r72]);
                r72++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof long[]) {
            long[] jArr = (long[]) obj;
            serializeWriter.write(91);
            while (r72 < jArr.length) {
                if (r72 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.writeLong(jArr[r72]);
                r72++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof boolean[]) {
            boolean[] zArr = (boolean[]) obj;
            serializeWriter.write(91);
            while (r72 < zArr.length) {
                if (r72 != 0) {
                    serializeWriter.write(44);
                }
                serializeWriter.write(zArr[r72]);
                r72++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof float[]) {
            float[] fArr = (float[]) obj;
            serializeWriter.write(91);
            while (r72 < fArr.length) {
                if (r72 != 0) {
                    serializeWriter.write(44);
                }
                float f = fArr[r72];
                if (Float.isNaN(f)) {
                    serializeWriter.writeNull();
                } else {
                    serializeWriter.append((CharSequence) Float.toString(f));
                }
                r72++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof double[]) {
            double[] dArr = (double[]) obj;
            serializeWriter.write(91);
            while (r72 < dArr.length) {
                if (r72 != 0) {
                    serializeWriter.write(44);
                }
                double d = dArr[r72];
                if (Double.isNaN(d)) {
                    serializeWriter.writeNull();
                } else {
                    serializeWriter.append((CharSequence) Double.toString(d));
                }
                r72++;
            }
            serializeWriter.write(93);
            return;
        }
        if (obj instanceof byte[]) {
            serializeWriter.writeByteArray((byte[]) obj);
        } else {
            serializeWriter.writeString((char[]) obj);
        }
    }
}
