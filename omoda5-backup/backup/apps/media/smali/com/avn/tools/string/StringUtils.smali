.class public Lcom/avn/tools/string/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StringUtils"

.field static ch1:C = '0'

.field static ch2:C = 'W'

.field static ch3:C = '\u0010'

.field static inchar:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    .line 91
    sput-object v0, Lcom/avn/tools/string/StringUtils;->inchar:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static parseInt(Ljava/lang/String;)I
    .locals 0

    if-eqz p0, :cond_0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeNullEnd(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "00"

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 183
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 184
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static toASCIIString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 202
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/avn/tools/string/StringUtils;->toASCIIString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toASCIIString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 211
    invoke-static {p0, v0, p1}, Lcom/avn/tools/string/StringUtils;->toASCIIString(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static toASCIIString(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-ge p1, p2, :cond_0

    add-int/lit8 v1, p1, 0x2

    .line 227
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x10

    .line 228
    invoke-static {p1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p1

    int-to-char p1, p1

    .line 229
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move p1, v1

    goto :goto_0

    .line 231
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toBytes(Ljava/lang/String;)[B
    .locals 10

    if-eqz p0, :cond_6

    .line 100
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_5

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 104
    new-array v1, v0, [B

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, v0, :cond_5

    .line 108
    sget-object v5, Lcom/avn/tools/string/StringUtils;->inchar:[C

    mul-int/lit8 v6, v3, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    aput-char v7, v5, v2

    .line 109
    sget-object v5, Lcom/avn/tools/string/StringUtils;->inchar:[C

    const/4 v7, 0x1

    add-int/2addr v6, v7

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aput-char v6, v5, v7

    .line 111
    sget-object v5, Lcom/avn/tools/string/StringUtils;->inchar:[C

    aget-char v6, v5, v2

    const/16 v8, 0x61

    const/16 v9, 0x39

    if-gt v6, v9, :cond_1

    .line 112
    aget-char v4, v5, v2

    sget-char v5, Lcom/avn/tools/string/StringUtils;->ch1:C

    sub-int/2addr v4, v5

    sget-char v5, Lcom/avn/tools/string/StringUtils;->ch3:C

    :goto_1
    mul-int/2addr v4, v5

    goto :goto_2

    .line 114
    :cond_1
    aget-char v6, v5, v2

    if-lt v6, v8, :cond_2

    .line 115
    aget-char v4, v5, v2

    sget-char v5, Lcom/avn/tools/string/StringUtils;->ch2:C

    sub-int/2addr v4, v5

    sget-char v5, Lcom/avn/tools/string/StringUtils;->ch3:C

    goto :goto_1

    .line 118
    :cond_2
    :goto_2
    sget-object v5, Lcom/avn/tools/string/StringUtils;->inchar:[C

    aget-char v6, v5, v7

    if-gt v6, v9, :cond_3

    .line 119
    aget-char v5, v5, v7

    sget-char v6, Lcom/avn/tools/string/StringUtils;->ch1:C

    :goto_3
    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    goto :goto_4

    .line 121
    :cond_3
    aget-char v6, v5, v7

    if-lt v6, v8, :cond_4

    .line 122
    aget-char v5, v5, v7

    sget-char v6, Lcom/avn/tools/string/StringUtils;->ch2:C

    goto :goto_3

    :cond_4
    :goto_4
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    .line 124
    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-object v1

    :cond_6
    :goto_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static toCNByte2String(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 167
    :try_start_0
    invoke-static {p0}, Lcom/avn/tools/string/StringUtils;->toBytes(Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    .line 169
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 172
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static toHex2Dec(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x10

    .line 154
    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 34
    invoke-static {p0, v0}, Lcom/avn/tools/string/StringUtils;->toString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-static {p0, v0, p1}, Lcom/avn/tools/string/StringUtils;->toString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 61
    :cond_0
    array-length v1, p0

    if-lez p2, :cond_2

    if-le v1, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    move v1, p2

    :cond_2
    if-lt p1, v1, :cond_3

    return-object v0

    .line 74
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    if-ne p1, v1, :cond_4

    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 79
    :cond_4
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    .line 80
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_5

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    :cond_5
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1
.end method

.method public static toString2Bytes(Ljava/lang/String;)[B
    .locals 4

    .line 136
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 137
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 138
    array-length v0, p0

    .line 139
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 141
    aget-char v3, p0, v2

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
