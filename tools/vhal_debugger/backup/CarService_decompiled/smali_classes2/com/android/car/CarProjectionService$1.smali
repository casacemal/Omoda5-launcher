.class Lcom/android/car/CarProjectionService$1;
.super Ljava/lang/Object;
.source "CarProjectionService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarProjectionService;


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarProjectionService;

    .line 141
    iput-object p1, p0, Lcom/android/car/CarProjectionService$1;->this$0:Lcom/android/car/CarProjectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 144
    iget-object v0, p0, Lcom/android/car/CarProjectionService$1;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 145
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$1;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/car/CarProjectionService;->access$102(Lcom/android/car/CarProjectionService;Z)Z

    .line 146
    monitor-exit v0

    .line 147
    return-void

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Service disconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/car/CarProjectionService$1;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$1;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarProjectionService;->access$202(Lcom/android/car/CarProjectionService;Landroid/content/Intent;)Landroid/content/Intent;

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    iget-object v0, p0, Lcom/android/car/CarProjectionService$1;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$300(Lcom/android/car/CarProjectionService;)V

    .line 157
    return-void

    .line 155
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
