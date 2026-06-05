.class public Lcom/android/car/CarBluetoothUserService;
.super Landroid/car/ICarBluetoothUserService$Stub;
.source "CarBluetoothUserService.java"


# static fields
.field private static final DBG:Z

.field private static final PROXY_OPERATION_TIMEOUT_MS:I = 0x1f40

.field private static final TAG:Ljava/lang/String; = "CarBluetoothUserService"

.field private static final sProfilesToConnect:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

.field private mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

.field private mBluetoothPan:Landroid/bluetooth/BluetoothPan;

.field private mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

.field private mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

.field private final mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mConditionAllProxiesConnected:Ljava/util/concurrent/locks/Condition;

.field private mConnectedProfiles:I

.field private mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mService:Lcom/android/car/PerUserCarService;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 40
    const/4 v0, 0x3

    const-string v1, "CarBluetoothUserService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/car/CarBluetoothUserService;->DBG:Z

    .line 45
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    .line 46
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 47
    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 48
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 49
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 50
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 45
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/CarBluetoothUserService;->sProfilesToConnect:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/car/PerUserCarService;)V
    .locals 4
    .param p1, "service"    # Lcom/android/car/PerUserCarService;

    .line 75
    invoke-direct {p0}, Landroid/car/ICarBluetoothUserService$Stub;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 56
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 57
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 58
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 59
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 151
    new-instance v0, Lcom/android/car/CarBluetoothUserService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarBluetoothUserService$1;-><init>(Lcom/android/car/CarBluetoothUserService;)V

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 76
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mService:Lcom/android/car/PerUserCarService;

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    .line 78
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    .line 79
    sget-object v1, Lcom/android/car/CarBluetoothUserService;->sProfilesToConnect:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 80
    .local v2, "profile":I
    iget-object v3, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 81
    .end local v2    # "profile":I
    goto :goto_0

    .line 82
    :cond_0
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 83
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mConditionAllProxiesConnected:Ljava/util/concurrent/locks/Condition;

    .line 84
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 85
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const-string v1, "Bluetooth adapter cannot be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarBluetoothUserService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;

    .line 38
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/car/CarBluetoothUserService;)Ljava/util/concurrent/locks/Condition;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;

    .line 38
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mConditionAllProxiesConnected:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothA2dpSink;)Landroid/bluetooth/BluetoothA2dpSink;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dpSink;

    .line 38
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothHeadsetClient;)Landroid/bluetooth/BluetoothHeadsetClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHeadsetClient;

    .line 38
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPbapClient;)Landroid/bluetooth/BluetoothPbapClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPbapClient;

    .line 38
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    return-object p1
.end method

.method static synthetic access$502(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothMapClient;)Landroid/bluetooth/BluetoothMapClient;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothMapClient;

    .line 38
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    return-object p1
.end method

.method static synthetic access$602(Lcom/android/car/CarBluetoothUserService;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .line 38
    iput-object p1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/car/CarBluetoothUserService;)Landroid/util/SparseBooleanArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;

    .line 38
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/CarBluetoothUserService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;

    .line 38
    iget v0, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    return v0
.end method

