.class public Lcom/chery/caradapter/carapi/client/CarLampClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarLampClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/ILampManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarLampClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/ILampListener;

.field private mDayTimeLightMode:I

.field private mHMA:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

.field private mLampDelayLight:I

.field private mLampHeight:I

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/chery/caradapter/carapi/client/CarLampClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarLampClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 27
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarLampClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarLampClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 67
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 28
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarLampClient;Lcom/chery/caradapter/carapi/client/CarLampClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;

    const/4 v0, 0x0

    .line 33
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mDayTimeLightMode:I

    .line 34
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampHeight:I

    .line 35
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampDelayLight:I

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHMA:I

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarLampClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->onDayTimeLightMode(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/caradapter/carapi/client/CarLampClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHMA:I

    return p0
.end method

.method static synthetic access$1002(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHMA:I

    return p1
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarLampClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->onHeadLampHeight(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarLampClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->onHeadLampDelayLight(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarLampClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->onHMA(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarLampClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mDayTimeLightMode:I

    return p0
.end method

.method static synthetic access$502(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mDayTimeLightMode:I

    return p1
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarLampClient;)Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarLampClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarLampClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampHeight:I

    return p0
.end method

.method static synthetic access$802(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampHeight:I

    return p1
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarLampClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampDelayLight:I

    return p0
.end method

.method static synthetic access$902(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampDelayLight:I

    return p1
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarLampClient;
    .locals 2

    .line 76
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarLampClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarLampClient;

    if-nez v0, :cond_1

    .line 77
    const-class v0, Lcom/chery/caradapter/carapi/client/CarLampClient;

    monitor-enter v0

    .line 78
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarLampClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarLampClient;

    if-nez v1, :cond_0

    .line 79
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarLampClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarLampClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarLampClient;

    .line 81
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarLampClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarLampClient;

    return-object v0
.end method

.method private onDayTimeLightMode(I)V
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->listener:Lcom/chery/caradapter/carapi/interfaces/ILampListener;

    if-eqz p0, :cond_0

    .line 193
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/ILampListener;->onDRLModeSts(I)V

    :cond_0
    return-void
.end method

.method private onHMA(I)V
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->listener:Lcom/chery/caradapter/carapi/interfaces/ILampListener;

    if-eqz p0, :cond_0

    .line 211
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/ILampListener;->onHMASts(I)V

    :cond_0
    return-void
.end method

.method private onHeadLampDelayLight(I)V
    .locals 0

    .line 204
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->listener:Lcom/chery/caradapter/carapi/interfaces/ILampListener;

    if-eqz p0, :cond_0

    .line 205
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/ILampListener;->onHeadLampDelayLightSts(I)V

    :cond_0
    return-void
.end method

.method private onHeadLampHeight(I)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->listener:Lcom/chery/caradapter/carapi/interfaces/ILampListener;

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/ILampListener;->onHeadLampHeightFeedbackSts(I)V

    :cond_0
    return-void
.end method

.method private setIntProperty(II)V
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 187
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDRLMode()I
    .locals 0

    .line 147
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mDayTimeLightMode:I

    return p0
.end method

.method public getHMA()I
    .locals 0

    .line 177
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHMA:I

    return p0
.end method

.method public getHeadLampDelayLight()I
    .locals 0

    .line 167
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampDelayLight:I

    return p0
.end method

.method public getHeadLampHeight()I
    .locals 0

    .line 157
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampHeight:I

    return p0
.end method

.method public init()V
    .locals 7

    .line 88
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarLampClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->handlerThread:Landroid/os/HandlerThread;

    .line 89
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 90
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarLampClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    .line 92
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x21403024

    const/4 v2, 0x0

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mDayTimeLightMode:I

    .line 94
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v3, 0x21403026

    invoke-virtual {v0, v3, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampHeight:I

    .line 96
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x21403027

    .line 97
    invoke-virtual {v0, v4, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampDelayLight:I

    .line 99
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x21403025

    invoke-virtual {v0, v5, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHMA:I

    .line 101
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarLampClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " CarLampClient init: mDayTimeLightMode:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mDayTimeLightMode:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mLampHeight:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampHeight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mLampDelayLight:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mLampDelayLight:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",mHMA:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->mHMA:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v6}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 109
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v3, v6}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 112
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v4, v6}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 115
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, p0, v5, v6}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setDRLMode(I)V
    .locals 1

    const v0, 0x21403024

    .line 152
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->setIntProperty(II)V

    return-void
.end method

.method public setHMA(I)V
    .locals 1

    const v0, 0x21403025

    .line 182
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->setIntProperty(II)V

    return-void
.end method

.method public setHeadLampDelayLight(I)V
    .locals 1

    const v0, 0x21403027

    .line 172
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->setIntProperty(II)V

    return-void
.end method

.method public setHeadLampHeight(I)V
    .locals 1

    const v0, 0x21403026

    .line 162
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient;->setIntProperty(II)V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/ILampListener;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->listener:Lcom/chery/caradapter/carapi/interfaces/ILampListener;

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method
