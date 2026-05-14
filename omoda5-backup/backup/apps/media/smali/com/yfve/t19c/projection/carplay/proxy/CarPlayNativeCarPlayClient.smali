.class public Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;
.super Ljava/lang/Object;
.source "CarPlayNativeCarPlayClient.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# static fields
.field private static final BIND_FAIL_RETRY_CNT:I = 0xa

.field private static final BIND_FAIL_RETRY_INTERVAL:I = 0x3e8

.field private static final CARPLAY_COMMAND_DISABLE_BLUETOOTH:I = 0x2

.field public static final DESCRIPTOR:Ljava/lang/String; = "CarPlayCommService"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private isCPConnected:Z

.field private mCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

.field private mCarPlaySessionListenerStub:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

.field private mDeviceName:Ljava/lang/String;

.field private mHasFirstModeChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 27
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mHasFirstModeChange:Z

    const/4 v1, 0x0

    .line 28
    iput-object v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    .line 29
    iput-boolean v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->isCPConnected:Z

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    .line 251
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;

    invoke-direct {v0, p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;-><init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlaySessionListenerStub:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    .line 35
    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->connectService()Z

    return-void
.end method

.method static synthetic access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/util/List;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mHasFirstModeChange:Z

    return p0
.end method

.method static synthetic access$102(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mHasFirstModeChange:Z

    return p1
.end method

.method static synthetic access$202(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->isCPConnected:Z

    return p1
.end method

.method static synthetic access$300(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method private connectService()Z
    .locals 3

    .line 213
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "connectService"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 215
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v0, "already binded"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 218
    :cond_0
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v2, "try to get binder in sub thread"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->getBinderClient()V

    return v1
.end method

.method private getBinderClient()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    :goto_0
    const/16 v3, 0xa

    if-ge v2, v3, :cond_1

    .line 167
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v3, "try to get binder for CarPlayCommService"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "CarPlayCommService"

    .line 168
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-wide/16 v3, 0x3e8

    .line 172
    :try_start_0
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 176
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_2
    if-nez v1, :cond_2

    .line 182
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v0, "Binder still null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 186
    :cond_2
    sget-object v2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v3, "binded"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :try_start_1
    invoke-interface {v1, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 193
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 194
    sget-object v2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :goto_3
    invoke-static {v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm$Stub;->asInterface(Landroid/os/IBinder;)Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    move-result-object v0

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-nez v0, :cond_3

    .line 200
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v0, "Service is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 205
    :cond_3
    :try_start_2
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlaySessionListenerStub:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    invoke-interface {v0, p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->registerCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 207
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .line 230
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "binderDied"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-boolean v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->isCPConnected:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 233
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 236
    :try_start_0
    sget-object v4, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v5, "binderDied!!! send onSessionStsUpdate Finalize"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    .line 237
    invoke-virtual {v3, v4, v2, v2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 241
    sget-object v4, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 244
    :cond_0
    iput-boolean v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->isCPConnected:Z

    .line 246
    :cond_1
    iput-boolean v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mHasFirstModeChange:Z

    .line 247
    iput-object v2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    .line 248
    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->connectService()Z

    return-void
.end method

.method public lunchCarPlayApp(Ljava/lang/String;)V
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz p0, :cond_0

    .line 153
    :try_start_0
    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->lunchCarPlayApp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 157
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public registerListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 41
    :cond_0
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener::listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->connectService()Z

    move-result p0

    return p0
.end method

.method public requestUI(Ljava/lang/String;)V
    .locals 4

    .line 95
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "requestUI called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz v0, :cond_1

    const/16 v0, 0x20

    new-array v0, v0, [B

    if-eqz p1, :cond_0

    .line 99
    sget-object v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "input string is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "UTF-8"

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 106
    :cond_0
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "input string is null"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    :try_start_1
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "sendUIRequest11111"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    invoke-interface {p0, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->sendUIRequest([B)V

    .line 113
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string p1, "sendUIRequest22222"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz v0, :cond_0

    .line 82
    :try_start_0
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    invoke-interface {p0, p1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->setSurface(Landroid/view/Surface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 90
    :cond_0
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string p1, "binder for native carplay is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startCarPlaySession(Ljava/lang/String;)V
    .locals 1

    .line 124
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 127
    :try_start_0
    invoke-interface {p0, p1, v0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->startCarPlaySession(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 131
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public stopCarPlaySession()V
    .locals 0

    .line 137
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz p0, :cond_0

    .line 140
    :try_start_0
    invoke-interface {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->stopCarPlaySession()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public touchScreenUpdate(BII)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz p0, :cond_0

    .line 68
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->touchScreenUpdate(BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;

    if-eqz v0, :cond_0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCarPlaySessionListenerStub:Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;

    invoke-interface {v0, v1}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlayComm;->unregisterCarPlaySessionListener(Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 54
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->mCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
