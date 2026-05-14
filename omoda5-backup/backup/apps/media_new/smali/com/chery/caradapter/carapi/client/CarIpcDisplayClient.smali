.class public Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;
.super Lcom/chery/caradapter/carapi/client/CarBaseClient;
.source "CarIpcDisplayClient.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/managers/IIpcDisplayManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;,
        Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;
    }
.end annotation


# static fields
.field private static final DELAY_1S:I = 0x3e8

.field private static final MSG_DELIVER_AM_VALUE:I = 0x2

.field private static final MSG_DELIVER_FM_VALUE:I = 0x3

.field private static final MSG_DELIVER_RADIO_MODE:I = 0x4

.field private static final MSG_DELIVER_RADIO_RESEARCH_STATUS:I = 0x6

.field private static final MSG_DELIVER_RRMON_STATUS:I = 0x7

.field private static final MSG_DELIVER_SOURCE_MODE:I = 0x5

.field private static final MSG_DISPLAY_INFO_REQUEST_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private listener:Lcom/chery/caradapter/carapi/interfaces/IIpcDisplayListener;

.field private mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

.field private proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    const-class v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    const-string v1, "CAR"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    sput-object v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Lcom/chery/caradapter/carapi/client/CarBaseClient;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIpcDisplayListener;

    .line 43
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;

    invoke-direct {v1, p0, v0}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$1;)V

    iput-object v1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;II)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sendIntPropertyData(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->onMode(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;I[B)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sendPropertyData(I[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;[BJ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->notifyIcmReceived([BJ)V

    return-void
.end method

.method static synthetic access$500(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;IF)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sendFloatPropertyData(IF)V

    return-void
.end method

.method static synthetic access$600(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;FJ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->notifyIcmFMReceived(FJ)V

    return-void
.end method

.method static synthetic access$700(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;IJ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->notifyIcmAMReceived(IJ)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;)Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    return-object p0
.end method

.method public static getInstance()Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;
    .locals 2

    .line 134
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    if-nez v0, :cond_1

    .line 135
    const-class v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    invoke-direct {v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;-><init>()V

    sput-object v1, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    .line 139
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
    :cond_1
    :goto_0
    sget-object v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->sInstance:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    return-object v0
.end method

.method private notifyIcmAMReceived(IJ)V
    .locals 3

    .line 256
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->removeMessages(I)V

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 260
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private notifyIcmFMReceived(FJ)V
    .locals 2

    .line 248
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-virtual {v0, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->removeMessages(I)V

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 252
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private notifyIcmReceived([BJ)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 244
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-virtual {p0, p1, p2, p3}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private onMode(I)V
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIpcDisplayListener;

    if-eqz p0, :cond_0

    .line 287
    invoke-interface {p0, p1}, Lcom/chery/caradapter/carapi/interfaces/IIpcDisplayListener;->onMode(I)V

    :cond_0
    return-void
.end method

.method private sendFloatPropertyData(IF)V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 281
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setFloatProperty(IIF)V

    :cond_0
    return-void
.end method

.method private sendIntPropertyData(II)V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 275
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Landroid/car/hardware/property/CarPropertyManager;->setIntProperty(III)V

    :cond_0
    return-void
.end method

.method private sendPropertyData(I[B)V
    .locals 2

    .line 268
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    if-eqz v0, :cond_0

    .line 269
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const-class v0, [B

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/car/hardware/property/CarPropertyManager;->setProperty(Ljava/lang/Class;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 6

    .line 146
    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->handlerThread:Landroid/os/HandlerThread;

    .line 147
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 148
    new-instance v0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;-><init>(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    .line 150
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    const v1, 0x2170302d

    const/4 v2, 0x0

    .line 151
    invoke-virtual {v0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 156
    sget-object v3, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init IPC_DISPLAY_INFO_REPLY : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "--->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-static {v0}, Lcom/avn/tools/string/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-static {v3, v4}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    array-length v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 159
    aget-byte v3, v0, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    aget-byte v5, v0, v3

    if-ne v5, v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    aget-byte v0, v0, v4

    .line 161
    invoke-virtual {v3, v1, v0, v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 163
    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->proxyPropertyEventCallback:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, p0, v1, v2}, Landroid/car/hardware/property/CarPropertyManager;->registerCallback(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;IF)Z

    return-void
.end method

.method public setAmRadioFrequanceValue(I)V
    .locals 2

    .line 217
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setAudioManager(Landroid/car/media/CarAudioManager;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carAudioManager:Landroid/car/media/CarAudioManager;

    return-void
.end method

.method public setDisPlayModeOn(I)V
    .locals 2

    .line 239
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setDisplayInfo(II[B)V
    .locals 3

    const/16 v0, 0x32

    new-array v0, v0, [B

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v1, 0x0

    aput-byte p1, v0, v1

    and-int/lit16 p1, p2, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x1

    aput-byte p1, v0, v2

    if-eqz p3, :cond_0

    .line 230
    array-length p1, p3

    if-lt p1, p2, :cond_0

    const/16 p1, 0x30

    if-gt p2, p1, :cond_0

    const/4 p1, 0x2

    .line 231
    invoke-static {p3, v1, v0, p1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    const-wide/16 p1, 0x0

    .line 234
    invoke-direct {p0, v0, p1, p2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->notifyIcmReceived([BJ)V

    return-void
.end method

.method public setFmRadioFrequanceValue(F)V
    .locals 1

    .line 211
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setInfoManager(Landroid/car/CarInfoManager;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carInfoManager:Landroid/car/CarInfoManager;

    return-void
.end method

.method public setListener(Lcom/chery/caradapter/carapi/interfaces/IIpcDisplayListener;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->listener:Lcom/chery/caradapter/carapi/interfaces/IIpcDisplayListener;

    return-void
.end method

.method public setPowerManager(Landroid/car/hardware/power/CarPowerManager;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPowerManager:Landroid/car/hardware/power/CarPowerManager;

    return-void
.end method

.method public setPropertyManager(Landroid/car/hardware/property/CarPropertyManager;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->carPropertyManager:Landroid/car/hardware/property/CarPropertyManager;

    return-void
.end method

.method public setRadioFrequanceMode(I)V
    .locals 2

    .line 206
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setRadioResearchSts(I)V
    .locals 2

    .line 222
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setSourceStationMode(I)V
    .locals 2

    .line 200
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->mHandler:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
