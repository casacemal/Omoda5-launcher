.class Lcom/android/car/hal/HalClient$CallbackHandler;
.super Landroid/os/Handler;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/hal/HalClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackHandler"
.end annotation


# static fields
.field private static final MSG_ON_PROPERTY_EVENT:I = 0x2

.field private static final MSG_ON_PROPERTY_SET:I = 0x1

.field private static final MSG_ON_SET_ERROR:I = 0x3


# instance fields
.field private final mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V
    .locals 0
    .param p1, "looper"    # Landroid/os/Looper;
    .param p2, "callback"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 201
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 202
    iput-object p2, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 203
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 207
    const-string v0, "CAR.HAL"

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 210
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 218
    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/car/hal/HalClient$PropertySetError;

    .line 219
    .local v1, "obj":Lcom/android/car/hal/HalClient$PropertySetError;
    iget-object v2, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    iget v3, v1, Lcom/android/car/hal/HalClient$PropertySetError;->errorCode:I

    iget v4, v1, Lcom/android/car/hal/HalClient$PropertySetError;->propId:I

    iget v5, v1, Lcom/android/car/hal/HalClient$PropertySetError;->areaId:I

    invoke-interface {v2, v3, v4, v5}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertySetError(III)V

    .line 220
    goto :goto_0

    .line 212
    .end local v1    # "obj":Lcom/android/car/hal/HalClient$PropertySetError;
    :cond_1
    iget-object v1, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertyEvent(Ljava/util/ArrayList;)V

    .line 213
    goto :goto_0

    .line 215
    :cond_2
    iget-object v1, p0, Lcom/android/car/hal/HalClient$CallbackHandler;->mCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-interface {v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;->onPropertySet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    nop

    .line 226
    :goto_0
    goto :goto_1

    .line 224
    :catch_0
    move-exception v1

    .line 225
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Message failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
