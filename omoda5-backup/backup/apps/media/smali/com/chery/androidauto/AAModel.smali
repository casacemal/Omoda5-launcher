.class public Lcom/chery/androidauto/AAModel;
.super Ljava/lang/Object;
.source "AAModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;,
        Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;,
        Lcom/chery/androidauto/AAModel$ProxyAAListener;,
        Lcom/chery/androidauto/AAModel$AABindServiceCallback;,
        Lcom/chery/androidauto/AAModel$AAListenerCallback;,
        Lcom/chery/androidauto/AAModel$AAHandler;
    }
.end annotation


# static fields
.field private static final BT_MAC:Ljava/lang/String; = "btMac"

.field private static final DEVICE_NAME:Ljava/lang/String; = "deviceName"

.field private static final IS_SUPPORT_CARPLAY:Ljava/lang/String; = "isSupportCarplay"

.field private static final MSG_AA_SERVICE_CONNECTED:I = 0x10

.field private static final MSG_AA_SERVICE_DISCONNECTED:I = 0x11

.field private static final MSG_AUTHENTICATION_RESULT:I = 0xa

.field private static final MSG_MEDIASESSION_TOKEN:I = 0x7

.field private static final MSG_NOTFICATION:I = 0x6

.field private static final MSG_NOTIFY_DEV_TRANSPORT:I = 0x1

.field private static final MSG_PREPARE_REMOTE_DEVICE:I = 0x9

.field private static final MSG_SESSION_STS_UPDATE:I = 0x5

.field private static final MSG_SET_VIDEO_FOCUS:I = 0x4

.field private static final MSG_UPDATE_ACTIVITY_STATE:I = 0xb

.field private static final MSG_UPDATE_CALL_INFO:I = 0x3

.field private static final MSG_UPDATE_NOW_PLAYING_INFO:I = 0x2

.field private static final MSG_VRSESSION_STATE:I = 0x8

.field private static final SERIAL_NUM:Ljava/lang/String; = "serialNum"

.field private static final SESSION_STS:Ljava/lang/String; = "sessionSts"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private handlerThread:Landroid/os/HandlerThread;

.field private isAABindSuccess:Z

.field private mAABindListener:Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;

.field private mAABindServiceCallback:Lcom/chery/androidauto/AAModel$AABindServiceCallback;

.field private mAACallback:Lcom/chery/androidauto/AAModel$AAListenerCallback;

.field private mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

.field private mAAListener:Lcom/chery/androidauto/AAModel$ProxyAAListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/chery/androidauto/AAModel$AAHandler;

.field private mMacAddress:Ljava/lang/String;

