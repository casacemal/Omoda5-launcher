.class public Lcom/android/car/BluetoothProfileDeviceManager;
.super Ljava/lang/Object;
.source "BluetoothProfileDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;,
        Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;
    }
.end annotation


# static fields
.field private static final AUTO_CONNECT_TIMEOUT_MS:I = 0x1f40

.field private static final AUTO_CONNECT_TOKEN:Ljava/lang/Object;

.field private static final DBG:Z

.field private static final SETTINGS_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileDeviceManager"

.field private static final sProfileActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAutoConnectLock:Ljava/lang/Object;

.field private mAutoConnectPriority:I

.field private mAutoConnectingDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;

.field private mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

.field private mConnecting:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mPrioritizedDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileConnectionAction:Ljava/lang/String;

.field private final mProfileId:I

.field private final mProfileTriggers:[I

.field private final mProfileUuids:[Landroid/os/ParcelUuid;

.field private final mSettingsKey:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 63
    const-string v0, "BluetoothProfileDeviceManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/BluetoothProfileDeviceManager;->DBG:Z

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->AUTO_CONNECT_TOKEN:Ljava/lang/Object;

    .line 87
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    .line 89
    sget-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;

    const/4 v8, 0x1

    new-array v4, v8, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    const/4 v9, 0x0

    aput-object v1, v4, v9

    new-array v5, v9, [I

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.car.KEY_BLUETOOTH_A2DP_SINK_DEVICES"

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[ILcom/android/car/BluetoothProfileDeviceManager$1;)V

    const/16 v1, 0xb

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 94
    sget-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;

    const/4 v1, 0x2

    new-array v4, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    aput-object v2, v4, v9

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    aput-object v2, v4, v8

    new-array v5, v1, [I

    fill-array-data v5, :array_0

    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.car.KEY_BLUETOOTH_HFP_CLIENT_DEVICES"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[ILcom/android/car/BluetoothProfileDeviceManager$1;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 100
    sget-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;

    new-array v4, v8, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    aput-object v1, v4, v9

    new-array v5, v9, [I

    const-string v2, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.car.KEY_BLUETOOTH_MAP_CLIENT_DEVICES"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[ILcom/android/car/BluetoothProfileDeviceManager$1;)V

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    sget-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;

    new-array v4, v8, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    aput-object v1, v4, v9

    new-array v5, v9, [I

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.car.KEY_BLUETOOTH_PAN_DEVICES"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[ILcom/android/car/BluetoothProfileDeviceManager$1;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 110
    sget-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    new-instance v7, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;

    new-array v4, v8, [Landroid/os/ParcelUuid;

    sget-object v1, Landroid/bluetooth/BluetoothUuid;->PBAP_PSE:Landroid/os/ParcelUuid;

    aput-object v1, v4, v9

    new-array v5, v9, [I

    const-string v2, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    const-string v3, "android.car.KEY_BLUETOOTH_PBAP_CLIENT_DEVICES"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;-><init>(Ljava/lang/String;Ljava/lang/String;[Landroid/os/ParcelUuid;[ILcom/android/car/BluetoothProfileDeviceManager$1;)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 115
    return-void

    nop

    :array_0
    .array-data 4
        0x12
        0x11
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;ILandroid/car/ICarBluetoothUserService;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bluetoothUserProxies"    # Landroid/car/ICarBluetoothUserService;
    .param p4, "profileId"    # I

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    .line 130
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mConnecting:Z

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mHandler:Landroid/os/Handler;

    .line 300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mContext:Landroid/content/Context;

    .line 301
    iput p2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mUserId:I

    .line 302
    iput-object p3, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 304
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    .line 305
    sget-object v0, Lcom/android/car/BluetoothProfileDeviceManager;->sProfileActions:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;

    .line 306
    .local v0, "bpi":Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;
    if-eqz v0, :cond_0

    .line 310
    iput p4, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    .line 311
    iget-object v1, v0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mSettingsKey:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mSettingsKey:Ljava/lang/String;

    .line 312
    iget-object v1, v0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mConnectionAction:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileConnectionAction:Ljava/lang/String;

    .line 313
    iget-object v1, v0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mUuids:[Landroid/os/ParcelUuid;

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileUuids:[Landroid/os/ParcelUuid;

    .line 314
    iget-object v1, v0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothProfileInfo;->mProfileTriggers:[I

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileTriggers:[I

    .line 316
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothAdapter;

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 317
    return-void

    .line 307
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided profile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is unrecognized"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$100(Lcom/android/car/BluetoothProfileDeviceManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileDeviceManager;

    .line 61
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileConnectionAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileDeviceManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/car/BluetoothProfileDeviceManager;->handleDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileDeviceManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # I

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/car/BluetoothProfileDeviceManager;->handleDeviceBondStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;[Landroid/os/Parcelable;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileDeviceManager;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "x2"    # [Landroid/os/Parcelable;

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/car/BluetoothProfileDeviceManager;->handleDeviceUuidEvent(Landroid/bluetooth/BluetoothDevice;[Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/BluetoothProfileDeviceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileDeviceManager;
    .param p1, "x1"    # I

    .line 61
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->handleAdapterStateChange(I)V

    return-void
.end method

.method private addBondedDeviceIfSupported(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " if it is supported"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    .line 720
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileUuids:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->getProfilePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 724
    :cond_1
    return-void
.end method

.method private autoConnectWithTimeout()V
    .locals 7

    .line 618
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 619
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 620
    const-string v1, "Autoconnect process was cancelled, skipping connecting next device."

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 621
    monitor-exit v0

    return-void

    .line 623
    :cond_0
    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    if-ltz v1, :cond_2

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    goto :goto_0

    .line 627
    :cond_1
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 628
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto connecting ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") device: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 630
    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$23nhKXoQh2fGVENYIWoX4hjzZws;

    invoke-direct {v3, p0, v1}, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$23nhKXoQh2fGVENYIWoX4hjzZws;-><init>(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 637
    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;

    invoke-direct {v3, p0, v1}, Lcom/android/car/-$$Lambda$BluetoothProfileDeviceManager$4VUdKmTWIP86WOXhagJ5MWhuh0g;-><init>(Lcom/android/car/BluetoothProfileDeviceManager;Landroid/bluetooth/BluetoothDevice;)V

    sget-object v4, Lcom/android/car/BluetoothProfileDeviceManager;->AUTO_CONNECT_TOKEN:Ljava/lang/Object;

    const-wide/16 v5, 0x1f40

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 641
    nop

    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    monitor-exit v0

    .line 642
    return-void

    .line 624
    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    .line 641
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cancelAutoConnecting()V
    .locals 3

    .line 676
    const-string v0, "Cleaning up any auto-connect process"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 678
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/car/BluetoothProfileDeviceManager;->AUTO_CONNECT_TOKEN:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 680
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mConnecting:Z

    .line 681
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    .line 682
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    .line 683
    monitor-exit v0

    .line 684
    return-void

    .line 683
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private commit()Z
    .locals 6

    .line 409
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 410
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, ""

    .line 411
    .local v1, "delimiter":Ljava/lang/String;
    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 413
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    const-string v4, ","

    move-object v1, v4

    .line 416
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 417
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 419
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 420
    .local v2, "devicesStr":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mSettingsKey:Ljava/lang/String;

    iget v5, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mUserId:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Committed key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", value: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 423
    const/4 v3, 0x1

    return v3

    .line 417
    .end local v2    # "devicesStr":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 527
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 529
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-interface {v0, v1, p1}, Landroid/car/ICarBluetoothUserService;->bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 530
    :catch_0
    move-exception v0

    .line 531
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 533
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private continueAutoConnecting()V
    .locals 3

    .line 649
    const-string v0, "Continue auto-connect process on next device"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 650
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 651
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnecting()Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    const-string v1, "Autoconnect process was cancelled, no need to continue."

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 653
    monitor-exit v0

    return-void

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mHandler:Landroid/os/Handler;

    sget-object v2, Lcom/android/car/BluetoothProfileDeviceManager;->AUTO_CONNECT_TOKEN:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 656
    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    .line 657
    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_1

    .line 658
    const-string v1, "No more devices to connect to"

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->cancelAutoConnecting()V

    .line 660
    monitor-exit v0

    return-void

    .line 662
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 663
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->autoConnectWithTimeout()V

    .line 664
    return-void

    .line 662
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static create(Landroid/content/Context;ILandroid/car/ICarBluetoothUserService;I)Lcom/android/car/BluetoothProfileDeviceManager;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "userId"    # I
    .param p2, "bluetoothUserProxies"    # Landroid/car/ICarBluetoothUserService;
    .param p3, "profileId"    # I

    .line 280
    :try_start_0
    new-instance v0, Lcom/android/car/BluetoothProfileDeviceManager;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/car/BluetoothProfileDeviceManager;-><init>(Landroid/content/Context;ILandroid/car/ICarBluetoothUserService;I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 282
    :catch_0
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Disconnecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-interface {v0, v1, p1}, Landroid/car/ICarBluetoothUserService;->bluetoothDisconnectFromProfile(ILandroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disconnect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 549
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method private getProfilePriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-interface {v0, v1, p1}, Landroid/car/ICarBluetoothUserService;->getProfilePriority(ILandroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get bluetooth stack priority for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 564
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method private handleAdapterStateChange(I)V
    .locals 2
    .param p1, "state"    # I

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bluetooth Adapter state changed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getAdapterStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 257
    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 258
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->cancelAutoConnecting()V

    .line 261
    :cond_0
    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 262
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->commit()Z

    .line 264
    :cond_1
    return-void
.end method

.method private handleDeviceBondStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bond state has changed [device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    invoke-static {p2}, Lcom/android/car/Utils;->getBondStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 210
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->removeDevice(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 214
    :cond_0
    const/16 v0, 0xc

    if-ne p2, v0, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->addBondedDeviceIfSupported(Landroid/bluetooth/BluetoothDevice;)V

    .line 217
    :cond_1
    :goto_0
    return-void
.end method

.method private handleDeviceConnectionStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "state"    # I

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection state changed [device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-static {p2}, Lcom/android/car/Utils;->getConnectionStateName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 182
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 183
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnectingDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->continueAutoConnecting()V

    goto :goto_0

    .line 186
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->getProfilePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-lt v0, v1, :cond_1

    .line 187
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 189
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->triggerConnections(Landroid/bluetooth/BluetoothDevice;)V

    .line 195
    :cond_2
    :goto_0
    return-void
.end method

.method private handleDeviceUuidEvent(Landroid/bluetooth/BluetoothDevice;[Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuids"    # [Landroid/os/Parcelable;

    .line 231
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UUIDs found, device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 232
    if-eqz p2, :cond_1

    .line 233
    array-length v0, p2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    .line 234
    .local v0, "uuidsToSend":[Landroid/os/ParcelUuid;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 235
    aget-object v2, p2, v1

    check-cast v2, Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    .line 234
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v1    # "i":I
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->provisionDeviceIfSupported(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V

    .line 239
    .end local v0    # "uuidsToSend":[Landroid/os/ParcelUuid;
    :cond_1
    return-void
.end method

.method private isAutoConnectingDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 704
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 706
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 707
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private load()Z
    .locals 8

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading device priority list snapshot using key \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mSettingsKey:Ljava/lang/String;

    iget v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "devicesStr":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found Device String: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 373
    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 379
    .local v2, "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 380
    return v1

    .line 384
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v1

    .line 385
    .local v3, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 387
    .local v4, "address":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 388
    .local v5, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    nop

    .line 393
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 389
    .restart local v4    # "address":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 390
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to parse address \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' to a device"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 391
    goto :goto_0

    .line 395
    .end local v4    # "address":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    monitor-enter p0

    .line 396
    :try_start_1
    iput-object v3, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    .line 397
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loaded Priority list: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 400
    const/4 v1, 0x1

    return v1

    .line 397
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 374
    .end local v2    # "deviceList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    :goto_1
    return v1
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 795
    sget-boolean v0, Lcom/android/car/BluetoothProfileDeviceManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothProfileDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    :cond_0
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothProfileDeviceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    return-void
.end method

.method private provisionDeviceIfSupported(Landroid/bluetooth/BluetoothDevice;[Landroid/os/ParcelUuid;)V
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "uuids"    # [Landroid/os/ParcelUuid;

    .line 735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Checking UUIDs for device: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 736
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileUuids:[Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 737
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->getProfilePriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 738
    .local v0, "devicePriority":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " supports this profile. Priority: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    invoke-static {v0}, Lcom/android/car/Utils;->getProfilePriorityName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 738
    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 743
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 748
    const/16 v1, 0x64

    invoke-direct {p0, p1, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->setProfilePriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 749
    return-void

    .line 752
    .end local v0    # "devicePriority":I
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has ended without priority being set"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method private setProfilePriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " stack priority to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getProfilePriorityName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 576
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-interface {v0, v1, p1, p2}, Landroid/car/ICarBluetoothUserService;->setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    nop

    .line 581
    const/4 v0, 0x1

    return v0

    .line 577
    :catch_0
    move-exception v0

    .line 578
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to set bluetooth stack priority for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 579
    const/4 v1, 0x0

    return v1
.end method

.method private sync()V
    .locals 5

    .line 431
    const-string v0, "Syncing the priority list with the adapter\'s list of bonded devices"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 433
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 434
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {p0, v2}, Lcom/android/car/BluetoothProfileDeviceManager;->addDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 435
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 437
    :cond_0
    monitor-enter p0

    .line 438
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->getDeviceListSnapshot()Ljava/util/ArrayList;

    move-result-object v1

    .line 439
    .local v1, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 440
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 441
    invoke-virtual {p0, v3}, Lcom/android/car/BluetoothProfileDeviceManager;->removeDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 443
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_1
    goto :goto_1

    .line 444
    .end local v1    # "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_2
    monitor-exit p0

    .line 445
    return-void

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerConnections(Landroid/bluetooth/BluetoothDevice;)V
    .locals 7
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 761
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileTriggers:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 762
    .local v3, "profile":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Trigger connection to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 764
    :try_start_0
    iget-object v4, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    invoke-interface {v4, v3, p1}, Landroid/car/ICarBluetoothUserService;->bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 767
    goto :goto_1

    .line 765
    :catch_0
    move-exception v4

    .line 766
    .local v4, "e":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to connect "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", Reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 761
    .end local v3    # "profile":I
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 769
    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized addDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 466
    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 467
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 468
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Add device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 470
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 471
    monitor-exit p0

    return-void

    .line 465
    .end local p0    # "this":Lcom/android/car/BluetoothProfileDeviceManager;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public beginAutoConnecting()V
    .locals 3

    .line 591
    const-string v0, "Request to begin auto connection process"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 592
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnecting()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 594
    const-string v1, "Auto connect requested while we are already auto connecting."

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 595
    monitor-exit v0

    return-void

    .line 597
    :cond_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    .line 598
    const-string v1, "Bluetooth Adapter is not on, cannot connect devices"

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 599
    monitor-exit v0

    return-void

    .line 601
    :cond_1
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->getDeviceListSnapshot()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    .line 602
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 603
    const-string v1, "No saved devices to auto-connect to."

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 604
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->cancelAutoConnecting()V

    .line 605
    monitor-exit v0

    return-void

    .line 607
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mConnecting:Z

    .line 608
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    .line 609
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 610
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->autoConnectWithTimeout()V

    .line 611
    return-void

    .line 609
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    .line 777
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BluetoothProfileDeviceManager ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileId:I

    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 779
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tSettings Location: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mSettingsKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 781
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tUser Proxies Exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 782
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    const-string v2, "Yes"

    const-string v3, "No"

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tAuto-Connecting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->isAutoConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tPriority List:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->getDeviceListSnapshot()Ljava/util/ArrayList;

    move-result-object v0

    .line 786
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 787
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 788
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 789
    :cond_2
    return-void
.end method

.method public declared-synchronized getDeviceConnectionPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 493
    if-nez p1, :cond_0

    const/4 v0, -0x1

    monitor-exit p0

    return v0

    .line 494
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get connection priority of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 495
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 492
    .end local p0    # "this":Lcom/android/car/BluetoothProfileDeviceManager;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDeviceListSnapshot()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 454
    .local v0, "devices":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/bluetooth/BluetoothDevice;>;"
    monitor-enter p0

    .line 455
    :try_start_0
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    .line 456
    monitor-exit p0

    .line 457
    return-object v0

    .line 456
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isAutoConnecting()Z
    .locals 2

    .line 692
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 693
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mConnecting:Z

    monitor-exit v0

    return v1

    .line 694
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$autoConnectWithTimeout$0$BluetoothProfileDeviceManager(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 631
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 632
    .local v0, "connectStatus":Z
    if-nez v0, :cond_0

    .line 633
    const-string v1, "Connection attempt immediately failed, moving to the next device"

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->continueAutoConnecting()V

    .line 636
    :cond_0
    return-void
.end method

.method public synthetic lambda$autoConnectWithTimeout$1$BluetoothProfileDeviceManager(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 638
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Auto connect process has timed out connecting to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logw(Ljava/lang/String;)V

    .line 639
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->continueAutoConnecting()V

    .line 640
    return-void
.end method

.method public declared-synchronized removeDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    monitor-enter p0

    .line 479
    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 480
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    .line 481
    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->commit()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 484
    monitor-exit p0

    return-void

    .line 478
    .end local p0    # "this":Lcom/android/car/BluetoothProfileDeviceManager;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDeviceConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "priority"    # I

    monitor-enter p0

    .line 509
    if-eqz p1, :cond_2

    if-ltz p2, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/car/BluetoothProfileDeviceManager;->getDeviceConnectionPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 513
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move p2, v0

    .line 515
    .end local p0    # "this":Lcom/android/car/BluetoothProfileDeviceManager;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set connection priority of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mPrioritizedDevices:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 517
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    monitor-exit p0

    return-void

    .line 508
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "priority":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 510
    .restart local p0    # "this":Lcom/android/car/BluetoothProfileDeviceManager;
    .restart local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local p2    # "priority":I
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public start()V
    .locals 7

    .line 323
    const-string v0, "Starting device management"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 324
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->load()Z

    .line 325
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 326
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mConnecting:Z

    .line 327
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectPriority:I

    .line 328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mAutoConnectingDevices:Ljava/util/ArrayList;

    .line 329
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    new-instance v0, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;-><init>(Lcom/android/car/BluetoothProfileDeviceManager;Lcom/android/car/BluetoothProfileDeviceManager$1;)V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;

    .line 331
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 332
    .local v0, "profileFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mProfileConnectionAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 334
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 335
    const-string v1, "android.bluetooth.device.action.UUID"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 336
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 338
    return-void

    .line 329
    .end local v0    # "profileFilter":Landroid/content/IntentFilter;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stop()V
    .locals 2

    .line 345
    const-string v0, "Stopping device management"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileDeviceManager;->logd(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 347
    iget-object v1, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    .line 348
    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 350
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/BluetoothProfileDeviceManager;->mBluetoothBroadcastReceiver:Lcom/android/car/BluetoothProfileDeviceManager$BluetoothBroadcastReceiver;

    .line 352
    :cond_1
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->cancelAutoConnecting()V

    .line 353
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileDeviceManager;->commit()Z

    .line 354
    return-void
.end method
