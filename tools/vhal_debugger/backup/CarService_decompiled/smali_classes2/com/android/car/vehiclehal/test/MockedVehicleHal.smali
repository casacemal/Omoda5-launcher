.class public Lcom/android/car/vehiclehal/test/MockedVehicleHal;
.super Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;
.source "MockedVehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;,
        Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;,
        Lcom/android/car/vehiclehal/test/MockedVehicleHal$FailingPropertyHandler;,
        Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    }
.end annotation


# instance fields
.field private final mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final mPropertyHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscribers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$Stub;-><init>()V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mConfigs:Ljava/util/Map;

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public varargs declared-synchronized addProperties([Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;)V
    .locals 5
    .param p1, "configs"    # [Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    monitor-enter p0

    .line 63
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 64
    .local v2, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    new-instance v3, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->addProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    .end local v2    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :cond_0
    monitor-exit p0

    return-void

    .line 62
    .end local p1    # "configs":[Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;)V
    .locals 2
    .param p1, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p2, "handler"    # Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mConfigs:Ljava/util/Map;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    monitor-exit p0

    return-void

    .line 69
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    .end local p1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p2    # "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addStaticProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p2, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    monitor-enter p0

    .line 76
    :try_start_0
    new-instance v0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;

    invoke-direct {v0, p2}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;-><init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->addProperty(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    monitor-exit p0

    return-void

    .line 75
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    .end local p1    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local p2    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public debugDump()Ljava/lang/String;
    .locals 1

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;)V
    .locals 3
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .param p2, "cb"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;

    .line 159
    .local v0, "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    if-nez v0, :cond_0

    .line 160
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;->onValues(ILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    goto :goto_0

    .line 162
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, p1}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;->onPropertyGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;->onValues(ILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    .line 157
    .end local v0    # "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    .end local p1    # "requestedPropValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local p2    # "cb":Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getAllPropConfigs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 139
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPropConfigs(Ljava/util/ArrayList;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;)V
    .locals 5
    .param p2, "cb"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;",
            ")V"
        }
    .end annotation

    .local p1, "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 144
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 145
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 146
    .local v2, "prop":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mConfigs:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 147
    .local v3, "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    if-nez v3, :cond_0

    .line 148
    const/4 v1, 0x2

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, v1, v4}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 149
    monitor-exit p0

    return-void

    .line 151
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :cond_0
    :try_start_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    nop

    .end local v2    # "prop":Ljava/lang/Integer;
    .end local v3    # "config":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    goto :goto_0

    .line 153
    :cond_1
    const/4 v1, 0x0

    invoke-interface {p2, v1, v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;->onValues(ILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    monitor-exit p0

    return-void

    .line 143
    .end local v0    # "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    .end local p1    # "props":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local p2    # "cb":Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getPropConfigsCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized injectError(III)V
    .locals 5
    .param p1, "errorCode"    # I
    .param p2, "propertyId"    # I
    .param p3, "areaId"    # I

    monitor-enter p0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 125
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting error failed for property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". No listeners found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .local v2, "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertySetError(III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    goto :goto_1

    .line 130
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :catch_0
    move-exception v3

    .line 131
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 132
    const-string v4, "Remote exception while injecting errors."

    invoke-static {v4}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 134
    .end local v2    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    .line 123
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    .end local p1    # "errorCode":I
    .end local p2    # "propertyId":I
    .end local p3    # "areaId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized injectEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    monitor-enter p0

    .line 120
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->injectEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 119
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    .end local p1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized injectEvent(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Z)V
    .locals 5
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .param p2, "setProperty"    # Z

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 98
    .local v0, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injecting event failed for property: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". No listeners found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    if-eqz p2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    iget v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;

    .line 104
    .local v1, "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    if-eqz v1, :cond_0

    .line 105
    invoke-interface {v1, p1}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;->onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 109
    .end local v1    # "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .local v2, "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    const/4 v3, 0x1

    :try_start_1
    new-array v3, v3, [Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v3}, Lcom/google/android/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertyEvent(Ljava/util/ArrayList;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    goto :goto_1

    .line 112
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    .line 114
    const-string v4, "Remote exception while injecting events."

    invoke-static {v4}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    .end local v2    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 117
    :cond_1
    monitor-exit p0

    return-void

    .line 96
    .end local v0    # "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    .end local p1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local p2    # "setProperty":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I
    .locals 2
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    monitor-enter p0

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    .local v0, "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    if-nez v0, :cond_0

    .line 170
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 172
    :cond_0
    :try_start_1
    invoke-interface {v0, p1}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;->onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 173
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 167
    .end local v0    # "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    .end local p1    # "propValue":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized subscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;Ljava/util/ArrayList;)I
    .locals 8
    .param p1, "callback"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;",
            ">;)I"
        }
    .end annotation

    .local p2, "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;>;"
    monitor-enter p0

    .line 180
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;

    .line 181
    .local v1, "opt":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    iget-object v2, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->propId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v2, "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    if-nez v2, :cond_0

    .line 183
    const/4 v0, 0x2

    monitor-exit p0

    return v0

    .line 186
    :cond_0
    :try_start_1
    iget v3, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->propId:I

    iget v4, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->sampleRate:F

    invoke-interface {v2, v3, v4}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;->onPropertySubscribe(IF)V

    .line 187
    iget-object v3, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    iget v4, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->propId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 188
    .local v3, "subscribers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    if-nez v3, :cond_1

    .line 189
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v4

    .line 190
    iget-object v4, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    iget v5, v1, Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;->propId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_2

    .line 193
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 194
    .local v5, "s":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    invoke-interface {p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v6

    invoke-interface {v5}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->asBinder()Landroid/os/IHwBinder;

    move-result-object v7

    if-ne v6, v7, :cond_2

    .line 196
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 197
    goto :goto_2

    .line 199
    .end local v5    # "s":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    :cond_2
    goto :goto_1

    .line 201
    :cond_3
    :goto_2
    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    nop

    .end local v1    # "opt":Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    .end local v2    # "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    .end local v3    # "subscribers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    goto :goto_0

    .line 203
    :cond_4
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 179
    .end local p1    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .end local p2    # "options":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unsubscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;I)I
    .locals 4
    .param p1, "callback"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .param p2, "propId"    # I

    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mPropertyHandlerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    .local v0, "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    if-nez v0, :cond_0

    .line 210
    const/4 v1, 0x2

    monitor-exit p0

    return v1

    .line 213
    :cond_0
    :try_start_1
    invoke-interface {v0, p2}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;->onPropertyUnsubscribe(I)V

    .line 214
    iget-object v1, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 215
    .local v1, "subscribers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    if-eqz v1, :cond_1

    .line 216
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 217
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 218
    iget-object v2, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    :cond_1
    const/4 v2, 0x0

    monitor-exit p0

    return v2

    .line 207
    .end local v0    # "handler":Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
    .end local v1    # "subscribers":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;>;"
    .end local p1    # "callback":Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;
    .end local p2    # "propId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public waitForSubscriber(IJ)Z
    .locals 7
    .param p1, "propId"    # I
    .param p2, "timeoutMillis"    # J

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 82
    .local v0, "startTime":J
    const/4 v2, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    :try_start_1
    iget-object v3, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 84
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long v3, v0, v3

    add-long/2addr v3, p2

    .line 85
    .local v3, "waitMillis":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-gez v5, :cond_0

    goto :goto_1

    .line 86
    :cond_0
    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 87
    .end local v3    # "waitMillis":J
    goto :goto_0

    .line 89
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal;->mSubscribers:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    monitor-exit p0

    return v3

    .line 90
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "startTime":J
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    .end local p1    # "propId":I
    .end local p2    # "timeoutMillis":J
    :try_start_2
    throw v3
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 91
    .restart local v0    # "startTime":J
    .restart local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal;
    .restart local p1    # "propId":I
    .restart local p2    # "timeoutMillis":J
    :catch_0
    move-exception v3

    .line 92
    .local v3, "e":Ljava/lang/InterruptedException;
    return v2
.end method
