.class public final Landroid/hardware/automotive/vehicle/V2_0/Obd2SparkIgnitionMonitors;
.super Ljava/lang/Object;
.source "Obd2SparkIgnitionMonitors.java"


# static fields
.field public static final AC_REFRIGERANT_AVAILABLE:I = 0x1000

.field public static final AC_REFRIGERANT_INCOMPLETE:I = 0x2000

.field public static final CATALYST_AVAILABLE:I = 0x100000

.field public static final CATALYST_INCOMPLETE:I = 0x200000

.field public static final COMPONENTS_AVAILABLE:I = 0x1

.field public static final COMPONENTS_INCOMPLETE:I = 0x2

.field public static final EGR_AVAILABLE:I = 0x40

.field public static final EGR_INCOMPLETE:I = 0x80

.field public static final EVAPORATIVE_SYSTEM_AVAILABLE:I = 0x10000

.field public static final EVAPORATIVE_SYSTEM_INCOMPLETE:I = 0x20000

.field public static final FUEL_SYSTEM_AVAILABLE:I = 0x4

.field public static final FUEL_SYSTEM_INCOMPLETE:I = 0x8

.field public static final HEATED_CATALYST_AVAILABLE:I = 0x40000

.field public static final HEATED_CATALYST_INCOMPLETE:I = 0x80000

.field public static final MISFIRE_AVAILABLE:I = 0x10

.field public static final MISFIRE_INCOMPLETE:I = 0x20

.field public static final OXYGEN_SENSOR_AVAILABLE:I = 0x400

.field public static final OXYGEN_SENSOR_HEATER_AVAILABLE:I = 0x100

.field public static final OXYGEN_SENSOR_HEATER_INCOMPLETE:I = 0x200

.field public static final OXYGEN_SENSOR_INCOMPLETE:I = 0x800

.field public static final SECONDARY_AIR_SYSTEM_AVAILABLE:I = 0x4000

