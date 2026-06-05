.class public Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;
.super Ljava/lang/Object;
.source "MockedVehicleHal.java"

# interfaces
.implements Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/test/MockedVehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultPropertyHandler"
.end annotation


# instance fields
.field private final mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

.field private mSubscribed:Z

.field private mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;


# direct methods
.method public constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "config"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .param p2, "initialValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mSubscribed:Z

    .line 271
    iput-object p1, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 272
    iput-object p2, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 273
    return-void
.end method


# virtual methods
.method public declared-synchronized onPropertyGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 2
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 285
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 286
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 283
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;
    .end local p1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 2
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    monitor-enter p0

    .line 277
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v0, v1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 278
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->access:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    invoke-static {v1, v0}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 279
    iput-object p1, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    monitor-exit p0

    return-void

    .line 276
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;
    .end local p1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPropertySubscribe(IF)V
    .locals 1
    .param p1, "property"    # I
    .param p2, "sampleRate"    # F

    monitor-enter p0

    .line 291
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mSubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    monitor-exit p0

    return-void

    .line 290
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;
    .end local p1    # "property":I
    .end local p2    # "sampleRate":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onPropertyUnsubscribe(I)V
    .locals 3
    .param p1, "property"    # I

    monitor-enter p0

    .line 297
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mConfig:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    iget v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v0, p1}, Ljunit/framework/Assert;->assertEquals(II)V

    .line 298
    iget-boolean v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mSubscribed:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;->mSubscribed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 299
    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal$DefaultPropertyHandler;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property was not subscribed 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 296
    .end local p1    # "property":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
