.class public Lcom/chery/btphone/livedata/BtCallStateLiveData;
.super Landroidx/lifecycle/LiveData;
.source "BtCallStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/util/List<",
        "Landroid/bluetooth/BluetoothHeadsetClientCall;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BT.BtCallStateLiveData"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothCallStateReceiver:Landroid/content/BroadcastReceiver;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 40
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 42
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    .line 45
    new-instance v0, Lcom/chery/btphone/livedata/BtCallStateLiveData$1;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData$1;-><init>(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 60
    new-instance v0, Lcom/chery/btphone/livedata/BtCallStateLiveData$2;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData$2;-><init>(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothCallStateReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mContext:Landroid/content/Context;

    .line 70
    iget-object p0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.bluetooth.headsetclient.profile.action.AG_CALL_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lcom/chery/btphone/livedata/BtCallStateLiveData;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chery/btphone/livedata/BtCallStateLiveData;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->updateState()V

    return-void
.end method

.method private updateState()V
    .locals 4

    .line 94
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 96
    iget-object v3, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 97
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 98
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_3

    .line 105
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateState to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BT.BtCallStateLiveData"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-virtual {p0, v1}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->setValue(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 76
    invoke-direct {p0}, Lcom/chery/btphone/livedata/BtCallStateLiveData;->updateState()V

    .line 77
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothCallStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 78
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0x10

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    .line 86
    iget-object v2, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 88
    iget-object v0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/btphone/livedata/BtCallStateLiveData;->mBluetoothCallStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
