.class public Landroid/car/hardware/CarSensorEvent;
.super Ljava/lang/Object;
.source "CarSensorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;,
        Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;,
        Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;,
        Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;,
        Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;,
        Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;,
        Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;,
        Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;,
        Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;,
        Landroid/car/hardware/CarSensorEvent$CarSpeedData;,
        Landroid/car/hardware/CarSensorEvent$RpmData;,
        Landroid/car/hardware/CarSensorEvent$OdometerData;,
        Landroid/car/hardware/CarSensorEvent$FuelLevelData;,
        Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;,
        Landroid/car/hardware/CarSensorEvent$GearData;,
        Landroid/car/hardware/CarSensorEvent$NightData;,
        Landroid/car/hardware/CarSensorEvent$IgnitionStateData;,
        Landroid/car/hardware/CarSensorEvent$EnvironmentData;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/hardware/CarSensorEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final GEAR_DRIVE:I = 0x8

.field public static final GEAR_EIGHTH:I = 0x800

.field public static final GEAR_FIFTH:I = 0x100

.field public static final GEAR_FIRST:I = 0x10

.field public static final GEAR_FOURTH:I = 0x80

.field public static final GEAR_NEUTRAL:I = 0x1

.field public static final GEAR_NINTH:I = 0x1000

.field public static final GEAR_PARK:I = 0x4

.field public static final GEAR_REVERSE:I = 0x2

.field public static final GEAR_SECOND:I = 0x20

.field public static final GEAR_SEVENTH:I = 0x400

.field public static final GEAR_SIXTH:I = 0x200

.field public static final GEAR_TENTH:I = 0x2000

.field public static final GEAR_THIRD:I = 0x40

.field public static final IGNITION_STATE_ACC:I = 0x3

.field public static final IGNITION_STATE_LOCK:I = 0x1

.field public static final IGNITION_STATE_OFF:I = 0x2

.field public static final IGNITION_STATE_ON:I = 0x4

.field public static final IGNITION_STATE_START:I = 0x5

.field public static final IGNITION_STATE_UNDEFINED:I = 0x0

.field public static final INDEX_ENVIRONMENT_TEMPERATURE:I = 0x0

.field public static final INDEX_WHEEL_DISTANCE_FRONT_LEFT:I = 0x1

.field public static final INDEX_WHEEL_DISTANCE_FRONT_RIGHT:I = 0x2

.field public static final INDEX_WHEEL_DISTANCE_REAR_LEFT:I = 0x4

.field public static final INDEX_WHEEL_DISTANCE_REAR_RIGHT:I = 0x3

.field public static final INDEX_WHEEL_DISTANCE_RESET_COUNT:I = 0x0

.field private static final MILLI_IN_NANOS:J = 0xf4240L


