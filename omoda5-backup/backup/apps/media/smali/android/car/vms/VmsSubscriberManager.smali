.class public final Landroid/car/vms/VmsSubscriberManager;
.super Ljava/lang/Object;
.source "VmsSubscriberManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VmsSubscriberManager"


# instance fields
.field private mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

.field private final mClientCallbackLock:Ljava/lang/Object;

.field private mExecutor:Ljava/util/concurrent/Executor;

.field private final mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

.field private final mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    .line 79
    invoke-static {p1}, Landroid/car/vms/IVmsSubscriberService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberService;

    move-result-object p1

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    .line 80
    new-instance p1, Landroid/car/vms/VmsSubscriberManager$1;

    invoke-direct {p1, p0}, Landroid/car/vms/VmsSubscriberManager$1;-><init>(Landroid/car/vms/VmsSubscriberManager;)V

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    return-void
.end method

.method static synthetic access$000(Landroid/car/vms/VmsSubscriberManager;)Ljava/lang/Object;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/vms/VmsSubscriberManager;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 42
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/vms/VmsSubscriberManager;Landroid/car/vms/VmsAvailableLayers;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->dispatchOnAvailabilityChangeMessage(Landroid/car/vms/VmsAvailableLayers;)V

    return-void
.end method

.method static synthetic access$300(Landroid/car/vms/VmsSubscriberManager;Landroid/car/vms/VmsLayer;[B)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/car/vms/VmsSubscriberManager;->dispatchOnReceiveMessage(Landroid/car/vms/VmsLayer;[B)V

    return-void
.end method

.method private dispatchOnAvailabilityChangeMessage(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 0

    .line 295
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VmsSubscriberManager"

    const-string p1, "Cannot dispatch availability change message."

    .line 297
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 300
    :cond_0
    invoke-interface {p0, p1}, Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;->onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V

    return-void
.end method

.method private dispatchOnReceiveMessage(Landroid/car/vms/VmsLayer;[B)V
    .locals 0

    .line 286
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "VmsSubscriberManager"

    const-string p1, "Cannot dispatch received message."

    .line 288
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 291
    :cond_0
    invoke-interface {p0, p1, p2}, Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;->onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V

    return-void
.end method

.method private getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;
    .locals 2

    .line 305
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 306
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 307
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const-string v0, "VmsSubscriberManager"

    const-string v1, "client callback not set."

    .line 309
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    .line 307
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private verifySubscriptionIsAllowed()V
    .locals 1

    .line 318
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->getClientCallbackThreadSafe()Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    .line 320
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public clearVmsSubscriberClientCallback()V
    .locals 3

    .line 145
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    .line 147
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v0, 0x0

    .line 149
    :try_start_1
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v2, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v1, v2}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 153
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 154
    :try_start_2
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 155
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 156
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 151
    :try_start_3
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 153
    :goto_0
    iget-object v2, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_4
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    .line 155
    iput-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 156
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 147
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 0

    .line 183
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    invoke-interface {p0}, Landroid/car/vms/IVmsSubscriberService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 185
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getPublisherInfo(I)[B
    .locals 0

    .line 169
    :try_start_0
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    invoke-interface {p0, p1}, Landroid/car/vms/IVmsSubscriberService;->getPublisherInfo(I)[B

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 171
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public setVmsSubscriberClientCallback(Ljava/util/concurrent/Executor;Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;)V
    .locals 2

    .line 125
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    if-nez v1, :cond_0

    const-string v1, "clientCallback cannot be null"

    .line 129
    invoke-static {p2, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    iput-object p2, p0, Landroid/car/vms/VmsSubscriberManager;->mClientCallback:Landroid/car/vms/VmsSubscriberManager$VmsSubscriberClientCallback;

    const-string p2, "executor cannot be null"

    .line 131
    invoke-static {p1, p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 132
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :try_start_1
    iget-object p1, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {p1, p0}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 136
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 127
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Client callback is already configured."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    .line 132
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public startMonitoring()V
    .locals 1

    .line 229
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 231
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, p0}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 232
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/car/vms/VmsOperationRecorder;->startMonitoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 234
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopMonitoring()V
    .locals 1

    .line 278
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, p0}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 279
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/car/vms/VmsOperationRecorder;->stopMonitoring()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 281
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public subscribe(Landroid/car/vms/VmsLayer;)V
    .locals 1

    .line 197
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 199
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, p0, p1}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 200
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/car/vms/VmsOperationRecorder;->subscribe(Landroid/car/vms/VmsLayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public subscribe(Landroid/car/vms/VmsLayer;I)V
    .locals 1

    .line 215
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 217
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, p0, p1, p2}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 219
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->subscribe(Landroid/car/vms/VmsLayer;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 221
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unsubscribe(Landroid/car/vms/VmsLayer;)V
    .locals 1

    .line 246
    invoke-direct {p0}, Landroid/car/vms/VmsSubscriberManager;->verifySubscriptionIsAllowed()V

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, p0, p1}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 249
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/car/vms/VmsOperationRecorder;->unsubscribe(Landroid/car/vms/VmsLayer;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 251
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unsubscribe(Landroid/car/vms/VmsLayer;I)V
    .locals 1

    .line 265
    :try_start_0
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager;->mVmsSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager;->mSubscriberManagerClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v0, p0, p1, p2}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 267
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/car/vms/VmsOperationRecorder;->unsubscribe(Landroid/car/vms/VmsLayer;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 269
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
