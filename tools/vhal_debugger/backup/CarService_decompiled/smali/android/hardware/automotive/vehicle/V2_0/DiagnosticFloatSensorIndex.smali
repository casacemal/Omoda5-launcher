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
    .locals 4
    .param p0, "o"    # I

    .line 298
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 299
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 300
    .local v1, "flipped":I
    const-string v2, "CALCULATED_ENGINE_LOAD"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 301
    and-int/lit8 v2, p0, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 302
    const-string v2, "ENGINE_COOLANT_TEMPERATURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    or-int/lit8 v1, v1, 0x1

    .line 305
    :cond_0
    and-int/lit8 v2, p0, 0x2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 306
    const-string v2, "SHORT_TERM_FUEL_TRIM_BANK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    or-int/lit8 v1, v1, 0x2

    .line 309
    :cond_1
    and-int/lit8 v2, p0, 0x3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 310
    const-string v2, "LONG_TERM_FUEL_TRIM_BANK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    or-int/lit8 v1, v1, 0x3

    .line 313
    :cond_2
    and-int/lit8 v2, p0, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 314
    const-string v2, "SHORT_TERM_FUEL_TRIM_BANK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 315
    or-int/lit8 v1, v1, 0x4

    .line 317
    :cond_3
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    .line 318
    const-string v2, "LONG_TERM_FUEL_TRIM_BANK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 319
    or-int/lit8 v1, v1, 0x5

    .line 321
    :cond_4
    and-int/lit8 v2, p0, 0x6

    const/4 v3, 0x6

    if-ne v2, v3, :cond_5

    .line 322
    const-string v2, "FUEL_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    or-int/lit8 v1, v1, 0x6

    .line 325
    :cond_5
    and-int/lit8 v2, p0, 0x7

    const/4 v3, 0x7

    if-ne v2, v3, :cond_6

    .line 326
    const-string v2, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 327
    or-int/lit8 v1, v1, 0x7

    .line 329
    :cond_6
    and-int/lit8 v2, p0, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_7

    .line 330
    const-string v2, "ENGINE_RPM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    or-int/lit8 v1, v1, 0x8

    .line 333
    :cond_7
    and-int/lit8 v2, p0, 0x9

    const/16 v3, 0x9

    if-ne v2, v3, :cond_8

    .line 334
    const-string v2, "VEHICLE_SPEED"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    or-int/lit8 v1, v1, 0x9

    .line 337
    :cond_8
    and-int/lit8 v2, p0, 0xa

    const/16 v3, 0xa

    if-ne v2, v3, :cond_9

    .line 338
    const-string v2, "TIMING_ADVANCE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    or-int/lit8 v1, v1, 0xa

    .line 341
    :cond_9
    and-int/lit8 v2, p0, 0xb

    const/16 v3, 0xb

    if-ne v2, v3, :cond_a

    .line 342
    const-string v2, "MAF_AIR_FLOW_RATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    or-int/lit8 v1, v1, 0xb

    .line 345
    :cond_a
    and-int/lit8 v2, p0, 0xc

    const/16 v3, 0xc

    if-ne v2, v3, :cond_b

    .line 346
    const-string v2, "THROTTLE_POSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    or-int/lit8 v1, v1, 0xc

    .line 349
    :cond_b
    and-int/lit8 v2, p0, 0xd

    const/16 v3, 0xd

    if-ne v2, v3, :cond_c

    .line 350
    const-string v2, "OXYGEN_SENSOR1_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    or-int/lit8 v1, v1, 0xd

    .line 353
    :cond_c
    and-int/lit8 v2, p0, 0xe

    const/16 v3, 0xe

    if-ne v2, v3, :cond_d

    .line 354
    const-string v2, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 355
    or-int/lit8 v1, v1, 0xe

    .line 357
    :cond_d
    and-int/lit8 v2, p0, 0xf

    const/16 v3, 0xf

    if-ne v2, v3, :cond_e

    .line 358
    const-string v2, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    or-int/lit8 v1, v1, 0xf

    .line 361
    :cond_e
    and-int/lit8 v2, p0, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_f

    .line 362
    const-string v2, "OXYGEN_SENSOR2_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    or-int/lit8 v1, v1, 0x10

    .line 365
    :cond_f
    and-int/lit8 v2, p0, 0x11

    const/16 v3, 0x11

    if-ne v2, v3, :cond_10

    .line 366
    const-string v2, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    or-int/lit8 v1, v1, 0x11

    .line 369
    :cond_10
    and-int/lit8 v2, p0, 0x12

    const/16 v3, 0x12

    if-ne v2, v3, :cond_11

    .line 370
    const-string v2, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    or-int/lit8 v1, v1, 0x12

    .line 373
    :cond_11
    and-int/lit8 v2, p0, 0x13

    const/16 v3, 0x13

    if-ne v2, v3, :cond_12

    .line 374
    const-string v2, "OXYGEN_SENSOR3_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    or-int/lit8 v1, v1, 0x13

    .line 377
    :cond_12
    and-int/lit8 v2, p0, 0x14

    const/16 v3, 0x14

    if-ne v2, v3, :cond_13

    .line 378
    const-string v2, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    or-int/lit8 v1, v1, 0x14

    .line 381
    :cond_13
    and-int/lit8 v2, p0, 0x15

    const/16 v3, 0x15

    if-ne v2, v3, :cond_14

    .line 382
    const-string v2, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    or-int/lit8 v1, v1, 0x15

    .line 385
    :cond_14
    and-int/lit8 v2, p0, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_15

    .line 386
    const-string v2, "OXYGEN_SENSOR4_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 387
    or-int/lit8 v1, v1, 0x16

    .line 389
    :cond_15
    and-int/lit8 v2, p0, 0x17

    const/16 v3, 0x17

    if-ne v2, v3, :cond_16

    .line 390
    const-string v2, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 391
    or-int/lit8 v1, v1, 0x17

    .line 393
    :cond_16
    and-int/lit8 v2, p0, 0x18

    const/16 v3, 0x18

    if-ne v2, v3, :cond_17

    .line 394
    const-string v2, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    or-int/lit8 v1, v1, 0x18

    .line 397
    :cond_17
    and-int/lit8 v2, p0, 0x19

    const/16 v3, 0x19

    if-ne v2, v3, :cond_18

    .line 398
    const-string v2, "OXYGEN_SENSOR5_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 399
    or-int/lit8 v1, v1, 0x19

    .line 401
    :cond_18
    and-int/lit8 v2, p0, 0x1a

    const/16 v3, 0x1a

    if-ne v2, v3, :cond_19

    .line 402
    const-string v2, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 403
    or-int/lit8 v1, v1, 0x1a

    .line 405
    :cond_19
    and-int/lit8 v2, p0, 0x1b

    const/16 v3, 0x1b

    if-ne v2, v3, :cond_1a

    .line 406
    const-string v2, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    or-int/lit8 v1, v1, 0x1b

    .line 409
    :cond_1a
    and-int/lit8 v2, p0, 0x1c

    const/16 v3, 0x1c

    if-ne v2, v3, :cond_1b

    .line 410
    const-string v2, "OXYGEN_SENSOR6_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    or-int/lit8 v1, v1, 0x1c

    .line 413
    :cond_1b
    and-int/lit8 v2, p0, 0x1d

    const/16 v3, 0x1d

    if-ne v2, v3, :cond_1c

    .line 414
    const-string v2, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    or-int/lit8 v1, v1, 0x1d

    .line 417
    :cond_1c
    and-int/lit8 v2, p0, 0x1e

    const/16 v3, 0x1e

    if-ne v2, v3, :cond_1d

    .line 418
    const-string v2, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    or-int/lit8 v1, v1, 0x1e

    .line 421
    :cond_1d
    and-int/lit8 v2, p0, 0x1f

    const/16 v3, 0x1f

    if-ne v2, v3, :cond_1e

    .line 422
    const-string v2, "OXYGEN_SENSOR7_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    or-int/lit8 v1, v1, 0x1f

    .line 425
    :cond_1e
    and-int/lit8 v2, p0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1f

    .line 426
    const-string v2, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    or-int/lit8 v1, v1, 0x20

    .line 429
    :cond_1f
    and-int/lit8 v2, p0, 0x21

    const/16 v3, 0x21

    if-ne v2, v3, :cond_20

    .line 430
    const-string v2, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 431
    or-int/lit8 v1, v1, 0x21

    .line 433
    :cond_20
    and-int/lit8 v2, p0, 0x22

    const/16 v3, 0x22

    if-ne v2, v3, :cond_21

    .line 434
    const-string v2, "OXYGEN_SENSOR8_VOLTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    or-int/lit8 v1, v1, 0x22

    .line 437
    :cond_21
    and-int/lit8 v2, p0, 0x23

    const/16 v3, 0x23

    if-ne v2, v3, :cond_22

    .line 438
    const-string v2, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    or-int/lit8 v1, v1, 0x23

    .line 441
    :cond_22
    and-int/lit8 v2, p0, 0x24

    const/16 v3, 0x24

    if-ne v2, v3, :cond_23

    .line 442
    const-string v2, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    or-int/lit8 v1, v1, 0x24

    .line 445
    :cond_23
    and-int/lit8 v2, p0, 0x25

    const/16 v3, 0x25

    if-ne v2, v3, :cond_24

    .line 446
    const-string v2, "FUEL_RAIL_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 447
    or-int/lit8 v1, v1, 0x25

    .line 449
    :cond_24
    and-int/lit8 v2, p0, 0x26

    const/16 v3, 0x26

    if-ne v2, v3, :cond_25

    .line 450
    const-string v2, "FUEL_RAIL_GAUGE_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 451
    or-int/lit8 v1, v1, 0x26

    .line 453
    :cond_25
    and-int/lit8 v2, p0, 0x27

    const/16 v3, 0x27

    if-ne v2, v3, :cond_26

    .line 454
    const-string v2, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    or-int/lit8 v1, v1, 0x27

    .line 457
    :cond_26
    and-int/lit8 v2, p0, 0x28

    const/16 v3, 0x28

    if-ne v2, v3, :cond_27

    .line 458
    const-string v2, "EXHAUST_GAS_RECIRCULATION_ERROR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    or-int/lit8 v1, v1, 0x28

    .line 461
    :cond_27
    and-int/lit8 v2, p0, 0x29

    const/16 v3, 0x29

    if-ne v2, v3, :cond_28

    .line 462
    const-string v2, "COMMANDED_EVAPORATIVE_PURGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    or-int/lit8 v1, v1, 0x29

    .line 465
    :cond_28
    and-int/lit8 v2, p0, 0x2a

    const/16 v3, 0x2a

    if-ne v2, v3, :cond_29

    .line 466
    const-string v2, "FUEL_TANK_LEVEL_INPUT"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    or-int/lit8 v1, v1, 0x2a

    .line 469
    :cond_29
    and-int/lit8 v2, p0, 0x2b

    const/16 v3, 0x2b

    if-ne v2, v3, :cond_2a

    .line 470
    const-string v2, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    or-int/lit8 v1, v1, 0x2b

    .line 473
    :cond_2a
    and-int/lit8 v2, p0, 0x2c

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_2b

    .line 474
    const-string v2, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    or-int/lit8 v1, v1, 0x2c

    .line 477
    :cond_2b
    and-int/lit8 v2, p0, 0x2d

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_2c

    .line 478
    const-string v2, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    or-int/lit8 v1, v1, 0x2d

    .line 481
    :cond_2c
    and-int/lit8 v2, p0, 0x2e

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2d

    .line 482
    const-string v2, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    or-int/lit8 v1, v1, 0x2e

    .line 485
    :cond_2d
    and-int/lit8 v2, p0, 0x2f

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_2e

    .line 486
    const-string v2, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 487
    or-int/lit8 v1, v1, 0x2f

    .line 489
    :cond_2e
    and-int/lit8 v2, p0, 0x30

    const/16 v3, 0x30

    if-ne v2, v3, :cond_2f

    .line 490
    const-string v2, "ABSOLUTE_LOAD_VALUE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 491
    or-int/lit8 v1, v1, 0x30

    .line 493
    :cond_2f
    and-int/lit8 v2, p0, 0x31

    const/16 v3, 0x31

    if-ne v2, v3, :cond_30

    .line 494
    const-string v2, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    or-int/lit8 v1, v1, 0x31

    .line 497
    :cond_30
    and-int/lit8 v2, p0, 0x32

    const/16 v3, 0x32

    if-ne v2, v3, :cond_31

    .line 498
    const-string v2, "RELATIVE_THROTTLE_POSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 499
    or-int/lit8 v1, v1, 0x32

    .line 501
    :cond_31
    and-int/lit8 v2, p0, 0x33

    const/16 v3, 0x33

    if-ne v2, v3, :cond_32

    .line 502
    const-string v2, "ABSOLUTE_THROTTLE_POSITION_B"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    or-int/lit8 v1, v1, 0x33

    .line 505
    :cond_32
    and-int/lit8 v2, p0, 0x34

    const/16 v3, 0x34

    if-ne v2, v3, :cond_33

    .line 506
    const-string v2, "ABSOLUTE_THROTTLE_POSITION_C"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    or-int/lit8 v1, v1, 0x34

    .line 509
    :cond_33
    and-int/lit8 v2, p0, 0x35

    const/16 v3, 0x35

    if-ne v2, v3, :cond_34

    .line 510
    const-string v2, "ACCELERATOR_PEDAL_POSITION_D"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    or-int/lit8 v1, v1, 0x35

    .line 513
    :cond_34
    and-int/lit8 v2, p0, 0x36

    const/16 v3, 0x36

    if-ne v2, v3, :cond_35

    .line 514
    const-string v2, "ACCELERATOR_PEDAL_POSITION_E"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    or-int/lit8 v1, v1, 0x36

    .line 517
    :cond_35
    and-int/lit8 v2, p0, 0x37

    const/16 v3, 0x37

    if-ne v2, v3, :cond_36

    .line 518
    const-string v2, "ACCELERATOR_PEDAL_POSITION_F"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    or-int/lit8 v1, v1, 0x37

    .line 521
    :cond_36
    and-int/lit8 v2, p0, 0x38

    const/16 v3, 0x38

    if-ne v2, v3, :cond_37

    .line 522
    const-string v2, "COMMANDED_THROTTLE_ACTUATOR"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 523
    or-int/lit8 v1, v1, 0x38

    .line 525
    :cond_37
    and-int/lit8 v2, p0, 0x39

    const/16 v3, 0x39

    if-ne v2, v3, :cond_38

    .line 526
    const-string v2, "ETHANOL_FUEL_PERCENTAGE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 527
    or-int/lit8 v1, v1, 0x39

    .line 529
    :cond_38
    and-int/lit8 v2, p0, 0x3a

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_39

    .line 530
    const-string v2, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    or-int/lit8 v1, v1, 0x3a

    .line 533
    :cond_39
    and-int/lit8 v2, p0, 0x3b

    const/16 v3, 0x3b

    if-ne v2, v3, :cond_3a

    .line 534
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 535
    or-int/lit8 v1, v1, 0x3b

    .line 537
    :cond_3a
    and-int/lit8 v2, p0, 0x3c

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_3b

    .line 538
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 539
    or-int/lit8 v1, v1, 0x3c

    .line 541
    :cond_3b
    and-int/lit8 v2, p0, 0x3d

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_3c

    .line 542
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 543
    or-int/lit8 v1, v1, 0x3d

    .line 545
    :cond_3c
    and-int/lit8 v2, p0, 0x3e

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3d

    .line 546
    const-string v2, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    or-int/lit8 v1, v1, 0x3e

    .line 549
    :cond_3d
    and-int/lit8 v2, p0, 0x3f

    const/16 v3, 0x3f

    if-ne v2, v3, :cond_3e

    .line 550
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    or-int/lit8 v1, v1, 0x3f

    .line 553
    :cond_3e
    and-int/lit8 v2, p0, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_3f

    .line 554
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    or-int/lit8 v1, v1, 0x40

    .line 557
    :cond_3f
    and-int/lit8 v2, p0, 0x41

    const/16 v3, 0x41

    if-ne v2, v3, :cond_40

    .line 558
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 559
    or-int/lit8 v1, v1, 0x41

    .line 561
    :cond_40
    and-int/lit8 v2, p0, 0x42

    const/16 v3, 0x42

    if-ne v2, v3, :cond_41

    .line 562
    const-string v2, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 563
    or-int/lit8 v1, v1, 0x42

    .line 565
    :cond_41
    and-int/lit8 v2, p0, 0x43

    const/16 v3, 0x43

    if-ne v2, v3, :cond_42

    .line 566
    const-string v2, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    or-int/lit8 v1, v1, 0x43

    .line 569
    :cond_42
    and-int/lit8 v2, p0, 0x44

    const/16 v3, 0x44

    if-ne v2, v3, :cond_43

    .line 570
    const-string v2, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    or-int/lit8 v1, v1, 0x44

    .line 573
    :cond_43
    and-int/lit8 v2, p0, 0x45

    const/16 v3, 0x45

    if-ne v2, v3, :cond_44

    .line 574
    const-string v2, "FUEL_INJECTION_TIMING"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 575
    or-int/lit8 v1, v1, 0x45

    .line 577
    :cond_44
    and-int/lit8 v2, p0, 0x46

    const/16 v3, 0x46

    if-ne v2, v3, :cond_45

    .line 578
    const-string v2, "ENGINE_FUEL_RATE"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    or-int/lit8 v1, v1, 0x46

    .line 581
    :cond_45
    and-int/lit8 v2, p0, 0x46

    if-ne v2, v3, :cond_46

    .line 582
    const-string v2, "LAST_SYSTEM_INDEX"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    or-int/lit8 v1, v1, 0x46

    .line 585
    :cond_46
    if-eq p0, v1, :cond_47

    .line 586
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

    .line 588
    :cond_47
    const-string v2, " | "

    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2
    .param p0, "o"    # I

    .line 78
    if-nez p0, :cond_0

    .line 79
    const-string v0, "CALCULATED_ENGINE_LOAD"

    return-object v0

    .line 81
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 82
    const-string v0, "ENGINE_COOLANT_TEMPERATURE"

    return-object v0

    .line 84
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 85
    const-string v0, "SHORT_TERM_FUEL_TRIM_BANK1"

    return-object v0

    .line 87
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    .line 88
    const-string v0, "LONG_TERM_FUEL_TRIM_BANK1"

    return-object v0

    .line 90
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    .line 91
    const-string v0, "SHORT_TERM_FUEL_TRIM_BANK2"

    return-object v0

    .line 93
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    .line 94
    const-string v0, "LONG_TERM_FUEL_TRIM_BANK2"

    return-object v0

    .line 96
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    .line 97
    const-string v0, "FUEL_PRESSURE"

    return-object v0

    .line 99
    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    .line 100
    const-string v0, "INTAKE_MANIFOLD_ABSOLUTE_PRESSURE"

    return-object v0

    .line 102
    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    .line 103
    const-string v0, "ENGINE_RPM"

    return-object v0

    .line 105
    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    .line 106
    const-string v0, "VEHICLE_SPEED"

    return-object v0

    .line 108
    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    .line 109
    const-string v0, "TIMING_ADVANCE"

    return-object v0

    .line 111
    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    .line 112
    const-string v0, "MAF_AIR_FLOW_RATE"

    return-object v0

    .line 114
    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    .line 115
    const-string v0, "THROTTLE_POSITION"

    return-object v0

    .line 117
    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    .line 118
    const-string v0, "OXYGEN_SENSOR1_VOLTAGE"

    return-object v0

    .line 120
    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    .line 121
    const-string v0, "OXYGEN_SENSOR1_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 123
    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    .line 124
    const-string v0, "OXYGEN_SENSOR1_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 126
    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    .line 127
    const-string v0, "OXYGEN_SENSOR2_VOLTAGE"

    return-object v0

    .line 129
    :cond_10
    const/16 v0, 0x11

    if-ne p0, v0, :cond_11

    .line 130
    const-string v0, "OXYGEN_SENSOR2_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 132
    :cond_11
    const/16 v0, 0x12

    if-ne p0, v0, :cond_12

    .line 133
    const-string v0, "OXYGEN_SENSOR2_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 135
    :cond_12
    const/16 v0, 0x13

    if-ne p0, v0, :cond_13

    .line 136
    const-string v0, "OXYGEN_SENSOR3_VOLTAGE"

    return-object v0

    .line 138
    :cond_13
    const/16 v0, 0x14

    if-ne p0, v0, :cond_14

    .line 139
    const-string v0, "OXYGEN_SENSOR3_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 141
    :cond_14
    const/16 v0, 0x15

    if-ne p0, v0, :cond_15

    .line 142
    const-string v0, "OXYGEN_SENSOR3_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 144
    :cond_15
    const/16 v0, 0x16

    if-ne p0, v0, :cond_16

    .line 145
    const-string v0, "OXYGEN_SENSOR4_VOLTAGE"

    return-object v0

    .line 147
    :cond_16
    const/16 v0, 0x17

    if-ne p0, v0, :cond_17

    .line 148
    const-string v0, "OXYGEN_SENSOR4_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 150
    :cond_17
    const/16 v0, 0x18

    if-ne p0, v0, :cond_18

    .line 151
    const-string v0, "OXYGEN_SENSOR4_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 153
    :cond_18
    const/16 v0, 0x19

    if-ne p0, v0, :cond_19

    .line 154
    const-string v0, "OXYGEN_SENSOR5_VOLTAGE"

    return-object v0

    .line 156
    :cond_19
    const/16 v0, 0x1a

    if-ne p0, v0, :cond_1a

    .line 157
    const-string v0, "OXYGEN_SENSOR5_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 159
    :cond_1a
    const/16 v0, 0x1b

    if-ne p0, v0, :cond_1b

    .line 160
    const-string v0, "OXYGEN_SENSOR5_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 162
    :cond_1b
    const/16 v0, 0x1c

    if-ne p0, v0, :cond_1c

    .line 163
    const-string v0, "OXYGEN_SENSOR6_VOLTAGE"

    return-object v0

    .line 165
    :cond_1c
    const/16 v0, 0x1d

    if-ne p0, v0, :cond_1d

    .line 166
    const-string v0, "OXYGEN_SENSOR6_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 168
    :cond_1d
    const/16 v0, 0x1e

    if-ne p0, v0, :cond_1e

    .line 169
    const-string v0, "OXYGEN_SENSOR6_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 171
    :cond_1e
    const/16 v0, 0x1f

    if-ne p0, v0, :cond_1f

    .line 172
    const-string v0, "OXYGEN_SENSOR7_VOLTAGE"

    return-object v0

    .line 174
    :cond_1f
    const/16 v0, 0x20

    if-ne p0, v0, :cond_20

    .line 175
    const-string v0, "OXYGEN_SENSOR7_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 177
    :cond_20
    const/16 v0, 0x21

    if-ne p0, v0, :cond_21

    .line 178
    const-string v0, "OXYGEN_SENSOR7_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 180
    :cond_21
    const/16 v0, 0x22

    if-ne p0, v0, :cond_22

    .line 181
    const-string v0, "OXYGEN_SENSOR8_VOLTAGE"

    return-object v0

    .line 183
    :cond_22
    const/16 v0, 0x23

    if-ne p0, v0, :cond_23

    .line 184
    const-string v0, "OXYGEN_SENSOR8_SHORT_TERM_FUEL_TRIM"

    return-object v0

    .line 186
    :cond_23
    const/16 v0, 0x24

    if-ne p0, v0, :cond_24

    .line 187
    const-string v0, "OXYGEN_SENSOR8_FUEL_AIR_EQUIVALENCE_RATIO"

    return-object v0

    .line 189
    :cond_24
    const/16 v0, 0x25

    if-ne p0, v0, :cond_25

    .line 190
    const-string v0, "FUEL_RAIL_PRESSURE"

    return-object v0

    .line 192
    :cond_25
    const/16 v0, 0x26

    if-ne p0, v0, :cond_26

    .line 193
    const-string v0, "FUEL_RAIL_GAUGE_PRESSURE"

    return-object v0

    .line 195
    :cond_26
    const/16 v0, 0x27

    if-ne p0, v0, :cond_27

    .line 196
    const-string v0, "COMMANDED_EXHAUST_GAS_RECIRCULATION"

    return-object v0

    .line 198
    :cond_27
    const/16 v0, 0x28

    if-ne p0, v0, :cond_28

    .line 199
    const-string v0, "EXHAUST_GAS_RECIRCULATION_ERROR"

    return-object v0

    .line 201
    :cond_28
    const/16 v0, 0x29

    if-ne p0, v0, :cond_29

    .line 202
    const-string v0, "COMMANDED_EVAPORATIVE_PURGE"

    return-object v0

    .line 204
    :cond_29
    const/16 v0, 0x2a

    if-ne p0, v0, :cond_2a

    .line 205
    const-string v0, "FUEL_TANK_LEVEL_INPUT"

    return-object v0

    .line 207
    :cond_2a
    const/16 v0, 0x2b

    if-ne p0, v0, :cond_2b

    .line 208
    const-string v0, "EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object v0

    .line 210
    :cond_2b
    const/16 v0, 0x2c

    if-ne p0, v0, :cond_2c

    .line 211
    const-string v0, "CATALYST_TEMPERATURE_BANK1_SENSOR1"

    return-object v0

    .line 213
    :cond_2c
    const/16 v0, 0x2d

    if-ne p0, v0, :cond_2d

    .line 214
    const-string v0, "CATALYST_TEMPERATURE_BANK2_SENSOR1"

    return-object v0

    .line 216
    :cond_2d
    const/16 v0, 0x2e

    if-ne p0, v0, :cond_2e

    .line 217
    const-string v0, "CATALYST_TEMPERATURE_BANK1_SENSOR2"

    return-object v0

    .line 219
    :cond_2e
    const/16 v0, 0x2f

    if-ne p0, v0, :cond_2f

    .line 220
    const-string v0, "CATALYST_TEMPERATURE_BANK2_SENSOR2"

    return-object v0

    .line 222
    :cond_2f
    const/16 v0, 0x30

    if-ne p0, v0, :cond_30

    .line 223
    const-string v0, "ABSOLUTE_LOAD_VALUE"

    return-object v0

    .line 225
    :cond_30
    const/16 v0, 0x31

    if-ne p0, v0, :cond_31

    .line 226
    const-string v0, "FUEL_AIR_COMMANDED_EQUIVALENCE_RATIO"

    return-object v0

    .line 228
    :cond_31
    const/16 v0, 0x32

    if-ne p0, v0, :cond_32

    .line 229
    const-string v0, "RELATIVE_THROTTLE_POSITION"

    return-object v0

    .line 231
    :cond_32
    const/16 v0, 0x33

    if-ne p0, v0, :cond_33

    .line 232
    const-string v0, "ABSOLUTE_THROTTLE_POSITION_B"

    return-object v0

    .line 234
    :cond_33
    const/16 v0, 0x34

    if-ne p0, v0, :cond_34

    .line 235
    const-string v0, "ABSOLUTE_THROTTLE_POSITION_C"

    return-object v0

    .line 237
    :cond_34
    const/16 v0, 0x35

    if-ne p0, v0, :cond_35

    .line 238
    const-string v0, "ACCELERATOR_PEDAL_POSITION_D"

    return-object v0

    .line 240
    :cond_35
    const/16 v0, 0x36

    if-ne p0, v0, :cond_36

    .line 241
    const-string v0, "ACCELERATOR_PEDAL_POSITION_E"

    return-object v0

    .line 243
    :cond_36
    const/16 v0, 0x37

    if-ne p0, v0, :cond_37

    .line 244
    const-string v0, "ACCELERATOR_PEDAL_POSITION_F"

    return-object v0

    .line 246
    :cond_37
    const/16 v0, 0x38

    if-ne p0, v0, :cond_38

    .line 247
    const-string v0, "COMMANDED_THROTTLE_ACTUATOR"

    return-object v0

    .line 249
    :cond_38
    const/16 v0, 0x39

    if-ne p0, v0, :cond_39

    .line 250
    const-string v0, "ETHANOL_FUEL_PERCENTAGE"

    return-object v0

    .line 252
    :cond_39
    const/16 v0, 0x3a

    if-ne p0, v0, :cond_3a

    .line 253
    const-string v0, "ABSOLUTE_EVAPORATION_SYSTEM_VAPOR_PRESSURE"

    return-object v0

    .line 255
    :cond_3a
    const/16 v0, 0x3b

    if-ne p0, v0, :cond_3b

    .line 256
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object v0

    .line 258
    :cond_3b
    const/16 v0, 0x3c

    if-ne p0, v0, :cond_3c

    .line 259
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object v0

    .line 261
    :cond_3c
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_3d

    .line 262
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object v0

    .line 264
    :cond_3d
    const/16 v0, 0x3e

    if-ne p0, v0, :cond_3e

    .line 265
    const-string v0, "SHORT_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object v0

    .line 267
    :cond_3e
    const/16 v0, 0x3f

    if-ne p0, v0, :cond_3f

    .line 268
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK1"

    return-object v0

    .line 270
    :cond_3f
    const/16 v0, 0x40

    if-ne p0, v0, :cond_40

    .line 271
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK2"

    return-object v0

    .line 273
    :cond_40
    const/16 v0, 0x41

    if-ne p0, v0, :cond_41

    .line 274
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK3"

    return-object v0

    .line 276
    :cond_41
    const/16 v0, 0x42

    if-ne p0, v0, :cond_42

    .line 277
    const-string v0, "LONG_TERM_SECONDARY_OXYGEN_SENSOR_TRIM_BANK4"

    return-object v0

    .line 279
    :cond_42
    const/16 v0, 0x43

    if-ne p0, v0, :cond_43

    .line 280
    const-string v0, "RELATIVE_ACCELERATOR_PEDAL_POSITION"

    return-object v0

    .line 282
    :cond_43
    const/16 v0, 0x44

    if-ne p0, v0, :cond_44

    .line 283
    const-string v0, "HYBRID_BATTERY_PACK_REMAINING_LIFE"

    return-object v0

    .line 285
    :cond_44
    const/16 v0, 0x45

    if-ne p0, v0, :cond_45

    .line 286
    const-string v0, "FUEL_INJECTION_TIMING"

    return-object v0

    .line 288
    :cond_45
    const/16 v0, 0x46

    if-ne p0, v0, :cond_46

    .line 289
    const-string v0, "ENGINE_FUEL_RATE"

    return-object v0

    .line 291
    :cond_46
    if-ne p0, v0, :cond_47

    .line 292
    const-string v0, "LAST_SYSTEM_INDEX"

    return-object v0

    .line 294
    :cond_47
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
