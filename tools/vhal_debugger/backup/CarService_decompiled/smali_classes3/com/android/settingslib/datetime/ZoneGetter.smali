.class public Lcom/android/settingslib/datetime/ZoneGetter;
.super Ljava/lang/Object;
.source "ZoneGetter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    }
.end annotation


# static fields
.field public static final KEY_DISPLAYNAME:Ljava/lang/String; = "name"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_DISPLAY_LABEL:Ljava/lang/String; = "display_label"

.field public static final KEY_GMT:Ljava/lang/String; = "gmt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final KEY_OFFSET:Ljava/lang/String; = "offset"

.field public static final KEY_OFFSET_LABEL:Ljava/lang/String; = "offset_label"

.field private static final TAG:Ljava/lang/String; = "ZoneGetter"

.field private static final XMLTAG_TIMEZONE:Ljava/lang/String; = "timezone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;

    .line 72
    invoke-static {p0}, Lcom/android/settingslib/datetime/ZoneGetter;->readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V
    .locals 3
    .param p0, "builder"    # Landroid/text/SpannableStringBuilder;
    .param p1, "content"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Landroid/text/style/TtsSpan;

    .line 247
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 248
    .local v0, "start":I
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 249
    invoke-virtual {p0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 250
    return-void
.end method

.method private static createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/util/Map;
    .locals 3
    .param p0, "tz"    # Ljava/util/TimeZone;
    .param p1, "gmtOffsetText"    # Ljava/lang/CharSequence;
    .param p2, "displayName"    # Ljava/lang/CharSequence;
    .param p3, "offsetMillis"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TimeZone;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v1, "display_label"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gmt"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v1, "offset_label"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "offset"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    return-object v0
.end method

.method private static formatDigits(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # I
    .param p1, "minDigits"    # I
    .param p2, "localizedDigits"    # Ljava/lang/String;

    .line 254
    div-int/lit8 v0, p0, 0xa

    .line 255
    .local v0, "tens":I
    rem-int/lit8 v1, p0, 0xa

    .line 256
    .local v1, "units":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 257
    .local v2, "builder":Ljava/lang/StringBuilder;
    const/16 v3, 0xa

    if-ge p0, v3, :cond_0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    .line 258
    :cond_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 260
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 26
    .param p0, "tzFormatter"    # Landroid/icu/text/TimeZoneFormat;
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "tz"    # Ljava/util/TimeZone;
    .param p3, "now"    # Ljava/util/Date;

    .line 277
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 279
    .local v0, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTPattern()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, "gmtPattern":Ljava/lang/String;
    const-string v2, "{0}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 282
    .local v2, "placeholderIndex":I
    const/4 v3, 0x0

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 284
    const-string v4, "GMT"

    .line 285
    .local v4, "gmtPatternPrefix":Ljava/lang/String;
    const-string v5, ""

    .local v5, "gmtPatternSuffix":Ljava/lang/String;
    goto :goto_0

    .line 287
    .end local v4    # "gmtPatternPrefix":Ljava/lang/String;
    .end local v5    # "gmtPatternSuffix":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 288
    .restart local v4    # "gmtPatternPrefix":Ljava/lang/String;
    add-int/lit8 v5, v2, 0x3

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 291
    .restart local v5    # "gmtPatternSuffix":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 292
    new-instance v6, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v6, v4}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    invoke-virtual {v6}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v6

    .line 292
    invoke-static {v0, v4, v6}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 296
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    move-object/from16 v8, p2

    invoke-virtual {v8, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v6

    .line 297
    .local v6, "offsetMillis":I
    if-gez v6, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    move v9, v3

    .line 299
    .local v9, "negative":Z
    :goto_1
    if-eqz v9, :cond_3

    .line 300
    neg-int v6, v6

    .line 301
    sget-object v10, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->NEGATIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .local v10, "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    goto :goto_2

    .line 303
    .end local v10    # "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :cond_3
    sget-object v10, Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;->POSITIVE_HM:Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;

    .line 305
    .restart local v10    # "patternType":Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;
    :goto_2
    move-object/from16 v11, p0

    invoke-virtual {v11, v10}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetPattern(Landroid/icu/text/TimeZoneFormat$GMTOffsetPatternType;)Ljava/lang/String;

    move-result-object v12

    .line 306
    .local v12, "gmtOffsetPattern":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/icu/text/TimeZoneFormat;->getGMTOffsetDigits()Ljava/lang/String;

    move-result-object v13

    .line 308
    .local v13, "localizedDigits":Ljava/lang/String;
    int-to-long v14, v6

    const-wide/32 v16, 0x36ee80

    div-long v14, v14, v16

    long-to-int v14, v14

    .line 309
    .local v14, "offsetHours":I
    move-object/from16 v16, v4

    .end local v4    # "gmtPatternPrefix":Ljava/lang/String;
    .local v16, "gmtPatternPrefix":Ljava/lang/String;
    int-to-long v3, v6

    const-wide/32 v17, 0xea60

    div-long v3, v3, v17

    long-to-int v3, v3

    .line 310
    .local v3, "offsetMinutes":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    rem-int/lit8 v4, v4, 0x3c

    .line 312
    .local v4, "offsetMinutesRemaining":I
    const/16 v17, 0x0

    move/from16 v15, v17

    .local v15, "i":I
    :goto_3
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v15, v7, :cond_a

    .line 313
    invoke-virtual {v12, v15}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 314
    .local v7, "c":C
    move-object/from16 v19, v1

    .end local v1    # "gmtPattern":Ljava/lang/String;
    .local v19, "gmtPattern":Ljava/lang/String;
    const/16 v1, 0x2b

    if-eq v7, v1, :cond_9

    const/16 v1, 0x2d

    if-eq v7, v1, :cond_9

    const/16 v1, 0x2212

    if-ne v7, v1, :cond_4

    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v24, v9

    goto/16 :goto_7

    .line 317
    :cond_4
    const/16 v1, 0x48

    if-eq v7, v1, :cond_6

    const/16 v1, 0x6d

    if-ne v7, v1, :cond_5

    goto :goto_4

    .line 337
    :cond_5
    invoke-virtual {v0, v7}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v24, v9

    goto/16 :goto_8

    .line 319
    :cond_6
    :goto_4
    add-int/lit8 v1, v15, 0x1

    move/from16 v21, v2

    .end local v2    # "placeholderIndex":I
    .local v21, "placeholderIndex":I
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_7

    add-int/lit8 v1, v15, 0x1

    invoke-virtual {v12, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v7, :cond_7

    .line 320
    const/4 v1, 0x2

    .line 321
    .local v1, "numDigits":I
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 323
    .end local v1    # "numDigits":I
    :cond_7
    const/4 v1, 0x1

    .line 327
    .restart local v1    # "numDigits":I
    :goto_5
    const/16 v2, 0x48

    if-ne v7, v2, :cond_8

    .line 328
    move v2, v14

    .line 329
    .local v2, "number":I
    const-string v20, "hour"

    move-object/from16 v25, v20

    move/from16 v20, v3

    move-object/from16 v3, v25

    .local v20, "unit":Ljava/lang/String;
    goto :goto_6

    .line 331
    .end local v2    # "number":I
    .end local v20    # "unit":Ljava/lang/String;
    :cond_8
    move v2, v4

    .line 332
    .restart local v2    # "number":I
    const-string v20, "minute"

    move-object/from16 v25, v20

    move/from16 v20, v3

    move-object/from16 v3, v25

    .line 334
    .local v3, "unit":Ljava/lang/String;
    .local v20, "offsetMinutes":I
    :goto_6
    move/from16 v22, v4

    .end local v4    # "offsetMinutesRemaining":I
    .local v22, "offsetMinutesRemaining":I
    invoke-static {v2, v1, v13}, Lcom/android/settingslib/datetime/ZoneGetter;->formatDigits(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move/from16 v23, v1

    .end local v1    # "numDigits":I
    .local v23, "numDigits":I
    new-instance v1, Landroid/text/style/TtsSpan$MeasureBuilder;

    invoke-direct {v1}, Landroid/text/style/TtsSpan$MeasureBuilder;-><init>()V

    move/from16 v24, v9

    .end local v9    # "negative":Z
    .local v24, "negative":Z
    int-to-long v8, v2

    .line 335
    invoke-virtual {v1, v8, v9}, Landroid/text/style/TtsSpan$MeasureBuilder;->setNumber(J)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/text/style/TtsSpan$MeasureBuilder;->setUnit(Ljava/lang/String;)Landroid/text/style/TtsSpan$MeasureBuilder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/style/TtsSpan$MeasureBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 334
    invoke-static {v0, v4, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 336
    .end local v2    # "number":I
    .end local v3    # "unit":Ljava/lang/String;
    .end local v23    # "numDigits":I
    goto :goto_8

    .line 314
    .end local v20    # "offsetMinutes":I
    .end local v21    # "placeholderIndex":I
    .end local v22    # "offsetMinutesRemaining":I
    .end local v24    # "negative":Z
    .local v2, "placeholderIndex":I
    .local v3, "offsetMinutes":I
    .restart local v4    # "offsetMinutesRemaining":I
    .restart local v9    # "negative":Z
    :cond_9
    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v24, v9

    .line 315
    .end local v2    # "placeholderIndex":I
    .end local v3    # "offsetMinutes":I
    .end local v4    # "offsetMinutesRemaining":I
    .end local v9    # "negative":Z
    .restart local v20    # "offsetMinutes":I
    .restart local v21    # "placeholderIndex":I
    .restart local v22    # "offsetMinutesRemaining":I
    .restart local v24    # "negative":Z
    :goto_7
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 316
    .local v1, "sign":Ljava/lang/String;
    new-instance v2, Landroid/text/style/TtsSpan$VerbatimBuilder;

    invoke-direct {v2, v1}, Landroid/text/style/TtsSpan$VerbatimBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/text/style/TtsSpan$VerbatimBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 317
    .end local v1    # "sign":Ljava/lang/String;
    nop

    .line 312
    .end local v7    # "c":C
    :goto_8
    const/4 v1, 0x1

    add-int/2addr v15, v1

    move-object/from16 v8, p2

    move-object/from16 v1, v19

    move/from16 v3, v20

    move/from16 v2, v21

    move/from16 v4, v22

    move/from16 v9, v24

    goto/16 :goto_3

    .end local v19    # "gmtPattern":Ljava/lang/String;
    .end local v20    # "offsetMinutes":I
    .end local v21    # "placeholderIndex":I
    .end local v22    # "offsetMinutesRemaining":I
    .end local v24    # "negative":Z
    .local v1, "gmtPattern":Ljava/lang/String;
    .restart local v2    # "placeholderIndex":I
    .restart local v3    # "offsetMinutes":I
    .restart local v4    # "offsetMinutesRemaining":I
    .restart local v9    # "negative":Z
    :cond_a
    move-object/from16 v19, v1

    move/from16 v21, v2

    move/from16 v20, v3

    move/from16 v22, v4

    move/from16 v24, v9

    .line 341
    .end local v1    # "gmtPattern":Ljava/lang/String;
    .end local v2    # "placeholderIndex":I
    .end local v3    # "offsetMinutes":I
    .end local v4    # "offsetMinutesRemaining":I
    .end local v9    # "negative":Z
    .end local v15    # "i":I
    .restart local v19    # "gmtPattern":Ljava/lang/String;
    .restart local v20    # "offsetMinutes":I
    .restart local v21    # "placeholderIndex":I
    .restart local v22    # "offsetMinutesRemaining":I
    .restart local v24    # "negative":Z
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    .line 342
    new-instance v1, Landroid/text/style/TtsSpan$TextBuilder;

    invoke-direct {v1, v5}, Landroid/text/style/TtsSpan$TextBuilder;-><init>(Ljava/lang/String;)V

    .line 343
    invoke-virtual {v1}, Landroid/text/style/TtsSpan$TextBuilder;->build()Landroid/text/style/TtsSpan;

    move-result-object v1

    .line 342
    invoke-static {v0, v5, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->appendWithTtsSpan(Landroid/text/SpannableStringBuilder;Ljava/lang/CharSequence;Landroid/text/style/TtsSpan;)V

    .line 346
    :cond_b
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 349
    .local v1, "gmtText":Ljava/lang/CharSequence;
    invoke-static {}, Landroidx/core/text/BidiFormatter;->getInstance()Landroidx/core/text/BidiFormatter;

    move-result-object v2

    .line 350
    .local v2, "bidiFormatter":Landroidx/core/text/BidiFormatter;
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_c

    move/from16 v18, v4

    goto :goto_9

    :cond_c
    const/16 v18, 0x0

    :goto_9
    move/from16 v3, v18

    .line 351
    .local v3, "isRtl":Z
    nop

    .line 352
    if-eqz v3, :cond_d

    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->RTL:Landroidx/core/text/TextDirectionHeuristicCompat;

    goto :goto_a

    :cond_d
    sget-object v4, Landroidx/core/text/TextDirectionHeuristicsCompat;->LTR:Landroidx/core/text/TextDirectionHeuristicCompat;

    .line 351
    :goto_a
    invoke-virtual {v2, v1, v4}, Landroidx/core/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;Landroidx/core/text/TextDirectionHeuristicCompat;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 353
    return-object v1
.end method

.method private static getTimeZoneDisplayName(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p0, "data"    # Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    .param p1, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;
    .param p2, "useExemplarLocationForLocalNames"    # Z
    .param p3, "tz"    # Ljava/util/TimeZone;
    .param p4, "olsonId"    # Ljava/lang/String;

    .line 207
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 208
    .local v0, "now":Ljava/util/Date;
    iget-object v1, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    invoke-interface {v1, p4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 209
    .local v1, "isLocalZoneId":Z
    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 212
    .local v2, "preferLongName":Z
    :goto_0
    if-eqz v2, :cond_1

    .line 213
    invoke-static {p1, p3, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v3, "displayName":Ljava/lang/String;
    goto :goto_1

    .line 220
    .end local v3    # "displayName":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/icu/util/TimeZone;->getCanonicalID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, "canonicalZoneId":Ljava/lang/String;
    if-nez v3, :cond_2

    .line 222
    invoke-virtual {p3}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v3

    .line 224
    :cond_2
    invoke-virtual {p1, v3}, Landroid/icu/text/TimeZoneNames;->getExemplarLocationName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "displayName":Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 227
    :cond_3
    invoke-static {p1, p3, v0}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 231
    .end local v3    # "canonicalZoneId":Ljava/lang/String;
    :cond_4
    :goto_1
    return-object v4
.end method

.method public static getTimeZoneOffsetAndName(Landroid/content/Context;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 97
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Landroid/icu/text/TimeZoneFormat;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneFormat;

    move-result-object v1

    .line 98
    .local v1, "tzFormatter":Landroid/icu/text/TimeZoneFormat;
    invoke-static {v1, v0, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getGmtOffsetText(Landroid/icu/text/TimeZoneFormat;Ljava/util/Locale;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 99
    .local v2, "gmtText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v3

    .line 100
    .local v3, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    invoke-static {v3, p1, p2}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 101
    .local v4, "zoneNameString":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 102
    return-object v2

    .line 106
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/CharSequence;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    const-string v7, " "

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    invoke-static {v5}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    return-object v5
.end method

.method private static getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "names"    # Landroid/icu/text/TimeZoneNames;
    .param p1, "tz"    # Ljava/util/TimeZone;
    .param p2, "now"    # Ljava/util/Date;

    .line 240
    invoke-virtual {p1, p2}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_DAYLIGHT:Landroid/icu/text/TimeZoneNames$NameType;

    goto :goto_0

    .line 241
    :cond_0
    sget-object v0, Landroid/icu/text/TimeZoneNames$NameType;->LONG_STANDARD:Landroid/icu/text/TimeZoneNames$NameType;

    :goto_0
    nop

    .line 242
    .local v0, "nameType":Landroid/icu/text/TimeZoneNames$NameType;
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/icu/text/TimeZoneNames;->getDisplayName(Ljava/lang/String;Landroid/icu/text/TimeZoneNames$NameType;J)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getZonesList(Landroid/content/Context;)Ljava/util/List;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 111
    .local v0, "locale":Ljava/util/Locale;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 112
    .local v1, "now":Ljava/util/Date;
    invoke-static {v0}, Landroid/icu/text/TimeZoneNames;->getInstance(Ljava/util/Locale;)Landroid/icu/text/TimeZoneNames;

    move-result-object v2

    .line 113
    .local v2, "timeZoneNames":Landroid/icu/text/TimeZoneNames;
    new-instance v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;

    invoke-direct {v3, p0}, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;-><init>(Landroid/content/Context;)V

    .line 116
    .local v3, "data":Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    nop

    .line 117
    invoke-static {v3, v2}, Lcom/android/settingslib/datetime/ZoneGetter;->shouldUseExemplarLocationForLocalNames(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;)Z

    move-result v4

    .line 120
    .local v4, "useExemplarLocationForLocalNames":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v5, "zones":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    iget v7, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v6, v7, :cond_1

    .line 122
    iget-object v7, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aget-object v7, v7, v6

    .line 123
    .local v7, "tz":Ljava/util/TimeZone;
    iget-object v8, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    aget-object v8, v8, v6

    .line 125
    .local v8, "gmtOffsetText":Ljava/lang/CharSequence;
    iget-object v9, v3, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aget-object v9, v9, v6

    invoke-static {v3, v2, v4, v7, v9}, Lcom/android/settingslib/datetime/ZoneGetter;->getTimeZoneDisplayName(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;ZLjava/util/TimeZone;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 127
    .local v9, "displayName":Ljava/lang/CharSequence;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 128
    move-object v9, v8

    .line 131
    :cond_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v10

    .line 132
    .local v10, "offsetMillis":I
    nop

    .line 133
    invoke-static {v7, v8, v9, v10}, Lcom/android/settingslib/datetime/ZoneGetter;->createDisplayEntry(Ljava/util/TimeZone;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Ljava/util/Map;

    move-result-object v11

    .line 134
    .local v11, "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v5, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    .end local v7    # "tz":Ljava/util/TimeZone;
    .end local v8    # "gmtOffsetText":Ljava/lang/CharSequence;
    .end local v9    # "displayName":Ljava/lang/CharSequence;
    .end local v10    # "offsetMillis":I
    .end local v11    # "displayEntry":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 136
    .end local v6    # "i":I
    :cond_1
    return-object v5
.end method

.method private static readTimezonesToDisplay(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 152
    const-string v0, "ZoneGetter"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settingslib/R$xml;->timezones:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .local v2, "xrp":Landroid/content/res/XmlResourceParser;
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 155
    goto :goto_0

    .line 157
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    .line 158
    :goto_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    const/4 v5, 0x3

    if-eq v3, v5, :cond_5

    .line 159
    :goto_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v4, :cond_2

    .line 160
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v6, 0x1

    if-ne v3, v6, :cond_1

    .line 161
    nop

    .line 174
    :try_start_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 161
    return-object v1

    .line 163
    :cond_1
    :try_start_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_2

    .line 165
    :cond_2
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v6, "timezone"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 166
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v3

    .line 167
    .local v3, "olsonId":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v3    # "olsonId":Ljava/lang/String;
    :cond_3
    :goto_3
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    if-eq v3, v5, :cond_4

    .line 170
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    goto :goto_3

    .line 172
    :cond_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 174
    :cond_5
    :try_start_4
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_5

    .line 153
    :catchall_0
    move-exception v3

    .end local v1    # "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    .end local p0    # "context":Landroid/content/Context;
    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 174
    .restart local v1    # "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "context":Landroid/content/Context;
    :catchall_1
    move-exception v4

    if-eqz v2, :cond_6

    :try_start_6
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v5

    :try_start_7
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v1    # "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local p0    # "context":Landroid/content/Context;
    :cond_6
    :goto_4
    throw v4
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 176
    .end local v2    # "xrp":Landroid/content/res/XmlResourceParser;
    .restart local v1    # "olsonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local p0    # "context":Landroid/content/Context;
    :catch_0
    move-exception v2

    .line 177
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "Unable to read timezones.xml file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 174
    .end local v2    # "ioe":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 175
    .local v2, "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v3, "Ill-formatted timezones.xml file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    .end local v2    # "xppe":Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    nop

    .line 179
    :goto_6
    return-object v1
.end method

.method private static shouldUseExemplarLocationForLocalNames(Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;Landroid/icu/text/TimeZoneNames;)Z
    .locals 8
    .param p0, "data"    # Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;
    .param p1, "timeZoneNames"    # Landroid/icu/text/TimeZoneNames;

    .line 184
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 185
    .local v0, "localZoneNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/CharSequence;>;"
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 186
    .local v1, "now":Ljava/util/Date;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v3, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->zoneCount:I

    if-ge v2, v3, :cond_2

    .line 187
    iget-object v3, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->olsonIdsToDisplay:[Ljava/lang/String;

    aget-object v3, v3, v2

    .line 188
    .local v3, "olsonId":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->localZoneIds:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 189
    iget-object v4, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->timeZones:[Ljava/util/TimeZone;

    aget-object v4, v4, v2

    .line 190
    .local v4, "tz":Ljava/util/TimeZone;
    invoke-static {p1, v4, v1}, Lcom/android/settingslib/datetime/ZoneGetter;->getZoneLongName(Landroid/icu/text/TimeZoneNames;Ljava/util/TimeZone;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "displayName":Ljava/lang/CharSequence;
    if-nez v5, :cond_0

    .line 192
    iget-object v6, p0, Lcom/android/settingslib/datetime/ZoneGetter$ZoneGetterData;->gmtOffsetTexts:[Ljava/lang/CharSequence;

    aget-object v5, v6, v2

    .line 194
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 195
    .local v6, "nameIsUnique":Z
    if-nez v6, :cond_1

    .line 196
    const/4 v7, 0x1

    return v7

    .line 186
    .end local v3    # "olsonId":Ljava/lang/String;
    .end local v4    # "tz":Ljava/util/TimeZone;
    .end local v5    # "displayName":Ljava/lang/CharSequence;
    .end local v6    # "nameIsUnique":Z
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 201
    .end local v2    # "i":I
    :cond_2
    const/4 v2, 0x0

    return v2
.end method
