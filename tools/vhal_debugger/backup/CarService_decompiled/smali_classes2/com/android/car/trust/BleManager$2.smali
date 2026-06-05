.class Lcom/android/car/trust/BleManager$2;
.super Landroid/bluetooth/BluetoothGattCallback;
.source "BleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/trust/BleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/trust/BleManager;


# direct methods
.method constructor <init>(Lcom/android/car/trust/BleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/trust/BleManager;

    .line 376
    iput-object p1, p0, Lcom/android/car/trust/BleManager$2;->this$0:Lcom/android/car/trust/BleManager;

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGattCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCharacteristicRead(Landroid/bluetooth/BluetoothGatt;Landroid/bluetooth/BluetoothGattCharacteristic;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "characteristic"    # Landroid/bluetooth/BluetoothGattCharacteristic;
    .param p3, "status"    # I

    .line 426
    if-nez p3, :cond_1

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getStringValue(I)Ljava/lang/String;

    move-result-object v0

    .line 428
    .local v0, "deviceName":Ljava/lang/String;
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 429
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BLE Device Name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/BleManager$2;->this$0:Lcom/android/car/trust/BleManager;

    invoke-virtual {v1, v0}, Lcom/android/car/trust/BleManager;->onDeviceNameRetrieved(Ljava/lang/String;)V

    .line 432
    .end local v0    # "deviceName":Ljava/lang/String;
    goto :goto_0

    .line 433
    :cond_1
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reading GAP Failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :goto_0
    return-void
.end method

.method public onConnectionStateChange(Landroid/bluetooth/BluetoothGatt;II)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I
    .param p3, "newState"    # I

    .line 379
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gatt Connection State Change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    if-eqz p3, :cond_3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 395
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 396
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection state not connecting or disconnecting; ignoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 384
    :cond_1
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 385
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gatt connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/android/car/trust/BleManager$2;->this$0:Lcom/android/car/trust/BleManager;

    invoke-static {v0}, Lcom/android/car/trust/BleManager;->access$200(Lcom/android/car/trust/BleManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->discoverServices()Z

    .line 388
    goto :goto_0

    .line 390
    :cond_3
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 391
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gatt Disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_4
    :goto_0
    return-void
.end method

.method public onServicesDiscovered(Landroid/bluetooth/BluetoothGatt;I)V
    .locals 4
    .param p1, "gatt"    # Landroid/bluetooth/BluetoothGatt;
    .param p2, "status"    # I

    .line 405
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Gatt Services Discovered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/BleManager$2;->this$0:Lcom/android/car/trust/BleManager;

    invoke-static {v0}, Lcom/android/car/trust/BleManager;->access$200(Lcom/android/car/trust/BleManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v0

    .line 409
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$300()Ljava/util/UUID;

    move-result-object v1

    .line 408
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGatt;->getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    .line 410
    .local v0, "gapService":Landroid/bluetooth/BluetoothGattService;
    if-nez v0, :cond_1

    .line 411
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Generic Access Service is Null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    return-void

    .line 414
    :cond_1
    nop

    .line 415
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$400()Ljava/util/UUID;

    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristic(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v1

    .line 416
    .local v1, "deviceNameCharacteristic":Landroid/bluetooth/BluetoothGattCharacteristic;
    if-nez v1, :cond_2

    .line 417
    invoke-static {}, Lcom/android/car/trust/BleManager;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Device Name Characteristic is Null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    return-void

    .line 420
    :cond_2
    iget-object v2, p0, Lcom/android/car/trust/BleManager$2;->this$0:Lcom/android/car/trust/BleManager;

    invoke-static {v2}, Lcom/android/car/trust/BleManager;->access$200(Lcom/android/car/trust/BleManager;)Landroid/bluetooth/BluetoothGatt;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothGatt;->readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z

    .line 421
    return-void
.end method
