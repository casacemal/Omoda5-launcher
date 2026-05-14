.class public Lcom/chery/power/WakeLockTest;
.super Ljava/lang/Object;
.source "WakeLockTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WakeLockTest"


# instance fields
.field private mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

.field private final mContext:Landroid/content/Context;

.field private final mFlag:I

.field private final mHandler:Landroid/os/Handler;

.field private mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

.field private mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/chery/power/WakeLockTest$1;

    invoke-direct {v0, p0}, Lcom/chery/power/WakeLockTest$1;-><init>(Lcom/chery/power/WakeLockTest;)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTest;->mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

    .line 24
    new-instance v0, Lcom/chery/power/WakeLockTest$2;

    invoke-direct {v0, p0}, Lcom/chery/power/WakeLockTest$2;-><init>(Lcom/chery/power/WakeLockTest;)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTest;->mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;

    .line 37
    iput-object p1, p0, Lcom/chery/power/WakeLockTest;->mContext:Landroid/content/Context;

    .line 38
    iput p2, p0, Lcom/chery/power/WakeLockTest;->mFlag:I

    .line 39
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/chery/power/WakeLockTest;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/chery/power/PowerWakeLock;

    iget-object v1, p0, Lcom/chery/power/WakeLockTest;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/chery/power/WakeLockTest;->mFlag:I

    const-string v3, "Test"

    invoke-direct {v0, v1, v2, v3}, Lcom/chery/power/PowerWakeLock;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    .line 45
    iget-object v1, p0, Lcom/chery/power/WakeLockTest;->mBindStatusListener:Lcom/chery/power/PowerWakeLock$BindStatusListener;

    invoke-virtual {v0, v1}, Lcom/chery/power/PowerWakeLock;->init(Lcom/chery/power/PowerWakeLock$BindStatusListener;)V

    .line 46
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mProxyWakeLockListener:Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;

    invoke-virtual {v0, p0}, Lcom/chery/power/PowerWakeLock;->register(Lcom/chery/power/PowerWakeLock$ProxyWakeLockListener;)V

    :cond_0
    return-void
.end method

.method public releaseLock()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->releaseWakeLock()V

    goto :goto_0

    :cond_0
    const-string p0, "WakeLockTest"

    const-string v0, "it not connect."

    .line 64
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public screenLock()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->screenLock()V

    goto :goto_0

    :cond_0
    const-string p0, "WakeLockTest"

    const-string v0, "it not connect."

    .line 73
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public screenOff()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->screenOff()V

    goto :goto_0

    :cond_0
    const-string p0, "WakeLockTest"

    const-string v0, "it not connect."

    .line 100
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public screenOn()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->screenOn()V

    goto :goto_0

    :cond_0
    const-string p0, "WakeLockTest"

    const-string v0, "it not connect."

    .line 91
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public screenUnlock()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->screenUnlock()V

    goto :goto_0

    :cond_0
    const-string p0, "WakeLockTest"

    const-string v0, "it not connect."

    .line 82
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->uninit()V

    const/4 v0, 0x0

    .line 107
    iput-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    :cond_0
    return-void
.end method

.method public wakeLock()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/power/PowerWakeLock;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    iget-object p0, p0, Lcom/chery/power/WakeLockTest;->mPowerWakeLock:Lcom/chery/power/PowerWakeLock;

    invoke-virtual {p0}, Lcom/chery/power/PowerWakeLock;->acquireWakeLock()V

    goto :goto_0

    :cond_0
    const-string p0, "WakeLockTest"

    const-string v0, "it not connect."

    .line 55
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
