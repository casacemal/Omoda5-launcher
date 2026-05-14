package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public enum Feature {
    AutoCloseSource,
    AllowComment,
    AllowUnQuotedFieldNames,
    AllowSingleQuotes,
    InternFieldNames,
    AllowISO8601DateFormat,
    AllowArbitraryCommas,
    UseBigDecimal,
    IgnoreNotMatch,
    SortFeidFastMatch,
    DisableASM,
    DisableCircularReferenceDetect,
    InitStringFieldAsEmpty,
    SupportArrayToBean,
    OrderedField,
    DisableSpecialKeyDetect,
    UseObjectArray,
    SupportNonPublicField,
    IgnoreAutoType,
    DisableFieldSmartMatch,
    SupportAutoType,
    NonStringKeyAsString,
    CustomMapDeserializer,
    ErrorOnEnumNotMatch,
    SafeMode,
    TrimStringFieldValue;

    public final int mask = 1 << ordinal();

    Feature() {
    }

    public final int getMask() {
        return this.mask;
    }

    public static boolean isEnabled(int r0, Feature feature) {
        return (r0 & feature.mask) != 0;
    }

    public static int config(int r0, Feature feature, boolean z) {
        if (z) {
            return r0 | feature.mask;
        }
        return r0 & (~feature.mask);
    }

    /* renamed from: of */
    public static int m21of(Feature[] featureArr) {
        if (featureArr == null) {
            return 0;
        }
        int r2 = 0;
        for (Feature feature : featureArr) {
            r2 |= feature.mask;
        }
        return r2;
    }
}
