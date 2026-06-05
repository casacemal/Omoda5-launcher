.class public Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
.super Ljava/lang/Object;
.source "VehiclePropConfigBuilder.java"


# instance fields
.field private final mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;


# direct methods
.method private constructor <init>(I)V
    .locals 2
    .param p1, "propId"    # I

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 41
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 42
    const/4 v1, 0x3

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 43
    const/4 v1, 0x1

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 44
    return-void
.end method

.method private clone(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .locals 6
    .param p1, "propConfig"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 47
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;-><init>()V

    .line 49
    .local v0, "newConfig":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    .line 50
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 51
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 52
    iget-object v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    iput-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 53
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->minSampleRate:F

    .line 54
    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->maxSampleRate:F

    .line 55
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    iget-object v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 56
    iget-object v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    .line 57
    .local v2, "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    new-instance v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    invoke-direct {v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;-><init>()V

    .line 58
    .local v3, "newArea":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    iput v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    .line 59
    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt32Value:I

    iput v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt32Value:I

    .line 60
    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    iput v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    .line 61
    iget-wide v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt64Value:J

    iput-wide v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt64Value:J

    .line 62
    iget-wide v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt64Value:J

    iput-wide v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt64Value:J

    .line 63
    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minFloatValue:F

    iput v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minFloatValue:F

    .line 64
    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxFloatValue:F

    iput v4, v3, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxFloatValue:F

    .line 65
    iget-object v4, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v2    # "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    .end local v3    # "newArea":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    goto :goto_0

    .line 68
    :cond_0
    return-object v0
.end method

.method public static newBuilder(I)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 1
    .param p0, "propId"    # I

    .line 36
    new-instance v0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;

    invoke-direct {v0, p0}, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public addAreaConfig(IFF)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 2
    .param p1, "areaId"    # I
    .param p2, "minValue"    # F
    .param p3, "maxValue"    # F

    .line 109
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;-><init>()V

    .line 110
    .local v0, "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    .line 111
    iput p2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minFloatValue:F

    .line 112
    iput p3, v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxFloatValue:F

    .line 113
    iget-object v1, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p0
.end method

.method public addAreaConfig(III)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 2
    .param p1, "areaId"    # I
    .param p2, "minValue"    # I
    .param p3, "maxValue"    # I

    .line 99
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;-><init>()V

    .line 100
    .local v0, "area":Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;
    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->areaId:I

    .line 101
    iput p2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->minInt32Value:I

    .line 102
    iput p3, v0, Landroid/hardware/automotive/vehicle/V2_0/VehicleAreaConfig;->maxInt32Value:I

    .line 103
    iget-object v1, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->areaConfigs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-object p0
.end method

.method public build()Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    invoke-direct {p0, v0}, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->clone(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    move-result-object v0

    return-object v0
.end method

.method public setAccess(I)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 1
    .param p1, "access"    # I

    .line 73
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    .line 74
    return-object p0
.end method

.method public setChangeMode(I)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 1
    .param p1, "changeMode"    # I

    .line 79
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iput p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->changeMode:I

    .line 80
    return-object p0
.end method

.method public setConfigArray(Ljava/util/Collection;)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;"
        }
    .end annotation

    .line 92
    .local p1, "configArray":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 93
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configArray:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 94
    return-object p0
.end method

.method public setConfigString(Ljava/lang/String;)Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;
    .locals 1
    .param p1, "configString"    # Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/VehiclePropConfigBuilder;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iput-object p1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->configString:Ljava/lang/String;

    .line 86
    return-object p0
.end method
