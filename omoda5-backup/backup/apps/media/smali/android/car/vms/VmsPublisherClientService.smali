.class public abstract Landroid/car/vms/VmsPublisherClientService;
.super Landroid/app/Service;
.source "VmsPublisherClientService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/VmsPublisherClientService$VmsEventHandler;,
        Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VmsPublisherClientService"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mToken:Landroid/os/IBinder;

.field private final mVmsPublisherClient:Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

.field private volatile mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mLock:Ljava/lang/Object;

    .line 61
    new-instance v0, Landroid/car/vms/VmsPublisherClientService$VmsEventHandler;

    invoke-direct {v0, p0}, Landroid/car/vms/VmsPublisherClientService$VmsEventHandler;-><init>(Landroid/car/vms/VmsPublisherClientService;)V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mHandler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

    invoke-direct {v0, p0}, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;-><init>(Landroid/car/vms/VmsPublisherClientService;)V

    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherClient:Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    .line 64
    iput-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/car/vms/VmsPublisherClientService;)Landroid/os/Handler;
    .locals 0

    .line 55
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/vms/VmsPublisherClientService;Landroid/os/IBinder;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/car/vms/VmsPublisherClientService;->setToken(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/vms/VmsPublisherClientService;Landroid/car/vms/IVmsPublisherService;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Landroid/car/vms/VmsPublisherClientService;->setVmsPublisherService(Landroid/car/vms/IVmsPublisherService;)V

    return-void
.end method

.method private getTokenForPublisherServiceThreadSafe()Landroid/os/IBinder;
    .locals 1

    .line 142
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mToken:Landroid/os/IBinder;

    .line 149
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    return-object p0

    .line 151
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VmsPublisherService does not have a valid token."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 149
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 143
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VmsPublisherService not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setToken(Landroid/os/IBinder;)V
    .locals 1

    .line 81
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_0
    iput-object p1, p0, Landroid/car/vms/VmsPublisherClientService;->mToken:Landroid/os/IBinder;

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setVmsPublisherService(Landroid/car/vms/IVmsPublisherService;)V
    .locals 0

    .line 199
    iput-object p1, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    .line 200
    invoke-virtual {p0}, Landroid/car/vms/VmsPublisherClientService;->onVmsPublisherServiceReady()V

    return-void
.end method


# virtual methods
.method public final getPublisherId([B)I
    .locals 2

    .line 167
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    if-eqz v0, :cond_0

    .line 172
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {p0, p1}, Landroid/car/vms/IVmsPublisherService;->getPublisherId([B)I

    move-result p0

    const-string p1, "VmsPublisherClientService"

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Assigned publisher ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/car/vms/VmsOperationRecorder;->getPublisherId(I)V

    return p0

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 168
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "VmsPublisherService not set."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSubscriptions()Landroid/car/vms/VmsSubscriptionState;
    .locals 1

    .line 188
    iget-object v0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    if-eqz v0, :cond_0

    .line 192
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {p0}, Landroid/car/vms/IVmsPublisherService;->getSubscriptions()Landroid/car/vms/VmsSubscriptionState;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 194
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 189
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "VmsPublisherService not set."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 70
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherClient:Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;

    invoke-virtual {p0}, Landroid/car/vms/VmsPublisherClientService$VmsPublisherClientBinder;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 0

    .line 76
    invoke-virtual {p0}, Landroid/car/vms/VmsPublisherClientService;->stopSelf()V

    .line 77
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method protected abstract onVmsPublisherServiceReady()V
.end method

.method public abstract onVmsSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
.end method

.method public final publish(Landroid/car/vms/VmsLayer;I[B)V
    .locals 1

    const-string v0, "layer cannot be null"

    .line 109
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    invoke-direct {p0}, Landroid/car/vms/VmsPublisherClientService;->getTokenForPublisherServiceThreadSafe()Landroid/os/IBinder;

    move-result-object v0

    .line 115
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {p0, v0, p1, p2, p3}, Landroid/car/vms/IVmsPublisherService;->publish(Landroid/os/IBinder;Landroid/car/vms/VmsLayer;I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final setLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    .locals 1

    const-string v0, "offering cannot be null"

    .line 128
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-direct {p0}, Landroid/car/vms/VmsPublisherClientService;->getTokenForPublisherServiceThreadSafe()Landroid/os/IBinder;

    move-result-object v0

    .line 134
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsPublisherClientService;->mVmsPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {p0, v0, p1}, Landroid/car/vms/IVmsPublisherService;->setLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 135
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/car/vms/VmsOperationRecorder;->setLayersOffering(Landroid/car/vms/VmsLayersOffering;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
