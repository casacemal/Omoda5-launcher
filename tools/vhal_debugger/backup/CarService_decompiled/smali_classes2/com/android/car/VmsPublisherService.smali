.class public Lcom/android/car/VmsPublisherService;
.super Ljava/lang/Object;
.source "VmsPublisherService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/VmsPublisherService$PublisherProxy;,
        Lcom/android/car/VmsPublisherService$PacketFailureKey;,
        Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final PACKET_COUNT_FORMAT:Ljava/lang/String; = "Packet count for layer %s: %d\n"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PACKET_FAILURE_COUNT_FORMAT:Ljava/lang/String; = "Total packet failure count for layer %s from %s to %s: %d\n"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PACKET_FAILURE_SIZE_FORMAT:Ljava/lang/String; = "Total packet failure size for layer %s from %s to %s: %d (bytes)\n"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final PACKET_SIZE_FORMAT:Ljava/lang/String; = "Total packet size for layer %s: %d (bytes)\n"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "VmsPublisherService"


# instance fields
.field private final mBrokerService:Lcom/android/car/vms/VmsBrokerService;

.field private final mClientManager:Lcom/android/car/vms/VmsClientManager;

.field private final mContext:Landroid/content/Context;

.field private final mPacketCounts:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPacketCounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/vms/VmsLayer;",
            "Lcom/android/car/VmsPublisherService$PacketCountAndSize;",
            ">;"
        }
    .end annotation
.end field

.field private final mPacketFailureCounts:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mPacketFailureCounts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/car/VmsPublisherService$PacketFailureKey;",
            "Lcom/android/car/VmsPublisherService$PacketCountAndSize;",
            ">;"
        }
    .end annotation
.end field

.field private final mPublisherProxies:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/car/VmsPublisherService$PublisherProxy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/vms/VmsClientManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "brokerService"    # Lcom/android/car/vms/VmsBrokerService;
    .param p3, "clientManager"    # Lcom/android/car/vms/VmsClientManager;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherProxies:Ljava/util/Map;

    .line 73
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mPacketCounts:Ljava/util/Map;

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/VmsPublisherService;->mPacketFailureCounts:Ljava/util/Map;

    .line 119
    iput-object p1, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    .line 120
    iput-object p2, p0, Lcom/android/car/VmsPublisherService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    .line 121
    iput-object p3, p0, Lcom/android/car/VmsPublisherService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    .line 122
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0, p0}, Lcom/android/car/vms/VmsClientManager;->setPublisherService(Lcom/android/car/VmsPublisherService;)V

    .line 123
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 49
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 49
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPacketCounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 49
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPacketFailureCounts:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsClientManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 49
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/VmsPublisherService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/VmsPublisherService;

    .line 49
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/car/VmsPublisherService;->dumpMetrics(Ljava/io/PrintWriter;)V

    .line 137
    return-void
.end method

