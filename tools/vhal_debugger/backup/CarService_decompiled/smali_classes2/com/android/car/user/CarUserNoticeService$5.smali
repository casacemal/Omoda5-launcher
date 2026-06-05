.class Lcom/android/car/user/CarUserNoticeService$5;
.super Ljava/lang/Object;
.source "CarUserNoticeService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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

    .line 165
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 167
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$200(Lcom/android/car/user/CarUserNoticeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 168
    :try_start_0
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v1}, Lcom/android/car/user/CarUserNoticeService;->access$600(Lcom/android/car/user/CarUserNoticeService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    monitor-exit v0

    return-void

    .line 172
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 173
    invoke-static {p2}, Landroid/car/user/IUserNoticeUI$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/user/IUserNoticeUI;

    move-result-object v0

    .line 175
    .local v0, "binder":Landroid/car/user/IUserNoticeUI;
    :try_start_1
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v1}, Lcom/android/car/user/CarUserNoticeService;->access$700(Lcom/android/car/user/CarUserNoticeService;)Landroid/car/user/IUserNotice$Stub;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/car/user/IUserNoticeUI;->setCallbackBinder(Landroid/car/user/IUserNotice;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 180
    move-object v1, v0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.USER"

    const-string v3, "UserNoticeUI Service died"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 179
    const/4 v0, 0x0

    move-object v1, v0

    .line 181
    .end local v0    # "binder":Landroid/car/user/IUserNoticeUI;
    .local v1, "binder":Landroid/car/user/IUserNoticeUI;
    :goto_0
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0}, Lcom/android/car/user/CarUserNoticeService;->access$200(Lcom/android/car/user/CarUserNoticeService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 182
    :try_start_2
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    invoke-static {v0, v1}, Lcom/android/car/user/CarUserNoticeService;->access$802(Lcom/android/car/user/CarUserNoticeService;Landroid/car/user/IUserNoticeUI;)Landroid/car/user/IUserNoticeUI;

    .line 183
    monitor-exit v2

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 172
    .end local v1    # "binder":Landroid/car/user/IUserNoticeUI;
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 188
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService$5;->this$0:Lcom/android/car/user/CarUserNoticeService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/car/user/CarUserNoticeService;->access$100(Lcom/android/car/user/CarUserNoticeService;Z)V

    .line 189
    return-void
.end method
