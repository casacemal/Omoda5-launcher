package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public class JavaBeanSerializer extends SerializeFilterable implements ObjectSerializer {
    protected SerializeBeanInfo beanInfo;
    protected final FieldSerializer[] getters;
    private volatile transient long[] hashArray;
    private volatile transient short[] hashArrayMapping;
    protected final FieldSerializer[] sortedGetters;

    public JavaBeanSerializer(Class<?> cls) {
        this(cls, (Map<String, String>) null);
    }

    public JavaBeanSerializer(Class<?> cls, String... strArr) {
        this(cls, createAliasMap(strArr));
    }

    static Map<String, String> createAliasMap(String... strArr) {
        HashMap map = new HashMap();
        for (String str : strArr) {
            map.put(str, str);
        }
        return map;
    }

    public Class<?> getType() {
        return this.beanInfo.beanType;
    }

    public JavaBeanSerializer(Class<?> cls, Map<String, String> map) {
        this(TypeUtils.buildBeanInfo(cls, map, null));
    }

    public JavaBeanSerializer(SerializeBeanInfo serializeBeanInfo) {
        boolean z;
        this.beanInfo = serializeBeanInfo;
        this.sortedGetters = new FieldSerializer[serializeBeanInfo.sortedFields.length];
        int r1 = 0;
        while (true) {
            FieldSerializer[] fieldSerializerArr = this.sortedGetters;
            if (r1 >= fieldSerializerArr.length) {
                break;
            }
            fieldSerializerArr[r1] = new FieldSerializer(serializeBeanInfo.beanType, serializeBeanInfo.sortedFields[r1]);
            r1++;
        }
        if (serializeBeanInfo.fields == serializeBeanInfo.sortedFields) {
            this.getters = this.sortedGetters;
        } else {
            this.getters = new FieldSerializer[serializeBeanInfo.fields.length];
            int r12 = 0;
            while (true) {
                if (r12 >= this.getters.length) {
                    z = false;
                    break;
                }
                FieldSerializer fieldSerializer = getFieldSerializer(serializeBeanInfo.fields[r12].name);
                if (fieldSerializer == null) {
                    z = true;
                    break;
                } else {
                    this.getters[r12] = fieldSerializer;
                    r12++;
                }
            }
            if (z) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                System.arraycopy(fieldSerializerArr2, 0, this.getters, 0, fieldSerializerArr2.length);
            }
        }
        if (serializeBeanInfo.jsonType != null) {
            for (Class<? extends SerializeFilter> cls : serializeBeanInfo.jsonType.serialzeFilters()) {
                try {
                    addFilter(cls.getConstructor(new Class[0]).newInstance(new Object[0]));
                } catch (Exception unused) {
                }
            }
        }
    }

    public void writeDirectNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r5) throws Throwable {
        write(jSONSerializer, obj, obj2, type, r5);
    }

    public void writeAsArray(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r5) throws Throwable {
        write(jSONSerializer, obj, obj2, type, r5);
    }

    public void writeAsArrayNonContext(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r5) throws Throwable {
        write(jSONSerializer, obj, obj2, type, r5);
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r12) throws Throwable {
        write(jSONSerializer, obj, obj2, type, r12, false);
    }

    public void writeNoneASM(JSONSerializer jSONSerializer, Object obj, Object obj2, Type type, int r12) throws Throwable {
        write(jSONSerializer, obj, obj2, type, r12, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0159 A[PHI: r25
      0x0159: PHI (r25v12 com.alibaba.fastjson.serializer.FieldSerializer) = 
      (r25v7 com.alibaba.fastjson.serializer.FieldSerializer)
      (r25v9 com.alibaba.fastjson.serializer.FieldSerializer)
      (r25v7 com.alibaba.fastjson.serializer.FieldSerializer)
      (r25v7 com.alibaba.fastjson.serializer.FieldSerializer)
      (r25v7 com.alibaba.fastjson.serializer.FieldSerializer)
     binds: [B:88:0x0122, B:107:0x0157, B:95:0x0139, B:80:0x010e, B:75:0x0103] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:109:0x0163  */
    /* JADX WARN: Removed duplicated region for block: B:260:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:261:0x0366 A[Catch: Exception -> 0x049d, all -> 0x04fb, TryCatch #6 {Exception -> 0x049d, blocks: (B:118:0x019c, B:121:0x01a4, B:123:0x01b0, B:125:0x01bf, B:127:0x01c9, B:130:0x01d3, B:132:0x01de, B:134:0x01e2, B:137:0x01e9, B:139:0x01ed, B:140:0x01f3, B:142:0x01f8, B:144:0x01ff, B:147:0x0209, B:149:0x0214, B:151:0x0218, B:154:0x021f, B:157:0x0226, B:159:0x022b, B:162:0x0233, B:164:0x023b, B:166:0x0246, B:168:0x024a, B:171:0x0251, B:173:0x0255, B:174:0x025a, B:176:0x025f, B:178:0x0266, B:179:0x026b, B:181:0x0273, B:183:0x027e, B:185:0x0282, B:188:0x0289, B:190:0x028d, B:191:0x0292, B:193:0x0297, B:195:0x029e, B:197:0x02a5, B:199:0x02a9, B:201:0x02b3, B:205:0x02be, B:207:0x02c2, B:209:0x02cb, B:211:0x02d6, B:213:0x02dc, B:215:0x02e0, B:218:0x02eb, B:220:0x02ef, B:222:0x02f3, B:225:0x02fe, B:227:0x0302, B:229:0x0306, B:232:0x0311, B:234:0x0315, B:236:0x0319, B:239:0x0327, B:241:0x032b, B:243:0x032f, B:246:0x033c, B:248:0x0340, B:250:0x0344, B:253:0x0352, B:255:0x0356, B:257:0x035a, B:261:0x0366, B:263:0x036a, B:265:0x036e, B:268:0x037c, B:270:0x0387, B:274:0x0390, B:276:0x0396, B:333:0x0463, B:335:0x0467, B:337:0x046b, B:340:0x0475, B:342:0x047d, B:343:0x0485, B:345:0x048b, B:281:0x03a4, B:282:0x03a7, B:284:0x03ad, B:286:0x03b9, B:293:0x03cf, B:298:0x03d9, B:302:0x03ee, B:305:0x03f8, B:308:0x0402, B:310:0x040a, B:311:0x0417, B:313:0x0420, B:315:0x0427, B:316:0x042b, B:318:0x0432, B:319:0x0436, B:320:0x043a, B:322:0x043f, B:323:0x0443, B:324:0x0447, B:326:0x044b, B:328:0x044f, B:331:0x045c, B:332:0x0460, B:299:0x03e4), top: B:437:0x019c }] */
    /* JADX WARN: Removed duplicated region for block: B:273:0x038e  */
    /* JADX WARN: Removed duplicated region for block: B:278:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:300:0x03ea  */
    /* JADX WARN: Removed duplicated region for block: B:335:0x0467 A[Catch: Exception -> 0x049d, all -> 0x04fb, TryCatch #6 {Exception -> 0x049d, blocks: (B:118:0x019c, B:121:0x01a4, B:123:0x01b0, B:125:0x01bf, B:127:0x01c9, B:130:0x01d3, B:132:0x01de, B:134:0x01e2, B:137:0x01e9, B:139:0x01ed, B:140:0x01f3, B:142:0x01f8, B:144:0x01ff, B:147:0x0209, B:149:0x0214, B:151:0x0218, B:154:0x021f, B:157:0x0226, B:159:0x022b, B:162:0x0233, B:164:0x023b, B:166:0x0246, B:168:0x024a, B:171:0x0251, B:173:0x0255, B:174:0x025a, B:176:0x025f, B:178:0x0266, B:179:0x026b, B:181:0x0273, B:183:0x027e, B:185:0x0282, B:188:0x0289, B:190:0x028d, B:191:0x0292, B:193:0x0297, B:195:0x029e, B:197:0x02a5, B:199:0x02a9, B:201:0x02b3, B:205:0x02be, B:207:0x02c2, B:209:0x02cb, B:211:0x02d6, B:213:0x02dc, B:215:0x02e0, B:218:0x02eb, B:220:0x02ef, B:222:0x02f3, B:225:0x02fe, B:227:0x0302, B:229:0x0306, B:232:0x0311, B:234:0x0315, B:236:0x0319, B:239:0x0327, B:241:0x032b, B:243:0x032f, B:246:0x033c, B:248:0x0340, B:250:0x0344, B:253:0x0352, B:255:0x0356, B:257:0x035a, B:261:0x0366, B:263:0x036a, B:265:0x036e, B:268:0x037c, B:270:0x0387, B:274:0x0390, B:276:0x0396, B:333:0x0463, B:335:0x0467, B:337:0x046b, B:340:0x0475, B:342:0x047d, B:343:0x0485, B:345:0x048b, B:281:0x03a4, B:282:0x03a7, B:284:0x03ad, B:286:0x03b9, B:293:0x03cf, B:298:0x03d9, B:302:0x03ee, B:305:0x03f8, B:308:0x0402, B:310:0x040a, B:311:0x0417, B:313:0x0420, B:315:0x0427, B:316:0x042b, B:318:0x0432, B:319:0x0436, B:320:0x043a, B:322:0x043f, B:323:0x0443, B:324:0x0447, B:326:0x044b, B:328:0x044f, B:331:0x045c, B:332:0x0460, B:299:0x03e4), top: B:437:0x019c }] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:353:0x049a  */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0556 A[Catch: all -> 0x05d7, TRY_ENTER, TryCatch #9 {all -> 0x05d7, blocks: (B:402:0x0534, B:405:0x0556, B:413:0x05a6, B:415:0x05ac, B:416:0x05c4, B:418:0x05c8, B:422:0x05d1, B:423:0x05d6, B:407:0x056b, B:409:0x056f, B:411:0x0575, B:412:0x0590), top: B:440:0x0534 }] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x0569  */
    /* JADX WARN: Removed duplicated region for block: B:415:0x05ac A[Catch: all -> 0x05d7, TryCatch #9 {all -> 0x05d7, blocks: (B:402:0x0534, B:405:0x0556, B:413:0x05a6, B:415:0x05ac, B:416:0x05c4, B:418:0x05c8, B:422:0x05d1, B:423:0x05d6, B:407:0x056b, B:409:0x056f, B:411:0x0575, B:412:0x0590), top: B:440:0x0534 }] */
    /* JADX WARN: Removed duplicated region for block: B:418:0x05c8 A[Catch: all -> 0x05d7, TryCatch #9 {all -> 0x05d7, blocks: (B:402:0x0534, B:405:0x0556, B:413:0x05a6, B:415:0x05ac, B:416:0x05c4, B:418:0x05c8, B:422:0x05d1, B:423:0x05d6, B:407:0x056b, B:409:0x056f, B:411:0x0575, B:412:0x0590), top: B:440:0x0534 }] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x05ce  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x05cf  */
    /* JADX WARN: Removed duplicated region for block: B:440:0x0534 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:459:0x04b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x010c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected void write(com.alibaba.fastjson.serializer.JSONSerializer r34, java.lang.Object r35, java.lang.Object r36, java.lang.reflect.Type r37, int r38, boolean r39) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 1501
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.JavaBeanSerializer.write(com.alibaba.fastjson.serializer.JSONSerializer, java.lang.Object, java.lang.Object, java.lang.reflect.Type, int, boolean):void");
    }

    protected void writeClassName(JSONSerializer jSONSerializer, String str, Object obj) {
        if (str == null) {
            str = jSONSerializer.config.typeKey;
        }
        jSONSerializer.out.writeFieldName(str, false);
        String name = this.beanInfo.typeName;
        if (name == null) {
            Class<?> superclass = obj.getClass();
            if (TypeUtils.isProxy(superclass)) {
                superclass = superclass.getSuperclass();
            }
            name = superclass.getName();
        }
        jSONSerializer.write(name);
    }

    public boolean writeReference(JSONSerializer jSONSerializer, Object obj, int r5) {
        SerialContext serialContext = jSONSerializer.context;
        int r0 = SerializerFeature.DisableCircularReferenceDetect.mask;
        if (serialContext == null || (serialContext.features & r0) != 0 || (r5 & r0) != 0 || jSONSerializer.references == null || !jSONSerializer.references.containsKey(obj)) {
            return false;
        }
        jSONSerializer.writeReference(obj);
        return true;
    }

    protected boolean isWriteAsArray(JSONSerializer jSONSerializer) {
        return isWriteAsArray(jSONSerializer, 0);
    }

    protected boolean isWriteAsArray(JSONSerializer jSONSerializer, int r3) {
        int r0 = SerializerFeature.BeanToArray.mask;
        return ((this.beanInfo.features & r0) == 0 && !jSONSerializer.out.beanToArray && (r3 & r0) == 0) ? false : true;
    }

    public Object getFieldValue(Object obj, String str) {
        FieldSerializer fieldSerializer = getFieldSerializer(str);
        if (fieldSerializer == null) {
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public Object getFieldValue(Object obj, String str, long j, boolean z) {
        FieldSerializer fieldSerializer = getFieldSerializer(j);
        if (fieldSerializer == null) {
            if (!z) {
                return null;
            }
            throw new JSONException("field not found. " + str);
        }
        try {
            return fieldSerializer.getPropertyValue(obj);
        } catch (IllegalAccessException e) {
            throw new JSONException("getFieldValue error." + str, e);
        } catch (InvocationTargetException e2) {
            throw new JSONException("getFieldValue error." + str, e2);
        }
    }

    public FieldSerializer getFieldSerializer(String str) {
        if (str == null) {
            return null;
        }
        int r1 = 0;
        int length = this.sortedGetters.length - 1;
        while (r1 <= length) {
            int r3 = (r1 + length) >>> 1;
            int r4 = this.sortedGetters[r3].fieldInfo.name.compareTo(str);
            if (r4 < 0) {
                r1 = r3 + 1;
            } else {
                if (r4 <= 0) {
                    return this.sortedGetters[r3];
                }
                length = r3 - 1;
            }
        }
        return null;
    }

    public FieldSerializer getFieldSerializer(long j) {
        PropertyNamingStrategy[] propertyNamingStrategyArrValues;
        int r7;
        if (this.hashArray == null) {
            propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            long[] jArr = new long[this.sortedGetters.length * propertyNamingStrategyArrValues.length];
            int r4 = 0;
            int r5 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr = this.sortedGetters;
                if (r4 >= fieldSerializerArr.length) {
                    break;
                }
                String str = fieldSerializerArr[r4].fieldInfo.name;
                jArr[r5] = TypeUtils.fnv1a_64(str);
                r5++;
                for (PropertyNamingStrategy propertyNamingStrategy : propertyNamingStrategyArrValues) {
                    String strTranslate = propertyNamingStrategy.translate(str);
                    if (!str.equals(strTranslate)) {
                        jArr[r5] = TypeUtils.fnv1a_64(strTranslate);
                        r5++;
                    }
                }
                r4++;
            }
            Arrays.sort(jArr, 0, r5);
            this.hashArray = new long[r5];
            System.arraycopy(jArr, 0, this.hashArray, 0, r5);
        } else {
            propertyNamingStrategyArrValues = null;
        }
        int r13 = Arrays.binarySearch(this.hashArray, j);
        if (r13 < 0) {
            return null;
        }
        if (this.hashArrayMapping == null) {
            if (propertyNamingStrategyArrValues == null) {
                propertyNamingStrategyArrValues = PropertyNamingStrategy.values();
            }
            short[] sArr = new short[this.hashArray.length];
            Arrays.fill(sArr, (short) -1);
            int r42 = 0;
            while (true) {
                FieldSerializer[] fieldSerializerArr2 = this.sortedGetters;
                if (r42 >= fieldSerializerArr2.length) {
                    break;
                }
                String str2 = fieldSerializerArr2[r42].fieldInfo.name;
                int r6 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(str2));
                if (r6 >= 0) {
                    sArr[r6] = (short) r42;
                }
                for (PropertyNamingStrategy propertyNamingStrategy2 : propertyNamingStrategyArrValues) {
                    String strTranslate2 = propertyNamingStrategy2.translate(str2);
                    if (!str2.equals(strTranslate2) && (r7 = Arrays.binarySearch(this.hashArray, TypeUtils.fnv1a_64(strTranslate2))) >= 0) {
                        sArr[r7] = (short) r42;
                    }
                }
                r42++;
            }
            this.hashArrayMapping = sArr;
        }
        short s = this.hashArrayMapping[r13];
        if (s != -1) {
            return this.sortedGetters[s];
        }
        return null;
    }

    public List<Object> getFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            arrayList.add(fieldSerializer.getPropertyValue(obj));
        }
        return arrayList;
    }

    public List<Object> getObjectFieldValues(Object obj) throws Exception {
        ArrayList arrayList = new ArrayList(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            Class<?> cls = fieldSerializer.fieldInfo.fieldClass;
            if (!cls.isPrimitive() && !cls.getName().startsWith("java.lang.")) {
                arrayList.add(fieldSerializer.getPropertyValue(obj));
            }
        }
        return arrayList;
    }

    public int getSize(Object obj) throws Exception {
        int r2 = 0;
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                r2++;
            }
        }
        return r2;
    }

    public Set<String> getFieldNames(Object obj) throws Exception {
        HashSet hashSet = new HashSet();
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            if (fieldSerializer.getPropertyValueDirect(obj) != null) {
                hashSet.add(fieldSerializer.fieldInfo.name);
            }
        }
        return hashSet;
    }

    public Map<String, Object> getFieldValuesMap(Object obj) throws Exception {
        LinkedHashMap linkedHashMap = new LinkedHashMap(this.sortedGetters.length);
        for (FieldSerializer fieldSerializer : this.sortedGetters) {
            boolean zIsEnabled = SerializerFeature.isEnabled(fieldSerializer.features, SerializerFeature.SkipTransientField);
            FieldInfo fieldInfo = fieldSerializer.fieldInfo;
            if (!zIsEnabled || fieldInfo == null || !fieldInfo.fieldTransient) {
                if (fieldSerializer.fieldInfo.unwrapped) {
                    Object json = JSON.toJSON(fieldSerializer.getPropertyValue(obj));
                    if (json instanceof Map) {
                        linkedHashMap.putAll((Map) json);
                    } else {
                        linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                    }
                } else {
                    linkedHashMap.put(fieldSerializer.fieldInfo.name, fieldSerializer.getPropertyValue(obj));
                }
            }
        }
        return linkedHashMap;
    }

    protected BeanContext getBeanContext(int r1) {
        return this.sortedGetters[r1].fieldContext;
    }

    protected Type getFieldType(int r1) {
        return this.sortedGetters[r1].fieldInfo.fieldType;
    }

    protected char writeBefore(JSONSerializer jSONSerializer, Object obj, char c) {
        if (jSONSerializer.beforeFilters != null) {
            Iterator<BeforeFilter> it = jSONSerializer.beforeFilters.iterator();
            while (it.hasNext()) {
                c = it.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        if (this.beforeFilters != null) {
            Iterator<BeforeFilter> it2 = this.beforeFilters.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeBefore(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    protected char writeAfter(JSONSerializer jSONSerializer, Object obj, char c) {
        if (jSONSerializer.afterFilters != null) {
            Iterator<AfterFilter> it = jSONSerializer.afterFilters.iterator();
            while (it.hasNext()) {
                c = it.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        if (this.afterFilters != null) {
            Iterator<AfterFilter> it2 = this.afterFilters.iterator();
            while (it2.hasNext()) {
                c = it2.next().writeAfter(jSONSerializer, obj, c);
            }
        }
        return c;
    }

    protected boolean applyLabel(JSONSerializer jSONSerializer, String str) {
        if (jSONSerializer.labelFilters != null) {
            Iterator<LabelFilter> it = jSONSerializer.labelFilters.iterator();
            while (it.hasNext()) {
                if (!it.next().apply(str)) {
                    return false;
                }
            }
        }
        if (this.labelFilters == null) {
            return true;
        }
        Iterator<LabelFilter> it2 = this.labelFilters.iterator();
        while (it2.hasNext()) {
            if (!it2.next().apply(str)) {
                return false;
            }
        }
        return true;
    }
}