.method public dumpMetrics(Ljava/io/PrintWriter;)V
    .locals 17
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 141
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPublisherProxies: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/car/VmsPublisherService;->mPublisherProxies:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    iget-object v3, v1, Lcom/android/car/VmsPublisherService;->mPacketCounts:Ljava/util/Map;

    monitor-enter v3

    .line 144
    :try_start_0
    iget-object v0, v1, Lcom/android/car/VmsPublisherService;->mPacketCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 145
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/car/vms/VmsLayer;Lcom/android/car/VmsPublisherService$PacketCountAndSize;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/car/vms/VmsLayer;

    .line 146
    .local v8, "layer":Landroid/car/vms/VmsLayer;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    .line 147
    .local v9, "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    const-string v10, "Packet count for layer %s: %d\n"

    new-array v11, v7, [Ljava/lang/Object;

    aput-object v8, v11, v6

    iget-wide v12, v9, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v11, v5

    invoke-virtual {v2, v10, v11}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    const-string v10, "Total packet size for layer %s: %d (bytes)\n"

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v8, v7, v6

    iget-wide v11, v9, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mSize:J

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v7, v5

    invoke-virtual {v2, v10, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 149
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Landroid/car/vms/VmsLayer;Lcom/android/car/VmsPublisherService$PacketCountAndSize;>;"
    .end local v8    # "layer":Landroid/car/vms/VmsLayer;
    .end local v9    # "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    goto :goto_0

    .line 150
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 151
    iget-object v4, v1, Lcom/android/car/VmsPublisherService;->mPacketFailureCounts:Ljava/util/Map;

    monitor-enter v4

    .line 153
    :try_start_1
    iget-object v0, v1, Lcom/android/car/VmsPublisherService;->mPacketFailureCounts:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 154
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/VmsPublisherService$PacketFailureKey;Lcom/android/car/VmsPublisherService$PacketCountAndSize;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/car/VmsPublisherService$PacketFailureKey;

    .line 155
    .local v8, "key":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    .line 156
    .restart local v9    # "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    iget-object v10, v8, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mVmsLayer:Landroid/car/vms/VmsLayer;

    .line 157
    .local v10, "layer":Landroid/car/vms/VmsLayer;
    iget-object v11, v8, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mPublisher:Ljava/lang/String;

    .line 158
    .local v11, "publisher":Ljava/lang/String;
    iget-object v12, v8, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mSubscriber:Ljava/lang/String;

    .line 159
    .local v12, "subscriber":Ljava/lang/String;
    const-string v13, "Total packet failure count for layer %s from %s to %s: %d\n"

    const/4 v14, 0x4

    new-array v15, v14, [Ljava/lang/Object;

    aput-object v10, v15, v6

    aput-object v11, v15, v5

    aput-object v12, v15, v7

    move-object/from16 v16, v8

    .end local v8    # "key":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    .local v16, "key":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    iget-wide v7, v9, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mCount:J

    .line 160
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v15, v8

    .line 159
    invoke-virtual {v2, v13, v15}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 161
    const-string v7, "Total packet failure size for layer %s from %s to %s: %d (bytes)\n"

    new-array v13, v14, [Ljava/lang/Object;

    aput-object v10, v13, v6

    aput-object v11, v13, v5

    const/4 v14, 0x2

    aput-object v12, v13, v14

    iget-wide v5, v9, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mSize:J

    .line 162
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v13, v8

    .line 161
    invoke-virtual {v2, v7, v13}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 163
    move v7, v14

    const/4 v5, 0x1

    const/4 v6, 0x0

    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/car/VmsPublisherService$PacketFailureKey;Lcom/android/car/VmsPublisherService$PacketCountAndSize;>;"
    .end local v9    # "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    .end local v10    # "layer":Landroid/car/vms/VmsLayer;
    .end local v11    # "publisher":Ljava/lang/String;
    .end local v12    # "subscriber":Ljava/lang/String;
    .end local v16    # "key":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    goto :goto_1

    .line 164
    :cond_1
    monitor-exit v4

    .line 165
    return-void

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 150
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public init()V
    .locals 0

    .line 126
    return-void
.end method

.method public onClientConnected(Ljava/lang/String;Landroid/car/vms/IVmsPublisherClient;)V
    .locals 5
    .param p1, "publisherName"    # Ljava/lang/String;
    .param p2, "publisherClient"    # Landroid/car/vms/IVmsPublisherClient;

    .line 175
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    .line 177
    .local v0, "publisherToken":Landroid/os/IBinder;
    new-instance v1, Lcom/android/car/VmsPublisherService$PublisherProxy;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/android/car/VmsPublisherService$PublisherProxy;-><init>(Lcom/android/car/VmsPublisherService;Ljava/lang/String;Landroid/os/IBinder;Landroid/car/vms/IVmsPublisherClient;)V

    .line 179
    .local v1, "publisherProxy":Lcom/android/car/VmsPublisherService$PublisherProxy;
    invoke-virtual {v1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->register()V

    .line 181
    :try_start_0
    invoke-interface {p2, v0, v1}, Landroid/car/vms/IVmsPublisherClient;->setVmsPublisherService(Landroid/os/IBinder;Landroid/car/vms/IVmsPublisherService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    nop

    .line 187
    iget-object v2, p0, Lcom/android/car/VmsPublisherService;->mPublisherProxies:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/VmsPublisherService$PublisherProxy;

    .line 188
    .local v2, "existingProxy":Lcom/android/car/VmsPublisherService$PublisherProxy;
    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v2}, Lcom/android/car/VmsPublisherService$PublisherProxy;->unregister()V

    .line 191
    :cond_0
    return-void

    .line 182
    .end local v2    # "existingProxy":Lcom/android/car/VmsPublisherService$PublisherProxy;
    :catchall_0
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to configure publisher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "VmsPublisherService"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 184
    return-void
.end method

.method public onClientDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "publisherName"    # Ljava/lang/String;

    .line 200
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherProxies:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/VmsPublisherService$PublisherProxy;

    .line 201
    .local v0, "proxy":Lcom/android/car/VmsPublisherService$PublisherProxy;
    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lcom/android/car/VmsPublisherService$PublisherProxy;->unregister()V

    .line 204
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;->INSTANCE:Lcom/android/car/-$$Lambda$5ZZJlJ3IGzQ4D_9yX9FKZz1sXu0;

    invoke-interface {v0, v1}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    .line 131
    iget-object v0, p0, Lcom/android/car/VmsPublisherService;->mPublisherProxies:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 132
    return-void
.end method
