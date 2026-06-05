.class Lcom/android/car/user/CarUserNoticeService$1;
.super Ljava/lang/Object;
.source "CarUserNoticeService.java"

# interfaces
.implements Lcom/android/car/user/CarUserService$UserCallback;


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

    .line 105
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService$1;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSwitchUser$0$CarUserNoticeService$1(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 114
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$1;->this$0:Lcom/android/car/user/CarUserNoticeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/user/CarUserNoticeService;->access$100(Lcom/android/car/user/CarUserNoticeService;Z)V

    .line 115
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$1;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$200(Lcom/android/car/user/CarUserNoticeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService$1;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v1, p1}, Lcom/android/car/user/CarUserNoticeService;->access$302(Lcom/android/car/user/CarUserNoticeService;I)I

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$1;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$400(Lcom/android/car/user/CarUserNoticeService;)V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .line 113
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$1;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$000(Lcom/android/car/user/CarUserNoticeService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;

    invoke-direct {v1, p0, p1}, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$1$MQz0FgPm-NIxIdRGinJEWg0Yfl8;-><init>(Lcom/android/car/user/CarUserNoticeService$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 121
    return-void
.end method

.method public onUserLockChanged(IZ)V
    .locals 0
    .param p1, "userId"    # I
    .param p2, "unlocked"    # Z

    .line 109
    return-void
.end method
