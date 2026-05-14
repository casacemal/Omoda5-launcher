.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaDoor;
.super Ljava/lang/Object;
.source "VehicleAreaDoor.java"


# static fields
.field public static final HOOD:I = 0x10000000

.field public static final REAR:I = 0x20000000

.field public static final ROW_1_LEFT:I = 0x1

.field public static final ROW_1_RIGHT:I = 0x4

.field public static final ROW_2_LEFT:I = 0x10

.field public static final ROW_2_RIGHT:I = 0x40

.field public static final ROW_3_LEFT:I = 0x100

.field public static final ROW_3_RIGHT:I = 0x400


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ROW_1_LEFT"

    .line 45
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_1

    const-string v1, "ROW_1_RIGHT"

    .line 49
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_1
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_2

    const-string v1, "ROW_2_LEFT"

    .line 53
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_2
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_3

    const-string v1, "ROW_2_RIGHT"

    .line 57
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_3
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_4

    const-string v1, "ROW_3_LEFT"

    .line 61
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_4
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_5

    const-string v1, "ROW_3_RIGHT"

    .line 65
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_5
    const/high16 v1, 0x10000000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_6

    const-string v3, "HOOD"

    .line 69
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_6
    const/high16 v1, 0x20000000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_7

    const-string v3, "REAR"

    .line 73
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_7
    if-eq p0, v2, :cond_8

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v2, v2

    and-int/2addr p0, v2

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    const-string p0, " | "

    .line 79
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "ROW_1_LEFT"

    return-object p0

    :cond_0
    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    const-string p0, "ROW_1_RIGHT"

    return-object p0

    :cond_1
    const/16 v0, 0x10

    if-ne p0, v0, :cond_2

    const-string p0, "ROW_2_LEFT"

    return-object p0

    :cond_2
    const/16 v0, 0x40

    if-ne p0, v0, :cond_3

    const-string p0, "ROW_2_RIGHT"

    return-object p0

    :cond_3
    const/16 v0, 0x100

    if-ne p0, v0, :cond_4

    const-string p0, "ROW_3_LEFT"

    return-object p0

    :cond_4
    const/16 v0, 0x400

    if-ne p0, v0, :cond_5

    const-string p0, "ROW_3_RIGHT"

    return-object p0

    :cond_5
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_6

    const-string p0, "HOOD"

    return-object p0

    :cond_6
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_7

    const-string p0, "REAR"

    return-object p0

    .line 38
    :cond_7
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
