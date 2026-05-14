.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRIVING_STATES:[I

.field private static final JSON_NAME_IDLING_RESTRICTIONS:Ljava/lang/String; = "idling_restrictions"

.field private static final JSON_NAME_MAX_CONTENT_DEPTH:Ljava/lang/String; = "max_content_depth"

.field private static final JSON_NAME_MAX_CUMULATIVE_CONTENT_ITEMS:Ljava/lang/String; = "max_cumulative_content_items"

.field private static final JSON_NAME_MAX_SPEED:Ljava/lang/String; = "max_speed"

.field private static final JSON_NAME_MAX_STRING_LENGTH:Ljava/lang/String; = "max_string_length"

.field private static final JSON_NAME_MIN_SPEED:Ljava/lang/String; = "min_speed"

.field private static final JSON_NAME_MOVING_RESTRICTIONS:Ljava/lang/String; = "moving_restrictions"

.field private static final JSON_NAME_PARKED_RESTRICTIONS:Ljava/lang/String; = "parked_restrictions"

.field private static final JSON_NAME_PASSENGER_IDLING_RESTRICTIONS:Ljava/lang/String; = "passenger_idling_restrictions"

.field private static final JSON_NAME_PASSENGER_MOVING_RESTRICTIONS:Ljava/lang/String; = "passenger_moving_restrictions"

.field private static final JSON_NAME_PASSENGER_PARKED_RESTRICTIONS:Ljava/lang/String; = "passenger_parked_restrictions"

.field private static final JSON_NAME_PASSENGER_UNKNOWN_RESTRICTIONS:Ljava/lang/String; = "passenger_unknown_restrictions"

.field private static final JSON_NAME_PHYSICAL_PORT:Ljava/lang/String; = "physical_port"

.field private static final JSON_NAME_REQ_OPT:Ljava/lang/String; = "req_opt"

.field private static final JSON_NAME_RESTRICTIONS:Ljava/lang/String; = "restrictions"

.field private static final JSON_NAME_SPEED_RANGE:Ljava/lang/String; = "speed_range"

.field private static final JSON_NAME_UNKNOWN_RESTRICTIONS:Ljava/lang/String; = "unknown_restrictions"

.field private static final TAG:Ljava/lang/String; = "CarUxRConfig"


# instance fields
.field private final mBaselineUxRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mMaxContentDepth:I

.field private final mMaxCumulativeContentItems:I

.field private final mMaxStringLength:I

.field private final mPassengerUxRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPhysicalPort:Ljava/lang/Byte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 534
    fill-array-data v0, :array_0

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    .line 541
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;-><init>()V

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 7

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 95
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$000(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    .line 97
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$100(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 98
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$200(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    .line 99
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->access$300(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    .line 101
    sget-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v5, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 104
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 106
    :cond_0
    iget-object v5, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 109
    iget-object v5, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 110
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 112
    :cond_1
    iget-object v5, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method synthetic constructor <init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 560
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 87
    new-instance v0, Landroid/util/ArrayMap;

    sget-object v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 561
    sget-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 562
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 563
    sget-object v6, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v5, v6}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 564
    iget-object v6, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 566
    :cond_0
    sget-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 567
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 568
    sget-object v5, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 569
    iget-object v5, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 571
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 573
    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1300(I)Ljava/lang/String;
    .locals 0

    .line 55
    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700()[I
    .locals 1

    .line 55
    sget-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    return-object v0
.end method

.method private createDefaultUxRestrictionsEvent()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x1ff

    .line 200
    invoke-direct {p0, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0
.end method

.method private createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 3

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    .line 215
    :cond_0
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 216
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 217
    iget p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 218
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 220
    :cond_1
    iget p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    if-eq p1, p2, :cond_2

    .line 221
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 223
    :cond_2
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    if-eq p0, p2, :cond_3

    .line 224
    invoke-virtual {v0, p0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 226
    :cond_3
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0
.end method

.method private dumpRestrictions(Ljava/io/PrintWriter;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;)V"
        }
    .end annotation

    .line 500
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 501
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 502
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "State:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " num restrictions:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 502
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 504
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 505
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requires DO? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "\nRestrictions: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    .line 506
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nSpeed Range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    iget-object v3, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v3, :cond_1

    const-string v1, "None"

    goto :goto_1

    .line 510
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 505
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "-------------------------------------------"

    .line 511
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private static findUxRestrictionsInList(FLjava/util/List;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;"
        }
    .end annotation

    .line 182
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 186
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    iget-object v2, v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-nez v2, :cond_1

    .line 188
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    return-object p0

    .line 191
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 192
    iget-object v2, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-virtual {v2, p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->includes(F)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_3
    return-object v1
.end method

.method private static getDrivingStateName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const-string p0, "moving"

    return-object p0

    .line 527
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized state value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "idling"

    return-object p0

    :cond_2
    const-string p0, "parked"

    return-object p0

    :cond_3
    const-string p0, "unknown"

    return-object p0
.end method

.method public static readJson(Landroid/util/JsonReader;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 326
    invoke-virtual {p0, v0}, Landroid/util/JsonReader;->setLenient(Z)V

    .line 328
    new-instance v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    invoke-direct {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;-><init>()V

    .line 329
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    .line 330
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 331
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "idling_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_2

    :sswitch_1
    const-string v3, "passenger_parked_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v3, "physical_port"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto/16 :goto_2

    :sswitch_3
    const-string v3, "passenger_idling_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_4
    const-string v3, "moving_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_5
    const-string v3, "passenger_moving_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_2

    :sswitch_6
    const-string v3, "unknown_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_7
    const-string v3, "max_string_length"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_2

    :sswitch_8
    const-string v3, "max_content_depth"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_2

    :sswitch_9
    const-string v3, "max_cumulative_content_items"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_2

    :sswitch_a
    const-string v3, "parked_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_b
    const-string v3, "passenger_unknown_restrictions"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_2

    :cond_0
    :goto_1
    move v3, v5

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 382
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown name parsing json config: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CarUxRConfig"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 378
    :pswitch_0
    invoke-static {p0, v5, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 374
    :pswitch_1
    invoke-static {p0, v4, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 370
    :pswitch_2
    invoke-static {p0, v0, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 366
    :pswitch_3
    invoke-static {p0, v6, v0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 362
    :pswitch_4
    invoke-static {p0, v5, v6, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 358
    :pswitch_5
    invoke-static {p0, v4, v6, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 354
    :pswitch_6
    invoke-static {p0, v0, v6, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 350
    :pswitch_7
    invoke-static {p0, v6, v6, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V

    goto/16 :goto_0

    .line 347
    :pswitch_8
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxStringLength(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto/16 :goto_0

    .line 344
    :pswitch_9
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxCumulativeContentItems(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto/16 :goto_0

    .line 341
    :pswitch_a
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setMaxContentDepth(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto/16 :goto_0

    .line 334
    :pswitch_b
    invoke-virtual {p0}, Landroid/util/JsonReader;->peek()Landroid/util/JsonToken;

    move-result-object v2

    sget-object v3, Landroid/util/JsonToken;->NULL:Landroid/util/JsonToken;

    if-ne v2, v3, :cond_1

    .line 335
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextNull()V

    goto/16 :goto_0

    .line 337
    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v2

    invoke-static {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->validatePort(I)B

    move-result v2

    invoke-virtual {v1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setPhysicalPort(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto/16 :goto_0

    .line 386
    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 387
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->build()Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6d01897f -> :sswitch_b
        -0x6a307763 -> :sswitch_a
        -0x613b8357 -> :sswitch_9
        -0x3f20641e -> :sswitch_8
        -0x3d6ef4c7 -> :sswitch_7
        -0x13241404 -> :sswitch_6
        0xe6e2753 -> :sswitch_5
        0x3a9e9678 -> :sswitch_4
        0x3edd3cf0 -> :sswitch_3
        0x5bb15ee9 -> :sswitch_2
        0x699f1978 -> :sswitch_1
        0x6b0dac15 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static readRestrictions(Landroid/util/JsonReader;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 403
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move v1, v0

    .line 407
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 408
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "req_opt"

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 410
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v0

    goto :goto_0

    :cond_1
    const-string v4, "restrictions"

    .line 411
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    goto :goto_0

    :cond_2
    const-string v4, "speed_range"

    .line 413
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 414
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    move v3, v2

    .line 419
    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 420
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "min_speed"

    .line 421
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 422
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->floatValue()F

    move-result v2

    goto :goto_1

    :cond_3
    const-string v5, "max_speed"

    .line 423
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 424
    invoke-virtual {p0}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->floatValue()F

    move-result v3

    goto :goto_1

    .line 426
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown name parsing json config: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "CarUxRConfig"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_1

    .line 430
    :cond_5
    new-instance v4, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-direct {v4, v2, v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;-><init>(FF)V

    .line 431
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    move-object v2, v4

    goto/16 :goto_0

    .line 434
    :cond_6
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    .line 435
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;-><init>()V

    .line 436
    invoke-virtual {p0, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setDistractionOptimizationRequired(Z)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p0

    .line 437
    invoke-virtual {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setRestrictions(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object p0

    if-eqz v2, :cond_7

    .line 439
    invoke-virtual {p0, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setSpeedRange(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    :cond_7
    return-object p0
.end method

.method private static readRestrictionsList(Landroid/util/JsonReader;IILandroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 392
    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    .line 393
    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-static {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readRestrictions(Landroid/util/JsonReader;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    move-result-object v0

    .line 395
    invoke-virtual {v0, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;->setMode(I)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;

    .line 397
    invoke-virtual {p3, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(ILandroid/car/drivingstate/CarUxRestrictionsConfiguration$DrivingStateRestrictions;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    goto :goto_0

    .line 399
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    return-void
.end method

.method private writeRestrictions(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 295
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string p0, "req_opt"

    .line 296
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-boolean v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    const-string p0, "restrictions"

    .line 297
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 298
    iget-object p0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz p0, :cond_0

    const-string p0, "speed_range"

    .line 299
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 300
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string p0, "min_speed"

    .line 301
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-object v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string p0, "max_speed"

    .line 302
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-object p2, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 303
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 305
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 287
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 288
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictions(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)V

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Physical display port: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "==========================================="

    .line 483
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Baseline mode UXR:"

    .line 484
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "-------------------------------------------"

    .line 485
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    iget-object v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-direct {p0, p1, v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/util/Map;)V

    const-string v2, "Passenger mode UXR:"

    .line 488
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 489
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-direct {p0, p1, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/util/Map;)V

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max String length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max Cumulative Content Items: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max Content depth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 495
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 456
    :cond_0
    instance-of v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 460
    :cond_1
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 462
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    iget-object v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    if-ne v1, v3, :cond_2

    .line 463
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    iget-object v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 464
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 465
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getPhysicalPort()Ljava/lang/Byte;
    .locals 0

    .line 173
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    return-object p0
.end method

.method public getUxRestrictions(IF)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    const/4 v0, 0x0

    .line 127
    invoke-virtual {p0, p1, p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getUxRestrictions(IFI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0
.end method

.method public getUxRestrictions(IFI)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 145
    iget-object p3, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 145
    invoke-static {p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->findUxRestrictionsInList(FLjava/util/List;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_1

    .line 151
    iget-object p3, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/List;

    .line 151
    invoke-static {p2, p3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->findUxRestrictionsInList(FLjava/util/List;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    move-result-object p3

    :cond_1
    if-nez p3, :cond_3

    .line 156
    sget-boolean p2, Landroid/os/Build;->IS_ENG:Z

    if-nez p2, :cond_2

    sget-boolean p2, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p2, :cond_2

    .line 160
    invoke-direct {p0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createDefaultUxRestrictionsEvent()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0

    .line 157
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "No restrictions for driving state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getDrivingStateName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 162
    :cond_3
    iget-boolean p1, p3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    iget p2, p3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    invoke-direct {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->createUxRestrictionsEvent(ZI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0
.end method

.method public hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z
    .locals 2

    .line 472
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    iget p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 446
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    .line 447
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    const/4 v1, 0x5

    aput-object p0, v0, v1

    .line 446
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 310
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 311
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "\t"

    .line 312
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 314
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeJson(Landroid/util/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 316
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 318
    :goto_0
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 255
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 236
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->setLenient(Z)V

    .line 238
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 239
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    const-string v2, "physical_port"

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :goto_0
    const-string v0, "max_content_depth"

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "max_cumulative_content_items"

    .line 245
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "max_string_length"

    .line 247
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "parked_restrictions"

    .line 249
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 250
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    const/4 v2, 0x0

    .line 251
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 250
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "idling_restrictions"

    .line 253
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 254
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    .line 255
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 254
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "moving_restrictions"

    .line 257
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 258
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    const/4 v3, 0x2

    .line 259
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 258
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "unknown_restrictions"

    .line 261
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 262
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    const/4 v4, -0x1

    .line 263
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 262
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "passenger_parked_restrictions"

    .line 265
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 266
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 267
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 266
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "passenger_idling_restrictions"

    .line 269
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 270
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 271
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 270
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "passenger_moving_restrictions"

    .line 273
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 274
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 275
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "passenger_unknown_restrictions"

    .line 277
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 278
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    .line 279
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    .line 281
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 582
    sget-object p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p2, v2

    .line 583
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mBaselineUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 585
    :cond_0
    sget-object p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v0, p2

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget v3, p2, v2

    .line 586
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPassengerUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 588
    :cond_1
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_2

    :cond_2
    move p2, v1

    .line 589
    :goto_2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_3

    goto :goto_3

    .line 591
    :cond_3
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 593
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 595
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
