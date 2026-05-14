.class public Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarAvmEngineClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IAvmEngineManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 77
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 29
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onEnterExitState([B)V

    return-void
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;)Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onEngineerMode([B)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onCalibrationStatus([B)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onViewStatus([B)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onViewParams([B)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onLogSettings([B)V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onDataStorage([B)V

    return-void
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onSimulateOthers([B)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;[B)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->onAvmVersion([B)V

    return-void
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;
    .locals 2

    .line 86
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    if-nez v0, :cond_1

    .line 87
    const-class v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    monitor-enter v0

    .line 88
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    if-nez v1, :cond_0

    .line 89
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    .line 91
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 93
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    return-object v0
.end method

.method private onAvmVersion([B)V
    .locals 0

    .line 273
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 274
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onAvmVersion([B)V

    :cond_0
    return-void
.end method

.method private onCalibrationStatus([B)V
    .locals 0

    .line 237
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 238
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onCalibrationStatus([B)V

    :cond_0
    return-void
.end method

.method private onDataStorage([B)V
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 262
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onDataStorage([B)V

    :cond_0
    return-void
.end method

.method private onEngineerMode([B)V
    .locals 0

    .line 230
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 231
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onEngineerMode([B)V

    :cond_0
    return-void
.end method

.method private onEnterExitState([B)V
    .locals 0

    .line 224
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 225
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onEnterExitState([B)V

    :cond_0
    return-void
.end method

.method private onLogSettings([B)V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 256
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onLogSettings([B)V

    :cond_0
    return-void
.end method

.method private onSimulateOthers([B)V
    .locals 0

    .line 267
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 268
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onSimulateOthers([B)V

    :cond_0
    return-void
.end method

.method private onViewParams([B)V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 250
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onViewParams([B)V

    :cond_0
    return-void
.end method

.method private onViewStatus([B)V
    .locals 0

    .line 243
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    if-eqz p0, :cond_0

    .line 244
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onViewStatus([B)V

    :cond_0
    return-void
.end method

.method private sendPropertyData(I[B)V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 219
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public factoryReset([B)V
    .locals 1

    const v0, 0x2170c00b

    .line 214
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public init()V
    .locals 4

    .line 98
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->handlerThread:Landroid/os/HandlerThread;

    .line 99
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;

    .line 102
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c000

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 105
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c002

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 108
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c003

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 111
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c004

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 114
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c005

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 117
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c006

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 120
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c007

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 123
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v2, 0x2170c008

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 126
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;

    const v1, 0x2170c009

    invoke-virtual {v0, p0, v1, v3}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setAvmTouchEvent([B)V
    .locals 1

    const v0, 0x2170c00a

    .line 209
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setAvmVersion([B)V
    .locals 1

    const v0, 0x2170c009

    .line 204
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setCalibrationStatus([B)V
    .locals 1

    const v0, 0x2170c003

    .line 174
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setDataStorage([B)V
    .locals 1

    const v0, 0x2170c007

    .line 194
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setEngineerMode([B)V
    .locals 1

    const v0, 0x2170c002

    .line 169
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setEnterExitState([B)V
    .locals 1

    const v0, 0x2170c000

    .line 159
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setLicensePlate([B)V
    .locals 1

    const v0, 0x2170c001

    .line 164
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    return-void
.end method

.method public setLogSettings([B)V
    .locals 1

    const v0, 0x2170c006

    .line 189
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setSimulateOthers([B)V
    .locals 1

    const v0, 0x2170c008

    .line 199
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setViewParams([B)V
    .locals 1

    const v0, 0x2170c005

    .line 184
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method

.method public setViewStatus([B)V
    .locals 1

    const v0, 0x2170c004

    .line 179
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->sendPropertyData(I[B)V

    return-void
.end method
