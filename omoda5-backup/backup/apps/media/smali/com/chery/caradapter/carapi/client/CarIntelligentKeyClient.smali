.class public Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarIntelligentKeyClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IIntelligentKeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

.field private mPepsIntelligentOpen:I

.field private mPespsPolling:I

.field private mWelcomeLightPolling:I

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 63
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 28
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;

    .line 32
    iput-object v1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mWelcomeLightPolling:I

    .line 35
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPepsIntelligentOpen:I

    .line 36
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPespsPolling:I

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->onWelcomeLightPolling(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->onPepsIntelligentOpen(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->onPespsPolling(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mWelcomeLightPolling:I

    return p0
.end method

.method static synthetic access$402(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mWelcomeLightPolling:I

    return p1
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

    return-object p0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPepsIntelligentOpen:I

    return p0
.end method

.method static synthetic access$702(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPepsIntelligentOpen:I

    return p1
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPespsPolling:I

    return p0
.end method

.method static synthetic access$802(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPespsPolling:I

    return p1
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;
    .locals 2

    .line 72
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    return-object v0
.end method

.method private onPepsIntelligentOpen(I)V
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;

    if-eqz p0, :cond_0

    .line 180
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;->onPepsIntelligentOpen(I)V

    :cond_0
    return-void
.end method

.method private onPespsPolling(I)V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;

    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;->onPespsPolling(I)V

    :cond_0
    return-void
.end method

.method private onWelcomeLightPolling(I)V
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;

    if-eqz p0, :cond_0

    .line 174
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;->onWelcomeLightPolling(I)V

    :cond_0
    return-void
.end method

.method private setIntProperty(II)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 168
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getPepsIntelligentOpen()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPepsIntelligentOpen:I

    return p0
.end method

.method public getPespsPolling()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPespsPolling:I

    return p0
.end method

.method public getWelcomeLightPolling()I
    .locals 0

    .line 138
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mWelcomeLightPolling:I

    return p0
.end method

.method public init()V
    .locals 6

    .line 84
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->handlerThread:Landroid/os/HandlerThread;

    .line 85
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 86
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

    .line 89
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x21403021

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mWelcomeLightPolling:I

    .line 92
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v3, 0x21403022

    .line 93
    invoke-virtual {v0, v3, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPepsIntelligentOpen:I

    .line 95
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x21403023

    invoke-virtual {v0, v4, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPespsPolling:I

    .line 98
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarIntelligentKeyClient init: mWelcomeLightPolling:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mWelcomeLightPolling:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mPepsIntelligentOpen:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPepsIntelligentOpen:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mPespsPolling:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->mPespsPolling:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 104
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v3, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 107
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, p0, v4, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIntelligentKeyListener;

    return-void
.end method

.method public setPepsIntelligentOpen(I)V
    .locals 1

    const v0, 0x21403022

    .line 153
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->setIntProperty(II)V

    return-void
.end method

.method public setPespsPolling(I)V
    .locals 1

    const v0, 0x21403023

    .line 163
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->setIntProperty(II)V

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setWelcomeLightPolling(I)V
    .locals 1

    const v0, 0x21403021

    .line 143
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->setIntProperty(II)V

    return-void
.end method
