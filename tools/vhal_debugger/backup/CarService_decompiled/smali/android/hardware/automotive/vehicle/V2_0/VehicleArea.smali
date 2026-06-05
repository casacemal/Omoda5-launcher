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
    .param p0, "o"    # I

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 59
    .local v1, "flipped":I
    const/high16 v2, 0x1000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    .line 60
    const-string v3, "GLOBAL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    or-int/2addr v1, v2

    .line 63
    :cond_0
    const/high16 v2, 0x3000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 64
    const-string v3, "WINDOW"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    or-int/2addr v1, v2

    .line 67
    :cond_1
    const/high16 v2, 0x4000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    .line 68
    const-string v3, "MIRROR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    or-int/2addr v1, v2

    .line 71
    :cond_2
    const/high16 v2, 0x5000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    .line 72
    const-string v3, "SEAT"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    or-int/2addr v1, v2

    .line 75
    :cond_3
    const/high16 v2, 0x6000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    .line 76
    const-string v3, "DOOR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    or-int/2addr v1, v2

    .line 79
    :cond_4
    const/high16 v2, 0x7000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_5

    .line 80
    const-string v3, "WHEEL"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    or-int/2addr v1, v2

    .line 83
    :cond_5
    const/high16 v2, 0x8000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_6

    .line 84
    const-string v3, "YFVehicleAreaTire"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    or-int/2addr v1, v2

    .line 87
    :cond_6
    const/high16 v2, 0xf000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_7

    .line 88
    const-string v3, "MASK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    or-int/2addr v1, v2

    .line 91
    :cond_7
    if-eq p0, v1, :cond_8

    .line 92
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

    .line 94
    :cond_8
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 29
    const/high16 v0, 0x1000000

    if-ne p0, v0, :cond_0

    .line 30
    const-string v0, "GLOBAL"

    return-object v0

    .line 32
    :cond_0
    const/high16 v0, 0x3000000

    if-ne p0, v0, :cond_1

    .line 33
    const-string v0, "WINDOW"

    return-object v0

    .line 35
    :cond_1
    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_2

    .line 36
    const-string v0, "MIRROR"

    return-object v0

    .line 38
    :cond_2
    const/high16 v0, 0x5000000

    if-ne p0, v0, :cond_3

    .line 39
    const-string v0, "SEAT"

    return-object v0

    .line 41
    :cond_3
    const/high16 v0, 0x6000000

    if-ne p0, v0, :cond_4

    .line 42
    const-string v0, "DOOR"

    return-object v0

    .line 44
    :cond_4
    const/high16 v0, 0x7000000

    if-ne p0, v0, :cond_5

    .line 45
    const-string v0, "WHEEL"

    return-object v0

    .line 47
    :cond_5
    const/high16 v0, 0x8000000

    if-ne p0, v0, :cond_6

    .line 48
    const-string v0, "YFVehicleAreaTire"

    return-object v0

    .line 50
    :cond_6
    const/high16 v0, 0xf000000

    if-ne p0, v0, :cond_7

    .line 51
    const-string v0, "MASK"

    return-object v0

    .line 53
    :cond_7
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
