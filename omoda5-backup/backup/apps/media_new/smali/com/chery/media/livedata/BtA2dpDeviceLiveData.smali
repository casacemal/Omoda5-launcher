.class public Lcom/chery/media/livedata/BtA2dpDeviceLiveData;
.super Landroidx/lifecycle/LiveData;
.source "BtA2dpDeviceLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BA.BtA2dpDeviceLiveData"


# instance fields
.field private mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 66
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    .line 44
    new-instance v0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$1;

    invoke-direct {v0, p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$1;-><init>(Lcom/chery/media/livedata/BtA2dpDeviceLiveData;)V

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 58
    new-instance v0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$2;

    invoke-direct {v0, p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData$2;-><init>(Lcom/chery/media/livedata/BtA2dpDeviceLiveData;)V

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 67
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mContext:Landroid/content/Context;

    .line 68
    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/chery/media/livedata/BtA2dpDeviceLiveData;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->updateName()V

    .line 75
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    .line 83
    iget-object v2, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 84
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public updateName()V
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 93
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    :goto_0
    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 98
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateName to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BA.BtA2dpDeviceLiveData"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-virtual {p0, v0}, Lcom/chery/media/livedata/BtA2dpDeviceLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method
