.class public Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
.super Ljava/lang/Object;
.source "VehiclePropValueBuilder.java"


# instance fields
.field private final mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "propId"    # I

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 37
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 38
    return-void
.end method

.method private constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-direct {p0, p1}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->clone(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 42
    return-void
.end method

.method private clone(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 3
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 45
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 47
    .local v0, "newValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 48
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 49
    iget-wide v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    iput-wide v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 50
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    iput-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    .line 51
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 52
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 53
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 54
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    return-object v0
.end method

.method public static newBuilder(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 1
    .param p0, "propId"    # I

    .line 28
    new-instance v0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    invoke-direct {v0, p0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;-><init>(I)V

    return-object v0
.end method

.method public static newBuilder(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 1
    .param p0, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 32
    new-instance v0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;

    invoke-direct {v0, p0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    return-object v0
.end method


# virtual methods
.method public varargs addByteValue([B)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 5
    .param p1, "values"    # [B

    .line 95
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 96
    .local v2, "val":B
    iget-object v3, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    .end local v2    # "val":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-object p0
.end method

.method public varargs addFloatValue([F)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 5
    .param p1, "values"    # [F

    .line 87
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 88
    .local v2, "val":F
    iget-object v3, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .end local v2    # "val":F
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    :cond_0
    return-object p0
.end method

.method public varargs addIntValue([I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 5
    .param p1, "values"    # [I

    .line 79
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p1, v1

    .line 80
    .local v2, "val":I
    iget-object v3, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    .end local v2    # "val":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    :cond_0
    return-object p0
.end method

.method public build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {p0, v0}, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->clone(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method public setAreaId(I)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 1
    .param p1, "areaId"    # I

    .line 61
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 62
    return-object p0
.end method

.method public setBooleanValue(Z)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 2
    .param p1, "value"    # Z

    .line 111
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 112
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    return-object p0
.end method

.method public varargs setInt64Value([J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 6
    .param p1, "values"    # [J

    .line 103
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v2, p1, v1

    .line 104
    .local v2, "val":J
    iget-object v4, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    .end local v2    # "val":J
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    :cond_0
    return-object p0
.end method

.method public setStringValue(Ljava/lang/String;)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 1
    .param p1, "val"    # Ljava/lang/String;

    .line 118
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iput-object p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->stringValue:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public setTimestamp()Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 74
    return-object p0
.end method

.method public setTimestamp(J)Lcom/android/car/vehiclehal/VehiclePropValueBuilder;
    .locals 1
    .param p1, "timestamp"    # J

    .line 67
    iget-object v0, p0, Lcom/android/car/vehiclehal/VehiclePropValueBuilder;->mPropValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput-wide p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->timestamp:J

    .line 68
    return-object p0
.end method
