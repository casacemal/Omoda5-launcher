.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyType;
.super Ljava/lang/Object;
.source "VehiclePropertyType.java"


# static fields
.field public static final BOOLEAN:I = 0x200000

.field public static final BYTES:I = 0x700000

.field public static final FLOAT:I = 0x600000

.field public static final FLOAT_VEC:I = 0x610000

.field public static final INT32:I = 0x400000

.field public static final INT32_VEC:I = 0x410000

.field public static final INT64:I = 0x500000

.field public static final INT64_VEC:I = 0x510000

.field public static final MASK:I = 0xff0000

.field public static final MIXED:I = 0xe00000

.field public static final STRING:I = 0x100000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x100000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const-string v2, "STRING"

    .line 61
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x200000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v3, "BOOLEAN"

    .line 65
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1
    const/high16 v2, 0x400000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const-string v3, "INT32"

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_2
    const/high16 v2, 0x410000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    const-string v3, "INT32_VEC"

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_3
    const/high16 v2, 0x500000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    const-string v3, "INT64"

    .line 77
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_4
    const/high16 v2, 0x510000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    const-string v3, "INT64_VEC"

    .line 81
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_5
    const/high16 v2, 0x600000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    const-string v3, "FLOAT"

    .line 85
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_6
    const/high16 v2, 0x610000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    const-string v3, "FLOAT_VEC"

    .line 89
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_7
    const/high16 v2, 0x700000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    const-string v3, "BYTES"

    .line 93
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_8
    const/high16 v2, 0xe00000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_9

    const-string v3, "MIXED"

    .line 97
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_9
    const/high16 v2, 0xff0000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_a

    const-string v3, "MASK"

    .line 101
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_a
    if-eq p0, v1, :cond_b

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    const-string p0, " | "

    .line 107
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_0

    const-string p0, "STRING"

    return-object p0

    :cond_0
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_1

    const-string p0, "BOOLEAN"

    return-object p0

    :cond_1
    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_2

    const-string p0, "INT32"

    return-object p0

    :cond_2
    const/high16 v0, 0x410000

    if-ne p0, v0, :cond_3

    const-string p0, "INT32_VEC"

    return-object p0

    :cond_3
    const/high16 v0, 0x500000

    if-ne p0, v0, :cond_4

    const-string p0, "INT64"

    return-object p0

    :cond_4
    const/high16 v0, 0x510000

    if-ne p0, v0, :cond_5

    const-string p0, "INT64_VEC"

    return-object p0

    :cond_5
    const/high16 v0, 0x600000

    if-ne p0, v0, :cond_6

    const-string p0, "FLOAT"

    return-object p0

    :cond_6
    const/high16 v0, 0x610000

    if-ne p0, v0, :cond_7

    const-string p0, "FLOAT_VEC"

    return-object p0

    :cond_7
    const/high16 v0, 0x700000

    if-ne p0, v0, :cond_8

    const-string p0, "BYTES"

    return-object p0

    :cond_8
    const/high16 v0, 0xe00000

    if-ne p0, v0, :cond_9

    const-string p0, "MIXED"

    return-object p0

    :cond_9
    const/high16 v0, 0xff0000

    if-ne p0, v0, :cond_a

    const-string p0, "MASK"

    return-object p0

    .line 54
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