.field public static final SECONDARY_AIR_SYSTEM_INCOMPLETE:I = 0x8000


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

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 99
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 100
    .local v1, "flipped":I
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 101
    const-string v2, "COMPONENTS_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    or-int/lit8 v1, v1, 0x1

    .line 104
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 105
    const-string v2, "COMPONENTS_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    or-int/lit8 v1, v1, 0x2

    .line 108
    :cond_1
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 109
    const-string v2, "FUEL_SYSTEM_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    or-int/lit8 v1, v1, 0x4

    .line 112
    :cond_2
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_3

    .line 113
    const-string v2, "FUEL_SYSTEM_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    or-int/lit8 v1, v1, 0x8

    .line 116
    :cond_3
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_4

    .line 117
    const-string v2, "MISFIRE_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    or-int/lit8 v1, v1, 0x10

    .line 120
    :cond_4
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_5

    .line 121
    const-string v2, "MISFIRE_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    or-int/lit8 v1, v1, 0x20

    .line 124
    :cond_5
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_6

    .line 125
    const-string v2, "EGR_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    or-int/lit8 v1, v1, 0x40

    .line 128
    :cond_6
    and-int/lit16 v2, p0, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_7

    .line 129
    const-string v2, "EGR_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    or-int/lit16 v1, v1, 0x80

    .line 132
    :cond_7
    and-int/lit16 v2, p0, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_8

    .line 133
    const-string v2, "OXYGEN_SENSOR_HEATER_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    or-int/lit16 v1, v1, 0x100

    .line 136
    :cond_8
    and-int/lit16 v2, p0, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_9

    .line 137
    const-string v2, "OXYGEN_SENSOR_HEATER_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    or-int/lit16 v1, v1, 0x200

    .line 140
    :cond_9
    and-int/lit16 v2, p0, 0x400

    const/16 v3, 0x400

    if-ne v2, v3, :cond_a

    .line 141
    const-string v2, "OXYGEN_SENSOR_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    or-int/lit16 v1, v1, 0x400

    .line 144
    :cond_a
    and-int/lit16 v2, p0, 0x800

    const/16 v3, 0x800

    if-ne v2, v3, :cond_b

    .line 145
    const-string v2, "OXYGEN_SENSOR_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    or-int/lit16 v1, v1, 0x800

    .line 148
    :cond_b
    and-int/lit16 v2, p0, 0x1000

    const/16 v3, 0x1000

    if-ne v2, v3, :cond_c

    .line 149
    const-string v2, "AC_REFRIGERANT_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    or-int/lit16 v1, v1, 0x1000

    .line 152
    :cond_c
    and-int/lit16 v2, p0, 0x2000

    const/16 v3, 0x2000

    if-ne v2, v3, :cond_d

    .line 153
    const-string v2, "AC_REFRIGERANT_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    or-int/lit16 v1, v1, 0x2000

    .line 156
    :cond_d
    and-int/lit16 v2, p0, 0x4000

    const/16 v3, 0x4000

    if-ne v2, v3, :cond_e

    .line 157
    const-string v2, "SECONDARY_AIR_SYSTEM_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    or-int/lit16 v1, v1, 0x4000

    .line 160
    :cond_e
    const v2, 0x8000

    and-int/2addr v2, p0

    const v3, 0x8000

    if-ne v2, v3, :cond_f

    .line 161
    const-string v2, "SECONDARY_AIR_SYSTEM_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    const v2, 0x8000

    or-int/2addr v1, v2

    .line 164
    :cond_f
    const/high16 v2, 0x10000

    and-int/2addr v2, p0

    const/high16 v3, 0x10000

    if-ne v2, v3, :cond_10

    .line 165
    const-string v2, "EVAPORATIVE_SYSTEM_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 168
    :cond_10
    const/high16 v2, 0x20000

    and-int/2addr v2, p0

    const/high16 v3, 0x20000

    if-ne v2, v3, :cond_11

    .line 169
    const-string v2, "EVAPORATIVE_SYSTEM_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    .line 172
    :cond_11
    const/high16 v2, 0x40000

    and-int/2addr v2, p0

    const/high16 v3, 0x40000

    if-ne v2, v3, :cond_12

    .line 173
    const-string v2, "HEATED_CATALYST_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    .line 176
    :cond_12
    const/high16 v2, 0x80000

    and-int/2addr v2, p0

    const/high16 v3, 0x80000

    if-ne v2, v3, :cond_13

    .line 177
    const-string v2, "HEATED_CATALYST_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    const/high16 v2, 0x80000

    or-int/2addr v1, v2

    .line 180
    :cond_13
    const/high16 v2, 0x100000

    and-int/2addr v2, p0

    const/high16 v3, 0x100000

    if-ne v2, v3, :cond_14

    .line 181
    const-string v2, "CATALYST_AVAILABLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 182
    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    .line 184
    :cond_14
    const/high16 v2, 0x200000

    and-int/2addr v2, p0

    const/high16 v3, 0x200000

    if-ne v2, v3, :cond_15

    .line 185
    const-string v2, "CATALYST_INCOMPLETE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const/high16 v2, 0x200000

    or-int/2addr v1, v2

    .line 188
    :cond_15
    if-eq p0, v1, :cond_16

    .line 189
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

    .line 191
    :cond_16
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 28
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    .line 29
    const-string v0, "COMPONENTS_AVAILABLE"

    return-object v0

    .line 31
    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    .line 32
    const-string v0, "COMPONENTS_INCOMPLETE"

    return-object v0

    .line 34
    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 35
    const-string v0, "FUEL_SYSTEM_AVAILABLE"

    return-object v0

    .line 37
    :cond_2
    const/16 v0, 0x8

    if-ne p0, v0, :cond_3

    .line 38
    const-string v0, "FUEL_SYSTEM_INCOMPLETE"

    return-object v0

    .line 40
    :cond_3
    const/16 v0, 0x10

    if-ne p0, v0, :cond_4

    .line 41
    const-string v0, "MISFIRE_AVAILABLE"

    return-object v0

    .line 43
    :cond_4
    const/16 v0, 0x20

    if-ne p0, v0, :cond_5

    .line 44
    const-string v0, "MISFIRE_INCOMPLETE"

    return-object v0

    .line 46
    :cond_5
    const/16 v0, 0x40

    if-ne p0, v0, :cond_6

    .line 47
    const-string v0, "EGR_AVAILABLE"

    return-object v0

    .line 49
    :cond_6
    const/16 v0, 0x80

    if-ne p0, v0, :cond_7

    .line 50
    const-string v0, "EGR_INCOMPLETE"

    return-object v0

    .line 52
    :cond_7
    const/16 v0, 0x100

    if-ne p0, v0, :cond_8

    .line 53
    const-string v0, "OXYGEN_SENSOR_HEATER_AVAILABLE"

    return-object v0

    .line 55
    :cond_8
    const/16 v0, 0x200

    if-ne p0, v0, :cond_9

    .line 56
    const-string v0, "OXYGEN_SENSOR_HEATER_INCOMPLETE"

    return-object v0

    .line 58
    :cond_9
    const/16 v0, 0x400

    if-ne p0, v0, :cond_a

    .line 59
    const-string v0, "OXYGEN_SENSOR_AVAILABLE"

    return-object v0

    .line 61
    :cond_a
    const/16 v0, 0x800

    if-ne p0, v0, :cond_b

    .line 62
    const-string v0, "OXYGEN_SENSOR_INCOMPLETE"

    return-object v0

    .line 64
    :cond_b
    const/16 v0, 0x1000

    if-ne p0, v0, :cond_c

    .line 65
    const-string v0, "AC_REFRIGERANT_AVAILABLE"

    return-object v0

    .line 67
    :cond_c
    const/16 v0, 0x2000

    if-ne p0, v0, :cond_d

    .line 68
    const-string v0, "AC_REFRIGERANT_INCOMPLETE"

    return-object v0

    .line 70
    :cond_d
    const/16 v0, 0x4000

    if-ne p0, v0, :cond_e

    .line 71
    const-string v0, "SECONDARY_AIR_SYSTEM_AVAILABLE"

    return-object v0

    .line 73
    :cond_e
    const v0, 0x8000

    if-ne p0, v0, :cond_f

    .line 74
    const-string v0, "SECONDARY_AIR_SYSTEM_INCOMPLETE"

    return-object v0

    .line 76
    :cond_f
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_10

    .line 77
    const-string v0, "EVAPORATIVE_SYSTEM_AVAILABLE"

    return-object v0

    .line 79
    :cond_10
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_11

    .line 80
    const-string v0, "EVAPORATIVE_SYSTEM_INCOMPLETE"

    return-object v0

    .line 82
    :cond_11
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_12

    .line 83
    const-string v0, "HEATED_CATALYST_AVAILABLE"

    return-object v0

    .line 85
    :cond_12
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_13

    .line 86
    const-string v0, "HEATED_CATALYST_INCOMPLETE"

    return-object v0

    .line 88
    :cond_13
    const/high16 v0, 0x100000

    if-ne p0, v0, :cond_14

    .line 89
    const-string v0, "CATALYST_AVAILABLE"

    return-object v0

    .line 91
    :cond_14
    const/high16 v0, 0x200000

    if-ne p0, v0, :cond_15

    .line 92
    const-string v0, "CATALYST_INCOMPLETE"

    return-object v0

    .line 94
    :cond_15
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
