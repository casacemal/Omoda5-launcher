.class public Lcom/android/car/VmsRouting;
.super Ljava/lang/Object;
.source "VmsRouting.java"


# instance fields
.field private mLayerSubscriptions:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLayerSubscriptionsToPublishers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mPassiveSubscribers:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private mSequenceNumber:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mSubscribers:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Landroid/car/vms/IVmsSubscriberClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    .line 48
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mSubscribers:Ljava/util/Map;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mPassiveSubscribers:Ljava/util/Set;

    .line 54
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 61
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    return-void
.end method

.method private addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Landroid/os/IBinder;
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 301
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 302
    .local v0, "subscriberBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mSubscribers:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    monitor-exit v1

    .line 305
    return-object v0

    .line 304
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method static synthetic lambda$addSubscription$0(Landroid/car/vms/VmsLayer;)Ljava/util/Set;
    .locals 1
    .param p0, "k"    # Landroid/car/vms/VmsLayer;

    .line 109
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$addSubscription$1(Landroid/car/vms/VmsLayer;)Ljava/util/Map;
    .locals 1
    .param p0, "k"    # Landroid/car/vms/VmsLayer;

    .line 153
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$addSubscription$2(Ljava/lang/Integer;)Ljava/util/Set;
    .locals 1
    .param p0, "k"    # Ljava/lang/Integer;

    .line 154
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    return-object v0
.end method

.method static synthetic lambda$getSubscriptionState$10(Ljava/util/Map$Entry;)Landroid/car/vms/VmsAssociatedLayer;
    .locals 3
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 295
    new-instance v0, Landroid/car/vms/VmsAssociatedLayer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/vms/VmsLayer;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/car/vms/VmsAssociatedLayer;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    return-object v0
.end method

