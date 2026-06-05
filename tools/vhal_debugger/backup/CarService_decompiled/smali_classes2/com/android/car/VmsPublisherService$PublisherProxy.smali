.class Lcom/android/car/VmsPublisherService$PublisherProxy;
.super Landroid/car/vms/IVmsPublisherService$Stub;
.source "VmsPublisherService.java"

# interfaces
.implements Lcom/android/car/vms/VmsBrokerService$PublisherListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublisherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PublisherProxy"
.end annotation


# instance fields
.field private mConnected:Z

.field private final mName:Ljava/lang/String;

.field private final mPublisherClient:Landroid/car/vms/IVmsPublisherClient;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method constructor <init>(Lcom/android/car/VmsPublisherService;Ljava/lang/String;Landroid/os/IBinder;Landroid/car/vms/IVmsPublisherClient;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "token"    # Landroid/os/IBinder;
    .param p4, "publisherClient"    # Landroid/car/vms/IVmsPublisherClient;

    .line 214
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {p0}, Landroid/car/vms/IVmsPublisherService$Stub;-><init>()V

    .line 215
    iput-object p2, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mName:Ljava/lang/String;

    .line 216
    iput-object p3, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mToken:Landroid/os/IBinder;

    .line 217
    iput-object p4, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mPublisherClient:Landroid/car/vms/IVmsPublisherClient;

    .line 218
    return-void
.end method

.method private assertPermission()V
    .locals 2

    .line 325
    iget-boolean v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mConnected:Z

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$400(Lcom/android/car/VmsPublisherService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsPublisherPermission(Landroid/content/Context;)V

    .line 329
    return-void

    .line 326
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Publisher has been disconnected"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private assertPermission(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "publisherToken"    # Landroid/os/IBinder;

    .line 318
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mToken:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService$PublisherProxy;->assertPermission()V

    .line 322
    return-void

    .line 319
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Invalid publisher token"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private incrementPacketCount(Landroid/car/vms/VmsLayer;J)V
    .locals 6
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "size"    # J

    .line 240
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$100(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v1}, Lcom/android/car/VmsPublisherService;->access$100(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$tig-Ys6cGx7vWZALJa5T9JpjyQ0;

    invoke-direct {v2, p0}, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$tig-Ys6cGx7vWZALJa5T9JpjyQ0;-><init>(Lcom/android/car/VmsPublisherService$PublisherProxy;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    .line 243
    .local v1, "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    iget-wide v2, v1, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mCount:J

    .line 244
    iget-wide v2, v1, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mSize:J

    add-long/2addr v2, p2

    iput-wide v2, v1, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mSize:J

    .line 245
    .end local v1    # "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    monitor-exit v0

    .line 246
    return-void

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incrementPacketFailure(Landroid/car/vms/VmsLayer;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .param p2, "publisher"    # Ljava/lang/String;
    .param p3, "subscriber"    # Ljava/lang/String;
    .param p4, "size"    # J

    .line 250
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$200(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 251
    :try_start_0
    new-instance v1, Lcom/android/car/VmsPublisherService$PacketFailureKey;

    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {v1, v2, p1, p2, p3}, Lcom/android/car/VmsPublisherService$PacketFailureKey;-><init>(Lcom/android/car/VmsPublisherService;Landroid/car/vms/VmsLayer;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    .local v1, "key":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v2}, Lcom/android/car/VmsPublisherService;->access$200(Lcom/android/car/VmsPublisherService;)Ljava/util/Map;

    move-result-object v2

    new-instance v3, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$rrKPCrgOjZO7Ry3Ya-V8LFGVtmM;

    invoke-direct {v3, p0}, Lcom/android/car/-$$Lambda$VmsPublisherService$PublisherProxy$rrKPCrgOjZO7Ry3Ya-V8LFGVtmM;-><init>(Lcom/android/car/VmsPublisherService$PublisherProxy;)V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    .line 254
    .local v2, "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    iget-wide v3, v2, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mCount:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    iput-wide v3, v2, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mCount:J

    .line 255
    iget-wide v3, v2, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mSize:J

    add-long/2addr v3, p4

    iput-wide v3, v2, Lcom/android/car/VmsPublisherService$PacketCountAndSize;->mSize:J

    .line 256
    .end local v1    # "key":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    .end local v2    # "countAndSize":Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    monitor-exit v0

    .line 257
    return-void

    .line 256
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getPublisherId([B)I
    .locals 1
    .param p1, "publisherInfo"    # [B

    .line 304
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService$PublisherProxy;->assertPermission()V

    .line 305
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsBrokerService;->getPublisherId([B)I

    move-result v0

    return v0
.end method

.method public getSubscriptions()Landroid/car/vms/VmsSubscriptionState;
    .locals 1

    .line 298
    invoke-direct {p0}, Lcom/android/car/VmsPublisherService$PublisherProxy;->assertPermission()V

    .line 299
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/vms/VmsBrokerService;->getSubscriptionState()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v0

    return-object v0
.end method

.method public synthetic lambda$incrementPacketCount$0$VmsPublisherService$PublisherProxy(Landroid/car/vms/VmsLayer;)Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    .locals 3
    .param p1, "i"    # Landroid/car/vms/VmsLayer;

    .line 242
    new-instance v0, Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/VmsPublisherService$PacketCountAndSize;-><init>(Lcom/android/car/VmsPublisherService;Lcom/android/car/VmsPublisherService$1;)V

    return-object v0
.end method

.method public synthetic lambda$incrementPacketFailure$1$VmsPublisherService$PublisherProxy(Lcom/android/car/VmsPublisherService$PacketFailureKey;)Lcom/android/car/VmsPublisherService$PacketCountAndSize;
    .locals 3
    .param p1, "i"    # Lcom/android/car/VmsPublisherService$PacketFailureKey;

    .line 253
    new-instance v0, Lcom/android/car/VmsPublisherService$PacketCountAndSize;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/car/VmsPublisherService$PacketCountAndSize;-><init>(Lcom/android/car/VmsPublisherService;Lcom/android/car/VmsPublisherService$1;)V

    return-object v0
.end method

.method public onSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
    .locals 4
    .param p1, "subscriptionState"    # Landroid/car/vms/VmsSubscriptionState;

    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mPublisherClient:Landroid/car/vms/IVmsPublisherClient;

    invoke-interface {v0, p1}, Landroid/car/vms/IVmsPublisherClient;->onVmsSubscriptionChange(Landroid/car/vms/VmsSubscriptionState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mName:Ljava/lang/String;

    aput-object v3, v1, v2

    const-string v2, "Unable to send subscription state to: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VmsPublisherService"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 315
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public publish(Landroid/os/IBinder;Landroid/car/vms/VmsLayer;I[B)V
    .locals 17
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I
    .param p4, "payload"    # [B

    .line 261
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    invoke-direct/range {p0 .. p1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->assertPermission(Landroid/os/IBinder;)V

    .line 266
    if-nez v8, :cond_0

    .line 267
    return-void

    .line 270
    :cond_0
    const/4 v10, 0x0

    if-eqz v9, :cond_1

    array-length v0, v9

    goto :goto_0

    :cond_1
    move v0, v10

    :goto_0
    move v11, v0

    .line 271
    .local v11, "payloadLength":I
    int-to-long v0, v11

    invoke-direct {v7, v8, v0, v1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->incrementPacketCount(Landroid/car/vms/VmsLayer;J)V

    .line 274
    iget-object v0, v7, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    .line 275
    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    move/from16 v12, p3

    invoke-virtual {v0, v8, v12}, Lcom/android/car/vms/VmsBrokerService;->getSubscribersForLayerFromPublisher(Landroid/car/vms/VmsLayer;I)Ljava/util/Set;

    move-result-object v13

    .line 279
    .local v13, "listeners":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/IVmsSubscriberClient;>;"
    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 282
    iget-object v3, v7, Lcom/android/car/VmsPublisherService$PublisherProxy;->mName:Ljava/lang/String;

    int-to-long v5, v11

    const-string v4, ""

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/car/VmsPublisherService$PublisherProxy;->incrementPacketFailure(Landroid/car/vms/VmsLayer;Ljava/lang/String;Ljava/lang/String;J)V

    .line 285
    :cond_2
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/car/vms/IVmsSubscriberClient;

    .line 287
    .local v15, "listener":Landroid/car/vms/IVmsSubscriberClient;
    :try_start_0
    invoke-interface {v15, v8, v9}, Landroid/car/vms/IVmsSubscriberClient;->onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    goto :goto_2

    .line 288
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 289
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v1, v7, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v1}, Lcom/android/car/VmsPublisherService;->access$300(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsClientManager;

    move-result-object v1

    invoke-virtual {v1, v15}, Lcom/android/car/vms/VmsClientManager;->getPackageName(Landroid/car/vms/IVmsSubscriberClient;)Ljava/lang/String;

    move-result-object v16

    .line 290
    .local v16, "subscriberName":Ljava/lang/String;
    iget-object v3, v7, Lcom/android/car/VmsPublisherService$PublisherProxy;->mName:Ljava/lang/String;

    int-to-long v5, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/car/VmsPublisherService$PublisherProxy;->incrementPacketFailure(Landroid/car/vms/VmsLayer;Ljava/lang/String;Ljava/lang/String;J)V

    .line 291
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v16, v1, v10

    const-string v2, "Unable to publish to listener: %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "VmsPublisherService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    .end local v0    # "ex":Landroid/os/RemoteException;
    .end local v15    # "listener":Landroid/car/vms/IVmsSubscriberClient;
    .end local v16    # "subscriberName":Ljava/lang/String;
    :goto_2
    goto :goto_1

    .line 294
    :cond_3
    return-void
.end method

.method register()V
    .locals 1

    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mConnected:Z

    .line 223
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/car/vms/VmsBrokerService;->addPublisherListener(Lcom/android/car/vms/VmsBrokerService$PublisherListener;)V

    .line 224
    return-void
.end method

.method public setLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V
    .locals 1
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "offering"    # Landroid/car/vms/VmsLayersOffering;

    .line 235
    invoke-direct {p0, p1}, Lcom/android/car/VmsPublisherService$PublisherProxy;->assertPermission(Landroid/os/IBinder;)V

    .line 236
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/car/vms/VmsBrokerService;->setPublisherLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 237
    return-void
.end method

.method unregister()V
    .locals 2

    .line 228
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mConnected:Z

    .line 229
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/car/vms/VmsBrokerService;->removePublisherListener(Lcom/android/car/vms/VmsBrokerService$PublisherListener;)V

    .line 230
    iget-object v0, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-static {v0}, Lcom/android/car/VmsPublisherService;->access$000(Lcom/android/car/VmsPublisherService;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PublisherProxy;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/car/vms/VmsBrokerService;->removeDeadPublisher(Landroid/os/IBinder;)V

    .line 231
    return-void
.end method
