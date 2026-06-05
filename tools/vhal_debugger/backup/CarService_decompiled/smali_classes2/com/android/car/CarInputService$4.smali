.class Lcom/android/car/CarInputService$4;
.super Ljava/lang/Object;
.source "CarInputService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 230
    iput-object p1, p0, Lcom/android/car/CarInputService$4;->this$0:Lcom/android/car/CarInputService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 233
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 234
    const-string v0, "CAR.INPUT"

    const-string v1, "Bluetooth proxy connected for HEADSET_CLIENT profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService$4;->this$0:Lcom/android/car/CarInputService;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$002(Lcom/android/car/CarInputService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 237
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 239
    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 243
    const/16 v0, 0x10

    if-ne p1, v0, :cond_0

    .line 244
    const-string v0, "CAR.INPUT"

    const-string v1, "Bluetooth proxy disconnected for HEADSET_CLIENT profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    monitor-enter p0

    .line 246
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService$4;->this$0:Lcom/android/car/CarInputService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/CarInputService;->access$002(Lcom/android/car/CarInputService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;

    .line 247
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 249
    :cond_0
    :goto_0
    return-void
.end method