.method static synthetic lambda$removeDeadSubscriber$3(Landroid/os/IBinder;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "subscriberBinder"    # Landroid/os/IBinder;
    .param p1, "e"    # Ljava/util/Map$Entry;

    .line 214
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeDeadSubscriber$5(Landroid/os/IBinder;Ljava/util/Map$Entry;)Z
    .locals 1
    .param p0, "subscriberBinder"    # Landroid/os/IBinder;
    .param p1, "publisher"    # Ljava/util/Map$Entry;

    .line 222
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$removeDeadSubscriber$6(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)Landroid/util/Pair;
    .locals 2
    .param p0, "layer"    # Ljava/util/Map$Entry;
    .param p1, "publisher"    # Ljava/util/Map$Entry;

    .line 223
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/VmsLayer;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$removeDeadSubscriber$7(Landroid/os/IBinder;Ljava/util/Map$Entry;)Ljava/util/stream/Stream;
    .locals 2
    .param p0, "subscriberBinder"    # Landroid/os/IBinder;
    .param p1, "layer"    # Ljava/util/Map$Entry;

    .line 221
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$VmsRouting$Sf0Mf-MjsAvYT4ponMWGUs3bNEY;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$VmsRouting$Sf0Mf-MjsAvYT4ponMWGUs3bNEY;-><init>(Landroid/os/IBinder;)V

    .line 222
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$VmsRouting$rbORpligw5njaPtOOqyFrlyFdS0;

    invoke-direct {v1, p1}, Lcom/android/car/-$$Lambda$VmsRouting$rbORpligw5njaPtOOqyFrlyFdS0;-><init>(Ljava/util/Map$Entry;)V

    .line 223
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 221
    return-object v0
.end method


# virtual methods
.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 74
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 75
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mPassiveSubscribers:Ljava/util/Set;

    invoke-direct {p0, p1}, Lcom/android/car/VmsRouting;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    monitor-exit v0

    return-void

    .line 78
    :cond_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 79
    .local v1, "sequenceNumber":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/car/vms/VmsOperationRecorder;->addPromiscuousSubscription(I)V

    .line 81
    return-void

    .line 79
    .end local v1    # "sequenceNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 107
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 108
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    sget-object v2, Lcom/android/car/-$$Lambda$VmsRouting$tGMbM3CQFJnnnRz8NVUB3lDoh20;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$tGMbM3CQFJnnnRz8NVUB3lDoh20;

    .line 109
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 110
    .local v1, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-direct {p0, p1}, Lcom/android/car/VmsRouting;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 111
    monitor-exit v0

    return-void

    .line 113
    :cond_0
    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    move v1, v2

    .line 114
    .local v1, "sequenceNumber":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroid/car/vms/VmsOperationRecorder;->addSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 116
    return-void

    .line 114
    .end local v1    # "sequenceNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 151
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    sget-object v2, Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$J3LVu7IEDHVo1HV-drUSwEcKoXU;

    .line 153
    invoke-interface {v1, p2, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 154
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/android/car/-$$Lambda$VmsRouting$xBchmasXgfK4z6RsODbUQdpO9hs;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$xBchmasXgfK4z6RsODbUQdpO9hs;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 155
    .local v1, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-direct {p0, p1}, Lcom/android/car/VmsRouting;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 156
    monitor-exit v0

    return-void

    .line 158
    :cond_0
    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    move v1, v2

    .line 159
    .local v1, "sequenceNumber":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, Landroid/car/vms/VmsOperationRecorder;->addSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 161
    return-void

    .line 159
    .end local v1    # "sequenceNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;
    .locals 5
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

    .line 247
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 248
    .local v0, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 250
    :try_start_0
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mPassiveSubscribers:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 253
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 256
    iget-object v2, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 257
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 258
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 256
    invoke-interface {v0, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 259
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/car/-$$Lambda$VmsRouting$2QhXcCdaq24mdf6ln1mzgwDhmE4;

    invoke-direct {v2, p0}, Lcom/android/car/-$$Lambda$VmsRouting$2QhXcCdaq24mdf6ln1mzgwDhmE4;-><init>(Lcom/android/car/VmsRouting;)V

    .line 261
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;->INSTANCE:Lcom/android/car/-$$Lambda$yq0RKY_jp-5-R9a9yftuQj8ngMs;

    .line 262
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 263
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 260
    return-object v1

    .line 259
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;
    .locals 6

    .line 290
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    new-instance v1, Landroid/car/vms/VmsSubscriptionState;

    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    .line 292
    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 293
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 294
    invoke-interface {v4}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    sget-object v5, Lcom/android/car/-$$Lambda$VmsRouting$bZNaiDtYuu8PeKeRRaiqueV2MHU;->INSTANCE:Lcom/android/car/-$$Lambda$VmsRouting$bZNaiDtYuu8PeKeRRaiqueV2MHU;

    .line 295
    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v4

    .line 296
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    invoke-direct {v1, v2, v3, v4}, Landroid/car/vms/VmsSubscriptionState;-><init>(ILjava/util/Set;Ljava/util/Set;)V

    monitor-exit v0

    .line 291
    return-object v1

    .line 297
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasLayerFromPublisherSubscriptions(Landroid/car/vms/VmsLayer;I)Z
    .locals 3
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisherId"    # I

    .line 279
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 281
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 282
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    .line 280
    return v1

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasLayerSubscriptions(Landroid/car/vms/VmsLayer;)Z
    .locals 2
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;

    .line 270
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 272
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$getSubscribersForLayerFromPublisher$9$VmsRouting(Landroid/os/IBinder;)Landroid/car/vms/IVmsSubscriberClient;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 261
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mSubscribers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/vms/IVmsSubscriberClient;

    return-object v0
.end method

.method public synthetic lambda$removeDeadSubscriber$4$VmsRouting(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 0
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 217
    invoke-virtual {p0, p1, p2}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    return-void
.end method

.method public synthetic lambda$removeDeadSubscriber$8$VmsRouting(Landroid/car/vms/IVmsSubscriberClient;Landroid/util/Pair;)V
    .locals 2
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layerAndPublisher"    # Landroid/util/Pair;

    .line 225
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/car/vms/VmsLayer;

    iget-object v1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 226
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 225
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    return-void
.end method

.method public removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)Z
    .locals 5
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 205
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 206
    .local v0, "subscriberBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 207
    :try_start_0
    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 210
    .local v2, "startSequenceNumber":I
    invoke-virtual {p0, p1}, Lcom/android/car/VmsRouting;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 213
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/-$$Lambda$VmsRouting$iPb9kKsMMZoHWOmUbqWJjbAFIzc;

    invoke-direct {v4, v0}, Lcom/android/car/-$$Lambda$VmsRouting$iPb9kKsMMZoHWOmUbqWJjbAFIzc;-><init>(Landroid/os/IBinder;)V

    .line 214
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/android/car/-$$Lambda$Nb0Md9TjmiJit5qkuy3Ytehw0y8;->INSTANCE:Lcom/android/car/-$$Lambda$Nb0Md9TjmiJit5qkuy3Ytehw0y8;

    .line 215
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 216
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v4, Lcom/android/car/-$$Lambda$VmsRouting$9rwgIJpVT2BPNIP5VrLYe-bjdTk;

    invoke-direct {v4, p0, p1}, Lcom/android/car/-$$Lambda$VmsRouting$9rwgIJpVT2BPNIP5VrLYe-bjdTk;-><init>(Lcom/android/car/VmsRouting;Landroid/car/vms/IVmsSubscriberClient;)V

    .line 217
    invoke-interface {v3, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 220
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/-$$Lambda$VmsRouting$pDpxYftgZhqMpGUboHEx0-MnuKg;

    invoke-direct {v4, v0}, Lcom/android/car/-$$Lambda$VmsRouting$pDpxYftgZhqMpGUboHEx0-MnuKg;-><init>(Landroid/os/IBinder;)V

    .line 221
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    .line 224
    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    new-instance v4, Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;

    invoke-direct {v4, p0, p1}, Lcom/android/car/-$$Lambda$VmsRouting$OjB8KGAbXPoURq29ab4ql-t6Yb8;-><init>(Lcom/android/car/VmsRouting;Landroid/car/vms/IVmsSubscriberClient;)V

    .line 225
    invoke-interface {v3, v4}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 229
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mSubscribers:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget v3, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    monitor-exit v1

    return v3

    .line 233
    .end local v2    # "startSequenceNumber":I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 3
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 90
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mPassiveSubscribers:Ljava/util/Set;

    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 92
    monitor-exit v0

    return-void

    .line 94
    :cond_0
    iget v1, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 95
    .local v1, "sequenceNumber":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/car/vms/VmsOperationRecorder;->removePromiscuousSubscription(I)V

    .line 97
    return-void

    .line 95
    .end local v1    # "sequenceNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 4
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 126
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    .line 128
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 129
    .local v1, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 130
    monitor-exit v0

    return-void

    .line 132
    :cond_0
    iget v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 134
    .local v2, "sequenceNumber":I
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    iget-object v3, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptions:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .end local v1    # "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, v2, p2}, Landroid/car/vms/VmsOperationRecorder;->removeSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 140
    return-void

    .line 138
    .end local v2    # "sequenceNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 5
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 174
    iget-object v0, p0, Lcom/android/car/VmsRouting;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 175
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    .line 176
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 178
    .local v1, "subscribersToPublishers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Landroid/os/IBinder;>;>;"
    nop

    .line 179
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    .line 180
    .local v2, "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    invoke-interface {p1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 181
    monitor-exit v0

    return-void

    .line 183
    :cond_0
    iget v3, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/car/VmsRouting;->mSequenceNumber:I

    .line 186
    .local v3, "sequenceNumber":I
    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 187
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 192
    iget-object v4, p0, Lcom/android/car/VmsRouting;->mLayerSubscriptionsToPublishers:Ljava/util/Map;

    invoke-interface {v4, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    .end local v1    # "subscribersToPublishers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/util/Set<Landroid/os/IBinder;>;>;"
    .end local v2    # "subscribers":Ljava/util/Set;, "Ljava/util/Set<Landroid/os/IBinder;>;"
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v0

    invoke-virtual {v0, v3, p2}, Landroid/car/vms/VmsOperationRecorder;->removeSubscription(ILandroid/car/vms/VmsLayer;)V

    .line 196
    return-void

    .line 194
    .end local v3    # "sequenceNumber":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
