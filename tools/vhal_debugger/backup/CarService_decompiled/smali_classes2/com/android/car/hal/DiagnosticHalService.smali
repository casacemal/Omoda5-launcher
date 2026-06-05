.class public Lcom/android/car/hal/DiagnosticHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "DiagnosticHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;,
        Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    }
.end annotation


# static fields
.field static final DEBUG:Z = true

.field static final OBD2_SELECTIVE_FRAME_CLEAR:I = 0x1


# instance fields
.field private final mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mEventsToDispatch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReady:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field protected final mSensorTypeToConfig:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleHal:Lcom/android/car/hal/VehicleHal;

.field protected final mVehiclePropertyToConfig:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 1
    .param p1, "hal"    # Lcom/android/car/hal/VehicleHal;

    .line 107
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 53
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mIsReady:Z

    .line 95
    new-instance v0, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    invoke-direct {v0}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    .line 101
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    .line 396
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    .line 108
    iput-object p1, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    .line 110
    return-void
.end method

.method private createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 7
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 352
    if-nez p1, :cond_0

    .line 353
    const/4 v0, 0x0

    return-object v0

    .line 355
    :cond_0
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    const v1, 0x11e00d01

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 358
    .local v0, "isFreezeFrame":Z
    :goto_0
    if-eqz v0, :cond_2

    .line 359
    invoke-static {}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->newFreezeFrameBuilder()Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    move-result-object v1

    goto :goto_1

    .line 360
    :cond_2
    invoke-static {}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->newLiveFrameBuilder()Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    move-result-object v1

    :goto_1
    iget-wide v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->atTimestamp(J)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    move-result-object v1

    .line 363
    .local v1, "builder":Landroid/car/diagnostic/CarDiagnosticEvent$Builder;
    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v2

    invoke-static {v2}, Ljava/util/BitSet;->valueOf([B)Ljava/util/BitSet;

    move-result-object v2

    .line 365
    .local v2, "bitset":Ljava/util/BitSet;
    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v3}, Lcom/android/car/hal/DiagnosticHalService;->getNumIntegerSensors(I)I

    move-result v3

    .line 366
    .local v3, "numIntegerProperties":I
    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v4}, Lcom/android/car/hal/DiagnosticHalService;->getNumFloatSensors(I)I

    move-result v4

    .line 368
    .local v4, "numFloatProperties":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v3, :cond_4

    .line 369
    invoke-virtual {v2, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 370
    iget-object v6, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->withIntValue(II)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    .line 368
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 374
    .end local v5    # "i":I
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    if-ge v5, v4, :cond_6

    .line 375
    add-int v6, v3, v5

    invoke-virtual {v2, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 376
    iget-object v6, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v6, v6, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-virtual {v1, v5, v6}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->withFloatValue(IF)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    .line 374
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 380
    .end local v5    # "i":I
    :cond_6
    iget-object v5, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->withDtc(Ljava/lang/String;)Landroid/car/diagnostic/CarDiagnosticEvent$Builder;

    .line 382
    invoke-virtual {v1}, Landroid/car/diagnostic/CarDiagnosticEvent$Builder;->build()Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v5

    return-object v5
.end method

.method private getNumFloatSensors(I)I
    .locals 5
    .param p1, "halPropId"    # I

    .line 338
    const/16 v0, 0x47

    .line 339
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/car/hal/DiagnosticHalService;->getPropConfigArray(I)Ljava/util/List;

    move-result-object v1

    .line 340
    .local v1, "configArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 341
    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 343
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 341
    const-string v3, "property 0x%x does not specify the number of vendor-specific properties.assuming 0."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.DIAGNOSTIC"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 348
    :goto_0
    return v0
.end method

.method private getNumIntegerSensors(I)I
    .locals 5
    .param p1, "halPropId"    # I

    .line 324
    const/16 v0, 0x20

    .line 325
    .local v0, "count":I
    invoke-direct {p0, p1}, Lcom/android/car/hal/DiagnosticHalService;->getPropConfigArray(I)Ljava/util/List;

    move-result-object v1

    .line 326
    .local v1, "configArray":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    .line 327
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 329
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 327
    const-string v3, "property 0x%x does not specify the number of vendor-specific properties.assuming 0."

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.DIAGNOSTIC"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 332
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    .line 334
    :goto_0
    return v0
.end method

.method private getPropConfig(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .locals 3
    .param p1, "halPropId"    # I

    .line 312
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 314
    .local v1, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit v0

    .line 315
    return-object v1

    .line 314
    .end local v1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPropConfigArray(I)Ljava/util/List;
    .locals 2
    .param p1, "halPropId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 319
    invoke-direct {p0, p1}, Lcom/android/car/hal/DiagnosticHalService;->getPropConfig(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    move-result-object v0

    .line 320
    .local v0, "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    return-object v1
.end method


# virtual methods
.method public varargs clearFreezeFrames([J)V
    .locals 4
    .param p1, "timestamps"    # [J

    .line 518
    const-string v0, "CAR.DIAGNOSTIC"

    const v1, 0x11e00d03

    invoke-static {v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->newBuilder(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v1

    .line 520
    .local v1, "builder":Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    invoke-virtual {v1, p1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setInt64Value([J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    .line 522
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/car/hal/VehicleHal;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v2

    .line 526
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "illegal argument trying to write OBD2_FREEZE_FRAME_CLEAR"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 523
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 524
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "timeout trying to write OBD2_FREEZE_FRAME_CLEAR"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    nop

    .line 529
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 433
    const-string v0, "*Diagnostic HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 434
    return-void
.end method

.method protected fixSamplingRateForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)F
    .locals 2
    .param p1, "prop"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p2, "carSensorManagerRate"    # I

    .line 437
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    .line 441
    const/high16 v0, 0x3f800000    # 1.0f

    .line 442
    .local v0, "rate":F
    const/4 v1, 0x5

    if-eq p2, v1, :cond_1

    const/16 v1, 0xa

    if-eq p2, v1, :cond_0

    const/16 v1, 0x64

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 445
    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    .line 446
    goto :goto_0

    .line 448
    :cond_1
    const/high16 v0, 0x40a00000    # 5.0f

    .line 449
    nop

    .line 453
    :goto_0
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 454
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 456
    :cond_2
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 457
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 459
    :cond_3
    return v0

    .line 439
    .end local v0    # "rate":F
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDiagnosticValue(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 5
    .param p1, "sensorType"    # I

    .line 290
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 292
    .local v1, "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 294
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 295
    const-string v3, "property not available 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 296
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 294
    const-string v3, "CAR.DIAGNOSTIC"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-object v0

    .line 301
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v2, v3}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0
    :try_end_1
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "property not ready 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 304
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 303
    const-string v4, "CAR.DIAGNOSTIC"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 305
    return-object v0

    .line 292
    .end local v1    # "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getCurrentLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 4

    .line 469
    const-string v0, "CAR.DIAGNOSTIC"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    const v3, 0x11e00d00

    invoke-virtual {v2, v3}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 470
    .local v2, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-direct {p0, v2}, Lcom/android/car/hal/DiagnosticHalService;->createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 474
    .end local v2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catch_0
    move-exception v2

    .line 475
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "illegal argument trying to read OBD2_LIVE_FRAME"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 476
    return-object v1

    .line 471
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 472
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "timeout trying to read OBD2_LIVE_FRAME"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-object v1
.end method

.method public getDiagnosticCapabilities()Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;
    .locals 1

    .line 463
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    return-object v0
.end method

.method public getDiagnosticListener()Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    return-object v0
.end method

.method public getFreezeFrame(J)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 5
    .param p1, "timestamp"    # J

    .line 501
    const-string v0, "CAR.DIAGNOSTIC"

    const v1, 0x11e00d01

    invoke-static {v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->newBuilder(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    move-result-object v1

    .line 503
    .local v1, "builder":Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    const/4 v2, 0x1

    new-array v2, v2, [J

    const/4 v3, 0x0

    aput-wide p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->setInt64Value([J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    .line 505
    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/car/hal/VehicleHal;->get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v3

    .line 506
    .local v3, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-direct {p0, v3}, Lcom/android/car/hal/DiagnosticHalService;->createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 510
    .end local v3    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catch_0
    move-exception v3

    .line 511
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const-string v4, "illegal argument trying to read OBD2_FREEZE_FRAME"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 513
    return-object v2

    .line 507
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v3

    .line 508
    .local v3, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v4, "timeout trying to read OBD2_FREEZE_FRAME"

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return-object v2
.end method

.method public getFreezeFrameTimestamps()[J
    .locals 7

    .line 483
    const-string v0, "CAR.DIAGNOSTIC"

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    const v3, 0x11e00d02

    invoke-virtual {v2, v3}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 484
    .local v2, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [J

    .line 485
    .local v3, "timestamps":[J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v3

    if-ge v4, v5, :cond_0

    .line 486
    iget-object v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v5, v5, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v3, v4
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 485
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 488
    .end local v4    # "i":I
    :cond_0
    return-object v3

    .line 492
    .end local v2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "timestamps":[J
    :catch_0
    move-exception v2

    .line 493
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "illegal argument trying to read OBD2_FREEZE_FRAME_INFO"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    return-object v1

    .line 489
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 490
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "timeout trying to read OBD2_FREEZE_FRAME_INFO"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v1
.end method

.method public getSupportedDiagnosticProperties()[I
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-array v1, v1, [I

    .line 218
    .local v1, "supportedDiagnosticProperties":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 219
    iget-object v3, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v1, v2

    .line 218
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v2    # "i":I
    :cond_0
    monitor-exit v0

    .line 222
    return-object v1

    .line 221
    .end local v1    # "supportedDiagnosticProperties":[I
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getTokenForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)I
    .locals 5
    .param p1, "propConfig"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 147
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const-string v1, "CAR.DIAGNOSTIC"

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    .line 178
    const/4 v0, -0x1

    return v0

    .line 164
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v4}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 165
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    aput-object v4, v0, v2

    const-string v4, "configArray for OBD2_FREEZE_FRAME_CLEAR is %s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, v3, :cond_0

    .line 168
    new-array v0, v3, [Ljava/lang/Object;

    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 170
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    .line 168
    const-string v2, "property 0x%x does not specify whether it supports selective clearing of freeze frames. assuming it does not."

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 172
    :cond_0
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    invoke-virtual {v0, v3}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 176
    :cond_1
    :goto_0
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    return v0

    .line 161
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 162
    iget v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    return v0

    .line 155
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v4}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 156
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 157
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    aput-object v4, v0, v2

    const-string v2, "configArray for OBD2_FREEZE_FRAME is %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    return v3

    .line 149
    :pswitch_3
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v4}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->setSupported(I)V

    .line 150
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehiclePropertyToConfig:Landroid/util/SparseArray;

    iget v4, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, v4, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    aput-object v3, v0, v2

    const-string v3, "configArray for OBD2_LIVE_FRAME is %s"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x11e00d00
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 400
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 401
    .local v1, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    invoke-direct {p0, v1}, Lcom/android/car/hal/DiagnosticHalService;->createCarDiagnosticEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/diagnostic/CarDiagnosticEvent;

    move-result-object v2

    .line 402
    .local v2, "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    if-eqz v2, :cond_0

    .line 403
    iget-object v3, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 405
    .end local v1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "event":Landroid/car/diagnostic/CarDiagnosticEvent;
    :cond_0
    goto :goto_0

    .line 407
    :cond_1
    const/4 v0, 0x0

    .line 408
    .local v0, "listener":Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 409
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    move-object v0, v2

    .line 410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    if-eqz v0, :cond_2

    .line 412
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-interface {v0, v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;->onDiagnosticEvents(Ljava/util/List;)V

    .line 414
    :cond_2
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 415
    return-void

    .line 410
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public init()V
    .locals 2

    .line 185
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mIsReady:Z

    .line 189
    monitor-exit v0

    .line 190
    return-void

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isReady()Z
    .locals 1

    .line 205
    iget-boolean v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mIsReady:Z

    return v0
.end method

.method public release()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticCapabilities:Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;

    invoke-virtual {v1}, Lcom/android/car/hal/DiagnosticHalService$DiagnosticCapabilities;->clear()V

    .line 196
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mIsReady:Z

    .line 197
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestDiagnosticStart(II)Z
    .locals 4
    .param p1, "sensorType"    # I
    .param p2, "rate"    # I

    .line 233
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 235
    .local v1, "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    if-nez v1, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    const-string v2, "VehiclePropConfig not found, propertyId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 239
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    const-string v2, "CAR.DIAGNOSTIC"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    const/4 v0, 0x0

    return v0

    .line 244
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    const-string v2, "requestDiagnosticStart, propertyId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 246
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    const-string v2, ", rate: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 244
    const-string v2, "CAR.DIAGNOSTIC"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 252
    invoke-virtual {p0, v1, p2}, Lcom/android/car/hal/DiagnosticHalService;->fixSamplingRateForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)F

    move-result v3

    .line 251
    invoke-virtual {v0, p0, v2, v3}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IF)V

    .line 253
    const/4 v0, 0x1

    return v0

    .line 235
    .end local v1    # "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public requestDiagnosticStop(I)V
    .locals 3
    .param p1, "sensorType"    # I

    .line 262
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 264
    .local v1, "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 265
    if-nez v1, :cond_0

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 267
    const-string v2, "VehiclePropConfig not found, propertyId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 268
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 269
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v2, "CAR.DIAGNOSTIC"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return-void

    .line 273
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    const-string v2, "requestDiagnosticStop, propertyId: 0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 275
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 273
    const-string v2, "CAR.DIAGNOSTIC"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v0, p0, v2}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 280
    return-void

    .line 264
    .end local v1    # "propConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDiagnosticListener(Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    .line 422
    iget-object v0, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 423
    :try_start_0
    iput-object p1, p0, Lcom/android/car/hal/DiagnosticHalService;->mDiagnosticListener:Lcom/android/car/hal/DiagnosticHalService$DiagnosticListener;

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 116
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    const-string v0, "CAR.DIAGNOSTIC"

    const-string v1, "takeSupportedProperties"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 119
    .local v0, "supportedProperties":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 120
    .local v2, "vp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    invoke-virtual {p0, v2}, Lcom/android/car/hal/DiagnosticHalService;->getTokenForProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)I

    move-result v3

    .line 121
    .local v3, "sensorType":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 123
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    const-string v5, "0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 125
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    const-string v5, " ignored"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 123
    const-string v5, "CAR.DIAGNOSTIC"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 130
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v4, p0, Lcom/android/car/hal/DiagnosticHalService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 132
    :try_start_0
    iget-object v5, p0, Lcom/android/car/hal/DiagnosticHalService;->mSensorTypeToConfig:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 133
    monitor-exit v4

    .line 135
    .end local v2    # "vp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v3    # "sensorType":I
    :goto_1
    goto :goto_0

    .line 133
    .restart local v2    # "vp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .restart local v3    # "sensorType":I
    :catchall_0
    move-exception v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 136
    .end local v2    # "vp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v3    # "sensorType":I
    :cond_1
    return-object v0
.end method
