.class public Lcom/chery/btphone/BtCallManager;
.super Ljava/lang/Object;
.source "BtCallManager.java"


# static fields
.field static final HFP_CLIENT_CONNECTION_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.android.bluetooth.hfpclient.connserv.HfpClientConnectionService"

.field private static TAG:Ljava/lang/String; = "BT.TelecomMgr"

.field private static sBtCallManager:Lcom/chery/btphone/BtCallManager;


# instance fields
.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field private mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

.field private mCalllogSyncState:I

.field private mContactSyncState:I

.field private mContext:Landroid/content/Context;

.field private mTelecomManager:Landroid/telecom/TelecomManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 137
    iput v0, p0, Lcom/chery/btphone/BtCallManager;->mContactSyncState:I

    .line 138
    iput v0, p0, Lcom/chery/btphone/BtCallManager;->mCalllogSyncState:I

    .line 139
    new-instance v0, Lcom/chery/btphone/BtCallManager$3;

    invoke-direct {v0, p0}, Lcom/chery/btphone/BtCallManager$3;-><init>(Lcom/chery/btphone/BtCallManager;)V

    iput-object v0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    sget-object v0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    const-string v1, "SetUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object p1, p0, Lcom/chery/btphone/BtCallManager;->mContext:Landroid/content/Context;

    .line 93
    iget-object v0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothStateReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.pbap.profile.action.SYNC_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "telecom"

    .line 95
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 97
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/chery/btphone/BtCallManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/chery/btphone/BtCallManager$1;

    invoke-direct {v1, p0}, Lcom/chery/btphone/BtCallManager$1;-><init>(Lcom/chery/btphone/BtCallManager;)V

    const/16 v2, 0x10

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 117
    iget-object v0, p0, Lcom/chery/btphone/BtCallManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/chery/btphone/BtCallManager$2;

    invoke-direct {v1, p0}, Lcom/chery/btphone/BtCallManager$2;-><init>(Lcom/chery/btphone/BtCallManager;)V

    const/16 p0, 0x11

    invoke-virtual {p1, v0, v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/chery/btphone/BtCallManager;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$102(Lcom/chery/btphone/BtCallManager;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/chery/btphone/BtCallManager;->mContactSyncState:I

    return p1
.end method

.method static synthetic access$200(Lcom/chery/btphone/BtCallManager;)I
    .locals 0

    .line 41
    iget p0, p0, Lcom/chery/btphone/BtCallManager;->mCalllogSyncState:I

    return p0
.end method

.method static synthetic access$202(Lcom/chery/btphone/BtCallManager;I)I
    .locals 0

    .line 41
    iput p1, p0, Lcom/chery/btphone/BtCallManager;->mCalllogSyncState:I

    return p1
.end method

.method static synthetic access$302(Lcom/chery/btphone/BtCallManager;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .line 41
    sget-object v0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static get()Lcom/chery/btphone/BtCallManager;
    .locals 2

    .line 76
    sget-object v0, Lcom/chery/btphone/BtCallManager;->sBtCallManager:Lcom/chery/btphone/BtCallManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Call UiCallManager.init(Context) before calling this function"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getHfpDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/bluetooth/BluetoothDevice;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static init(Landroid/content/Context;)Lcom/chery/btphone/BtCallManager;
    .locals 1

    .line 62
    sget-object v0, Lcom/chery/btphone/BtCallManager;->sBtCallManager:Lcom/chery/btphone/BtCallManager;

    if-nez v0, :cond_0

    .line 63
    new-instance v0, Lcom/chery/btphone/BtCallManager;

    invoke-direct {v0, p0}, Lcom/chery/btphone/BtCallManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/chery/btphone/BtCallManager;->sBtCallManager:Lcom/chery/btphone/BtCallManager;

    return-object v0

    .line 66
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "UiCallManager has been initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private isPbapConnnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 199
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 200
    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result p0

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 203
    :cond_1
    sget-object p0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    const-string p1, "pbap client is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static set(Lcom/chery/btphone/BtCallManager;)V
    .locals 0

    .line 87
    sput-object p0, Lcom/chery/btphone/BtCallManager;->sBtCallManager:Lcom/chery/btphone/BtCallManager;

    return-void
.end method

.method private startDownload()V
    .locals 1

    const/4 v0, -0x1

    .line 235
    iput v0, p0, Lcom/chery/btphone/BtCallManager;->mContactSyncState:I

    .line 236
    iput v0, p0, Lcom/chery/btphone/BtCallManager;->mCalllogSyncState:I

    .line 238
    new-instance v0, Lcom/chery/btphone/BtCallManager$4;

    invoke-direct {v0, p0}, Lcom/chery/btphone/BtCallManager$4;-><init>(Lcom/chery/btphone/BtCallManager;)V

    .line 269
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private tryPbapConnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 273
    new-instance v0, Lcom/chery/btphone/receiver/PbapStateReceiver;

    iget-object v1, p0, Lcom/chery/btphone/BtCallManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/chery/btphone/receiver/PbapStateReceiver;-><init>(Landroid/content/Context;)V

    .line 274
    new-instance v1, Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;

    invoke-direct {v1, p0, v0}, Lcom/chery/btphone/-$$Lambda$BtCallManager$emsE6U0e0sPmru1JkvB0c1aNOYE;-><init>(Lcom/chery/btphone/BtCallManager;Lcom/chery/btphone/receiver/PbapStateReceiver;)V

    invoke-virtual {v0, v1}, Lcom/chery/btphone/receiver/PbapStateReceiver;->register(Lcom/chery/btphone/receiver/PbapStateReceiver$PbapStateListener;)V

    .line 287
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public acceptRingingCall()V
    .locals 0

    .line 341
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->acceptRingingCall()V

    return-void
.end method

.method public downloadCallLog()Z
    .locals 2

    .line 302
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->getHfpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 303
    invoke-direct {p0, v0}, Lcom/chery/btphone/BtCallManager;->isPbapConnnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    const/16 v0, 0xc8

    invoke-virtual {p0, v1, v0}, Landroid/bluetooth/BluetoothPbapClient;->pullCallLog(II)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public downloadPbap()V
    .locals 3

    .line 209
    iget v0, p0, Lcom/chery/btphone/BtCallManager;->mCalllogSyncState:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/chery/btphone/BtCallManager;->mContactSyncState:I

    if-nez v0, :cond_0

    goto :goto_2

    .line 215
    :cond_0
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->getHfpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    invoke-direct {p0, v0}, Lcom/chery/btphone/BtCallManager;->isPbapConnnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->startDownload()V

    goto :goto_1

    .line 222
    :cond_1
    sget-object v1, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    const-string v2, "pbap client is not connect and try."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0, v0}, Lcom/chery/btphone/BtCallManager;->tryPbapConnect(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 227
    :cond_2
    sget-object v0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hfp client is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    if-nez p0, :cond_3

    const-string p0, "null."

    goto :goto_0

    :cond_3
    const-string p0, "not connect."

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    .line 211
    :cond_4
    :goto_2
    sget-object p0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    const-string v0, "pbap is downloading."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public downloadPhoneBook()Z
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->getHfpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0, v0}, Lcom/chery/btphone/BtCallManager;->isPbapConnnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothPbapClient;->downloadPhoneBook(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    .line 295
    sget-object v0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downloadPhoneBook:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public endCall()Z
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->endCall()Z

    move-result p0

    return p0
.end method

.method public forceDownloadCallLog()Z
    .locals 3

    .line 311
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->getHfpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 313
    invoke-direct {p0, v0}, Lcom/chery/btphone/BtCallManager;->isPbapConnnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    const/16 v0, 0xc8

    invoke-virtual {p0, v1, v0}, Landroid/bluetooth/BluetoothPbapClient;->pullCallLog(II)Z

    move-result v1

    goto :goto_0

    .line 317
    :cond_0
    sget-object v1, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    const-string v2, "try connect pbap for download calllog."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-direct {p0, v0}, Lcom/chery/btphone/BtCallManager;->tryPbapConnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    :cond_1
    :goto_0
    return v1
.end method

.method public getCalllogSyncState()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/chery/btphone/BtCallManager;->mCalllogSyncState:I

    return p0
.end method

.method public getContactSyncState()I
    .locals 0

    .line 161
    iget p0, p0, Lcom/chery/btphone/BtCallManager;->mContactSyncState:I

    return p0
.end method

.method public hasAnyCalls()Z
    .locals 4

    .line 369
    iget-object v0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 370
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

    .line 371
    iget-object v3, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 372
    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothHeadsetClient;->getCurrentCalls(Landroid/bluetooth/BluetoothDevice;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 373
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 379
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isBluetoothCall()Z
    .locals 1

    .line 176
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 177
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 178
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    invoke-virtual {p0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.bluetooth.hfpclient.connserv.HfpClientConnectionService"

    .line 179
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHfpConnected()Z
    .locals 0

    .line 188
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->getHfpDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isInCall()Z
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0
.end method

.method public isRinging()Z
    .locals 0

    .line 345
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isRinging()Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$tryPbapConnect$0$BtCallManager(Lcom/chery/btphone/receiver/PbapStateReceiver;II)V
    .locals 3

    .line 275
    sget-object v0, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pbap preState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",newState:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x2

    if-eq p3, p2, :cond_0

    if-nez p3, :cond_1

    .line 278
    :cond_0
    invoke-virtual {p1}, Lcom/chery/btphone/receiver/PbapStateReceiver;->unregister()V

    :cond_1
    if-ne p3, p2, :cond_2

    .line 282
    sget-object p1, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    const-string p2, "start download again."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-direct {p0}, Lcom/chery/btphone/BtCallManager;->startDownload()V

    :cond_2
    return-void
.end method

.method public placeCall(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "tel"

    const/4 v1, 0x0

    .line 333
    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 334
    sget-object v2, Lcom/chery/btphone/BtCallManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.telecom.TelecomManager#placeCall:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object p0, p0, Lcom/chery/btphone/BtCallManager;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0, v0, v1}, Landroid/telecom/TelecomManager;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V

    const/4 p0, 0x1

    return p0
.end method

.method public rejectCall()Z
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 351
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 352
    iget-object v2, p0, Lcom/chery/btphone/BtCallManager;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothHeadsetClient;->rejectCall(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public tearDown()V
    .locals 1

    const/4 v0, 0x0

    .line 171
    iput-object v0, p0, Lcom/chery/btphone/BtCallManager;->mContext:Landroid/content/Context;

    .line 172
    sput-object v0, Lcom/chery/btphone/BtCallManager;->sBtCallManager:Lcom/chery/btphone/BtCallManager;

    return-void
.end method
