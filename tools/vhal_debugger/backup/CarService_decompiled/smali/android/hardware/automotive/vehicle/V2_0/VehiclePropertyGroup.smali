.class public final Landroid/hardware/automotive/vehicle/V2_0/VehiclePropertyGroup;
.super Ljava/lang/Object;
.source "VehiclePropertyGroup.java"


# static fields
.field public static final MASK:I = -0x10000000

.field public static final SYSTEM:I = 0x10000000

.field public static final VENDOR:I = 0x20000000


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

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 30
    .local v1, "flipped":I
    const/high16 v2, 0x10000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_0

    .line 31
    const-string v3, "SYSTEM"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    or-int/2addr v1, v2

    .line 34
    :cond_0
    const/high16 v2, 0x20000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    .line 35
    const-string v3, "VENDOR"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    or-int/2addr v1, v2

    .line 38
    :cond_1
    const/high16 v2, -0x10000000

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    .line 39
    const-string v3, "MASK"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    or-int/2addr v1, v2

    .line 42
    :cond_2
    if-eq p0, v1, :cond_3

    .line 43
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

    .line 45
    :cond_3
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 15
    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_0

    .line 16
    const-string v0, "SYSTEM"

    return-object v0

    .line 18
    :cond_0
    const/high16 v0, 0x20000000

    if-ne p0, v0, :cond_1

    .line 19
    const-string v0, "VENDOR"

    return-object v0

    .line 21
    :cond_1
    const/high16 v0, -0x10000000

    if-ne p0, v0, :cond_2

    .line 22
    const-string v0, "MASK"

    return-object v0

    .line 24
    :cond_2
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
