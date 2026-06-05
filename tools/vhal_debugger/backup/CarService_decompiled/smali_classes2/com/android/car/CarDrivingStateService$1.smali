.class Lcom/android/car/CarDrivingStateService$1;
.super Landroid/car/hardware/property/ICarPropertyEventListener$Stub;
.source "CarDrivingStateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDrivingStateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarDrivingStateService;


# direct methods
.method constructor <init>(Lcom/android/car/CarDrivingStateService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarDrivingStateService;

    .line 323
    iput-object p1, p0, Lcom/android/car/CarDrivingStateService$1;->this$0:Lcom/android/car/CarDrivingStateService;

    invoke-direct {p0}, Landroid/car/hardware/property/ICarPropertyEventListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 326
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/property/CarPropertyEvent;

    .line 327
    .local v1, "event":Landroid/car/hardware/property/CarPropertyEvent;
    iget-object v2, p0, Lcom/android/car/CarDrivingStateService$1;->this$0:Lcom/android/car/CarDrivingStateService;

    invoke-static {v2, v1}, Lcom/android/car/CarDrivingStateService;->access$200(Lcom/android/car/CarDrivingStateService;Landroid/car/hardware/property/CarPropertyEvent;)V

    .line 328
    .end local v1    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_0

    .line 329
    :cond_0
    return-void
.end method
