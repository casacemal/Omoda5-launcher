.class public Lcom/chery/media/livedata/BtAvrcptateLiveData;
.super Landroidx/lifecycle/LiveData;
.source "BtAvrcptateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BA.BtAvrcptateLiveData"


# instance fields
.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

.field private mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 32
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 34
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    .line 37
    new-instance v0, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;

    invoke-direct {v0, p0}, Lcom/chery/media/livedata/BtAvrcptateLiveData$1;-><init>(Lcom/chery/media/livedata/BtAvrcptateLiveData;)V

    iput-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 59
    new-instance v0, Lcom/chery/media/livedata/BtAvrcptateLiveData$2;

    invoke-direct {v0, p0}, Lcom/chery/media/livedata/BtAvrcptateLiveData$2;-><init>(Lcom/chery/media/livedata/BtAvrcptateLiveData;)V

    iput-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mContext:Landroid/content/Context;

    .line 81
    iget-object p0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p1, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/livedata/BtAvrcptateLiveData;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p0
.end method

.method static synthetic access$002(Lcom/chery/media/livedata/BtAvrcptateLiveData;Landroid/bluetooth/BluetoothAvrcpController;)Landroid/bluetooth/BluetoothAvrcpController;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    return-object p1
.end method

.method static synthetic access$100(Lcom/chery/media/livedata/BtAvrcptateLiveData;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->updateState(I)V

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

    .line 102
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "avrcp updateState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BA.BtAvrcptateLiveData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-virtual {p0}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_2

    .line 104
    :cond_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/media/livedata/BtAvrcptateLiveData;->setValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 86
    iget-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 88
    iget-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v2, 0xc

    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method protected onInactive()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/16 v1, 0xc

    .line 95
    iget-object v2, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothAvrcpController:Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 96
    iget-object v0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/media/livedata/BtAvrcptateLiveData;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method
