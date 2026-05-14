.class public final Landroid/car/hardware/CarSensorManager;
.super Ljava/lang/Object;
.source "CarSensorManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;,
        Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;,
        Landroid/car/hardware/CarSensorManager$SensorRate;,
        Landroid/car/hardware/CarSensorManager$SensorType;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final INDEX_WHEEL_DISTANCE_ENABLE_FLAG:I = 0x0

.field private static final INDEX_WHEEL_DISTANCE_FRONT_LEFT:I = 0x1

.field private static final INDEX_WHEEL_DISTANCE_FRONT_RIGHT:I = 0x2

.field private static final INDEX_WHEEL_DISTANCE_REAR_LEFT:I = 0x4

.field private static final INDEX_WHEEL_DISTANCE_REAR_RIGHT:I = 0x3

.field public static final SENSOR_RATE_FAST:I = 0xa

.field public static final SENSOR_RATE_FASTEST:I = 0x64

.field public static final SENSOR_RATE_NORMAL:I = 0x1

.field public static final SENSOR_RATE_ONCHANGE:I = 0x0

.field public static final SENSOR_RATE_UI:I = 0x5

.field public static final SENSOR_TYPE_ABS_ACTIVE:I = 0x1120040a

.field public static final SENSOR_TYPE_CAR_SPEED:I = 0x11600207

.field public static final SENSOR_TYPE_ENGINE_OIL_LEVEL:I = 0x11400303

.field public static final SENSOR_TYPE_ENV_OUTSIDE_TEMPERATURE:I = 0x11600703

.field public static final SENSOR_TYPE_EV_BATTERY_CHARGE_RATE:I = 0x1160030c

.field public static final SENSOR_TYPE_EV_BATTERY_LEVEL:I = 0x11600309

.field public static final SENSOR_TYPE_EV_CHARGE_PORT_CONNECTED:I = 0x1120030b

.field public static final SENSOR_TYPE_EV_CHARGE_PORT_OPEN:I = 0x1120030a

.field public static final SENSOR_TYPE_FUEL_DOOR_OPEN:I = 0x11200308

.field public static final SENSOR_TYPE_FUEL_LEVEL:I = 0x11600307

.field public static final SENSOR_TYPE_GEAR:I = 0x11400400

.field public static final SENSOR_TYPE_IGNITION_STATE:I = 0x11400409

.field public static final SENSOR_TYPE_NIGHT:I = 0x11200407

.field public static final SENSOR_TYPE_ODOMETER:I = 0x11600204

.field public static final SENSOR_TYPE_PARKING_BRAKE:I = 0x11200402

.field public static final SENSOR_TYPE_RESERVED1:I = 0x1

.field public static final SENSOR_TYPE_RESERVED10:I = 0xa

.field public static final SENSOR_TYPE_RESERVED11:I = 0xb

.field public static final SENSOR_TYPE_RESERVED12:I = 0xc

.field public static final SENSOR_TYPE_RESERVED13:I = 0xd

.field public static final SENSOR_TYPE_RESERVED14:I = 0xe

.field public static final SENSOR_TYPE_RESERVED15:I = 0xf

.field public static final SENSOR_TYPE_RESERVED16:I = 0x10

.field public static final SENSOR_TYPE_RESERVED17:I = 0x11

.field public static final SENSOR_TYPE_RESERVED18:I = 0x12

.field public static final SENSOR_TYPE_RESERVED19:I = 0x13

.field public static final SENSOR_TYPE_RESERVED20:I = 0x14

.field public static final SENSOR_TYPE_RESERVED21:I = 0x15

.field public static final SENSOR_TYPE_RESERVED26:I = 0x1a

.field public static final SENSOR_TYPE_RESERVED8:I = 0x8

.field public static final SENSOR_TYPE_RPM:I = 0x11600305

.field public static final SENSOR_TYPE_TRACTION_CONTROL_ACTIVE:I = 0x1120040b

.field public static final SENSOR_TYPE_WHEEL_TICK_DISTANCE:I = 0x11510306

.field private static final TAG:Ljava/lang/String; = "CarSensorManager"

.field private static final WHEEL_TICK_DISTANCE_BUNDLE_SIZE:I = 0x6


# instance fields
.field private mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