.method static synthetic access$808(Lcom/android/car/CarBluetoothUserService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;

    .line 38
    iget v0, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    return v0
.end method

.method static synthetic access$810(Lcom/android/car/CarBluetoothUserService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/car/CarBluetoothUserService;

    .line 38
    iget v0, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    return v0
.end method

.method static synthetic access$900()Ljava/util/List;
    .locals 1

    .line 38
    sget-object v0, Lcom/android/car/CarBluetoothUserService;->sProfilesToConnect:Ljava/util/List;

    return-object v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 443
    sget-boolean v0, Lcom/android/car/CarBluetoothUserService;->DBG:Z

    if-eqz v0, :cond_0

    .line 444
    const-string v0, "CarBluetoothUserService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    :cond_0
    return-void
.end method

.method private waitForProxies(I)Z
    .locals 6
    .param p1, "timeout"    # I

    .line 241
    const-string v0, "CarBluetoothUserService"

    const-string v1, "waitForProxies()"

    invoke-direct {p0, v1}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 244
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 246
    :cond_0
    :try_start_0
    iget v1, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    sget-object v3, Lcom/android/car/CarBluetoothUserService;->sProfilesToConnect:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 247
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mConditionAllProxiesConnected:Ljava/util/concurrent/locks/Condition;

    int-to-long v3, p1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3, v4, v5}, Ljava/util/concurrent/locks/Condition;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout while waiting for proxies, Connected: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/car/CarBluetoothUserService;->sProfilesToConnect:Ljava/util/List;

    .line 250
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 249
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    return v2

    .line 257
    :cond_1
    nop

    .line 258
    const/4 v0, 0x1

    return v0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/InterruptedException;
    const-string v3, "waitForProxies: interrupted"

    invoke-static {v0, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    return v2
.end method


# virtual methods
.method public bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 269
    const/4 v0, 0x0

    const-string v1, "CarBluetoothUserService"

    if-nez p2, :cond_0

    .line 270
    const-string v2, "Cannot connect to profile on null device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return v0

    .line 273
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to connect to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 275
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 277
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/car/CarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x1f40

    .line 278
    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->waitForProxies(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 279
    const-string v2, "Cannot connect to Profile. Proxy Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 280
    nop

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 280
    return v0

    .line 282
    :cond_1
    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 294
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 299
    nop

    .line 300
    return v0

    .line 288
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothMapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 288
    return v0

    .line 290
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPbapClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 290
    return v0

    .line 286
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadsetClient;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 286
    return v0

    .line 284
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothA2dpSink;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 284
    return v0

    .line 292
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 298
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 292
    return v0

    .line 298
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bluetoothDisconnectFromProfile(ILandroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 311
    const/4 v0, 0x0

    const-string v1, "CarBluetoothUserService"

    if-nez p2, :cond_0

    .line 312
    const-string v2, "Cannot disconnect from profile on null device"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    return v0

    .line 315
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to disconnect from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 317
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 319
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/car/CarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x1f40

    .line 320
    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->waitForProxies(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 321
    const-string v2, "Cannot disconnect from profile. Proxy Unavailable"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    nop

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 322
    return v0

    .line 324
    :cond_1
    const/4 v2, 0x5

    if-eq p1, v2, :cond_3

    const/16 v2, 0xb

    if-eq p1, v2, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 336
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown Profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 341
    nop

    .line 342
    return v0

    .line 330
    :pswitch_0
    :try_start_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothMapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 330
    return v0

    .line 332
    :pswitch_1
    :try_start_3
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPbapClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 332
    return v0

    .line 328
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadsetClient;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 328
    return v0

    .line 326
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothA2dpSink;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 326
    return v0

    .line 334
    :cond_3
    :try_start_6
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 340
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    return v0

    .line 340
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public closeBluetoothConnectionProxies()V
    .locals 5

    .line 118
    const-string v0, "Clean up profile proxy objects"

    invoke-direct {p0, v0}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    .line 123
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 125
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    const/16 v4, 0x10

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 127
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    .line 128
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 130
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    const/16 v4, 0x11

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 131
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    .line 132
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 134
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    const/16 v4, 0x12

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 135
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    .line 136
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 138
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    const/4 v4, 0x5

    invoke-virtual {v1, v4, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 139
    iput-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPan:Landroid/bluetooth/BluetoothPan;

    .line 140
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 142
    iput v3, p0, Lcom/android/car/CarBluetoothUserService;->mConnectedProfiles:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 145
    nop

    .line 146
    return-void

    .line 144
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public getProfilePriority(ILandroid/bluetooth/BluetoothDevice;)I
    .locals 4
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 353
    const/4 v0, -0x1

    const-string v1, "Cannot get "

    const-string v2, "CarBluetoothUserService"

    if-nez p2, :cond_0

    .line 354
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " profile priority on null device"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    return v0

    .line 359
    :cond_0
    iget-object v3, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 361
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/car/CarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/16 v3, 0x1f40

    .line 362
    invoke-direct {p0, v3}, Lcom/android/car/CarBluetoothUserService;->waitForProxies(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 363
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " profile priority. Proxy Unavailable"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    nop

    .line 386
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 365
    return v0

    .line 367
    :cond_1
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 381
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown Profile: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/4 v0, -0x1

    .local v0, "priority":I
    goto :goto_0

    .line 375
    .end local v0    # "priority":I
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothMapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 376
    .restart local v0    # "priority":I
    goto :goto_0

    .line 378
    .end local v0    # "priority":I
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothPbapClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 379
    .restart local v0    # "priority":I
    goto :goto_0

    .line 372
    .end local v0    # "priority":I
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothHeadsetClient;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 373
    .restart local v0    # "priority":I
    goto :goto_0

    .line 369
    .end local v0    # "priority":I
    :cond_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p2}, Landroid/bluetooth/BluetoothA2dpSink;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 370
    .restart local v0    # "priority":I
    nop

    .line 386
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 387
    nop

    .line 388
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " priority for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 388
    invoke-direct {p0, v1}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 390
    return v0

    .line 386
    .end local v0    # "priority":I
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isBluetoothConnectionProxyAvailable(I)Z
    .locals 3
    .param p1, "profile"    # I

    .line 223
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 224
    :cond_0
    const/4 v0, 0x0

    .line 225
    .local v0, "proxyConnected":Z
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 227
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProfileStatus:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 229
    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 230
    nop

    .line 231
    return v0

    .line 229
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .line 402
    const-string v0, "Cannot set "

    const-string v1, "CarBluetoothUserService"

    if-nez p2, :cond_0

    .line 403
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " profile priority on null device"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    return-void

    .line 407
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " priority for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 409
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 411
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/car/CarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x1f40

    .line 412
    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->waitForProxies(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " profile priority. Proxy Unavailable"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 435
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 415
    return-void

    .line 417
    :cond_1
    const/16 v0, 0xb

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    .line 431
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Profile: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothMapClient:Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothMapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 426
    goto :goto_0

    .line 428
    :pswitch_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothPbapClient:Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothPbapClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 429
    goto :goto_0

    .line 422
    :pswitch_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothHeadsetClient:Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothHeadsetClient;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 423
    goto :goto_0

    .line 419
    :cond_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothA2dpSink:Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0, p2, p3}, Landroid/bluetooth/BluetoothA2dpSink;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    nop

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 436
    nop

    .line 437
    return-void

    .line 435
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothProxyLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setupBluetoothConnectionProxies()V
    .locals 5

    .line 98
    const-string v0, "Initiate connections to profile proxies"

    invoke-direct {p0, v0}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/car/CarBluetoothUserService;->closeBluetoothConnectionProxies()V

    .line 106
    sget-object v0, Lcom/android/car/CarBluetoothUserService;->sProfilesToConnect:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 107
    .local v1, "profile":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating proxy for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/CarBluetoothUserService;->logd(Ljava/lang/String;)V

    .line 108
    iget-object v2, p0, Lcom/android/car/CarBluetoothUserService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v3, p0, Lcom/android/car/CarBluetoothUserService;->mService:Lcom/android/car/PerUserCarService;

    invoke-virtual {v3}, Lcom/android/car/PerUserCarService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/car/CarBluetoothUserService;->mProfileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {v2, v3, v4, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 110
    .end local v1    # "profile":I
    goto :goto_0

    .line 111
    :cond_0
    return-void
.end method
