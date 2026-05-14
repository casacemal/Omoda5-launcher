.class public final Landroid/car/diagnostic/CarDiagnosticEvent;
.super Ljava/lang/Object;
.source "CarDiagnosticEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/diagnostic/CarDiagnosticEvent$CompressionIgnitionMonitors;,
        Landroid/car/diagnostic/CarDiagnosticEvent$SparkIgnitionMonitors;,
        Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;,
        Landroid/car/diagnostic/CarDiagnosticEvent$IgnitionMonitor;,
        Landroid/car/diagnostic/CarDiagnosticEvent$FuelType;,
        Landroid/car/diagnostic/CarDiagnosticEvent$SecondaryAirStatus;,
        Landroid/car/diagnostic/CarDiagnosticEvent$FuelSystemStatus;,
        Landroid/car/diagnostic/CarDiagnosticEvent$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final dtc:Ljava/lang/String;

.field private final floatValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final frameType:I

.field private final intValues:Landroid/util/SparseIntArray;

.field public final timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 168
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent$1;

    invoke-direct {v0}, Landroid/car/diagnostic/CarDiagnosticEvent$1;-><init>()V

    sput-object v0, Landroid/car/diagnostic/CarDiagnosticEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IJLandroid/util/SparseArray;Landroid/util/SparseIntArray;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/SparseIntArray;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput p1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    .line 186
    iput-wide p2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    .line 187
    iput-object p4, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    .line 188
    iput-object p5, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    .line 189
    iput-object p6, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(IJLandroid/util/SparseArray;Landroid/util/SparseIntArray;Ljava/lang/String;Landroid/car/diagnostic/CarDiagnosticEvent$1;)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p6}, Landroid/car/diagnostic/CarDiagnosticEvent;-><init>(IJLandroid/util/SparseArray;Landroid/util/SparseIntArray;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 6

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v4

    .line 75
    iget-object v5, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 78
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    :goto_1
    if-ge v1, v0, :cond_1

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 82
    iget-object v4, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 84
    :cond_1
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkFreezeFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 1

    .line 354
    invoke-virtual {p0}, Landroid/car/diagnostic/CarDiagnosticEvent;->isFreezeFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "frame is not a freeze frame"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public checkLiveFrame()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 1

    .line 348
    invoke-virtual {p0}, Landroid/car/diagnostic/CarDiagnosticEvent;->isLiveFrame()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "frame is not a live frame"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 372
    :cond_1
    instance-of v2, p1, Landroid/car/diagnostic/CarDiagnosticEvent;

    if-nez v2, :cond_2

    return v1

    .line 375
    :cond_2
    check-cast p1, Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 376
    iget v2, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    iget v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    if-eq v2, v3, :cond_3

    return v1

    .line 378
    :cond_3
    iget-wide v2, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    iget-wide v4, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 380
    :cond_4
    iget-object v2, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_5

    return v1

    .line 382
    :cond_5
    iget-object v2, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eq v2, v3, :cond_6

    return v1

    .line 384
    :cond_6
    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    iget-object v3, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    :cond_7
    move v2, v1

    .line 386
    :goto_0
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 387
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 388
    iget-object v4, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_8

    return v1

    .line 392
    :cond_8
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 393
    iget-object v4, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    if-eq v3, v4, :cond_9

    return v1

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_a
    move v2, v1

    .line 398
    :goto_1
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_d

    .line 399
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 400
    iget-object v4, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    if-eq v3, v4, :cond_b

    return v1

    .line 404
    :cond_b
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 405
    iget-object v4, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_c

    return v1

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_d
    return v0
.end method

.method public getFuelSystemStatus()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    .line 908
    invoke-virtual {p0, v0}, Landroid/car/diagnostic/CarDiagnosticEvent;->getSystemIntegerSensor(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getFuelType()Ljava/lang/Integer;
    .locals 1

    const/16 v0, 0x15

    .line 945
    invoke-virtual {p0, v0}, Landroid/car/diagnostic/CarDiagnosticEvent;->getSystemIntegerSensor(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getIgnitionMonitors()Landroid/car/diagnostic/CarDiagnosticEvent$CommonIgnitionMonitors;
    .locals 3

    const/4 v0, 0x2

    .line 925
    invoke-virtual {p0, v0}, Landroid/car/diagnostic/CarDiagnosticEvent;->getSystemIntegerSensor(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x3

    .line 927
    invoke-virtual {p0, v1}, Landroid/car/diagnostic/CarDiagnosticEvent;->getSystemIntegerSensor(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    if-nez p0, :cond_1

    return-object v1

    .line 930
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    return-object v1

    .line 934
    :cond_2
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent$CompressionIgnitionMonitors;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/car/diagnostic/CarDiagnosticEvent$CompressionIgnitionMonitors;-><init>(I)V

    return-object v0

    .line 932
    :cond_3
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent$SparkIgnitionMonitors;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, p0}, Landroid/car/diagnostic/CarDiagnosticEvent$SparkIgnitionMonitors;-><init>(I)V

    return-object v0
.end method

.method public getSecondaryAirStatus()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x5

    .line 916
    invoke-virtual {p0, v0}, Landroid/car/diagnostic/CarDiagnosticEvent;->getSystemIntegerSensor(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getSystemFloatSensor(IF)F
    .locals 0

    .line 470
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getSystemFloatSensor(I)Ljava/lang/Float;
    .locals 1

    .line 506
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 508
    :cond_0
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public getSystemIntegerSensor(II)I
    .locals 0

    .line 461
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getSystemIntegerSensor(I)Ljava/lang/Integer;
    .locals 1

    .line 495
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 497
    :cond_0
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public getVendorFloatSensor(IF)F
    .locals 0

    .line 486
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getVendorFloatSensor(I)Ljava/lang/Float;
    .locals 1

    .line 526
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public getVendorIntegerSensor(II)I
    .locals 0

    .line 478
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public getVendorIntegerSensor(I)Ljava/lang/Integer;
    .locals 1

    .line 516
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 518
    :cond_0
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 9

    .line 415
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/Integer;

    .line 416
    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Integer;

    .line 417
    new-array v4, v0, [Ljava/lang/Integer;

    .line 418
    new-array v5, v2, [Ljava/lang/Float;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v0, :cond_0

    .line 420
    iget-object v8, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v7

    .line 421
    iget-object v8, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    move v0, v6

    :goto_1
    if-ge v0, v2, :cond_1

    .line 424
    iget-object v7, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v0

    .line 425
    iget-object v7, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    aput-object v7, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 427
    :cond_1
    check-cast v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 428
    check-cast v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    .line 429
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v2

    .line 430
    check-cast v5, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v3

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    .line 431
    iget v5, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    iget-wide v5, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    .line 432
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const/4 v5, 0x2

    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    aput-object p0, v4, v5

    const/4 p0, 0x3

    .line 434
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    const/4 p0, 0x4

    .line 435
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    const/4 p0, 0x5

    .line 436
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    const/4 p0, 0x6

    .line 437
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, p0

    .line 431
    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public isEarlierThan(Landroid/car/diagnostic/CarDiagnosticEvent;)Z
    .locals 2

    .line 360
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    iget-wide v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    iget-wide p0, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    cmp-long p0, v0, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEmptyFrame()Z
    .locals 4

    .line 340
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 341
    :goto_0
    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/2addr v0, v1

    .line 342
    invoke-virtual {p0}, Landroid/car/diagnostic/CarDiagnosticEvent;->isFreezeFrame()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    and-int/2addr v0, p0

    :cond_2
    return v0
.end method

.method public isFreezeFrame()Z
    .locals 1

    .line 335
    iget p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    const/4 v0, 0x1

    if-ne v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isLiveFrame()Z
    .locals 0

    .line 330
    iget p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 448
    invoke-virtual {p0}, Landroid/car/diagnostic/CarDiagnosticEvent;->isLiveFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "live"

    goto :goto_0

    :cond_0
    const-string v1, "freeze"

    :goto_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-wide v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    .line 449
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    .line 451
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    .line 452
    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "%s diagnostic frame {\n\ttimestamp: %d, DTC: %s\n\tintValues: %s\n\tfloatValues: %s\n}"

    .line 442
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public withVendorSensorsRemoved()Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 8

    .line 311
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object v6

    .line 312
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    .line 313
    :goto_0
    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 314
    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 316
    invoke-virtual {v6, v2}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 319
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 320
    iget-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    const/16 v2, 0x46

    if-lt v1, v2, :cond_2

    .line 322
    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->delete(I)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    :cond_3
    new-instance v0, Landroid/car/diagnostic/CarDiagnosticEvent;

    iget v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    iget-wide v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    iget-object v7, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/car/diagnostic/CarDiagnosticEvent;-><init>(IJLandroid/util/SparseArray;Landroid/util/SparseIntArray;Ljava/lang/String;)V

    return-object v0
.end method

.method public writeToJson(Landroid/util/JsonWriter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "type"

    .line 129
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 130
    iget v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "freeze"

    .line 135
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    goto :goto_0

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown frameType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string v0, "live"

    .line 132
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    :goto_0
    const-string v0, "timestamp"

    .line 141
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "intValues"

    .line 143
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    const/4 v0, 0x0

    move v1, v0

    .line 144
    :goto_1
    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const-string v3, "value"

    const-string v4, "id"

    if-ge v1, v2, :cond_2

    .line 145
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 146
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    iget-object v4, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 147
    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    iget-object v3, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 148
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 150
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    const-string v1, "floatValues"

    .line 152
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 153
    :goto_2
    iget-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 154
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 155
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v1, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 156
    invoke-virtual {p1, v3}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->value(Ljava/lang/Number;)Landroid/util/JsonWriter;

    .line 157
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 159
    :cond_3
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 161
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "stringValue"

    .line 162
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 165
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .line 95
    iget p2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->frameType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-wide v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 97
    iget-object p2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p2, 0x0

    move v0, p2

    .line 98
    :goto_0
    iget-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 99
    iget-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    iget-object v2, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->floatValues:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    :goto_1
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 105
    iget-object v0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v0

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v1, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->intValues:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 109
    :cond_1
    iget-object p0, p0, Landroid/car/diagnostic/CarDiagnosticEvent;->dtc:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    return-void
.end method
