.class public Lcom/chery/btphone/livedata/AaCallStateLiveData;
.super Landroidx/lifecycle/LiveData;
.source "AaCallStateLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/lifecycle/LiveData<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CD.AaCallStateLiveData"


# instance fields
.field private mAABindListener:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;

.field private final mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

.field private mAAProxyListener:Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Landroidx/lifecycle/LiveData;-><init>()V

    .line 24
    new-instance v0, Lcom/chery/btphone/livedata/AaCallStateLiveData$1;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/AaCallStateLiveData$1;-><init>(Lcom/chery/btphone/livedata/AaCallStateLiveData;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAABindListener:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;

    .line 39
    new-instance v0, Lcom/chery/btphone/livedata/AaCallStateLiveData$2;

    invoke-direct {v0, p0}, Lcom/chery/btphone/livedata/AaCallStateLiveData$2;-><init>(Lcom/chery/btphone/livedata/AaCallStateLiveData;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAProxyListener:Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    .line 58
    iput-object p1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mContext:Landroid/content/Context;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mHandler:Landroid/os/Handler;

    .line 60
    new-instance p1, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    const-string v0, "projection.androidauto.client.launch.ui"

    invoke-direct {p1, v0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/btphone/livedata/AaCallStateLiveData;)Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    return-object p0
.end method

.method static synthetic access$100(Lcom/chery/btphone/livedata/AaCallStateLiveData;I)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->updateState(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/chery/btphone/livedata/AaCallStateLiveData;)Landroid/os/Handler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updateState(I)V
    .locals 2

    .line 81
    iget-object p1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    invoke-virtual {p1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->getWhetherTakeOverPage()Z

    move-result p1

    .line 82
    invoke-virtual {p0}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 83
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateState to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CD.AaCallStateLiveData"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/chery/btphone/livedata/AaCallStateLiveData;->setValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method protected onActive()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object v1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAABindListener:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;

    invoke-virtual {v0, v1, v2}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->initialise(Landroid/content/Context;Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient$AABindServiceStatusListener;)V

    .line 66
    iget-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object p0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAProxyListener:Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    invoke-virtual {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->registerListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;)V

    return-void
.end method

.method protected onInactive()V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object v1, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAProxyListener:Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;

    invoke-virtual {v0, v1}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->unregisterListener(Lcom/yfve/t19c/projection/androidauto/proxy/AAProxyListener;)V

    .line 72
    iget-object v0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mAAClient:Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;

    iget-object p0, p0, Lcom/chery/btphone/livedata/AaCallStateLiveData;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/yfve/t19c/projection/androidauto/proxy/AndroidAutoClient;->uninitialise(Landroid/content/Context;)V

    return-void
.end method
