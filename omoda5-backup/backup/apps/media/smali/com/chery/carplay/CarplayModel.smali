.class public Lcom/chery/carplay/CarplayModel;
.super Ljava/lang/Object;
.source "CarplayModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;,
        Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;,
        Lcom/chery/carplay/CarplayModel$CPHandler;
    }
.end annotation


# static fields
.field private static final BT_MAC:Ljava/lang/String; = "btMac"

.field private static final CONNECTTYPE:Ljava/lang/String; = "connecttype"

.field private static final DEVICE_ATTACHED:Ljava/lang/String; = "deviceAttached"

.field private static final DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final EXTRA_CALLED_NUMBER:Ljava/lang/String; = "calledNumber"

.field private static final EXTRA_CALLER_NAME:Ljava/lang/String; = "callerName"

.field private static final EXTRA_START_TIME:Ljava/lang/String; = "startTime"

.field private static final EXTRA_TEL_STS:Ljava/lang/String; = "telSts"

.field private static final IS_SUPPORT_CARPLAY:Ljava/lang/String; = "isSupportCarplay"

.field private static final MSG_BINDER_STS:I = 0x8

.field private static final MSG_CALL_INFO:I = 0x13

.field private static final MSG_CP_AUTH:I = 0x11

.field private static final MSG_DISABLE_BT:I = 0x10

.field private static final MSG_MEDIASESSION_TOKEN:I = 0x7

.field private static final MSG_NOTFICATION:I = 0x6

.field private static final MSG_NOTIFY_DEV_TRANSPORT:I = 0x1

.field private static final MSG_NOTIFY_LAUNCHER_POP:I = 0x14

.field private static final MSG_SESSION_STS_UPDATE:I = 0x5

.field private static final MSG_SET_VIDEO_FOCUS:I = 0x4

.field private static final MSG_SIRI:I = 0x9

.field private static final MSG_UPDATE_CALL_INFO:I = 0x3

.field private static final MSG_UPDATE_NOW_PLAYING_INFO:I = 0x2

.field private static final MSG_USB_ATTACHED:I = 0x12

.field private static final SERIAL_NUM:Ljava/lang/String; = "serialNum"

.field private static final SESSION_STS:Ljava/lang/String; = "sessionSts"

.field private static final TAG:Ljava/lang/String;

.field private static final UNIQUEINFO:Ljava/lang/String; = "uniqueInfo"


# instance fields
.field private borrowStarted:Z

.field private handlerThread:Landroid/os/HandlerThread;

.field private mBtMacAddress:Ljava/lang/String;

.field private mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

.field private mCarPlayListener:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

.field private mContext:Landroid/content/Context;

.field private mCpCallback:Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

.field private mHandler:Lcom/chery/carplay/CarplayModel$CPHandler;

