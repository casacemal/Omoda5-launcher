.class Lcom/android/car/CarInputService$3;
.super Ljava/lang/Object;
.source "CarInputService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarInputService;


# direct methods
.method constructor <init>(Lcom/android/car/CarInputService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarInputService;

    .line 201
    iput-object p1, p0, Lcom/android/car/CarInputService$3;->this$0:Lcom/android/car/CarInputService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "binder"    # Landroid/os/IBinder;

    .line 208
    iget-object v0, p0, Lcom/android/car/CarInputService$3;->this$0:Lcom/android/car/CarInputService;

    monitor-enter v0

    .line 209
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarInputService$3;->this$0:Lcom/android/car/CarInputService;

    invoke-static {p2}, Landroid/car/input/ICarInputListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/input/ICarInputListener;

    move-result-object v2

    iput-object v2, v1, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    .line 210
    monitor-exit v0

    .line 211
    return-void

    .line 210
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.INPUT"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcom/android/car/CarInputService$3;->this$0:Lcom/android/car/CarInputService;

    monitor-enter v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarInputService$3;->this$0:Lcom/android/car/CarInputService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/car/CarInputService;->mCarInputListener:Landroid/car/input/ICarInputListener;

    .line 218
    monitor-exit v0

    .line 219
    return-void

    .line 218
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
