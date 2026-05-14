.class public final Landroid/hardware/automotive/YFvehicle/V2_0/YFVehicleModule;
.super Ljava/lang/Object;
.source "YFVehicleModule.java"


# static fields
.field public static final AVM_EVENT:I = 0xc000

.field public static final CONFIGURE:I = 0x6000

.field public static final EOL:I = 0x5000

.field public static final HVAC:I = 0x1000

.field public static final NONE:I = 0x0

.field public static final PMS:I = 0x7000

.field public static final VEHICLE_CONDITION:I = 0x2000

.field public static final VEHICLE_SETTINGS:I = 0x3000


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

    const-string v1, "NONE"

    .line 44
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit16 v1, p0, 0x1000

    const/16 v2, 0x1000

    if-ne v1, v2, :cond_0

    const-string v1, "HVAC"

    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_1

    const-string v1, "VEHICLE_CONDITION"

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_1
    and-int/lit16 v1, p0, 0x3000

    const/16 v3, 0x3000

    if-ne v1, v3, :cond_2

    const-string v1, "VEHICLE_SETTINGS"

    .line 54
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x3000

    :cond_2
    and-int/lit16 v1, p0, 0x5000

    const/16 v3, 0x5000

    if-ne v1, v3, :cond_3

    const-string v1, "EOL"

    .line 58
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x5000

    :cond_3
    and-int/lit16 v1, p0, 0x6000

    const/16 v3, 0x6000

    if-ne v1, v3, :cond_4

    const-string v1, "CONFIGURE"

    .line 62
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x6000

    :cond_4
    and-int/lit16 v1, p0, 0x7000

    const/16 v3, 0x7000

    if-ne v1, v3, :cond_5

    const-string v1, "PMS"

    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x7000

    :cond_5
    const v1, 0xc000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_6

    const-string v3, "AVM_EVENT"

    .line 70
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_6
    if-eq p0, v2, :cond_7

    .line 74
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

    :cond_7
    const-string p0, " | "

    .line 76
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "NONE"

    return-object p0

    :cond_0
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_1

    const-string p0, "HVAC"

    return-object p0

    :cond_1
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_2

    const-string p0, "VEHICLE_CONDITION"

    return-object p0

    :cond_2
    const/16 v0, 0x3000

    if-ne p0, v0, :cond_3

    const-string p0, "VEHICLE_SETTINGS"

    return-object p0

    :cond_3
    const/16 v0, 0x5000

    if-ne p0, v0, :cond_4

    const-string p0, "EOL"

    return-object p0

    :cond_4
    const/16 v0, 0x6000

    if-ne p0, v0, :cond_5

    const-string p0, "CONFIGURE"

    return-object p0

    :cond_5
    const/16 v0, 0x7000

    if-ne p0, v0, :cond_6

    const-string p0, "PMS"

    return-object p0

    :cond_6
    const v0, 0xc000

    if-ne p0, v0, :cond_7

    const-string p0, "AVM_EVENT"

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
