.class public Lcom/chery/btphone/livedata/BtHfpStateLiveData;
.super Landroidx/lifecycle/LiveData;
.source "BtHfpStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CD.BluetoothHfpStateLiveData"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    .line 36
    new-instance v0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$1;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData$1;-><init>(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 51
    new-instance v0, Lcom/chery/btphone/livedata/BtHfpStateLiveData$2;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData$2;-><init>(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 62
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mContext:Landroid/content/Context;

    .line 63
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/chery/btphone/livedata/BtHfpStateLiveData;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chery/btphone/livedata/BtHfpStateLiveData;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->updateState()V

    return-void
.end method

.method private getBtHfpState()I
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 96
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    const-string v2, "CD.BluetoothHfpStateLiveData"

    if-eqz v0, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 100
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 101
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 102
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBtHfpState: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(listSize:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "getBtHfpState:list is empty."

    .line 106
    invoke-static {v2, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "getBtHfpState:connectedDevices is null."

    .line 110
    invoke-static {v2, p0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return v1
.end method

.method private updateState()V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->getBtHfpState()I

    move-result v0

    .line 87
    invoke-virtual {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 88
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CD.BluetoothHfpStateLiveData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 69
    invoke-direct {p0}, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->updateState()V

    .line 70
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 79
    iget-object v2, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 81
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/btphone/livedata/BtHfpStateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
