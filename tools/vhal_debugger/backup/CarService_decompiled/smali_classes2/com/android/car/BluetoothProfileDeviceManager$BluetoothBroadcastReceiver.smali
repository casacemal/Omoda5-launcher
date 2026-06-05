.class Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothProfileDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/BluetoothProfileDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/BluetoothProfileDeviceManager;


# direct methods
.method private constructor <init>(Lcom/android/car/BluetoothProfileDeviceManager;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/BluetoothProfileDeviceManager;Lcom/android/car/BluetoothProfileDeviceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/BluetoothProfileDeviceManager;
    .param p2, "x1"    # Lcom/android/car/BluetoothProfileDeviceManager$1;

    .line 140
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/car/BluetoothProfileDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 143
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "action":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-static {v1}, Lcom/android/car/BluetoothProfileDeviceManager;->access$100(Lcom/android/car/BluetoothProfileDeviceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 146
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const/4 v2, 0x0

    const-string v3, "android.bluetooth.profile.extra.STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 148
    .local v2, "state":I
    iget-object v3, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-static {v3, v1, v2}, Lcom/android/car/BluetoothProfileDeviceManager;->access$200(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;I)V

    .line 149
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    goto :goto_1

    :cond_0
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 151
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const/high16 v2, -0x80000000

    const-string v3, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 153
    .restart local v2    # "state":I
    iget-object v3, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-static {v3, v1, v2}, Lcom/android/car/BluetoothProfileDeviceManager;->access$300(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;I)V

    .line 154
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "state":I
    goto :goto_1

    :cond_1
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 156
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v2, "android.bluetooth.device.extra.UUID"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 157
    .local v2, "uuids":[Landroid/os/Parcelable;
    iget-object v3, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-static {v3, v1, v2}, Lcom/android/car/BluetoothProfileDeviceManager;->access$400(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;[Landroid/os/Parcelable;)V

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "uuids":[Landroid/os/Parcelable;
    goto :goto_0

    .line 158
    :cond_2
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 159
    const/4 v1, -0x1

    const-string v2, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 160
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;->this$0:Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-static {v2, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->access$500(Lcom/android/car/BluetoothProfileDeviceManager;I)V

    goto :goto_1

    .line 158
    .end local v1    # "state":I
    :cond_3
    :goto_0
    nop

    .line 162
    :goto_1
    return-void
.end method