.field private mPhoneListener:Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    const-class v0, Lcom/chery/androidauto/AAModel;

    const-string v1, "COMMON"

    invoke-static {v1, v0}, Lcom/avn/tools/log/CarLog;->concatTag(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/chery/androidauto/AAModel$AABindServiceCallback;)V
    .locals 3

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/chery/androidauto/AAModel$ProxyAAListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chery/androidauto/AAModel$ProxyAAListener;-><init>(Lcom/chery/androidauto/AAModel;Lcom/chery/androidauto/AAModel$1;)V

    iput-object v0, p0, Lcom/chery/androidauto/AAModel;->mAAListener:Lcom/chery/androidauto/AAModel$ProxyAAListener;

    .line 52
    new-instance v0, Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;

    invoke-direct {v0, p0, v1}, Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;-><init>(Lcom/chery/androidauto/AAModel;Lcom/chery/androidauto/AAModel$1;)V

    iput-object v0, p0, Lcom/chery/androidauto/AAModel;->mPhoneListener:Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;

    .line 53
    new-instance v0, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;

    invoke-direct {v0, p0, v1}, Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;-><init>(Lcom/chery/androidauto/AAModel;Lcom/chery/androidauto/AAModel$1;)V

    iput-object v0, p0, Lcom/chery/androidauto/AAModel;->mAABindListener:Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;

    const/4 v0, 0x0

    .line 60
    iput-boolean v0, p0, Lcom/chery/androidauto/AAModel;->isAABindSuccess:Z

    .line 174
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AAModel: getCallingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iput-object p1, p0, Lcom/chery/androidauto/AAModel;->mContext:Landroid/content/Context;

    .line 176
    iput-object p2, p0, Lcom/chery/androidauto/AAModel;->mAABindServiceCallback:Lcom/chery/androidauto/AAModel$AABindServiceCallback;

    .line 177
    new-instance p1, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    const-string p2, "projection.androidauto.client.launch.ui"

    invoke-direct {p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    .line 179
    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/androidauto/AAModel;->handlerThread:Landroid/os/HandlerThread;

    return-void
.end method

.method static synthetic access$300(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AABindServiceCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAABindServiceCallback:Lcom/chery/androidauto/AAModel$AABindServiceCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAListenerCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAACallback:Lcom/chery/androidauto/AAModel$AAListenerCallback;

    return-object p0
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/chery/androidauto/AAModel;)Ljava/lang/String;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mMacAddress:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$602(Lcom/chery/androidauto/AAModel;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/chery/androidauto/AAModel;->mMacAddress:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/chery/androidauto/AAModel;)Lcom/chery/androidauto/AAModel$AAHandler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mHandler:Lcom/chery/androidauto/AAModel$AAHandler;

    return-object p0
.end method

.method static synthetic access$802(Lcom/chery/androidauto/AAModel;Z)Z
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/chery/androidauto/AAModel;->isAABindSuccess:Z

    return p1
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .line 200
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

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

    .line 201
    iget-object v0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->uninitialise(Landroid/content/Context;)V

    return-void
.end method

.method public exitActivity()V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->exitActivity()V

    return-void
.end method

.method public getConnectedMacAddress()Ljava/lang/String;
    .locals 3

    .line 313
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectedMacAddress SessionState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/chery/androidauto/AAModel;->getSessionState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMacAddress: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/chery/androidauto/AAModel;->mMacAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    invoke-virtual {p0}, Lcom/chery/androidauto/AAModel;->getSessionState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 316
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mMacAddress:Ljava/lang/String;

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public getSessionState()I
    .locals 0

    .line 285
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->getSessionState()I

    move-result p0

    return p0
.end method

.method public getVoiceSessionState()I
    .locals 0

    .line 294
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->getVoiceSessionState()I

    move-result p0

    return p0
.end method

.method public init()V
    .locals 3

    .line 186
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init: getCallingPid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--initialise"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/chery/androidauto/AAModel;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 188
    new-instance v0, Lcom/chery/androidauto/AAModel$AAHandler;

    iget-object v1, p0, Lcom/chery/androidauto/AAModel;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/chery/androidauto/AAModel$AAHandler;-><init>(Lcom/chery/androidauto/AAModel;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/androidauto/AAModel;->mHandler:Lcom/chery/androidauto/AAModel$AAHandler;

    .line 189
    iget-object v0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object v1, p0, Lcom/chery/androidauto/AAModel;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAABindListener:Lcom/chery/androidauto/AAModel$ProxyAABindServiceStatusListener;

    invoke-virtual {v0, v1, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->initialise(Landroid/content/Context;Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;)V

    return-void
.end method

.method public lunchApp(Ljava/lang/String;)V
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->lunchApp(Ljava/lang/String;)V

    return-void
.end method

.method public registPhoneListener()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mPhoneListener:Lcom/chery/androidauto/AAModel$ProxyAAPhoneListener;

    invoke-virtual {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->registerPhoneCallListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAPhoneCallListener;)V

    return-void
.end method

.method public registerListener(Lcom/chery/androidauto/AAModel$AAListenerCallback;)V
    .locals 3

    .line 211
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

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

    .line 212
    iget-object v0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object v1, p0, Lcom/chery/androidauto/AAModel;->mAAListener:Lcom/chery/androidauto/AAModel$ProxyAAListener;

    invoke-virtual {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;)V

    .line 213
    iput-object p1, p0, Lcom/chery/androidauto/AAModel;->mAACallback:Lcom/chery/androidauto/AAModel$AAListenerCallback;

    return-void
.end method

.method public requestUI(Ljava/lang/String;)V
    .locals 0

    .line 238
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->requestUI(Ljava/lang/String;)V

    return-void
.end method

.method public responsePrepareHfpDevice(I)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->responsePrepareHfpDevice(I)V

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 0

    .line 275
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public startSession(Ljava/lang/String;Z)V
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->startSession(Ljava/lang/String;Z)V

    return-void
.end method

.method public stopSession()V
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->stopSession()V

    return-void
.end method

.method public switchAAMediaSource(I)V
    .locals 2

    .line 322
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

    const-string v1, "switchAAMediaSource"

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object p0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->switchMediaSource(I)V

    return-void
.end method

.method public unRegisterListener()V
    .locals 3

    .line 220
    sget-object v0, Lcom/chery/androidauto/AAModel;->TAG:Ljava/lang/String;

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

    .line 221
    iget-object v0, p0, Lcom/chery/androidauto/AAModel;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object v1, p0, Lcom/chery/androidauto/AAModel;->mAAListener:Lcom/chery/androidauto/AAModel$ProxyAAListener;

    invoke-virtual {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;)V

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/chery/androidauto/AAModel;->mAACallback:Lcom/chery/androidauto/AAModel$AAListenerCallback;

    return-void
.end method
