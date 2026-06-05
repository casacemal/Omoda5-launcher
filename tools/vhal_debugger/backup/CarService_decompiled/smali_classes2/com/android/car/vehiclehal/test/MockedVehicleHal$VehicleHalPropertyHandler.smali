.class public interface abstract Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;
.super Ljava/lang/Object;
.source "MockedVehicleHal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vehiclehal/test/MockedVehicleHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "VehicleHalPropertyHandler"
.end annotation


# static fields
.field public static final NOP:Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    new-instance v0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler$1;

    invoke-direct {v0}, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler$1;-><init>()V

    sput-object v0, Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;->NOP:Lcom/android/car/vehiclehal/test/MockedVehicleHal$VehicleHalPropertyHandler;

    return-void
.end method


# virtual methods
.method public onPropertyGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p1, "value"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 50
    return-void
.end method

.method public onPropertySubscribe(IF)V
    .locals 0
    .param p1, "property"    # I
    .param p2, "sampleRate"    # F

    .line 52
    return-void
.end method

.method public onPropertyUnsubscribe(I)V
    .locals 0
    .param p1, "property"    # I

    .line 53
    return-void
.end method
