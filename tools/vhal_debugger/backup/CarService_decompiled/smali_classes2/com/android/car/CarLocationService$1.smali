.class Lcom/android/car/CarLocationService$1;
.super Ljava/lang/Object;
.source "CarLocationService.java"

# interfaces
.implements Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarLocationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarLocationService;


# direct methods
.method constructor <init>(Lcom/android/car/CarLocationService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarLocationService;

    .line 93
    iput-object p1, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onServiceConnected$0$CarLocationService$1()V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$400(Lcom/android/car/CarLocationService;)V

    return-void
.end method

.method public onPreUnbind()V
    .locals 3

    .line 119
    const-string v0, "Before Unbinding from PerCarUserService"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$000(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$100(Lcom/android/car/CarLocationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarLocationService;->access$202(Lcom/android/car/CarLocationService;Landroid/car/ILocationManagerProxy;)Landroid/car/ILocationManagerProxy;

    .line 122
    monitor-exit v0

    .line 123
    return-void

    .line 122
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/car/ICarUserService;)V
    .locals 4
    .param p1, "carUserService"    # Landroid/car/ICarUserService;

    .line 96
    const-string v0, "Connected to PerUserCarService"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$000(Ljava/lang/String;)V

    .line 97
    if-nez p1, :cond_0

    .line 98
    const-string v0, "ICarUserService is null. Cannot get location manager proxy"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$000(Ljava/lang/String;)V

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$100(Lcom/android/car/CarLocationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-interface {p1}, Landroid/car/ICarUserService;->getLocationManagerProxy()Landroid/car/ILocationManagerProxy;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/CarLocationService;->access$202(Lcom/android/car/CarLocationService;Landroid/car/ILocationManagerProxy;)Landroid/car/ILocationManagerProxy;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    nop

    .line 108
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 110
    .local v0, "currentUser":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current user: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarLocationService;->access$000(Ljava/lang/String;)V

    .line 111
    iget-object v1, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v1}, Lcom/android/car/CarLocationService;->access$300(Lcom/android/car/CarLocationService;)Landroid/car/userlib/CarUserManagerHelper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 113
    iget-object v1, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    new-instance v2, Lcom/android/car/-$$Lambda$CarLocationService$1$PJ26-jNRQe6t5bQwFKIA9ddCeVY;

    invoke-direct {v2, p0}, Lcom/android/car/-$$Lambda$CarLocationService$1$PJ26-jNRQe6t5bQwFKIA9ddCeVY;-><init>(Lcom/android/car/CarLocationService$1;)V

    invoke-virtual {v1, v2}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    .line 115
    :cond_1
    return-void

    .line 108
    .end local v0    # "currentUser":I
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 104
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CarLocationService"

    const-string v3, "RemoteException from ICarUserService"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    monitor-exit v0

    return-void

    .line 108
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected()V
    .locals 3

    .line 127
    const-string v0, "Disconnected from PerUserCarService"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$000(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    invoke-static {v0}, Lcom/android/car/CarLocationService;->access$100(Lcom/android/car/CarLocationService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarLocationService$1;->this$0:Lcom/android/car/CarLocationService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarLocationService;->access$202(Lcom/android/car/CarLocationService;Landroid/car/ILocationManagerProxy;)Landroid/car/ILocationManagerProxy;

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
