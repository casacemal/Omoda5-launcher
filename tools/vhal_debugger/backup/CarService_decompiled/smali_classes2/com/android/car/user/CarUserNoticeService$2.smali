.class Lcom/android/car/user/CarUserNoticeService$2;
.super Ljava/lang/Object;
.source "CarUserNoticeService.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/user/CarUserNoticeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/user/CarUserNoticeService;


# direct methods
.method constructor <init>(Lcom/android/car/user/CarUserNoticeService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 124
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService$2;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onStateChanged$0$CarUserNoticeService$2()V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$2;->this$0:Lcom/android/car/user/CarUserNoticeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/user/CarUserNoticeService;->access$100(Lcom/android/car/user/CarUserNoticeService;Z)V

    return-void
.end method

.method public synthetic lambda$onStateChanged$1$CarUserNoticeService$2()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$2;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$400(Lcom/android/car/user/CarUserNoticeService;)V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .line 127
    const/4 v0, 0x7

    if-ne p1, v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$2;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$000(Lcom/android/car/user/CarUserNoticeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$ByUmffA19U_oJRytIXCy_IBm8lc;

    invoke-direct {v1, p0}, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$ByUmffA19U_oJRytIXCy_IBm8lc;-><init>(Lcom/android/car/user/CarUserNoticeService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 129
    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$2;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$000(Lcom/android/car/user/CarUserNoticeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$qylxILhbtO1AUfX34eTyZpu3kvM;

    invoke-direct {v1, p0}, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$2$qylxILhbtO1AUfX34eTyZpu3kvM;-><init>(Lcom/android/car/user/CarUserNoticeService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 133
    :cond_1
    :goto_0
    return-void
.end method
