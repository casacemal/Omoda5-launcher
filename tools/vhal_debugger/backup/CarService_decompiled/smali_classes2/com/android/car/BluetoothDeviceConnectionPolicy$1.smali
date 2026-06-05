.class Lcom/android/car/BluetoothDeviceConnectionPolicy$1;
.super Ljava/lang/Object;
.source "BluetoothDeviceConnectionPolicy.java"

# interfaces
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;


# direct methods
.method constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 51
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(ILjava/util/concurrent/CompletableFuture;)V
    .locals 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Car power state has changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$000(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    .line 59
    const-string v0, "Car is powering on. Enable Bluetooth and auto-connect to devices"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$000(Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$100(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$200(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$300(Lcom/android/car/BluetoothDeviceConnectionPolicy;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectDevices()V

    .line 71
    :cond_1
    return-void

    .line 76
    :cond_2
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    .line 77
    const-string v0, "Car is preparing for shutdown. Disable bluetooth adapter"

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$000(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$1;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-static {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$400(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    .line 82
    if-eqz p2, :cond_3

    .line 83
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 85
    :cond_3
    return-void

    .line 87
    :cond_4
    return-void
.end method
