.class Lcom/android/car/hal/HalClient$VehicleCallback;
.super Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VehicleCallback"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Landroid/os/Handler;

    .line 233
    invoke-direct {p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback$Stub;-><init>()V

    .line 234
    iput-object p1, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    .line 235
    return-void
.end method


# virtual methods
.method public onPropertyEvent(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p1, "propValues":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    iget-object v0, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 241
    return-void
.end method

.method public onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 2
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 245
    iget-object v0, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 247
    return-void
.end method

.method public onPropertySetError(III)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "propId"    # I
    .param p3, "areaId"    # I

    .line 251
    iget-object v0, p0, Lcom/android/car/hal/HalClient$VehicleCallback;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/hal/HalClient$PropertySetError;

    invoke-direct {v1, p1, p2, p3}, Lcom/android/car/hal/HalClient$PropertySetError;-><init>(III)V

    const/4 v2, 0x3

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 254
    return-void
.end method
