.class public Lcom/chery/caradapter/carapi/client/CarPowerClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarPowerClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/ICarPowerManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;,
        Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;
    }
.end annotation


# static fields
.field private static final POWER_MODE_CHANGE:I

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarPowerClient;


# instance fields
.field private carPowerCallback:Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;

.field private handlerThread:Landroid/os/HandlerThread;

.field private mCurrentPowerMode:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;

.field private powerListener:Lcom/chery/caradapter/carapi/interfaces/IPowerListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    const-class v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 196
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 24
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarPowerClient;Lcom/chery/caradapter/carapi/client/CarPowerClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerCallback:Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarPowerClient;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->mCurrentPowerMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/chery/caradapter/carapi/client/CarPowerClient;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->mCurrentPowerMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarPowerClient;)Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarPowerClient;I)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;->onStateChanged(I)V

    return-void
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarPowerClient;
    .locals 2

    .line 37
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    if-nez v0, :cond_1

    .line 38
    const-class v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarPowerClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    if-nez v1, :cond_0

    .line 40
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarPowerClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarPowerClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarPowerClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    .line 42
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 44
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarPowerClient;

    return-object v0
.end method

.method private onStateChanged(I)V
    .locals 3

    .line 200
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->powerListener:Lcom/chery/caradapter/carapi/interfaces/IPowerListener;

    if-eqz p0, :cond_0

    .line 202
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IPowerListener;->onStateChanged(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getBackLightStatus()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 77
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getBackLightStatus()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getBootReason()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getBootReason()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getCurrentPowerMode()I
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    const/16 v1, 0xc

    if-eqz v0, :cond_1

    .line 117
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getCurrentPowerMode()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    :cond_1
    :goto_0
    return v1
.end method

.method public getMCUVersion()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getMCUVersion()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMCUVersionForApp()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 108
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->getMCUVersionForApp()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 49
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarPowerClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->handlerThread:Landroid/os/HandlerThread;

    .line 50
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 51
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarPowerClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarPowerClient$CarHandler;

    .line 52
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerCallback:Lcom/chery/caradapter/carapi/client/CarPowerClient$ProxyCarPowerCallback;

    invoke-virtual {v0, p0}, Landroid/car/hardware/power/CarPowerManager;->setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V

    return-void
.end method

.method public requestMCUDoFactoryReset()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 144
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->requestMCUDoFactoryReset()V

    :cond_0
    return-void
.end method

.method public requestRestartNow()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 93
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0}, Landroid/car/hardware/power/CarPowerManager;->requestRestartNow()V

    :cond_0
    return-void
.end method

.method public sendEventToMCU(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->sendEventToMCU(Z)V

    :cond_0
    return-void
.end method

.method public sendPROModeExit(Z)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->sendPROModeExit(Z)V

    :cond_0
    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setBackLightEnable(Z)V
    .locals 3

    .line 68
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBackLightEnable "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    invoke-virtual {p0, p1}, Landroid/car/hardware/power/CarPowerManager;->setBackLightEnable(Z)V

    :cond_0
    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IPowerListener;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->powerListener:Lcom/chery/caradapter/carapi/interfaces/IPowerListener;

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarPowerClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method
