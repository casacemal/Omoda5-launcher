.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleArea;
.super Ljava/lang/Object;
.source "VehicleArea.java"


# static fields
.field public static final DOOR:I = 0x6000000

.field public static final GLOBAL:I = 0x1000000

.field public static final MASK:I = 0xf000000

.field public static final MIRROR:I = 0x4000000

.field public static final SEAT:I = 0x5000000

.field public static final WHEEL:I = 0x7000000

.field public static final WINDOW:I = 0x3000000

.field public static final YFVehicleAreaTire:I = 0x8000000


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, 0x1000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const-string v2, "GLOBAL"

    .line 60
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/high16 v2, 0x3000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v3, "WINDOW"

    .line 64
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1
    const/high16 v2, 0x4000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const-string v3, "MIRROR"

    .line 68
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_2
    const/high16 v2, 0x5000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    const-string v3, "SEAT"

    .line 72
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_3
    const/high16 v2, 0x6000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    const-string v3, "DOOR"

    .line 76
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_4
    const/high16 v2, 0x7000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    const-string v3, "WHEEL"

    .line 80
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_5
    const/high16 v2, 0x8000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    const-string v3, "YFVehicleAreaTire"

    .line 84
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_6
    const/high16 v2, 0xf000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    const-string v3, "MASK"

    .line 88
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_7
    if-eq p0, v1, :cond_8

    .line 92
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

    :cond_8
    const-string p0, " | "

    .line 94
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    const-string p0, "GLOBAL"

    return-object p0

    :cond_0
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_1

    const-string p0, "WINDOW"

    return-object p0

    :cond_1
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_2

    const-string p0, "MIRROR"

    return-object p0

    :cond_2
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_3

    const-string p0, "SEAT"

    return-object p0

    :cond_3
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_4

    const-string p0, "DOOR"

    return-object p0

    :cond_4
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_5

    const-string p0, "WHEEL"

    return-object p0

    :cond_5
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_6

    const-string p0, "YFVehicleAreaTire"

    return-object p0

    :cond_6
    const/high16 v0, 0xf000000

    if-ne p0, v0, :cond_7

    const-string p0, "MASK"

    return-object p0

    .line 53
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
