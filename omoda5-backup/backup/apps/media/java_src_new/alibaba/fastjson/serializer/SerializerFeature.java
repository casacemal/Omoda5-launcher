package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public enum SerializerFeature {
    QuoteFieldNames,
    UseSingleQuotes,
    WriteMapNullValue,
    WriteEnumUsingToString,
    WriteEnumUsingName,
    UseISO8601DateFormat,
    WriteNullListAsEmpty,
    WriteNullStringAsEmpty,
    WriteNullNumberAsZero,
    WriteNullBooleanAsFalse,
    SkipTransientField,
    SortField,
    WriteTabAsSpecial,
    PrettyFormat,
    WriteClassName,
    DisableCircularReferenceDetect,
    WriteSlashAsSpecial,
    BrowserCompatible,
    WriteDateUseDateFormat,
    NotWriteRootClassName,
    DisableCheckSpecialChar,
    BeanToArray,
    WriteNonStringKeyAsString,
    NotWriteDefaultValue,
    BrowserSecure,
    IgnoreNonFieldGetter,
    WriteNonStringValueAsString,
    IgnoreErrorGetter,
    WriteBigDecimalAsPlain,
    MapSortField;

    public static final SerializerFeature[] EMPTY;
    public static final int WRITE_MAP_NULL_FEATURES;
    public final int mask = 1 << ordinal();

    static {
        SerializerFeature serializerFeature = WriteMapNullValue;
        EMPTY = new SerializerFeature[0];
        WRITE_MAP_NULL_FEATURES = serializerFeature.getMask() | WriteNullBooleanAsFalse.getMask() | WriteNullListAsEmpty.getMask() | WriteNullNumberAsZero.getMask() | WriteNullStringAsEmpty.getMask();
    }

    SerializerFeature() {
    }

    public final int getMask() {
        return this.mask;
    }

    public static boolean isEnabled(int r0, SerializerFeature serializerFeature) {
        return (r0 & serializerFeature.mask) != 0;
    }

    public static boolean isEnabled(int r0, int r1, SerializerFeature serializerFeature) {
        int r2 = serializerFeature.mask;
        return ((r0 & r2) == 0 && (r1 & r2) == 0) ? false : true;
    }

    public static int config(int r0, SerializerFeature serializerFeature, boolean z) {
        if (z) {
            return r0 | serializerFeature.mask;
        }
        return r0 & (~serializerFeature.mask);
    }

    /* renamed from: of */
    public static int m22of(SerializerFeature[] serializerFeatureArr) {
        if (serializerFeatureArr == null) {
            return 0;
        }
        int r2 = 0;
        for (SerializerFeature serializerFeature : serializerFeatureArr) {
            r2 |= serializerFeature.mask;
        }
        return r2;
    }
}
