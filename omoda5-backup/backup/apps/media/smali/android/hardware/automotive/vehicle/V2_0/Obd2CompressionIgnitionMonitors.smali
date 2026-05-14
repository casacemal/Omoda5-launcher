.class public final Landroid/hardware/automotive/vehicle/V2_0/Obd2CompressionIgnitionMonitors;
.super Ljava/lang/Object;
.source "Obd2CompressionIgnitionMonitors.java"


# static fields
.field public static final BOOST_PRESSURE_AVAILABLE:I = 0x1000

.field public static final BOOST_PRESSURE_INCOMPLETE:I = 0x2000

.field public static final COMPONENTS_AVAILABLE:I = 0x1

.field public static final COMPONENTS_INCOMPLETE:I = 0x2

.field public static final EGR_OR_VVT_AVAILABLE:I = 0x40

.field public static final EGR_OR_VVT_INCOMPLETE:I = 0x80

.field public static final EXHAUST_GAS_SENSOR_AVAILABLE:I = 0x400

.field public static final EXHAUST_GAS_SENSOR_INCOMPLETE:I = 0x800

.field public static final FUEL_SYSTEM_AVAILABLE:I = 0x4

.field public static final FUEL_SYSTEM_INCOMPLETE:I = 0x8

.field public static final MISFIRE_AVAILABLE:I = 0x10

.field public static final MISFIRE_INCOMPLETE:I = 0x20

.field public static final NMHC_CATALYST_AVAILABLE:I = 0x10000

.field public static final NMHC_CATALYST_INCOMPLETE:I = 0x20000

.field public static final NOx_SCR_AVAILABLE:I = 0x4000

.field public static final NOx_SCR_INCOMPLETE:I = 0x8000

.field public static final PM_FILTER_AVAILABLE:I = 0x100

.field public static final PM_FILTER_INCOMPLETE:I = 0x200


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "COMPONENTS_AVAILABLE"

    .line 85
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "COMPONENTS_INCOMPLETE"

    .line 89
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    const-string v1, "FUEL_SYSTEM_AVAILABLE"

    .line 93
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    const-string v1, "FUEL_SYSTEM_INCOMPLETE"

    .line 97
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_3
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_4

    const-string v1, "MISFIRE_AVAILABLE"

    .line 101
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_4
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_5

    const-string v1, "MISFIRE_INCOMPLETE"

    .line 105
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_5
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_6

    const-string v1, "EGR_OR_VVT_AVAILABLE"

    .line 109
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_6
    and-int/lit16 v1, p0, 0x80

    const/16 v3, 0x80

    if-ne v1, v3, :cond_7

    const-string v1, "EGR_OR_VVT_INCOMPLETE"

    .line 113
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x80

    :cond_7
    and-int/lit16 v1, p0, 0x100

    const/16 v3, 0x100

    if-ne v1, v3, :cond_8

    const-string v1, "PM_FILTER_AVAILABLE"

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x100

    :cond_8
    and-int/lit16 v1, p0, 0x200

    const/16 v3, 0x200

    if-ne v1, v3, :cond_9

    const-string v1, "PM_FILTER_INCOMPLETE"

    .line 121
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x200

    :cond_9
    and-int/lit16 v1, p0, 0x400

    const/16 v3, 0x400

    if-ne v1, v3, :cond_a

    const-string v1, "EXHAUST_GAS_SENSOR_AVAILABLE"

    .line 125
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x400

    :cond_a
    and-int/lit16 v1, p0, 0x800

    const/16 v3, 0x800

    if-ne v1, v3, :cond_b

    const-string v1, "EXHAUST_GAS_SENSOR_INCOMPLETE"

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x800

    :cond_b
    and-int/lit16 v1, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v1, v3, :cond_c

    const-string v1, "BOOST_PRESSURE_AVAILABLE"

    .line 133
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x1000

    :cond_c
    and-int/lit16 v1, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v1, v3, :cond_d

    const-string v1, "BOOST_PRESSURE_INCOMPLETE"

    .line 137
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x2000

    :cond_d
    and-int/lit16 v1, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v1, v3, :cond_e

    const-string v1, "NOx_SCR_AVAILABLE"

    .line 141
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit16 v2, v2, 0x4000

    :cond_e
    const v1, 0x8000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_f

    const-string v3, "NOx_SCR_INCOMPLETE"

    .line 145
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_f
    const/high16 v1, 0x10000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_10

    const-string v3, "NMHC_CATALYST_AVAILABLE"

    .line 149
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_10
    const/high16 v1, 0x20000

    and-int v3, p0, v1

    if-ne v3, v1, :cond_11

    const-string v3, "NMHC_CATALYST_INCOMPLETE"

    .line 153
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v2, v1

    :cond_11
    if-eq p0, v2, :cond_12

    .line 157
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

    :cond_12
    const-string p0, " | "

    .line 159
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "COMPONENTS_AVAILABLE"

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    const-string p0, "COMPONENTS_INCOMPLETE"

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    const-string p0, "FUEL_SYSTEM_AVAILABLE"

    return-object p0

    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    const-string p0, "FUEL_SYSTEM_INCOMPLETE"

    return-object p0

    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    const-string p0, "MISFIRE_AVAILABLE"

    return-object p0

    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    const-string p0, "MISFIRE_INCOMPLETE"

    return-object p0

    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    const-string p0, "EGR_OR_VVT_AVAILABLE"

    return-object p0

    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    const-string p0, "EGR_OR_VVT_INCOMPLETE"

    return-object p0

    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    const-string p0, "PM_FILTER_AVAILABLE"

    return-object p0

    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    const-string p0, "PM_FILTER_INCOMPLETE"

    return-object p0

    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    const-string p0, "EXHAUST_GAS_SENSOR_AVAILABLE"

    return-object p0

    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    const-string p0, "EXHAUST_GAS_SENSOR_INCOMPLETE"

    return-object p0

    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    const-string p0, "BOOST_PRESSURE_AVAILABLE"

    return-object p0

    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    const-string p0, "BOOST_PRESSURE_INCOMPLETE"

    return-object p0

    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    const-string p0, "NOx_SCR_AVAILABLE"

    return-object p0

    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    const-string p0, "NOx_SCR_INCOMPLETE"

    return-object p0

    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    const-string p0, "NMHC_CATALYST_AVAILABLE"

    return-object p0

    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    const-string p0, "NMHC_CATALYST_INCOMPLETE"

    return-object p0

    .line 78
    :cond_11
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
