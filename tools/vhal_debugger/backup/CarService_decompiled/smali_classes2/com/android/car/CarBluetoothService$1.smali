.class Lcom/android/car/CarBluetoothService$1;
.super Ljava/lang/Object;
.source "CarBluetoothService.java"

# interfaces
.implements Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarBluetoothService;


# direct methods
.method constructor <init>(Lcom/android/car/CarBluetoothService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarBluetoothService;

    .line 83
    iput-object p1, p0, Lcom/android/car/CarBluetoothService$1;->this$0:Lcom/android/car/CarBluetoothService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreUnbind()V
    .locals 1

    .line 95
    const-string v0, "Before Unbinding from PerCarUserService"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->access$000(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/android/car/CarBluetoothService$1;->this$0:Lcom/android/car/CarBluetoothService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->access$300(Lcom/android/car/CarBluetoothService;)V

    .line 97
    return-void
.end method

.method public onServiceConnected(Landroid/car/ICarUserService;)V
    .locals 1
    .param p1, "carUserService"    # Landroid/car/ICarUserService;

    .line 86
    const-string v0, "Connected to PerUserCarService"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->access$000(Ljava/lang/String;)V

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService$1;->this$0:Lcom/android/car/CarBluetoothService;

    invoke-static {v0, p1}, Lcom/android/car/CarBluetoothService;->access$102(Lcom/android/car/CarBluetoothService;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;

    .line 89
    iget-object v0, p0, Lcom/android/car/CarBluetoothService$1;->this$0:Lcom/android/car/CarBluetoothService;

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->access$200(Lcom/android/car/CarBluetoothService;)V

    .line 90
    monitor-exit p0

    .line 91
    return-void

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected()V
    .locals 2

    .line 101
    const-string v0, "Disconnected from PerUserCarService"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->access$000(Ljava/lang/String;)V

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService$1;->this$0:Lcom/android/car/CarBluetoothService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/CarBluetoothService;->access$102(Lcom/android/car/CarBluetoothService;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;

    .line 104
    monitor-exit p0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
