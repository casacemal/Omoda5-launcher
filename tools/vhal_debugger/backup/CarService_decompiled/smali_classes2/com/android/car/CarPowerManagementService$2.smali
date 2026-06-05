.class Lcom/android/car/CarPowerManagementService$2;
.super Ljava/lang/Object;
.source "CarPowerManagementService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarPowerManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarPowerManagementService;


# direct methods
.method constructor <init>(Lcom/android/car/CarPowerManagementService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarPowerManagementService;

    .line 606
    iput-object p1, p0, Lcom/android/car/CarPowerManagementService$2;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 609
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$2;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$700(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$2;->this$0:Lcom/android/car/CarPowerManagementService;

    iget-object v1, v1, Lcom/android/car/CarPowerManagementService;->heartBeatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/car/CarPowerManagementService$PowerHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 610
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$2;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$800(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/hal/PowerHalService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/hal/PowerHalService;->sendHeartBeat()V

    .line 611
    iget-object v0, p0, Lcom/android/car/CarPowerManagementService$2;->this$0:Lcom/android/car/CarPowerManagementService;

    invoke-static {v0}, Lcom/android/car/CarPowerManagementService;->access$700(Lcom/android/car/CarPowerManagementService;)Lcom/android/car/CarPowerManagementService$PowerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/CarPowerManagementService$2;->this$0:Lcom/android/car/CarPowerManagementService;

    iget-object v1, v1, Lcom/android/car/CarPowerManagementService;->heartBeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/car/CarPowerManagementService$PowerHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 612
    return-void
.end method
