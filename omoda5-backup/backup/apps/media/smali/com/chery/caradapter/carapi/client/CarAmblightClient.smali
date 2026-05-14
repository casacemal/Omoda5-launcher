.class public Lcom/chery/caradapter/carapi/client/CarAmblightClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarAmblightClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IAmblightManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarAmblightClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

.field private mAmblight:I

.field private mBrightness:I

.field private mDimmingColor:I

.field private mDriverMode:I

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

.field private mMusicMode:I

.field private mOutSideMusicMode:I

.field private proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    const-class v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    .line 29
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarAmblightClient;Lcom/chery/caradapter/carapi/client/CarAmblightClient$1;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mAmblight:I

    .line 35
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDriverMode:I

    const/4 v1, 0x1

    .line 36
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mBrightness:I

    .line 37
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDimmingColor:I

    const/4 v1, 0x2

    .line 38
    iput v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    .line 39
    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mOutSideMusicMode:I

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->onAmblight(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDriverMode:I

    return p0
.end method

.method static synthetic access$1002(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDriverMode:I

    return p1
.end method

.method static synthetic access$1100(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mBrightness:I

    return p0
.end method

.method static synthetic access$1102(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mBrightness:I

    return p1
.end method

.method static synthetic access$1200(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDimmingColor:I

    return p0
.end method

.method static synthetic access$1202(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDimmingColor:I

    return p1
.end method

.method static synthetic access$1300(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    return p0
.end method

.method static synthetic access$1302(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->onAssociatedDriverMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->onBrightness(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->onTheaterDimmingColor(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->onMusicMode(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setAudioMusicLight()V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mAmblight:I

    return p0
.end method

.method static synthetic access$802(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mAmblight:I

    return p1
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    return-object p0
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarAmblightClient;
    .locals 2

    .line 83
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    if-nez v0, :cond_1

    .line 84
    const-class v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    monitor-enter v0

    .line 85
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 88
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 90
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    return-object v0
.end method

.method private onAmblight(I)V
    .locals 0

    .line 233
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

    if-eqz p0, :cond_0

    .line 234
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;->onAmblightOn(I)V

    :cond_0
    return-void
.end method

.method private onAssociatedDriverMode(I)V
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

    if-eqz p0, :cond_0

    .line 240
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;->onAssociatedDriverMode(I)V

    :cond_0
    return-void
.end method

.method private onBrightness(I)V
    .locals 0

    .line 245
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

    if-eqz p0, :cond_0

    .line 246
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;->onBrightness(I)V

    :cond_0
    return-void
.end method

.method private onMusicMode(I)V
    .locals 0

    .line 257
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

    if-eqz p0, :cond_0

    .line 258
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;->onMusicMode(I)V

    :cond_0
    return-void
.end method

.method private onTheaterDimmingColor(I)V
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

    if-eqz p0, :cond_0

    .line 252
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;->onTheaterDimmingColor(I)V

    :cond_0
    return-void
.end method

.method private setAudioMusicLight()V
    .locals 5

    .line 218
    iget v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mOutSideMusicMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 221
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAudioMusicLight: sendValue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mOutSideMusicMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mOutSideMusicMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",mMusicMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    new-instance v0, Landroid/media/AudioSetting;

    const-string v3, "music_light"

    invoke-direct {v0, v3, v2, v1, v1}, Landroid/media/AudioSetting;-><init>(Ljava/lang/String;III)V

    invoke-virtual {p0, v0}, Landroid/car/media/CarAudioManager;->setAudioSetting(Landroid/media/AudioSetting;)V

    return-void
.end method

.method private setIntProperty(II)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 228
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAmblightOn()I
    .locals 0

    .line 161
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mAmblight:I

    return p0
.end method

.method public getAssociatedDriverMode()I
    .locals 0

    .line 171
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDriverMode:I

    return p0
.end method

.method public getBrightness()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mBrightness:I

    return p0
.end method

.method public getMusicMode()I
    .locals 0

    .line 201
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    return p0
.end method

.method public getTheaterDimmingColor()I
    .locals 0

    .line 196
    iget p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDimmingColor:I

    return p0
.end method

.method public init()V
    .locals 8

    .line 95
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->handlerThread:Landroid/os/HandlerThread;

    .line 96
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 97
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarAmblightClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    .line 99
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x21403028

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mAmblight:I

    .line 101
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v3, 0x21403029

    .line 102
    invoke-virtual {v0, v3, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDriverMode:I

    .line 104
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v4, 0x2140302a

    .line 105
    invoke-virtual {v0, v4, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mBrightness:I

    .line 107
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v5, 0x2140302b

    invoke-virtual {v0, v5, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDimmingColor:I

    .line 109
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v6, 0x21403040

    invoke-virtual {v0, v6, v2}, Landroid/car/hardware/property/CarPropertyManager;->getIntProperty(II)I

    move-result v0

    iput v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mMusicMode:I

    .line 112
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "CarAmblightClient init: mAmblight:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mAmblight:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mDriverMode:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDriverMode:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mBrightness:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mBrightness:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",mDimmingColor:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mDimmingColor:I

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2, v1, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 120
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v3, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 123
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v4, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 126
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, v1, v5, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    .line 129
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->proxyPropertyManager:Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;

    invoke-virtual {v0, p0, v6, v7}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAmblightOn(I)V
    .locals 1

    const v0, 0x21403028

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setIntProperty(II)V

    return-void
.end method

.method public setAssociatedDriverMode(I)V
    .locals 1

    const v0, 0x21403029

    .line 176
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setIntProperty(II)V

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setBrightness(I)V
    .locals 1

    const v0, 0x2140302a

    .line 186
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setIntProperty(II)V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IAmblightListener;

    return-void
.end method

.method public setMusicMode(I)V
    .locals 1

    const v0, 0x21403040

    .line 206
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setIntProperty(II)V

    return-void
.end method

.method public setOutMusicShow(I)V
    .locals 3

    .line 211
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutMusicShow:   "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iput p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->mOutSideMusicMode:I

    const v0, 0x21403056

    .line 213
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setIntProperty(II)V

    .line 214
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setAudioMusicLight()V

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setTheaterDimmingColor(I)V
    .locals 1

    const v0, 0x2140302b

    .line 191
    invoke-direct {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->setIntProperty(II)V

    return-void
.end method
