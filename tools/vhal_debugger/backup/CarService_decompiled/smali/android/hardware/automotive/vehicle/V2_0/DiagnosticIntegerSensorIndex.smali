.class public final Landroid/hardware/automotive/vehicle/V2_0/DiagnosticIntegerSensorIndex;
.super Ljava/lang/Object;
.source "DiagnosticIntegerSensorIndex.java"


# static fields
.field public static final ABSOLUTE_BAROMETRIC_PRESSURE:I = 0xb

.field public static final AMBIENT_AIR_TEMPERATURE:I = 0xd

.field public static final COMMANDED_SECONDARY_AIR_STATUS:I = 0x5

.field public static final CONTROL_MODULE_VOLTAGE:I = 0xc

.field public static final DISTANCE_TRAVELED_SINCE_CODES_CLEARED:I = 0xa

.field public static final DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON:I = 0x8

.field public static final DRIVER_DEMAND_PERCENT_TORQUE:I = 0x18

.field public static final ENGINE_ACTUAL_PERCENT_TORQUE:I = 0x19

.field public static final ENGINE_OIL_TEMPERATURE:I = 0x17

.field public static final ENGINE_PERCENT_TORQUE_DATA_IDLE:I = 0x1b

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT1:I = 0x1c

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT2:I = 0x1d

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT3:I = 0x1e

.field public static final ENGINE_PERCENT_TORQUE_DATA_POINT4:I = 0x1f

.field public static final ENGINE_REFERENCE_PERCENT_TORQUE:I = 0x1a

.field public static final FUEL_RAIL_ABSOLUTE_PRESSURE:I = 0x16

.field public static final FUEL_SYSTEM_STATUS:I = 0x0

.field public static final FUEL_TYPE:I = 0x15

.field public static final IGNITION_MONITORS_SUPPORTED:I = 0x2

.field public static final IGNITION_SPECIFIC_MONITORS:I = 0x3

.field public static final INTAKE_AIR_TEMPERATURE:I = 0x4

.field public static final LAST_SYSTEM_INDEX:I = 0x1f

.field public static final MALFUNCTION_INDICATOR_LIGHT_ON:I = 0x1

.field public static final MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR:I = 0x14

.field public static final MAX_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x10

.field public static final MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE:I = 0x13

.field public static final MAX_OXYGEN_SENSOR_CURRENT:I = 0x12

.field public static final MAX_OXYGEN_SENSOR_VOLTAGE:I = 0x11

.field public static final NUM_OXYGEN_SENSORS_PRESENT:I = 0x6

.field public static final RUNTIME_SINCE_ENGINE_START:I = 0x7

.field public static final TIME_SINCE_TROUBLE_CODES_CLEARED:I = 0xf

.field public static final TIME_WITH_MALFUNCTION_LIGHT_ON:I = 0xe

