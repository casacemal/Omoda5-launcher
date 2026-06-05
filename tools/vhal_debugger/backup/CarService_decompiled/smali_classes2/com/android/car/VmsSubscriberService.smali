.class public Lcom/android/car/VmsSubscriberService;
.super Landroid/car/vms/IVmsSubscriberService$Stub;
.source "VmsSubscriberService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/vms/VmsBrokerService$SubscriberListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VmsSubscriberService"


# instance fields
.field private final mBrokerService:Lcom/android/car/vms/VmsBrokerService;

.field private final mClientManager:Lcom/android/car/vms/VmsClientManager;

.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/vms/VmsBrokerService;Lcom/android/car/vms/VmsClientManager;Lcom/android/car/hal/VmsHalService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "brokerService"    # Lcom/android/car/vms/VmsBrokerService;
    .param p3, "clientManager"    # Lcom/android/car/vms/VmsClientManager;
    .param p4, "hal"    # Lcom/android/car/hal/VmsHalService;

    .line 53
    invoke-direct {p0}, Landroid/car/vms/IVmsSubscriberService$Stub;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    .line 56
    iput-object p3, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    .line 57
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p0}, Lcom/android/car/vms/VmsBrokerService;->addSubscriberListener(Lcom/android/car/vms/VmsBrokerService$SubscriberListener;)V

    .line 58
    invoke-virtual {p4, p0}, Lcom/android/car/hal/VmsHalService;->setVmsSubscriberService(Landroid/car/vms/IVmsSubscriberService;)V

    .line 59
    return-void
.end method


# virtual methods
.method public addVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 85
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 86
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsClientManager;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 87
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/vms/VmsBrokerService;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 88
    return-void
.end method

.method public addVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 115
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 116
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsClientManager;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 117
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsBrokerService;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 118
    return-void
.end method

.method public addVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 73
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 74
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsClientManager;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 75
    return-void
.end method

.method public addVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 100
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 101
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsClientManager;->addSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 102
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/vms/VmsBrokerService;->addSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 103
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 69
    return-void
.end method

.method public getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 135
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0}, Lcom/android/car/vms/VmsBrokerService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v0

    return-object v0
.end method

.method public getPublisherInfo(I)[B
    .locals 1
    .param p1, "publisherId"    # I

    .line 128
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 129
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsBrokerService;->getPublisherInfo(I)[B

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 62
    return-void
.end method

.method public onLayersAvailabilityChange(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 5
    .param p1, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;

    .line 140
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0}, Lcom/android/car/vms/VmsClientManager;->getAllSubscribers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/vms/IVmsSubscriberClient;

    .line 142
    .local v1, "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/car/vms/IVmsSubscriberClient;->onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_1

    .line 143
    :catch_0
    move-exception v2

    .line 144
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onLayersAvailabilityChanged failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    .line 145
    invoke-virtual {v4, v1}, Lcom/android/car/vms/VmsClientManager;->getPackageName(Landroid/car/vms/IVmsSubscriberClient;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    const-string v4, "VmsSubscriberService"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    .end local v1    # "subscriber":Landroid/car/vms/IVmsSubscriberClient;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method public release()V
    .locals 0

    .line 65
    return-void
.end method

.method public removeVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;

    .line 92
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/vms/VmsBrokerService;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 94
    return-void
.end method

.method public removeVmsSubscriberPassive(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 122
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 123
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsBrokerService;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 124
    return-void
.end method

.method public removeVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;

    .line 79
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 80
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    invoke-virtual {v0, p1}, Lcom/android/car/vms/VmsClientManager;->removeSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 81
    return-void
.end method

.method public removeVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V
    .locals 1
    .param p1, "subscriber"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p2, "layer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisherId"    # I

    .line 109
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/car/ICarImpl;->assertVmsSubscriberPermission(Landroid/content/Context;)V

    .line 110
    iget-object v0, p0, Lcom/android/car/VmsSubscriberService;->mBrokerService:Lcom/android/car/vms/VmsBrokerService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/vms/VmsBrokerService;->removeSubscription(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 111
    return-void
.end method
