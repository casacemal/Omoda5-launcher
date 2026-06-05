.class public Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;
.super Lcom/android/car/vehiclehal/test/MockedVehicleHal$FailingPropertyHandler;
.source "MockedVehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/test/MockedVehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StaticPropertyHandler"
.end annotation


# instance fields
.field private final mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;


# direct methods
.method public constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 255
    invoke-direct {p0}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$FailingPropertyHandler;-><init>()V

    .line 256
    iput-object p1, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;->mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 257
    return-void
.end method


# virtual methods
.method public declared-synchronized onPropertyGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    monitor-enter p0

    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;->mValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/vehiclehal/test/MockedVehicleHal$StaticPropertyHandler;
    .end local p1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