.field public static final WARMUPS_SINCE_CODES_CLEARED:I = 0x9


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

    .line 160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 161
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 162
    .local v1, "flipped":I
    const-string v2, "FUEL_SYSTEM_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 164
    const-string v2, "MALFUNCTION_INDICATOR_LIGHT_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 165
    or-int/lit8 v1, v1, 0x1

    .line 167
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 168
    const-string v2, "IGNITION_MONITORS_SUPPORTED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 169
    or-int/lit8 v1, v1, 0x2

    .line 171
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 172
    const-string v2, "IGNITION_SPECIFIC_MONITORS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    or-int/lit8 v1, v1, 0x3

    .line 175
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 176
    const-string v2, "INTAKE_AIR_TEMPERATURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    or-int/lit8 v1, v1, 0x4

    .line 179
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 180
    const-string v2, "COMMANDED_SECONDARY_AIR_STATUS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    or-int/lit8 v1, v1, 0x5

    .line 183
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 184
    const-string v2, "NUM_OXYGEN_SENSORS_PRESENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    or-int/lit8 v1, v1, 0x6

    .line 187
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 188
    const-string v2, "RUNTIME_SINCE_ENGINE_START"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 189
    or-int/lit8 v1, v1, 0x7

    .line 191
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 192
    const-string v2, "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 193
    or-int/lit8 v1, v1, 0x8

    .line 195
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 196
    const-string v2, "WARMUPS_SINCE_CODES_CLEARED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    or-int/lit8 v1, v1, 0x9

    .line 199
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 200
    const-string v2, "DISTANCE_TRAVELED_SINCE_CODES_CLEARED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    or-int/lit8 v1, v1, 0xa

    .line 203
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 204
    const-string v2, "ABSOLUTE_BAROMETRIC_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    or-int/lit8 v1, v1, 0xb

    .line 207
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 208
    const-string v2, "CONTROL_MODULE_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    or-int/lit8 v1, v1, 0xc

    .line 211
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 212
    const-string v2, "AMBIENT_AIR_TEMPERATURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    or-int/lit8 v1, v1, 0xd

    .line 215
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 216
    const-string v2, "TIME_WITH_MALFUNCTION_LIGHT_ON"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    or-int/lit8 v1, v1, 0xe

    .line 219
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 220
    const-string v2, "TIME_SINCE_TROUBLE_CODES_CLEARED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    or-int/lit8 v1, v1, 0xf

    .line 223
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 224
    const-string v2, "MAX_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    or-int/lit8 v1, v1, 0x10

    .line 227
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 228
    const-string v2, "MAX_OXYGEN_SENSOR_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    or-int/lit8 v1, v1, 0x11

    .line 231
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 232
    const-string v2, "MAX_OXYGEN_SENSOR_CURRENT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    or-int/lit8 v1, v1, 0x12

    .line 235
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 236
    const-string v2, "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    or-int/lit8 v1, v1, 0x13

    .line 239
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 240
    const-string v2, "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    or-int/lit8 v1, v1, 0x14

    .line 243
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 244
    const-string v2, "FUEL_TYPE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    or-int/lit8 v1, v1, 0x15

    .line 247
    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    .line 248
    const-string v2, "FUEL_RAIL_ABSOLUTE_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    or-int/lit8 v1, v1, 0x16

    .line 251
    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 252
    const-string v2, "ENGINE_OIL_TEMPERATURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    or-int/lit8 v1, v1, 0x17

    .line 255
    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    .line 256
    const-string v2, "DRIVER_DEMAND_PERCENT_TORQUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 257
    or-int/lit8 v1, v1, 0x18

    .line 259
    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    .line 260
    const-string v2, "ENGINE_ACTUAL_PERCENT_TORQUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    or-int/lit8 v1, v1, 0x19

    .line 263
    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    .line 264
    const-string v2, "ENGINE_REFERENCE_PERCENT_TORQUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 265
    or-int/lit8 v1, v1, 0x1a

    .line 267
    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    .line 268
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_IDLE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    or-int/lit8 v1, v1, 0x1b

    .line 271
    :cond_1a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1b

    .line 272
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    or-int/lit8 v1, v1, 0x1c

    .line 275
    :cond_1b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1c

    .line 276
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 277
    or-int/lit8 v1, v1, 0x1d

    .line 279
    :cond_1c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1d

    .line 280
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    or-int/lit8 v1, v1, 0x1e

    .line 283
    :cond_1d
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1e

    .line 284
    const-string v2, "ENGINE_PERCENT_TORQUE_DATA_POINT4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 285
    or-int/lit8 v1, v1, 0x1f

    .line 287
    :cond_1e
    and-int/lit8 v2, p0, 0x1f

    if-ne v2, v3, :cond_1f

    .line 288
    const-string v2, "LAST_SYSTEM_INDEX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 289
    or-int/lit8 v1, v1, 0x1f

    .line 291
    :cond_1f
    if-eq p0, v1, :cond_20

    .line 292
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

    .line 294
    :cond_20
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 57
    if-nez p0, :cond_0

    .line 58
    const-string v0, "FUEL_SYSTEM_STATUS"

    return-object v0

    .line 60
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 61
    const-string v0, "MALFUNCTION_INDICATOR_LIGHT_ON"

    return-object v0

    .line 63
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 64
    const-string v0, "IGNITION_MONITORS_SUPPORTED"

    return-object v0

    .line 66
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 67
    const-string v0, "IGNITION_SPECIFIC_MONITORS"

    return-object v0

    .line 69
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 70
    const-string v0, "INTAKE_AIR_TEMPERATURE"

    return-object v0

    .line 72
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 73
    const-string v0, "COMMANDED_SECONDARY_AIR_STATUS"

    return-object v0

    .line 75
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 76
    const-string v0, "NUM_OXYGEN_SENSORS_PRESENT"

    return-object v0

    .line 78
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 79
    const-string v0, "RUNTIME_SINCE_ENGINE_START"

    return-object v0

    .line 81
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 82
    const-string v0, "DISTANCE_TRAVELED_WITH_MALFUNCTION_INDICATOR_LIGHT_ON"

    return-object v0

    .line 84
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 85
    const-string v0, "WARMUPS_SINCE_CODES_CLEARED"

    return-object v0

    .line 87
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 88
    const-string v0, "DISTANCE_TRAVELED_SINCE_CODES_CLEARED"

    return-object v0

    .line 90
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 91
    const-string v0, "ABSOLUTE_BAROMETRIC_PRESSURE"

    return-object v0

    .line 93
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 94
    const-string v0, "CONTROL_MODULE_VOLTAGE"

    return-object v0

    .line 96
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 97
    const-string v0, "AMBIENT_AIR_TEMPERATURE"

    return-object v0

    .line 99
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 100
    const-string v0, "TIME_WITH_MALFUNCTION_LIGHT_ON"

    return-object v0

    .line 102
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 103
    const-string v0, "TIME_SINCE_TROUBLE_CODES_CLEARED"

    return-object v0

    .line 105
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 106
    const-string v0, "MAX_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 108
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 109
    const-string v0, "MAX_OXYGEN_SENSOR_VOLTAGE"

    return-object v0

    .line 111
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 112
    const-string v0, "MAX_OXYGEN_SENSOR_CURRENT"

    return-object v0

    .line 114
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 115
    const-string v0, "MAX_INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object v0

    .line 117
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 118
    const-string v0, "MAX_AIR_FLOW_RATE_FROM_MASS_AIR_FLOW_SENSOR"

    return-object v0

    .line 120
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 121
    const-string v0, "FUEL_TYPE"

    return-object v0

    .line 123
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 124
    const-string v0, "FUEL_RAIL_ABSOLUTE_PRESSURE"

    return-object v0

    .line 126
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 127
    const-string v0, "ENGINE_OIL_TEMPERATURE"

    return-object v0

    .line 129
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 130
    const-string v0, "DRIVER_DEMAND_PERCENT_TORQUE"

    return-object v0

    .line 132
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 133
    const-string v0, "ENGINE_ACTUAL_PERCENT_TORQUE"

    return-object v0

    .line 135
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 136
    const-string v0, "ENGINE_REFERENCE_PERCENT_TORQUE"

    return-object v0

    .line 138
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 139
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_IDLE"

    return-object v0

    .line 141
    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    .line 142
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT1"

    return-object v0

    .line 144
    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    .line 145
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT2"

    return-object v0

    .line 147
    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    .line 148
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT3"

    return-object v0

    .line 150
    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    .line 151
    const-string v0, "ENGINE_PERCENT_TORQUE_DATA_POINT4"

    return-object v0

    .line 153
    :cond_1f
    if-ne p0, v0, :cond_20

    .line 154
    const-string v0, "LAST_SYSTEM_INDEX"

    return-object v0

    .line 156
    :cond_20
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
