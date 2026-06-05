.class public Lcom/android/car/vms/VmsBrokerService;
.super Ljava/lang/Object;
.source "VmsBrokerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/vms/VmsBrokerService$SubscriberListener;,
        Lcom/android/car/vms/VmsBrokerService$PublisherListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "VmsBrokerService"


# instance fields
.field private final mAvailableLayers:Lcom/android/car/VmsLayersAvailability;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mOfferings:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/vms/VmsLayersOffering;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/vms/VmsBrokerService$PublisherListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublishersInfo:Lcom/android/car/VmsPublishersInfo;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mRouting:Lcom/android/car/VmsRouting;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/vms/VmsBrokerService$SubscriberListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/android/car/VmsRouting;

    invoke-direct {v0}, Lcom/android/car/VmsRouting;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mOfferings:Ljava/util/Map;

    .line 57
    new-instance v0, Lcom/android/car/VmsLayersAvailability;

    invoke-direct {v0}, Lcom/android/car/VmsLayersAvailability;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    .line 59
    new-instance v0, Lcom/android/car/VmsPublishersInfo;

    invoke-direct {v0}, Lcom/android/car/VmsPublishersInfo;-><init>()V

    iput-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

    return-void
.end method

.method static synthetic lambda$setPublisherLayersOffering$0(Landroid/os/IBinder;)Ljava/util/Map;
    .locals 1
    .param p0, "k"    # Landroid/os/IBinder;

    .line 315
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method private notifyOfAvailabilityChange()V
    .locals 3

    .line 368
    invoke-virtual {p0}, Lcom/android/car/vms/VmsBrokerService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v0

    .line 369
    .local v0, "availableLayers":Landroid/car/vms/VmsAvailableLayers;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying subscribers of layers availability: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VmsBrokerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/vms/VmsBrokerService$SubscriberListener;

    .line 372
    .local v2, "listener":Lcom/android/car/vms/VmsBrokerService$SubscriberListener;
    invoke-interface {v2, v0}, Lcom/android/car/vms/VmsBrokerService$SubscriberListener;->onLayersAvailabilityChange(Landroid/car/vms/VmsAvailableLayers;)V

    .line 373
    .end local v2    # "listener":Lcom/android/car/vms/VmsBrokerService$SubscriberListener;
    goto :goto_0

    .line 374
    :cond_0
    return-void
.end method

.method private notifyOfSubscriptionChange()V
    .locals 3

    .line 359
    invoke-virtual {p0}, Lcom/android/car/vms/VmsBrokerService;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v0

    .line 360
    .local v0, "subscriptionState":Landroid/car/vms/VmsSubscriptionState;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifying publishers of subscriptions: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VmsBrokerService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/vms/VmsBrokerService$PublisherListener;

    .line 363
    .local v2, "listener":Lcom/android/car/vms/VmsBrokerService$PublisherListener;
    invoke-interface {v2, v0}, Lcom/android/car/vms/VmsBrokerService$PublisherListener;->onSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V

    .line 364
    .end local v2    # "listener":Lcom/android/car/vms/VmsBrokerService$PublisherListener;
    goto :goto_0

    .line 365
    :cond_0
    return-void
.end method

