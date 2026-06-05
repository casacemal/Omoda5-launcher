.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleGear;
.super Ljava/lang/Object;
.source "VehicleGear.java"


# static fields
.field public static final GEAR_1:I = 0x10

.field public static final GEAR_2:I = 0x20

.field public static final GEAR_3:I = 0x40

.field public static final GEAR_4:I = 0x80

.field public static final GEAR_5:I = 0x100

.field public static final GEAR_6:I = 0x200

.field public static final GEAR_7:I = 0x400

.field public static final GEAR_8:I = 0x800

.field public static final GEAR_9:I = 0x1000

.field public static final GEAR_DRIVE:I = 0x8

.field public static final GEAR_NEUTRAL:I = 0x1

.field public static final GEAR_PARK:I = 0x4

.field public static final GEAR_REVERSE:I = 0x2


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

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 64
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 65
    const-string v2, "GEAR_NEUTRAL"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    or-int/lit8 v1, v1, 0x1

    .line 68
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 69
    const-string v2, "GEAR_REVERSE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    or-int/lit8 v1, v1, 0x2

    .line 72
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 73
    const-string v2, "GEAR_PARK"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    or-int/lit8 v1, v1, 0x4

    .line 76
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 77
    const-string v2, "GEAR_DRIVE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    or-int/lit8 v1, v1, 0x8

    .line 80
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 81
    const-string v2, "GEAR_1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    or-int/lit8 v1, v1, 0x10

    .line 84
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 85
    const-string v2, "GEAR_2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    or-int/lit8 v1, v1, 0x20

    .line 88
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 89
    const-string v2, "GEAR_3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    or-int/lit8 v1, v1, 0x40

    .line 92
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 93
    const-string v2, "GEAR_4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    or-int/lit16 v1, v1, 0x80

    .line 96
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 97
    const-string v2, "GEAR_5"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    or-int/lit16 v1, v1, 0x100

    .line 100
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 101
    const-string v2, "GEAR_6"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit16 v1, v1, 0x200

    .line 104
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 105
    const-string v2, "GEAR_7"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit16 v1, v1, 0x400

    .line 108
    :cond_a
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 109
    const-string v2, "GEAR_8"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit16 v1, v1, 0x800

    .line 112
    :cond_b
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 113
    const-string v2, "GEAR_9"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit16 v1, v1, 0x1000

    .line 116
    :cond_c
    if-eq p0, v1, :cond_d

    .line 117
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

    .line 119
    :cond_d
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 19
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 20
    const-string v0, "GEAR_NEUTRAL"

    return-object v0

    .line 22
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 23
    const-string v0, "GEAR_REVERSE"

    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 26
    const-string v0, "GEAR_PARK"

    return-object v0

    .line 28
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 29
    const-string v0, "GEAR_DRIVE"

    return-object v0

    .line 31
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 32
    const-string v0, "GEAR_1"

    return-object v0

    .line 34
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 35
    const-string v0, "GEAR_2"

    return-object v0

    .line 37
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 38
    const-string v0, "GEAR_3"

    return-object v0

    .line 40
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 41
    const-string v0, "GEAR_4"

    return-object v0

    .line 43
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 44
    const-string v0, "GEAR_5"

    return-object v0

    .line 46
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 47
    const-string v0, "GEAR_6"

    return-object v0

    .line 49
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 50
    const-string v0, "GEAR_7"

    return-object v0

    .line 52
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    .line 53
    const-string v0, "GEAR_8"

    return-object v0

    .line 55
    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    .line 56
    const-string v0, "GEAR_9"

    return-object v0

    .line 58
    :cond_c
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
