.class Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceConnectionPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothDeviceConnectionPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;


# direct methods
.method private constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;Lcom/android/car/BluetoothDeviceConnectionPolicy$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BluetoothDeviceConnectionPolicy;
    .param p2, "x1"    # Lcom/android/car/BluetoothDeviceConnectionPolicy$1;

    .line 106
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;-><init>(Lcom/android/car/BluetoothDeviceConnectionPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 109
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 111
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    const/4 v2, -0x1

    const-string v3, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    .local v2, "state":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bluetooth Adapter state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcom/android/car/Utils;->getAdapterStateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->access$000(Ljava/lang/String;)V

    .line 114
    const/16 v3, 0xc

    if-ne v2, v3, :cond_0

    .line 115
    iget-object v3, p0, Lcom/android/car/BluetoothDeviceConnectionPolicy$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v3}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->connectDevices()V

    .line 118
    .end local v2    # "state":I
    :cond_0
    return-void
.end method