.method private updateLayerAvailability()V
    .locals 5

    .line 348
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 349
    .local v0, "allPublisherOfferings":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayersOffering;>;"
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/android/car/vms/VmsBrokerService;->mOfferings:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 351
    .local v3, "offerings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/vms/VmsLayersOffering;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 352
    nop

    .end local v3    # "offerings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/vms/VmsLayersOffering;>;"
    goto :goto_0

    .line 354
    :cond_0
    iget-object v2, p0, Lcom/android/car/vms/VmsBrokerService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    invoke-virtual {v2, v0}, Lcom/android/car/VmsLayersAvailability;->setPublishersOffering(Ljava/util/Collection;)V

    .line 355
    monitor-exit v1

    .line 356
    return-void

    .line 355
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public addPublisherListener(Lcom/android/car/vms/VmsBrokerService$PublisherListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/vms/VmsBrokerService$PublisherListener;

    .line 92
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method

.method public addSubscriberListener(Lcom/android/car/vms/VmsBrokerService$SubscriberListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/vms/VmsBrokerService$SubscriberListener;

    .line 101
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    return-void
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 128
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 130
    monitor-exit v0

    .line 131
    return-void

    .line 130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 153
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 158
    .local v1, "firstSubscriptionForLayer":Z
    :goto_0
    iget-object v2, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2}, Lcom/android/car/VmsRouting;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 159
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    if-eqz v1, :cond_1

    .line 161
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfSubscriptionChange()V

    .line 163
    :cond_1
    return-void

    .line 159
    .end local v1    # "firstSubscriptionForLayer":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 199
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    .line 202
    invoke-virtual {v1, p2, p3}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 205
    .local v1, "firstSubscriptionForLayer":Z
    :goto_0
    iget-object v2, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/car/VmsRouting;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 206
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    if-eqz v1, :cond_1

    .line 208
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfSubscriptionChange()V

    .line 210
    :cond_1
    return-void

    .line 206
    .end local v1    # "firstSubscriptionForLayer":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mAvailableLayers:Lcom/android/car/VmsLayersAvailability;

    invoke-virtual {v1}, Lcom/android/car/VmsLayersAvailability;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 344
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPublisherId([B)I
    .locals 2
    .param p1, "publisherInfo"    # [B

    .line 288
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsPublishersInfo;->getIdForInfo([B)I

    move-result v1

    monitor-exit v0

    return v1

    .line 290
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPublisherInfo(I)[B
    .locals 2
    .param p1, "publisherId"    # I

    .line 301
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mPublishersInfo:Lcom/android/car/VmsPublishersInfo;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsPublishersInfo;->getPublisherInfo(I)[B

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 303
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/vms/VmsLayer;",
            "I)",
            "Ljava/util/Set<",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 267
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/VmsRouting;->getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 268
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1}, Lcom/android/car/VmsRouting;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 277
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeDeadPublisher(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "publisherToken"    # Landroid/os/IBinder;

    .line 329
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mOfferings:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->updateLayerAvailability()V

    .line 332
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfAvailabilityChange()V

    .line 334
    return-void

    .line 332
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 250
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Z

    move-result v1

    .line 252
    .local v1, "subscriptionStateChanged":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    if-eqz v1, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfSubscriptionChange()V

    .line 256
    :cond_0
    return-void

    .line 252
    .end local v1    # "subscriptionStateChanged":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removePublisherListener(Lcom/android/car/vms/VmsBrokerService$PublisherListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/vms/VmsBrokerService$PublisherListener;

    .line 110
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mPublisherListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 111
    return-void
.end method

.method public removeSubscriberListener(Lcom/android/car/vms/VmsBrokerService$SubscriberListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/car/vms/VmsBrokerService$SubscriberListener;

    .line 119
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mSubscriberListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 139
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 141
    monitor-exit v0

    .line 142
    return-void

    .line 141
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 173
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 176
    monitor-exit v0

    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1, p2}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 183
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    .line 184
    .local v1, "layerHasSubscribers":Z
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    if-nez v1, :cond_1

    .line 186
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfSubscriptionChange()V

    .line 188
    :cond_1
    return-void

    .line 184
    .end local v1    # "layerHasSubscribers":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 222
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 223
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p2, p3}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    monitor-exit v0

    return-void

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 235
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    invoke-virtual {v1, p2}, Lcom/android/car/VmsRouting;->hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mRouting:Lcom/android/car/VmsRouting;

    .line 236
    invoke-virtual {v1, p2, p3}, Lcom/android/car/VmsRouting;->hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 237
    .local v1, "layerHasSubscribers":Z
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    if-nez v1, :cond_3

    .line 239
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfSubscriptionChange()V

    .line 241
    :cond_3
    return-void

    .line 237
    .end local v1    # "layerHasSubscribers":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setPublisherLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V
    .locals 3
    .param p1, "publisherToken"    # Landroid/os/IBinder;
    .param p2, "offering"    # Landroid/car/vms/VmsLayersOffering;

    .line 313
    iget-object v0, p0, Lcom/android/car/vms/VmsBrokerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 314
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsBrokerService;->mOfferings:Ljava/util/Map;

    sget-object v2, Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;->INSTANCE:Lcom/android/car/vms/-$$Lambda$VmsBrokerService$Bhk3pslmP2FTUJzs8XOKQosYJv4;

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 316
    .local v1, "publisherOfferings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/vms/VmsLayersOffering;>;"
    invoke-virtual {p2}, Landroid/car/vms/VmsLayersOffering;->getPublisherId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->updateLayerAvailability()V

    .line 318
    .end local v1    # "publisherOfferings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Landroid/car/vms/VmsLayersOffering;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/car/vms/VmsOperationRecorder;->setPublisherLayersOffering(Landroid/car/vms/VmsLayersOffering;)V

    .line 320
    invoke-direct {p0}, Lcom/android/car/vms/VmsBrokerService;->notifyOfAvailabilityChange()V

    .line 321
    return-void

    .line 318
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
