.class Landroid/car/hardware/power/CarPowerManager$1;
.super Landroid/car/hardware/power/ICarPowerStateListener$Stub;
.source "CarPowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/power/CarPowerManager;->setServiceForListenerLocked(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/hardware/power/CarPowerManager;

.field final synthetic val$useCompletion:Z


# direct methods
.method constructor <init>(Landroid/car/hardware/power/CarPowerManager;Z)V
    .locals 0

    .line 280
    iput-object p1, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    iput-boolean p2, p0, Landroid/car/hardware/power/CarPowerManager$1;->val$useCompletion:Z

    invoke-direct {p0}, Landroid/car/hardware/power/ICarPowerStateListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 283
    iget-boolean v0, p0, Landroid/car/hardware/power/CarPowerManager$1;->val$useCompletion:Z

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v0, p1}, Landroid/car/hardware/power/CarPowerManager;->access$000(Landroid/car/hardware/power/CarPowerManager;I)V

    .line 287
    iget-object v0, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {v0}, Landroid/car/hardware/power/CarPowerManager;->access$200(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;

    move-result-object v0

    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {p0}, Landroid/car/hardware/power/CarPowerManager;->access$100(Landroid/car/hardware/power/CarPowerManager;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;->onStateChanged(ILjava/util/concurrent/CompletableFuture;)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object p0, p0, Landroid/car/hardware/power/CarPowerManager$1;->this$0:Landroid/car/hardware/power/CarPowerManager;

    invoke-static {p0}, Landroid/car/hardware/power/CarPowerManager;->access$300(Landroid/car/hardware/power/CarPowerManager;)Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;->onStateChanged(I)V

    :goto_0
    return-void
.end method
