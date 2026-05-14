.class public final Landroid/hardware/automotive/vehicle/V2_0/DiagnosticFloatSensorIndex;
.super Ljava/lang/Object;
.source "DiagnosticFloatSensorIndex.java"


# static fields
.field public static final ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE:I = 0x3a

.field public static final ABSOLUTE_LOAD_VALUE:I = 0x30

.field public static final ABSOLUTE_THROTTLE_POSITION_B:I = 0x33

.field public static final ABSOLUTE_THROTTLE_POSITION_C:I = 0x34

.field public static final ACCELERATOR_PEDAL_POSITION_D:I = 0x35

.field public static final ACCELERATOR_PEDAL_POSITION_E:I = 0x36

.field public static final ACCELERATOR_PEDAL_POSITION_F:I = 0x37

.field public static final CALCULATED_ENGINE_LOAD:I = 0x0

.field public static final CATALYST_TEMPERATURE_BANK1_SENSOR1:I = 0x2c

.field public static final CATALYST_TEMPERATURE_BANK1_SENSOR2:I = 0x2e

.field public static final CATALYST_TEMPERATURE_BANK2_SENSOR1:I = 0x2d

.field public static final CATALYST_TEMPERATURE_BANK2_SENSOR2:I = 0x2f

.field public static final COMMANDED_EVAPORATIVE_PURGE:I = 0x29

.field public static final COMMANDED_EXHAUST_GAS_RECIRCULATION:I = 0x27

.field public static final COMMANDED_THROTTLE_ACTUATOR:I = 0x38

.field public static final ENGINE_COOLANT_TEMPERATURE:I = 0x1

.field public static final ENGINE_FUEL_RATE:I = 0x46

.field public static final ENGINE_RPM:I = 0x8

.field public static final ETHANOL_FUEL_PERCENTAGE:I = 0x39

.field public static final EVAPORATION_SYSTEM_VAPOR_PRESSURE:I = 0x2b

.field public static final EXHAUST_GAS_RECIRCULATION_ERROR:I = 0x28

.field public static final FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO:I = 0x31

.field public static final FUEL_INJECTION_TIMING:I = 0x45

.field public static final FUEL_PRESSURE:I = 0x6

.field public static final FUEL_RAIL_GAUGE_PRESSURE:I = 0x26

.field public static final FUEL_RAIL_PRESSURE:I = 0x25

.field public static final FUEL_TANK_LEVEL_INPUT:I = 0x2a

.field public static final HYBRID_BATTERY_PACK_REMAINING_LIFE:I = 0x44

.field public static final INTAKE_MANIFOLD_ABSOLUTE_PRESSURE:I = 0x7

.field public static final LAST_SYSTEM_INDEX:I = 0x46

.field public static final LONG_TERM_FUEL_TRIM_BANK1:I = 0x3

.field public static final LONG_TERM_FUEL_TRIM_BANK2:I = 0x5

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1:I = 0x3f

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2:I = 0x40

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3:I = 0x41

.field public static final LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4:I = 0x42

.field public static final MAF_AIR_FLOW_RATE:I = 0xb

.field public static final OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO:I = 0xf

.field public static final OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM:I = 0xe

.field public static final OXYGEN_SENSOR1_VOLTAGE:I = 0xd

.field public static final OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x12

.field public static final OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM:I = 0x11

.field public static final OXYGEN_SENSOR2_VOLTAGE:I = 0x10

.field public static final OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x15

.field public static final OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM:I = 0x14

.field public static final OXYGEN_SENSOR3_VOLTAGE:I = 0x13

.field public static final OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x18

.field public static final OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM:I = 0x17

.field public static final OXYGEN_SENSOR4_VOLTAGE:I = 0x16

.field public static final OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x1b

.field public static final OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM:I = 0x1a

.field public static final OXYGEN_SENSOR5_VOLTAGE:I = 0x19

.field public static final OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x1e

.field public static final OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM:I = 0x1d

.field public static final OXYGEN_SENSOR6_VOLTAGE:I = 0x1c

.field public static final OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x21

.field public static final OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM:I = 0x20

.field public static final OXYGEN_SENSOR7_VOLTAGE:I = 0x1f

