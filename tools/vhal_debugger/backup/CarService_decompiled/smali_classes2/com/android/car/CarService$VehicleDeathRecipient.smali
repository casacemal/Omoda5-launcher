.class Lcom/android/car/CarService$VehicleDeathRecipient;
.super Ljava/lang/Object;
.source "CarService.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VehicleDeathRecipient"
.end annotation


# instance fields
.field private deathCount:I

.field final synthetic this$0:Lcom/android/car/CarService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarService;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->deathCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarService;Lcom/android/car/CarService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarService;
    .param p2, "x1"    # Lcom/android/car/CarService$1;

    .line 180
    invoke-direct {p0, p1}, Lcom/android/car/CarService$VehicleDeathRecipient;-><init>(Lcom/android/car/CarService;)V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 4
    .param p1, "cookie"    # J

    .line 185
    const-string v0, "CAR.SERVICE"

    const-string v1, "Vehicle HAL died."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-static {v1}, Lcom/android/car/CarService;->access$100(Lcom/android/car/CarService;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v1

    invoke-interface {v1, p0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    goto :goto_0

    .line 189
    :catch_0
    move-exception v1

    .line 190
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Failed to unlinkToDeath"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarService;->access$102(Lcom/android/car/CarService;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 194
    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-static {v1}, Lcom/android/car/CarService;->access$200(Lcom/android/car/CarService;)Lcom/android/car/CarService$CrashTracker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/car/CarService$CrashTracker;->crashDetected()V

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to reconnect to Vehicle HAL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    .line 197
    invoke-static {v2}, Lcom/android/car/CarService;->access$300(Lcom/android/car/CarService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    const-wide/16 v2, 0x2710

    invoke-static {v1, v2, v3}, Lcom/android/car/CarService;->access$400(Lcom/android/car/CarService;J)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/CarService;->access$102(Lcom/android/car/CarService;Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 199
    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-static {v1}, Lcom/android/car/CarService;->access$100(Lcom/android/car/CarService;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-static {v1}, Lcom/android/car/CarService;->access$100(Lcom/android/car/CarService;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/car/CarService;->access$500(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/IHwBinder$DeathRecipient;)V

    .line 205
    const-string v1, "Notifying car service Vehicle HAL reconnected..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-static {v0}, Lcom/android/car/CarService;->access$600(Lcom/android/car/CarService;)Lcom/android/car/ICarImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarService$VehicleDeathRecipient;->this$0:Lcom/android/car/CarService;

    invoke-static {v1}, Lcom/android/car/CarService;->access$100(Lcom/android/car/CarService;)Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/car/ICarImpl;->vehicleHalReconnected(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;)V

    .line 207
    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to reconnect to Vehicle HAL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
