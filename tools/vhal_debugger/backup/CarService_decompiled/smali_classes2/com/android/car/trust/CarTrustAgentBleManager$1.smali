.class Lcom/android/car/trust/CarTrustAgentBleManager$1;
.super Ljava/lang/Object;
.source "CarTrustAgentBleManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/trust/CarTrustAgentBleManager;->writeNextMessageInQueue(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

.field final synthetic val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field final synthetic val$device:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method constructor <init>(Lcom/android/car/trust/CarTrustAgentBleManager;Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 579
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    iput-object p2, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    iput-object p3, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 582
    const-string v0, "CarTrustBLEManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BLE message sending... retry count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 584
    invoke-static {v2}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$000(Lcom/android/car/trust/CarTrustAgentBleManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    :cond_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$000(Lcom/android/car/trust/CarTrustAgentBleManager;)I

    move-result v1

    const/16 v2, 0x14

    if-ge v1, v2, :cond_1

    .line 587
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->val$device:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$100(Lcom/android/car/trust/CarTrustAgentBleManager;)Ljava/util/Queue;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;

    invoke-virtual {v2}, Lcom/android/car/BLEStreamProtos/BLEMessageProto$BLEMessage;->toByteArray()[B

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->val$characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-static {v0, v1, v2, v3}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$200(Lcom/android/car/trust/CarTrustAgentBleManager;Landroid/bluetooth/BluetoothDevice;[BLandroid/bluetooth/BluetoothGattCharacteristic;)V

    .line 589
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$008(Lcom/android/car/trust/CarTrustAgentBleManager;)I

    .line 590
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$400(Lcom/android/car/trust/CarTrustAgentBleManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$300()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 592
    :cond_1
    const-string v1, "Error during BLE message sending - exceeded retry limit."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$400(Lcom/android/car/trust/CarTrustAgentBleManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 594
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$500(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->terminateEnrollmentHandshake()V

    .line 595
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$1;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$602(Lcom/android/car/trust/CarTrustAgentBleManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 597
    :goto_0
    return-void
.end method
