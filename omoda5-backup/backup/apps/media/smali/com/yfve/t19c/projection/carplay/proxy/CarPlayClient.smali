.class public final Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;
.super Ljava/lang/Object;
.source "CarPlayClient.java"


# static fields
.field public static final Priority_High:I = 0x2

.field public static final Priority_Low:I = 0x0

.field public static final Priority_Mid:I = 0x1

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

.field private mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-class v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    .line 13
    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    .line 20
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    .line 21
    new-instance v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    invoke-direct {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;-><init>()V

    iput-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    return-void
.end method


# virtual methods
.method public exitActivity()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->exitActivity()V

    :cond_0
    return-void
.end method

.method public getCarPlayVideoState()Z
    .locals 2

    .line 104
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "getCarPlayVideoState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->getCarPlayVideoState()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getMediaToken()Landroid/media/session/MediaSession$Token;
    .locals 0

    .line 96
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->getMediaToken()Landroid/media/session/MediaSession$Token;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->getSerialNumber()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public initialise(Landroid/content/Context;)V
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->initialise(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public isCPStarted()Z
    .locals 0

    .line 172
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->isCPStarted()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public lunchApp(Ljava/lang/String;)V
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz p0, :cond_0

    .line 127
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->lunchCarPlayApp(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->registerListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)Z

    .line 36
    :cond_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->registerListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V

    :cond_1
    return-void
.end method

.method public requestCPMedia()V
    .locals 0

    .line 157
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->requestCPMedia()V

    :cond_0
    return-void
.end method

.method public requestResource(ZZZI)V
    .locals 0

    .line 164
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 165
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->requestResource(ZZZI)V

    :cond_0
    return-void
.end method

.method public requestUI(Ljava/lang/String;)V
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz p0, :cond_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->requestUI(Ljava/lang/String;)V

    goto :goto_0

    .line 83
    :cond_0
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->TAG:Ljava/lang/String;

    const-string p1, "CarPlayNativeCarPlayClient is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public requestVideoResource(Z)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 148
    invoke-virtual {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->requestNativeUI()V

    .line 150
    :cond_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz p0, :cond_1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 152
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->requestUI(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public roleSwitchComplete(Ljava/lang/String;)V
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->roleSwitchComplete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setCarPlayConnect()V
    .locals 2

    .line 112
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "setCarPlayConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->setCarPlayConnect()V

    :cond_0
    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "setSurface"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 136
    :cond_0
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->TAG:Ljava/lang/String;

    const-string p1, "CarPlayNativeCarPlayClient is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public startSession(Ljava/lang/String;Z)V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    .line 90
    invoke-virtual {p0, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->startCarPlaySession(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public stopSession()V
    .locals 0

    .line 120
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz p0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->stopCarPlaySession()V

    :cond_0
    return-void
.end method

.method public touchScreenUpdate(BII)V
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz p0, :cond_0

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->touchScreenUpdate(BII)V

    :cond_0
    return-void
.end method

.method public uninitialise(Landroid/content/Context;)V
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->uninitialise(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->unregisterListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V

    .line 45
    :cond_0
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayClient;->mCarPlayJavaClient:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;

    if-eqz p0, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayJAVAClient;->unregisterListener(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;)V

    :cond_1
    return-void
.end method