.field private final mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;",
            "Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mSensorConfigIds:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    new-instance p2, Landroid/util/ArraySet;

    const/16 v0, 0x12

    new-array v0, v0, [Ljava/lang/Integer;

    const v1, 0x11600207

    .line 215
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const v1, 0x11600305

    .line 216
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x11600204

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x11600307

    .line 218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const v1, 0x11200402

    .line 219
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const v1, 0x11400400

    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const v1, 0x11200407

    .line 221
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v1, 0x11600703

    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const v1, 0x11400409

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const v1, 0x11510306

    .line 224
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const v1, 0x1120040a

    .line 225
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const v1, 0x1120040b

    .line 226
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const v1, 0x11200308

    .line 227
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const v1, 0x11600309

    .line 228
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const v1, 0x1120030a

    .line 229
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const v1, 0x1120030b

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const v1, 0x1160030c

    .line 231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const v1, 0x11400303

    .line 232
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 214
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object p2, p0, Landroid/car/hardware/CarSensorManager;->mSensorConfigIds:Landroid/util/ArraySet;

    const/4 p2, 0x0

    .line 255
    iput-object p2, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    .line 260
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    .line 308
    invoke-static {p1}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object p1

    .line 309
    new-instance p2, Landroid/car/hardware/property/CarPropertyManager;

    invoke-direct {p2, p1, p3}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/hardware/property/ICarProperty;Landroid/os/Handler;)V

    iput-object p2, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method static synthetic access$000(Landroid/car/hardware/CarSensorManager;Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/CarSensorManager;->handleOnChangeEvent(Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;)V

    return-void
.end method

.method private createCarSensorEvent(Landroid/car/hardware/CarPropertyValue;)Landroid/car/hardware/CarSensorEvent;
    .locals 9

    .line 462
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p0

    const/high16 v0, 0xff0000

    and-int/2addr p0, v0

    const/high16 v0, 0x200000

    const/4 v1, 0x0

    if-eq p0, v0, :cond_4

    const/high16 v0, 0x400000

    if-eq p0, v0, :cond_3

    const/high16 v0, 0x510000

    if-eq p0, v0, :cond_1

    const/high16 v0, 0x600000

    if-eq p0, v0, :cond_0

    .line 487
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unhandled VehiclePropertyType for propId="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CarSensorManager"

    .line 487
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_1

    .line 464
    :cond_0
    new-instance p0, Landroid/car/hardware/CarSensorEvent;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    .line 465
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 466
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    aput p1, v0, v1

    goto :goto_1

    .line 479
    :cond_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 480
    new-instance v0, Landroid/car/hardware/CarSensorEvent;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    .line 481
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    array-length v8, p0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 482
    :goto_0
    array-length p1, p0

    if-ge v1, p1, :cond_2

    .line 483
    iget-object p1, v0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    aget-object v2, p0, v1

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move-object p0, v0

    goto :goto_1

    .line 469
    :cond_3
    new-instance p0, Landroid/car/hardware/CarSensorEvent;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    .line 470
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 471
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    aput p1, v0, v1

    goto :goto_1

    .line 474
    :cond_4
    new-instance p0, Landroid/car/hardware/CarSensorEvent;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    .line 475
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 476
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    aput p1, v0, v1

    :goto_1
    return-object p0
.end method

.method private createWheelDistanceTickBundle(Ljava/util/List;)Landroid/os/Bundle;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 531
    new-instance p0, Landroid/os/Bundle;

    const/4 v0, 0x6

    invoke-direct {p0, v0}, Landroid/os/Bundle;-><init>(I)V

    const/4 v0, 0x0

    .line 533
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.car.wheelTickDistanceSupportedWheels"

    .line 532
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x1

    .line 535
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.car.wheelTickDistanceFrontLeftUmPerTick"

    .line 534
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x2

    .line 537
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.car.wheelTickDistanceFrontRightUmPerTick"

    .line 536
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x3

    .line 539
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "android.car.wheelTickDistanceRearRightUmPerTick"

    .line 538
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v0, 0x4

    .line 541
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "android.car.wheelTickDistanceRearLeftUmPerTick"

    .line 540
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method private handleOnChangeEvent(Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;)V
    .locals 1

    .line 297
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 298
    :try_start_0
    invoke-direct {p0, p1}, Landroid/car/hardware/CarSensorManager;->createCarSensorEvent(Landroid/car/hardware/CarPropertyValue;)Landroid/car/hardware/CarSensorEvent;

    move-result-object p0

    .line 299
    invoke-interface {p2, p0}, Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;->onSensorChanged(Landroid/car/hardware/CarSensorEvent;)V

    .line 300
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private handleOnErrorEvent(II)V
    .locals 0

    return-void
.end method

.method public static isSensorSupported([II)Z
    .locals 4

    .line 368
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public getLatestSensorEvent(I)Landroid/car/hardware/CarSensorEvent;
    .locals 2

    .line 456
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object p1

    .line 457
    invoke-direct {p0, p1}, Landroid/car/hardware/CarSensorManager;->createCarSensorEvent(Landroid/car/hardware/CarPropertyValue;)Landroid/car/hardware/CarSensorEvent;

    move-result-object p0

    return-object p0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 342
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Landroid/car/hardware/CarSensorManager;->mSensorConfigIds:Landroid/util/ArraySet;

    invoke-virtual {v0, p0}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList(Landroid/util/ArraySet;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSensorConfig(I)Landroid/car/hardware/CarSensorConfig;
    .locals 3

    const v0, 0x11510306

    if-eq p1, v0, :cond_0

    .line 517
    sget-object p0, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_0

    .line 508
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v0}, Landroid/car/hardware/property/CarPropertyManager;->getPropertyList()Ljava/util/List;

    move-result-object v0

    .line 509
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 510
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 511
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getConfigArray()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorManager;->createWheelDistanceTickBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 520
    :goto_0
    new-instance v0, Landroid/car/hardware/CarSensorConfig;

    invoke-direct {v0, p1, p0}, Landroid/car/hardware/CarSensorConfig;-><init>(ILandroid/os/Bundle;)V

    return-object v0
.end method

.method public getSupportedSensors()[I
    .locals 4

    .line 328
    invoke-virtual {p0}, Landroid/car/hardware/CarSensorManager;->getPropertyList()Ljava/util/List;

    move-result-object p0

    .line 329
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 331
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/CarPropertyConfig;

    invoke-virtual {v3}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public isSensorSupported(I)Z
    .locals 4

    .line 351
    invoke-virtual {p0}, Landroid/car/hardware/CarSensorManager;->getSupportedSensors()[I

    move-result-object p0

    .line 352
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    if-ne p1, v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public onCarDisconnected()V
    .locals 2

    .line 315
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 317
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 318
    iget-object p0, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyManager;->onCarDisconnected()V

    return-void

    :catchall_0
    move-exception p0

    .line 317
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public registerListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;II)Z
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x64

    if-eq p3, v1, :cond_1

    if-eq p3, v0, :cond_1

    const/4 v1, 0x5

    if-eq p3, v1, :cond_1

    const/16 v1, 0xa

    if-eq p3, v1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "wrong rate "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 407
    :cond_1
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    .line 408
    new-instance v1, Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    invoke-direct {v1, p0, p1}, Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;-><init>(Landroid/car/hardware/CarSensorManager;Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;)V

    iput-object v1, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    goto :goto_1

    .line 410
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    iput-object v1, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    .line 412
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    int-to-float p3, p3

    invoke-virtual {v1, v2, p2, p3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 413
    iget-object p2, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    iget-object p0, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    invoke-virtual {p2, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;)V
    .locals 3

    .line 426
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 427
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    iput-object v1, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    .line 428
    iget-object v2, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {v2, v1}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    .line 429
    iget-object p0, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Landroid/car/hardware/CarSensorManager$OnSensorChangedListener;I)V
    .locals 2

    .line 441
    iget-object v0, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 442
    :try_start_0
    iget-object v1, p0, Landroid/car/hardware/CarSensorManager;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    iput-object p1, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyEventListener:Landroid/car/hardware/CarSensorManager$CarPropertyEventListenerToBase;

    .line 443
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    iget-object p0, p0, Landroid/car/hardware/CarSensorManager;->mCarPropertyMgr:Landroid/car/hardware/property/CarPropertyManager;

    invoke-virtual {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager;->unregisterCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;I)V

    return-void

    :catchall_0
    move-exception p0

    .line 443
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
