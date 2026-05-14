.class public Lcom/chery/media/livedata/BtA2dpStateLiveData;
.super Landroidx/lifecycle/LiveData;
.source "BtA2dpStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BA.BtA2dpStateLiveData"


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

    .line 94
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 31
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 33
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    .line 36
    new-instance v0, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;

    invoke-direct {v0, p0}, Lcom/chery/media/livedata/BtA2dpStateLiveData$1;-><init>(Lcom/chery/media/livedata/BtA2dpStateLiveData;)V

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 59
    new-instance v0, Lcom/chery/media/livedata/BtA2dpStateLiveData$2;

    invoke-direct {v0, p0}, Lcom/chery/media/livedata/BtA2dpStateLiveData$2;-><init>(Lcom/chery/media/livedata/BtA2dpStateLiveData;)V

    iput-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 95
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->setValue(Ljava/lang/Object;)V

    .line 97
    iget-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/livedata/BtA2dpStateLiveData;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p0
.end method

.method static synthetic access$002(Lcom/chery/media/livedata/BtA2dpStateLiveData;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chery/media/livedata/BtA2dpStateLiveData;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 119
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "a2dp updateState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BA.BtA2dpStateLiveData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 121
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/livedata/BtA2dpStateLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/16 v1, 0xb

    .line 112
    iget-object v2, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 113
    iget-object v0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/livedata/BtA2dpStateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
