.class public Lcom/chery/window/UiVisibilityTest;
.super Ljava/lang/Object;
.source "UiVisibilityTest.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UiVisibilityTest"


# instance fields
.field private mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

.field private final mContext:Landroid/content/Context;

.field private final mFlag:I

.field private final mHandler:Landroid/os/Handler;

.field private mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

.field private mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

.field private final mTag:Ljava/lang/String;

.field private final mTarget:Z

.field private mUiVisibility:Lcom/chery/window/UiVisibility;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/chery/window/UiVisibilityTest$1;

    invoke-direct {v0, p0}, Lcom/chery/window/UiVisibilityTest$1;-><init>(Lcom/chery/window/UiVisibilityTest;)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

    .line 26
    new-instance v0, Lcom/chery/window/UiVisibilityTest$2;

    invoke-direct {v0, p0}, Lcom/chery/window/UiVisibilityTest$2;-><init>(Lcom/chery/window/UiVisibilityTest;)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

    .line 33
    new-instance v0, Lcom/chery/window/UiVisibilityTest$3;

    invoke-direct {v0, p0}, Lcom/chery/window/UiVisibilityTest$3;-><init>(Lcom/chery/window/UiVisibilityTest;)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

    .line 44
    iput-object p1, p0, Lcom/chery/window/UiVisibilityTest;->mContext:Landroid/content/Context;

    .line 45
    iput p2, p0, Lcom/chery/window/UiVisibilityTest;->mFlag:I

    .line 46
    iput-object p3, p0, Lcom/chery/window/UiVisibilityTest;->mTag:Ljava/lang/String;

    .line 47
    iput-boolean p4, p0, Lcom/chery/window/UiVisibilityTest;->mTarget:Z

    .line 48
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/chery/window/UiVisibilityTest;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public init()V
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Lcom/chery/window/UiVisibility;

    iget-object v1, p0, Lcom/chery/window/UiVisibilityTest;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/chery/window/UiVisibilityTest;->mFlag:I

    iget-object v3, p0, Lcom/chery/window/UiVisibilityTest;->mTag:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/chery/window/UiVisibilityTest;->mTarget:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/chery/window/UiVisibility;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    iput-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    .line 54
    iget-object v1, p0, Lcom/chery/window/UiVisibilityTest;->mBindStatusListener:Lcom/chery/window/UiVisibility$BindStatusListener;

    invoke-virtual {v0, v1}, Lcom/chery/window/UiVisibility;->init(Lcom/chery/window/UiVisibility$BindStatusListener;)V

    .line 55
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    iget-object v1, p0, Lcom/chery/window/UiVisibilityTest;->mProxyUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;

    invoke-virtual {v0, v1}, Lcom/chery/window/UiVisibility;->registerUiVisibility(Lcom/chery/window/UiVisibility$ProxyUiVisibilityListener;)V

    .line 56
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    iget-object p0, p0, Lcom/chery/window/UiVisibilityTest;->mProxyTargetUiVisibilityListener:Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;

    invoke-virtual {v0, p0}, Lcom/chery/window/UiVisibility;->registerTargetUiVisibility(Lcom/chery/window/UiVisibility$ProxyTargetUiVisibilityListener;)V

    :cond_0
    return-void
.end method

.method public isUiVisibility(I)I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/window/UiVisibility;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    invoke-virtual {p0, p1}, Lcom/chery/window/UiVisibility;->isUiVisibility(I)I

    move-result p0

    return p0

    :cond_0
    const-string p0, "UiVisibilityTest"

    const-string p1, "it not connect."

    .line 83
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public setTargetUiVisibility(II)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/window/UiVisibility;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    invoke-virtual {p0, p1, p2}, Lcom/chery/window/UiVisibility;->setTargetUiVisibility(II)V

    goto :goto_0

    :cond_0
    const-string p0, "UiVisibilityTest"

    const-string p1, "it not connect."

    .line 74
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setUiVisibility(II)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chery/window/UiVisibility;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    invoke-virtual {p0, p1, p2}, Lcom/chery/window/UiVisibility;->setUiVisibility(II)V

    goto :goto_0

    :cond_0
    const-string p0, "UiVisibilityTest"

    const-string p1, "it not connect."

    .line 65
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public uninit()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/chery/window/UiVisibility;->uninit()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/chery/window/UiVisibilityTest;->mUiVisibility:Lcom/chery/window/UiVisibility;

    :cond_0
    return-void
.end method
