.class public Lcom/chery/caradapter/carapi/client/CarAvmClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarAvmClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IAvmManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;
    }
.end annotation


# static fields
.field private static final GEAR_POSITION_DELAY_TIME:I = 0x1f4

.field private static final MSG_SEND_CHECK_GEAR_POSITION:I = 0x33

.field private static final MSG_SEND_CHECK_MANUAL_GEAR_POSITION:I = 0x32

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarAvmClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IAvmListener;

.field private mGearPosition:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

.field private mManualGearPosition:I

.field private mRadarWorkSts:I

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 34
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarAvmClient;Lcom/chery/caradapter/carapi/client/CarAvmClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    .line 40
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    .line 41
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mRadarWorkSts:I

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->onGearPosition(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    return p0
.end method

.method static synthetic access$1002(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    return p1
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mRadarWorkSts:I

    return p0
.end method

.method static synthetic access$1102(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mRadarWorkSts:I

    return p1
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->onManualGearPosition(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->onRadarWorkSts(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarAvmClient;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->checkManualGearPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarAvmClient;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->checkGearPosition()V

    return-void
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I
    .locals 0

    .line 23
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    return p0
.end method

.method static synthetic access$702(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)I
    .locals 0

    .line 23
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    return p1
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarAvmClient;ILjava/lang/Object;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->sendHandlerMsgDelayed(ILjava/lang/Object;I)V

    return-void
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    return-object p0
.end method

.method private checkGearPosition()V
    .locals 5

    .line 259
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x21402006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    .line 261
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkGearPosition(2:R): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 263
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private checkManualGearPosition()V
    .locals 5

    .line 270
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x2140203f

    const/4 v2, 0x0

    .line 271
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    .line 273
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkManualGearPosition(1:R): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 275
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarAvmClient;
    .locals 2

    .line 78
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarAvmClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    if-nez v1, :cond_0

    .line 81
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarAvmClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 83
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 85
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    return-object v0
.end method

.method private onGearPosition(I)V
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmListener;

    if-eqz p0, :cond_0

    .line 163
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmListener;->onGearPosition(I)V

    :cond_0
    return-void
.end method

.method private onManualGearPosition(I)V
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmListener;

    if-eqz p0, :cond_0

    .line 169
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmListener;->onManualGearPosition(I)V

    :cond_0
    return-void
.end method

.method private onRadarWorkSts(I)V
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmListener;

    if-eqz p0, :cond_0

    .line 175
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmListener;->onRadarWorkSts(I)V

    :cond_0
    return-void
.end method

.method private sendHandlerMsgDelayed(ILjava/lang/Object;I)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->removeMessages(I)V

    .line 283
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    invoke-virtual {p0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setIntProperty(II)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 181
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getGearPosition()I
    .locals 0

    .line 143
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    return p0
.end method

.method public getManualGearPosition()I
    .locals 0

    .line 158
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    return p0
.end method

.method public getRadarSts()I
    .locals 0

    .line 148
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mRadarWorkSts:I

    return p0
.end method

.method public init()V
    .locals 6

    .line 90
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarAvmClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->handlerThread:Landroid/os/HandlerThread;

    .line 91
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 92
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarAvmClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    .line 94
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x21402006

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    .line 96
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v3, 0x2140203f

    .line 97
    invoke-virtual {v0, v3, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    .line 99
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x21402011

    invoke-virtual {v0, v4, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mRadarWorkSts:I

    .line 102
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarAvmClient init: mGearPosition: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mGearPosition:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mManualGearPosition: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mManualGearPosition:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mRadarWorkSts: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->mRadarWorkSts:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 109
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v3, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 112
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, p0, v4, v5}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IAvmListener;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAvmListener;

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setRadarSts(I)V
    .locals 1

    const v0, 0x21403048

    .line 153
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->setIntProperty(II)V

    return-void
.end method