.field private videoStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    const-class v0, Lcom/chery/carplay/CarplayModel;

    const-string v1, "COMMON"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;-><init>(Lcom/chery/carplay/CarplayModel;Lcom/chery/carplay/CarplayModel$1;)V

    iput-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayListener:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    const-string v0, ""

    .line 63
    iput-object v0, p0, Lcom/chery/carplay/CarplayModel;->mBtMacAddress:Ljava/lang/String;

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/chery/carplay/CarplayModel;->videoStarted:Z

    .line 66
    iput-boolean v0, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    .line 176
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarplayModel: getCallingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p1, p0, Lcom/chery/carplay/CarplayModel;->mContext:Landroid/content/Context;

    .line 178
    new-instance p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-direct {p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;-><init>()V

    iput-object p1, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    .line 179
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->initialise(Landroid/content/Context;)V

    .line 181
    new-instance p1, Landroid/os/HandlerThread;

    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/carplay/CarplayModel;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$100(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCpCallback:Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/chery/carplay/CarplayModel;)Ljava/lang/String;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mBtMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/chery/carplay/CarplayModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/chery/carplay/CarplayModel;->mBtMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/chery/carplay/CarplayModel;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/chery/carplay/CarplayModel;->videoStarted:Z

    return p0
.end method

.method static synthetic access$402(Lcom/chery/carplay/CarplayModel;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/chery/carplay/CarplayModel;->videoStarted:Z

    return p1
.end method

.method static synthetic access$502(Lcom/chery/carplay/CarplayModel;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/chery/carplay/CarplayModel;)Lcom/chery/carplay/CarplayModel$CPHandler;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mHandler:Lcom/chery/carplay/CarplayModel$CPHandler;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 194
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy: getCallingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->uninitialise(Landroid/content/Context;)V

    return-void
.end method

.method public exitActivity()V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->exitActivity()V

    return-void
.end method

.method public getCarPlayVideoState()Z
    .locals 0

    .line 299
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->getCarPlayVideoState()Z

    move-result p0

    return p0
.end method

.method public getConnectedMacAddress()Ljava/lang/String;
    .locals 1

    .line 282
    invoke-virtual {p0}, Lcom/chery/carplay/CarplayModel;->isCPStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mBtMacAddress:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public init()V
    .locals 2

    .line 185
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v1, "init: "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 187
    new-instance v0, Lcom/chery/carplay/CarplayModel$CPHandler;

    iget-object v1, p0, Lcom/chery/carplay/CarplayModel;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/carplay/CarplayModel$CPHandler;-><init>(Lcom/chery/carplay/CarplayModel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/carplay/CarplayModel;->mHandler:Lcom/chery/carplay/CarplayModel$CPHandler;

    return-void
.end method

.method public isBorrowStarted()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    return p0
.end method

.method public isCPStarted()Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->isCPStarted()Z

    move-result p0

    return p0
.end method

.method public isVideoStarted()Z
    .locals 0

    .line 289
    iget-boolean p0, p0, Lcom/chery/carplay/CarplayModel;->videoStarted:Z

    return p0
.end method

.method public lunchApp(Ljava/lang/String;)V
    .locals 0

    .line 260
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->lunchApp(Ljava/lang/String;)V

    return-void
.end method

.method public registerListener(Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;)V
    .locals 3

    .line 205
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener: getCallingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    iget-object v1, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayListener:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    invoke-virtual {v0, v1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->registerListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V

    .line 207
    iput-object p1, p0, Lcom/chery/carplay/CarplayModel;->mCpCallback:Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    return-void
.end method

.method public requestCPMedia()V
    .locals 2

    .line 353
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v1, "requestCPMedia"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->requestCPMedia()V

    return-void
.end method

.method public requestUI(Ljava/lang/String;)V
    .locals 0

    .line 232
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->requestUI(Ljava/lang/String;)V

    return-void
.end method

.method public requestVideoResource(Z)V
    .locals 3

    .line 348
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestVideoResource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->requestVideoResource(Z)V

    return-void
.end method

.method public roleSwitchComplete(Ljava/lang/String;)V
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->roleSwitchComplete(Ljava/lang/String;)V

    return-void
.end method

.method public sendBorrowEnd()V
    .locals 3

    .line 322
    iget-boolean v0, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    if-eqz v0, :cond_0

    .line 323
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v1, "sendBorrowEnd."

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v1, v2, v1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->requestResource(ZZZI)V

    .line 325
    iput-boolean v2, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    goto :goto_0

    .line 328
    :cond_0
    sget-object p0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v0, "sendBorrowEnd:Borrow unSend. Do nothing. "

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendBorrowStart()V
    .locals 2

    .line 311
    invoke-virtual {p0}, Lcom/chery/carplay/CarplayModel;->getCarPlayVideoState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v1, "sendBorrowStart."

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1, v1, v1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->requestResource(ZZZI)V

    .line 314
    iput-boolean v1, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    goto :goto_0

    .line 317
    :cond_0
    sget-object p0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v0, "sendBorrowStart:Carplay is not on top. Do nothing. "

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public sendNotShowBorrowEnd()V
    .locals 2

    .line 337
    iget-boolean v0, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v1, "requestVideoResource: true"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->requestVideoResource(Z)V

    const/4 v0, 0x0

    .line 340
    iput-boolean v0, p0, Lcom/chery/carplay/CarplayModel;->borrowStarted:Z

    goto :goto_0

    .line 343
    :cond_0
    sget-object p0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    const-string v0, "sendBorrowEnd:[Not Show CP]Borrow unSend. Do nothing. "

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setCarPlayConnect(Z)V
    .locals 0

    .line 303
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->setCarPlayConnect()V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public startSession(Ljava/lang/String;Z)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->startSession(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopSession()V
    .locals 0

    .line 249
    iget-object p0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->stopSession()V

    return-void
.end method

.method public unRegisterListener()V
    .locals 3

    .line 214
    sget-object v0, Lcom/chery/carplay/CarplayModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unRegisterListener: getCallingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    iget-object v1, p0, Lcom/chery/carplay/CarplayModel;->mCarPlayListener:Lcom/chery/carplay/CarplayModel$ProxyCarPlayListener;

    invoke-virtual {v0, v1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->unregisterListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/chery/carplay/CarplayModel;->mCpCallback:Lcom/chery/carplay/CarplayModel$CarplayListenerCallback;

    return-void
.end method
