.class public Lcom/android/car/vehiclehal/test/MockedVehicleHal$FailingPropertyHandler;
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
    name = "FailingPropertyHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertyGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 237
    const-string v0, "Unexpected onPropertyGet call"

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 1
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 232
    const-string v0, "Unexpected onPropertySet call"

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onPropertySubscribe(IF)V
    .locals 1
    .param p1, "property"    # I
    .param p2, "sampleRate"    # F

    .line 243
    const-string v0, "Unexpected onPropertySubscribe call"

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 244
    return-void
.end method

.method public onPropertyUnsubscribe(I)V
    .locals 1
    .param p1, "property"    # I

    .line 248
    const-string v0, "Unexpected onPropertyUnsubscribe call"

    invoke-static {v0}, Ljunit/framework/Assert;->fail(Ljava/lang/String;)V

    .line 249
    return-void
.end method
