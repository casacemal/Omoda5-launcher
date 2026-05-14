.class public Lcom/chery/media/model/service/RadioAIDLService;
.super Landroid/app/Service;
.source "RadioAIDLService.java"


# instance fields
.field mBinder:Lcom/chery/media/ITunerInterface$Stub;

.field final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/chery/media/ITunerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field private tunerInfoListener:Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 86
    new-instance v0, Lcom/chery/media/model/service/RadioAIDLService$2;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/RadioAIDLService$2;-><init>(Lcom/chery/media/model/service/RadioAIDLService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mBinder:Lcom/chery/media/ITunerInterface$Stub;

    .line 145
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method

.method static synthetic access$000(Lcom/chery/media/model/service/RadioAIDLService;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mLock:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService;->mBinder:Lcom/chery/media/ITunerInterface$Stub;

    return-object p0
.end method

.method public onCreate()V
    .locals 1

    .line 29
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 31
    new-instance v0, Lcom/chery/media/model/service/RadioAIDLService$1;

    invoke-direct {v0, p0}, Lcom/chery/media/model/service/RadioAIDLService$1;-><init>(Lcom/chery/media/model/service/RadioAIDLService;)V

    iput-object v0, p0, Lcom/chery/media/model/service/RadioAIDLService;->tunerInfoListener:Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;

    .line 72
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->getInstance()Lcom/chery/media/model/business/RadioBusiness;

    move-result-object v0

    iget-object p0, p0, Lcom/chery/media/model/service/RadioAIDLService;->tunerInfoListener:Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;

    invoke-virtual {v0, p0}, Lcom/chery/media/model/business/RadioBusiness;->addTunerInfoListener(Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 77
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method
