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
    .param p0, "o"    # I

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 59
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 60
    .local v1, "flipped":I
    const/high16 v2, 0x100000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    .line 61
    const-string v3, "STRING"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 62
    or-int/2addr v1, v2

    .line 64
    :cond_0
    const/high16 v2, 0x200000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 65
    const-string v3, "BOOLEAN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/2addr v1, v2

    .line 68
    :cond_1
    const/high16 v2, 0x400000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    .line 69
    const-string v3, "INT32"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/2addr v1, v2

    .line 72
    :cond_2
    const/high16 v2, 0x410000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    .line 73
    const-string v3, "INT32_VEC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/2addr v1, v2

    .line 76
    :cond_3
    const/high16 v2, 0x500000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    .line 77
    const-string v3, "INT64"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/2addr v1, v2

    .line 80
    :cond_4
    const/high16 v2, 0x510000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    .line 81
    const-string v3, "INT64_VEC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/2addr v1, v2

    .line 84
    :cond_5
    const/high16 v2, 0x600000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    .line 85
    const-string v3, "FLOAT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/2addr v1, v2

    .line 88
    :cond_6
    const/high16 v2, 0x610000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    .line 89
    const-string v3, "FLOAT_VEC"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/2addr v1, v2

    .line 92
    :cond_7
    const/high16 v2, 0x700000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_8

    .line 93
    const-string v3, "BYTES"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/2addr v1, v2

    .line 96
    :cond_8
    const/high16 v2, 0xe00000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_9

    .line 97
    const-string v3, "MIXED"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/2addr v1, v2

    .line 100
    :cond_9
    const/high16 v2, 0xff0000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_a

    .line 101
    const-string v3, "MASK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/2addr v1, v2

    .line 104
    :cond_a
    if-eq p0, v1, :cond_b

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v3, v1

    and-int/2addr v3, p0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_b
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 21
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_0

    .line 22
    const-string v0, "STRING"

    return-object v0

    .line 24
    :cond_0
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_1

    .line 25
    const-string v0, "BOOLEAN"

    return-object v0

    .line 27
    :cond_1
    const/high16 v0, 0x400000

    if-ne p0, v0, :cond_2

    .line 28
    const-string v0, "INT32"

    return-object v0

    .line 30
    :cond_2
    const/high16 v0, 0x410000

    if-ne p0, v0, :cond_3

    .line 31
    const-string v0, "INT32_VEC"

    return-object v0

    .line 33
    :cond_3
    const/high16 v0, 0x500000

    if-ne p0, v0, :cond_4

    .line 34
    const-string v0, "INT64"

    return-object v0

    .line 36
    :cond_4
    const/high16 v0, 0x510000

    if-ne p0, v0, :cond_5

    .line 37
    const-string v0, "INT64_VEC"

    return-object v0

    .line 39
    :cond_5
    const/high16 v0, 0x600000

    if-ne p0, v0, :cond_6

    .line 40
    const-string v0, "FLOAT"

    return-object v0

    .line 42
    :cond_6
    const/high16 v0, 0x610000

    if-ne p0, v0, :cond_7

    .line 43
    const-string v0, "FLOAT_VEC"

    return-object v0

    .line 45
    :cond_7
    const/high16 v0, 0x700000

    if-ne p0, v0, :cond_8

    .line 46
    const-string v0, "BYTES"

    return-object v0

    .line 48
    :cond_8
    const/high16 v0, 0xe00000

    if-ne p0, v0, :cond_9

    .line 49
    const-string v0, "MIXED"

    return-object v0

    .line 51
    :cond_9
    const/high16 v0, 0xff0000

    if-ne p0, v0, :cond_a

    .line 52
    const-string v0, "MASK"

    return-object v0

    .line 54
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