# instance fields
.field public final floatValues:[F

.field public final intValues:[I

.field public final longValues:[J

.field public sensorType:I

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Landroid/car/hardware/CarSensorEvent$1;

    invoke-direct {v0}, Landroid/car/hardware/CarSensorEvent$1;-><init>()V

    sput-object v0, Landroid/car/hardware/CarSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJIII)V
    .locals 0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput p1, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    .line 182
    iput-wide p2, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    .line 183
    new-array p1, p4, [F

    iput-object p1, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    .line 184
    new-array p1, p5, [I

    iput-object p1, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    .line 185
    new-array p1, p6, [J

    iput-object p1, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    return-void
.end method

.method constructor <init>(IJ[F[I[J)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput p1, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    .line 192
    iput-wide p2, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    .line 193
    iput-object p4, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    .line 194
    iput-object p5, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    .line 195
    iput-object p6, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method

.method private checkType(I)V
    .locals 3

    .line 199
    iget v0, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    if-ne v0, p1, :cond_0

    return-void

    .line 202
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 203
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x1

    iget p0, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, p1

    const-string p0, "Invalid sensor type: expected %d, got %d"

    .line 202
    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCarAbsActiveData(Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;)Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;
    .locals 2

    const v0, 0x1120040a

    .line 522
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 524
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 526
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;->timestamp:J

    .line 527
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$CarAbsActiveData;->absIsActive:Z

    return-object p1
.end method

.method public getCarEngineOilLevelData(Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;)Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;
    .locals 2

    const v0, 0x11400303

    .line 741
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 743
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 745
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;->timestamp:J

    .line 746
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$CarEngineOilLevelData;->engineOilLevel:I

    return-object p1
.end method

.method public getCarEvBatteryChargeRateData(Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;)Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;
    .locals 2

    const v0, 0x1160030c

    .line 713
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 715
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 717
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;->timestamp:J

    .line 718
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryChargeRateData;->evChargeRate:F

    return-object p1
.end method

.method public getCarEvBatteryLevelData(Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;)Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;
    .locals 4

    const v0, 0x11600309

    .line 613
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 615
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 617
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;->timestamp:J

    .line 618
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_1

    .line 619
    iput v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;->evBatteryLevel:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 621
    aget v2, p0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 622
    iput v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;->evBatteryLevel:F

    goto :goto_0

    .line 624
    :cond_2
    aget p0, p0, v1

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$CarEvBatteryLevelData;->evBatteryLevel:F

    :goto_0
    return-object p1
.end method

.method public getCarEvChargePortConnectedData(Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;)Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;
    .locals 2

    const v0, 0x1120030b

    .line 681
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 683
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 685
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;->timestamp:J

    .line 686
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvChargePortConnectedData;->evChargePortIsConnected:Z

    return-object p1
.end method

.method public getCarEvChargePortOpenData(Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;)Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;
    .locals 2

    const v0, 0x1120030a

    .line 651
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 653
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 655
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;->timestamp:J

    .line 656
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$CarEvChargePortOpenData;->evChargePortIsOpen:Z

    return-object p1
.end method

.method public getCarFuelDoorOpenData(Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;)Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;
    .locals 2

    const v0, 0x11200308

    .line 582
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 584
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 586
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;->timestamp:J

    .line 587
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$CarFuelDoorOpenData;->fuelDoorIsOpen:Z

    return-object p1
.end method

.method public getCarSpeedData(Landroid/car/hardware/CarSensorEvent$CarSpeedData;)Landroid/car/hardware/CarSensorEvent$CarSpeedData;
    .locals 2

    const v0, 0x11600207

    .line 458
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 460
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarSpeedData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarSpeedData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 462
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarSpeedData;->timestamp:J

    .line 463
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$CarSpeedData;->carSpeed:F

    return-object p1
.end method

.method public getCarTractionControlActiveData(Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;)Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;
    .locals 2

    const v0, 0x1120040b

    .line 552
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 554
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 556
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;->timestamp:J

    .line 557
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$CarTractionControlActiveData;->tractionControlIsActive:Z

    return-object p1
.end method

.method public getCarWheelTickDistanceData(Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;)Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;
    .locals 2

    const v0, 0x11510306

    .line 490
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 492
    new-instance p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 494
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;->timestamp:J

    .line 495
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;->sensorResetCount:J

    .line 496
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;->frontLeftWheelDistanceMm:J

    .line 497
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;->frontRightWheelDistanceMm:J

    .line 498
    iget-object v0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    const/4 v1, 0x3

    aget-wide v0, v0, v1

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;->rearRightWheelDistanceMm:J

    .line 499
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    const/4 v0, 0x4

    aget-wide v0, p0, v0

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$CarWheelTickDistanceData;->rearLeftWheelDistanceMm:J

    return-object p1
.end method

.method public getEnvironmentData(Landroid/car/hardware/CarSensorEvent$EnvironmentData;)Landroid/car/hardware/CarSensorEvent$EnvironmentData;
    .locals 2

    const v0, 0x11600703

    .line 225
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 227
    new-instance p1, Landroid/car/hardware/CarSensorEvent$EnvironmentData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$EnvironmentData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 229
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$EnvironmentData;->timestamp:J

    .line 230
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$EnvironmentData;->temperature:F

    return-object p1
.end method

.method public getFuelLevelData(Landroid/car/hardware/CarSensorEvent$FuelLevelData;)Landroid/car/hardware/CarSensorEvent$FuelLevelData;
    .locals 4

    const v0, 0x11600307

    .line 366
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 368
    new-instance p1, Landroid/car/hardware/CarSensorEvent$FuelLevelData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$FuelLevelData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 370
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$FuelLevelData;->timestamp:J

    .line 371
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/high16 v0, -0x40800000    # -1.0f

    if-nez p0, :cond_1

    .line 372
    iput v0, p1, Landroid/car/hardware/CarSensorEvent$FuelLevelData;->level:F

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 374
    aget v2, p0, v1

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 375
    iput v0, p1, Landroid/car/hardware/CarSensorEvent$FuelLevelData;->level:F

    goto :goto_0

    .line 377
    :cond_2
    aget p0, p0, v1

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$FuelLevelData;->level:F

    :goto_0
    return-object p1
.end method

.method public getGearData(Landroid/car/hardware/CarSensorEvent$GearData;)Landroid/car/hardware/CarSensorEvent$GearData;
    .locals 2

    const v0, 0x11400400

    .line 309
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 311
    new-instance p1, Landroid/car/hardware/CarSensorEvent$GearData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$GearData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 313
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$GearData;->timestamp:J

    .line 314
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$GearData;->gear:I

    return-object p1
.end method

.method public getIgnitionStateData(Landroid/car/hardware/CarSensorEvent$IgnitionStateData;)Landroid/car/hardware/CarSensorEvent$IgnitionStateData;
    .locals 2

    const v0, 0x11400409

    .line 253
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 255
    new-instance p1, Landroid/car/hardware/CarSensorEvent$IgnitionStateData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$IgnitionStateData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 257
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$IgnitionStateData;->timestamp:J

    .line 258
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$IgnitionStateData;->ignitionState:I

    return-object p1
.end method

.method public getNightData(Landroid/car/hardware/CarSensorEvent$NightData;)Landroid/car/hardware/CarSensorEvent$NightData;
    .locals 2

    const v0, 0x11200407

    .line 281
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 283
    new-instance p1, Landroid/car/hardware/CarSensorEvent$NightData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$NightData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 285
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$NightData;->timestamp:J

    .line 286
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$NightData;->isNightMode:Z

    return-object p1
.end method

.method public getOdometerData(Landroid/car/hardware/CarSensorEvent$OdometerData;)Landroid/car/hardware/CarSensorEvent$OdometerData;
    .locals 2

    const v0, 0x11600204

    .line 402
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 404
    new-instance p1, Landroid/car/hardware/CarSensorEvent$OdometerData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$OdometerData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 406
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$OdometerData;->timestamp:J

    .line 407
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$OdometerData;->kms:F

    return-object p1
.end method

.method public getParkingBrakeData(Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;)Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;
    .locals 2

    const v0, 0x11200402

    .line 337
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 339
    new-instance p1, Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 341
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;->timestamp:J

    .line 342
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p1, Landroid/car/hardware/CarSensorEvent$ParkingBrakeData;->isEngaged:Z

    return-object p1
.end method

.method public getRpmData(Landroid/car/hardware/CarSensorEvent$RpmData;)Landroid/car/hardware/CarSensorEvent$RpmData;
    .locals 2

    const v0, 0x11600305

    .line 430
    invoke-direct {p0, v0}, Landroid/car/hardware/CarSensorEvent;->checkType(I)V

    if-nez p1, :cond_0

    .line 432
    new-instance p1, Landroid/car/hardware/CarSensorEvent$RpmData;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/car/hardware/CarSensorEvent$RpmData;-><init>(Landroid/car/hardware/CarSensorEvent$1;)V

    .line 434
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    iput-wide v0, p1, Landroid/car/hardware/CarSensorEvent$RpmData;->timestamp:J

    .line 435
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v0, 0x0

    aget p0, p0, v0

    iput p0, p1, Landroid/car/hardware/CarSensorEvent$RpmData;->rpm:F

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " float values:"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v1, v5

    .line 759
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, " int values:"

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v1, v5

    .line 765
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 768
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, " long values:"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-wide v4, p0, v3

    .line 771
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string p0, "]"

    .line 774
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    iget p2, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 161
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 163
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
