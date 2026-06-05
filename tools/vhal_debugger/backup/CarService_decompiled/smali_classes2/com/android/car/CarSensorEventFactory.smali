.class public Lcom/android/car/CarSensorEventFactory;
.super Ljava/lang/Object;
.source "CarSensorEventFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBooleanEvent(IJZ)Landroid/car/hardware/CarSensorEvent;
    .locals 8
    .param p0, "sensorType"    # I
    .param p1, "timestamp"    # J
    .param p3, "value"    # Z

    .line 29
    new-instance v7, Landroid/car/hardware/CarSensorEvent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 30
    .local v0, "event":Landroid/car/hardware/CarSensorEvent;
    iget-object v1, v0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v2, 0x0

    aput p3, v1, v2

    .line 31
    return-object v0
.end method

.method public static createFloatEvent(IJF)Landroid/car/hardware/CarSensorEvent;
    .locals 8
    .param p0, "sensorType"    # I
    .param p1, "timestamp"    # J
    .param p3, "value"    # F

    .line 58
    new-instance v7, Landroid/car/hardware/CarSensorEvent;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 59
    .local v0, "event":Landroid/car/hardware/CarSensorEvent;
    iget-object v1, v0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const/4 v2, 0x0

    aput p3, v1, v2

    .line 60
    return-object v0
.end method

.method public static createInt64VecEvent(IJLjava/util/List;)Landroid/car/hardware/CarSensorEvent;
    .locals 8
    .param p0, "sensorType"    # I
    .param p1, "timestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)",
            "Landroid/car/hardware/CarSensorEvent;"
        }
    .end annotation

    .line 50
    .local p3, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v7, Landroid/car/hardware/CarSensorEvent;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 51
    .local v0, "event":Landroid/car/hardware/CarSensorEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 52
    iget-object v2, v0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    aput-wide v3, v2, v1

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method public static createIntEvent(IJI)Landroid/car/hardware/CarSensorEvent;
    .locals 8
    .param p0, "sensorType"    # I
    .param p1, "timestamp"    # J
    .param p3, "value"    # I

    .line 35
    new-instance v7, Landroid/car/hardware/CarSensorEvent;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 36
    .local v0, "event":Landroid/car/hardware/CarSensorEvent;
    iget-object v1, v0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    const/4 v2, 0x0

    aput p3, v1, v2

    .line 37
    return-object v0
.end method

.method public static createMixedEvent(IJLandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/car/hardware/CarSensorEvent;
    .locals 11
    .param p0, "sensorType"    # I
    .param p1, "timestamp"    # J
    .param p3, "v"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 65
    iget-object v0, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 66
    .local v0, "numFloats":I
    iget-object v1, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 67
    .local v8, "numInts":I
    iget-object v1, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 68
    .local v9, "numLongs":I
    new-instance v10, Landroid/car/hardware/CarSensorEvent;

    move-object v1, v10

    move v2, p0

    move-wide v3, p1

    move v5, v0

    move v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Landroid/car/hardware/CarSensorEvent;-><init>(IJIII)V

    .line 71
    .local v1, "event":Landroid/car/hardware/CarSensorEvent;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 72
    iget-object v3, v1, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    iget-object v4, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->floatValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    aput v4, v3, v2

    .line 71
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "i":I
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v8, :cond_1

    .line 75
    iget-object v3, v1, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    iget-object v4, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v2

    .line 74
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 77
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    if-ge v2, v9, :cond_2

    .line 78
    iget-object v3, v1, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    iget-object v4, p3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int64Values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v2

    .line 77
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 80
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public static returnToPool(Landroid/car/hardware/CarSensorEvent;)V
    .locals 0
    .param p0, "event"    # Landroid/car/hardware/CarSensorEvent;

    .line 85
    return-void
.end method