.field public static final OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO:I = 0x24

.field public static final OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM:I = 0x23

.field public static final OXYGEN_SENSOR8_VOLTAGE:I = 0x22

.field public static final RELATIVE_ACCELERATOR_PEDAL_POSITION:I = 0x43

.field public static final RELATIVE_THROTTLE_POSITION:I = 0x32

.field public static final SHORT_TERM_FUEL_TRIM_BANK1:I = 0x2

.field public static final SHORT_TERM_FUEL_TRIM_BANK2:I = 0x4

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1:I = 0x3b

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2:I = 0x3c

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3:I = 0x3d

.field public static final SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4:I = 0x3e

.field public static final THROTTLE_POSITION:I = 0xc

.field public static final TIMING_ADVANCE:I = 0xa

.field public static final VEHICLE_SPEED:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 5

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "CALCULATED_ENGINE_LOAD"

    .line 300
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "ENGINE_COOLANT_TEMPERATURE"

    .line 302
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/lit8 v1, p0, 0x2

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const-string v1, "SHORT_TERM_FUEL_TRIM_BANK1"

    .line 306
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2

    :cond_1
    and-int/lit8 v1, p0, 0x3

    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    const-string v1, "LONG_TERM_FUEL_TRIM_BANK1"

    .line 310
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3

    :cond_2
    and-int/lit8 v1, p0, 0x4

    const/4 v3, 0x4

    if-ne v1, v3, :cond_3

    const-string v1, "SHORT_TERM_FUEL_TRIM_BANK2"

    .line 314
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x4

    :cond_3
    and-int/lit8 v1, p0, 0x5

    const/4 v3, 0x5

    if-ne v1, v3, :cond_4

    const-string v1, "LONG_TERM_FUEL_TRIM_BANK2"

    .line 318
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x5

    :cond_4
    and-int/lit8 v1, p0, 0x6

    const/4 v3, 0x6

    if-ne v1, v3, :cond_5

    const-string v1, "FUEL_PRESSURE"

    .line 322
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x6

    :cond_5
    and-int/lit8 v1, p0, 0x7

    const/4 v3, 0x7

    if-ne v1, v3, :cond_6

    const-string v1, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    .line 326
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x7

    :cond_6
    and-int/lit8 v1, p0, 0x8

    const/16 v3, 0x8

    if-ne v1, v3, :cond_7

    const-string v1, "ENGINE_RPM"

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x8

    :cond_7
    and-int/lit8 v1, p0, 0x9

    const/16 v3, 0x9

    if-ne v1, v3, :cond_8

    const-string v1, "VEHICLE_SPEED"

    .line 334
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x9

    :cond_8
    and-int/lit8 v1, p0, 0xa

    const/16 v3, 0xa

    if-ne v1, v3, :cond_9

    const-string v1, "TIMING_ADVANCE"

    .line 338
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xa

    :cond_9
    and-int/lit8 v1, p0, 0xb

    const/16 v3, 0xb

    if-ne v1, v3, :cond_a

    const-string v1, "MAF_AIR_FLOW_RATE"

    .line 342
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xb

    :cond_a
    and-int/lit8 v1, p0, 0xc

    const/16 v3, 0xc

    if-ne v1, v3, :cond_b

    const-string v1, "THROTTLE_POSITION"

    .line 346
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xc

    :cond_b
    and-int/lit8 v1, p0, 0xd

    const/16 v3, 0xd

    if-ne v1, v3, :cond_c

    const-string v1, "OXYGEN_SENSOR1_VOLTAGE"

    .line 350
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xd

    :cond_c
    and-int/lit8 v1, p0, 0xe

    const/16 v3, 0xe

    if-ne v1, v3, :cond_d

    const-string v1, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    .line 354
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xe

    :cond_d
    and-int/lit8 v1, p0, 0xf

    const/16 v3, 0xf

    if-ne v1, v3, :cond_e

    const-string v1, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 358
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0xf

    :cond_e
    and-int/lit8 v1, p0, 0x10

    const/16 v3, 0x10

    if-ne v1, v3, :cond_f

    const-string v1, "OXYGEN_SENSOR2_VOLTAGE"

    .line 362
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x10

    :cond_f
    and-int/lit8 v1, p0, 0x11

    const/16 v3, 0x11

    if-ne v1, v3, :cond_10

    const-string v1, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    .line 366
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x11

    :cond_10
    and-int/lit8 v1, p0, 0x12

    const/16 v3, 0x12

    if-ne v1, v3, :cond_11

    const-string v1, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 370
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x12

    :cond_11
    and-int/lit8 v1, p0, 0x13

    const/16 v3, 0x13

    if-ne v1, v3, :cond_12

    const-string v1, "OXYGEN_SENSOR3_VOLTAGE"

    .line 374
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x13

    :cond_12
    and-int/lit8 v1, p0, 0x14

    const/16 v3, 0x14

    if-ne v1, v3, :cond_13

    const-string v1, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    .line 378
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x14

    :cond_13
    and-int/lit8 v1, p0, 0x15

    const/16 v3, 0x15

    if-ne v1, v3, :cond_14

    const-string v1, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 382
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x15

    :cond_14
    and-int/lit8 v1, p0, 0x16

    const/16 v3, 0x16

    if-ne v1, v3, :cond_15

    const-string v1, "OXYGEN_SENSOR4_VOLTAGE"

    .line 386
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x16

    :cond_15
    and-int/lit8 v1, p0, 0x17

    const/16 v3, 0x17

    if-ne v1, v3, :cond_16

    const-string v1, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    .line 390
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x17

    :cond_16
    and-int/lit8 v1, p0, 0x18

    const/16 v3, 0x18

    if-ne v1, v3, :cond_17

    const-string v1, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 394
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x18

    :cond_17
    and-int/lit8 v1, p0, 0x19

    const/16 v3, 0x19

    if-ne v1, v3, :cond_18

    const-string v1, "OXYGEN_SENSOR5_VOLTAGE"

    .line 398
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x19

    :cond_18
    and-int/lit8 v1, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v1, v3, :cond_19

    const-string v1, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    .line 402
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1a

    :cond_19
    and-int/lit8 v1, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v1, v3, :cond_1a

    const-string v1, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 406
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1b

    :cond_1a
    and-int/lit8 v1, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v1, v3, :cond_1b

    const-string v1, "OXYGEN_SENSOR6_VOLTAGE"

    .line 410
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1c

    :cond_1b
    and-int/lit8 v1, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v1, v3, :cond_1c

    const-string v1, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    .line 414
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1d

    :cond_1c
    and-int/lit8 v1, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v1, v3, :cond_1d

    const-string v1, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 418
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1e

    :cond_1d
    and-int/lit8 v1, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_1e

    const-string v1, "OXYGEN_SENSOR7_VOLTAGE"

    .line 422
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x1f

    :cond_1e
    and-int/lit8 v1, p0, 0x20

    const/16 v3, 0x20

    if-ne v1, v3, :cond_1f

    const-string v1, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    .line 426
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x20

    :cond_1f
    and-int/lit8 v1, p0, 0x21

    const/16 v3, 0x21

    if-ne v1, v3, :cond_20

    const-string v1, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 430
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x21

    :cond_20
    and-int/lit8 v1, p0, 0x22

    const/16 v3, 0x22

    if-ne v1, v3, :cond_21

    const-string v1, "OXYGEN_SENSOR8_VOLTAGE"

    .line 434
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x22

    :cond_21
    and-int/lit8 v1, p0, 0x23

    const/16 v3, 0x23

    if-ne v1, v3, :cond_22

    const-string v1, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x23

    :cond_22
    and-int/lit8 v1, p0, 0x24

    const/16 v3, 0x24

    if-ne v1, v3, :cond_23

    const-string v1, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    .line 442
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x24

    :cond_23
    and-int/lit8 v1, p0, 0x25

    const/16 v3, 0x25

    if-ne v1, v3, :cond_24

    const-string v1, "FUEL_RAIL_PRESSURE"

    .line 446
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x25

    :cond_24
    and-int/lit8 v1, p0, 0x26

    const/16 v3, 0x26

    if-ne v1, v3, :cond_25

    const-string v1, "FUEL_RAIL_GAUGE_PRESSURE"

    .line 450
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x26

    :cond_25
    and-int/lit8 v1, p0, 0x27

    const/16 v3, 0x27

    if-ne v1, v3, :cond_26

    const-string v1, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    .line 454
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x27

    :cond_26
    and-int/lit8 v1, p0, 0x28

    const/16 v3, 0x28

    if-ne v1, v3, :cond_27

    const-string v1, "EXHAUST_GAS_RECIRCULATION_ERROR"

    .line 458
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x28

    :cond_27
    and-int/lit8 v1, p0, 0x29

    const/16 v3, 0x29

    if-ne v1, v3, :cond_28

    const-string v1, "COMMANDED_EVAPORATIVE_PURGE"

    .line 462
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x29

    :cond_28
    and-int/lit8 v1, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v1, v3, :cond_29

    const-string v1, "FUEL_TANK_LEVEL_INPUT"

    .line 466
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2a

    :cond_29
    and-int/lit8 v1, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v1, v3, :cond_2a

    const-string v1, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    .line 470
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2b

    :cond_2a
    and-int/lit8 v1, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v1, v3, :cond_2b

    const-string v1, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    .line 474
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2c

    :cond_2b
    and-int/lit8 v1, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_2c

    const-string v1, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    .line 478
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2d

    :cond_2c
    and-int/lit8 v1, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v1, v3, :cond_2d

    const-string v1, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    .line 482
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2e

    :cond_2d
    and-int/lit8 v1, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v1, v3, :cond_2e

    const-string v1, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    .line 486
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x2f

    :cond_2e
    and-int/lit8 v1, p0, 0x30

    const/16 v3, 0x30

    if-ne v1, v3, :cond_2f

    const-string v1, "ABSOLUTE_LOAD_VALUE"

    .line 490
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x30

    :cond_2f
    and-int/lit8 v1, p0, 0x31

    const/16 v3, 0x31

    if-ne v1, v3, :cond_30

    const-string v1, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    .line 494
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x31

    :cond_30
    and-int/lit8 v1, p0, 0x32

    const/16 v3, 0x32

    if-ne v1, v3, :cond_31

    const-string v1, "RELATIVE_THROTTLE_POSITION"

    .line 498
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x32

    :cond_31
    and-int/lit8 v1, p0, 0x33

    const/16 v3, 0x33

    if-ne v1, v3, :cond_32

    const-string v1, "ABSOLUTE_THROTTLE_POSITION_B"

    .line 502
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x33

    :cond_32
    and-int/lit8 v1, p0, 0x34

    const/16 v3, 0x34

    if-ne v1, v3, :cond_33

    const-string v1, "ABSOLUTE_THROTTLE_POSITION_C"

    .line 506
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x34

    :cond_33
    and-int/lit8 v1, p0, 0x35

    const/16 v3, 0x35

    if-ne v1, v3, :cond_34

    const-string v1, "ACCELERATOR_PEDAL_POSITION_D"

    .line 510
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x35

    :cond_34
    and-int/lit8 v1, p0, 0x36

    const/16 v3, 0x36

    if-ne v1, v3, :cond_35

    const-string v1, "ACCELERATOR_PEDAL_POSITION_E"

    .line 514
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x36

    :cond_35
    and-int/lit8 v1, p0, 0x37

    const/16 v3, 0x37

    if-ne v1, v3, :cond_36

    const-string v1, "ACCELERATOR_PEDAL_POSITION_F"

    .line 518
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x37

    :cond_36
    and-int/lit8 v1, p0, 0x38

    const/16 v3, 0x38

    if-ne v1, v3, :cond_37

    const-string v1, "COMMANDED_THROTTLE_ACTUATOR"

    .line 522
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x38

    :cond_37
    and-int/lit8 v1, p0, 0x39

    const/16 v3, 0x39

    if-ne v1, v3, :cond_38

    const-string v1, "ETHANOL_FUEL_PERCENTAGE"

    .line 526
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x39

    :cond_38
    and-int/lit8 v1, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_39

    const-string v1, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    .line 530
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3a

    :cond_39
    and-int/lit8 v1, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v1, v3, :cond_3a

    const-string v1, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    .line 534
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3b

    :cond_3a
    and-int/lit8 v1, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_3b

    const-string v1, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    .line 538
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3c

    :cond_3b
    and-int/lit8 v1, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v1, v3, :cond_3c

    const-string v1, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    .line 542
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3d

    :cond_3c
    and-int/lit8 v1, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v1, v3, :cond_3d

    const-string v1, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    .line 546
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3e

    :cond_3d
    and-int/lit8 v1, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v1, v3, :cond_3e

    const-string v1, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    .line 550
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x3f

    :cond_3e
    and-int/lit8 v1, p0, 0x40

    const/16 v3, 0x40

    if-ne v1, v3, :cond_3f

    const-string v1, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    .line 554
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x40

    :cond_3f
    and-int/lit8 v1, p0, 0x41

    const/16 v3, 0x41

    if-ne v1, v3, :cond_40

    const-string v1, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    .line 558
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x41

    :cond_40
    and-int/lit8 v1, p0, 0x42

    const/16 v3, 0x42

    if-ne v1, v3, :cond_41

    const-string v1, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    .line 562
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x42

    :cond_41
    and-int/lit8 v1, p0, 0x43

    const/16 v3, 0x43

    if-ne v1, v3, :cond_42

    const-string v1, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    .line 566
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x43

    :cond_42
    and-int/lit8 v1, p0, 0x44

    const/16 v3, 0x44

    if-ne v1, v3, :cond_43

    const-string v1, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    .line 570
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x44

    :cond_43
    and-int/lit8 v1, p0, 0x45

    const/16 v3, 0x45

    if-ne v1, v3, :cond_44

    const-string v1, "FUEL_INJECTION_TIMING"

    .line 574
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x45

    :cond_44
    and-int/lit8 v1, p0, 0x46

    const/16 v3, 0x46

    if-ne v1, v3, :cond_45

    const-string v4, "ENGINE_FUEL_RATE"

    .line 578
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x46

    :cond_45
    if-ne v1, v3, :cond_46

    const-string v1, "LAST_SYSTEM_INDEX"

    .line 582
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/lit8 v2, v2, 0x46

    :cond_46
    if-eq p0, v2, :cond_47

    .line 586
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

    :cond_47
    const-string p0, " | "

    .line 588
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "CALCULATED_ENGINE_LOAD"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "ENGINE_COOLANT_TEMPERATURE"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "SHORT_TERM_FUEL_TRIM_BANK1"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "LONG_TERM_FUEL_TRIM_BANK1"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "SHORT_TERM_FUEL_TRIM_BANK2"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "LONG_TERM_FUEL_TRIM_BANK2"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "FUEL_PRESSURE"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "ENGINE_RPM"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "VEHICLE_SPEED"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "TIMING_ADVANCE"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "MAF_AIR_FLOW_RATE"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "THROTTLE_POSITION"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "OXYGEN_SENSOR1_VOLTAGE"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "OXYGEN_SENSOR2_VOLTAGE"

    return-object p0

    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    const-string p0, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    const-string p0, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    const-string p0, "OXYGEN_SENSOR3_VOLTAGE"

    return-object p0

    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    const-string p0, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    const-string p0, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    const-string p0, "OXYGEN_SENSOR4_VOLTAGE"

    return-object p0

    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    const-string p0, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    const-string p0, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    const-string p0, "OXYGEN_SENSOR5_VOLTAGE"

    return-object p0

    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    const-string p0, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    const-string p0, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    const-string p0, "OXYGEN_SENSOR6_VOLTAGE"

    return-object p0

    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    const-string p0, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    const-string p0, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    const-string p0, "OXYGEN_SENSOR7_VOLTAGE"

    return-object p0

    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    const-string p0, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    const-string p0, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    const-string p0, "OXYGEN_SENSOR8_VOLTAGE"

    return-object p0

    :cond_22
    const/16 v0, 0x23

    if-ne p0, v0, :cond_23

    const-string p0, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    return-object p0

    :cond_23
    const/16 v0, 0x24

    if-ne p0, v0, :cond_24

    const-string p0, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object p0

    :cond_24
    const/16 v0, 0x25

    if-ne p0, v0, :cond_25

    const-string p0, "FUEL_RAIL_PRESSURE"

    return-object p0

    :cond_25
    const/16 v0, 0x26

    if-ne p0, v0, :cond_26

    const-string p0, "FUEL_RAIL_GAUGE_PRESSURE"

    return-object p0

    :cond_26
    const/16 v0, 0x27

    if-ne p0, v0, :cond_27

    const-string p0, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    return-object p0

    :cond_27
    const/16 v0, 0x28

    if-ne p0, v0, :cond_28

    const-string p0, "EXHAUST_GAS_RECIRCULATION_ERROR"

    return-object p0

    :cond_28
    const/16 v0, 0x29

    if-ne p0, v0, :cond_29

    const-string p0, "COMMANDED_EVAPORATIVE_PURGE"

    return-object p0

    :cond_29
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2a

    const-string p0, "FUEL_TANK_LEVEL_INPUT"

    return-object p0

    :cond_2a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2b

    const-string p0, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object p0

    :cond_2b
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    const-string p0, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    return-object p0

    :cond_2c
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_2d

    const-string p0, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    return-object p0

    :cond_2d
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2e

    const-string p0, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    return-object p0

    :cond_2e
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2f

    const-string p0, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    return-object p0

    :cond_2f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_30

    const-string p0, "ABSOLUTE_LOAD_VALUE"

    return-object p0

    :cond_30
    const/16 v0, 0x31

    if-ne p0, v0, :cond_31

    const-string p0, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    return-object p0

    :cond_31
    const/16 v0, 0x32

    if-ne p0, v0, :cond_32

    const-string p0, "RELATIVE_THROTTLE_POSITION"

    return-object p0

    :cond_32
    const/16 v0, 0x33

    if-ne p0, v0, :cond_33

    const-string p0, "ABSOLUTE_THROTTLE_POSITION_B"

    return-object p0

    :cond_33
    const/16 v0, 0x34

    if-ne p0, v0, :cond_34

    const-string p0, "ABSOLUTE_THROTTLE_POSITION_C"

    return-object p0

    :cond_34
    const/16 v0, 0x35

    if-ne p0, v0, :cond_35

    const-string p0, "ACCELERATOR_PEDAL_POSITION_D"

    return-object p0

    :cond_35
    const/16 v0, 0x36

    if-ne p0, v0, :cond_36

    const-string p0, "ACCELERATOR_PEDAL_POSITION_E"

    return-object p0

    :cond_36
    const/16 v0, 0x37

    if-ne p0, v0, :cond_37

    const-string p0, "ACCELERATOR_PEDAL_POSITION_F"

    return-object p0

    :cond_37
    const/16 v0, 0x38

    if-ne p0, v0, :cond_38

    const-string p0, "COMMANDED_THROTTLE_ACTUATOR"

    return-object p0

    :cond_38
    const/16 v0, 0x39

    if-ne p0, v0, :cond_39

    const-string p0, "ETHANOL_FUEL_PERCENTAGE"

    return-object p0

    :cond_39
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_3a

    const-string p0, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object p0

    :cond_3a
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_3b

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object p0

    :cond_3b
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_3c

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object p0

    :cond_3c
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_3d

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object p0

    :cond_3d
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3e

    const-string p0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object p0

    :cond_3e
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_3f

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object p0

    :cond_3f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_40

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object p0

    :cond_40
    const/16 v0, 0x41

    if-ne p0, v0, :cond_41

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object p0

    :cond_41
    const/16 v0, 0x42

    if-ne p0, v0, :cond_42

    const-string p0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object p0

    :cond_42
    const/16 v0, 0x43

    if-ne p0, v0, :cond_43

    const-string p0, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    return-object p0

    :cond_43
    const/16 v0, 0x44

    if-ne p0, v0, :cond_44

    const-string p0, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    return-object p0

    :cond_44
    const/16 v0, 0x45

    if-ne p0, v0, :cond_45

    const-string p0, "FUEL_INJECTION_TIMING"

    return-object p0

    :cond_45
    const/16 v0, 0x46

    if-ne p0, v0, :cond_46

    const-string p0, "ENGINE_FUEL_RATE"

    return-object p0

    :cond_46
    if-ne p0, v0, :cond_47

    const-string p0, "LAST_SYSTEM_INDEX"

    return-object p0

    .line 294
    :cond_47
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
