.class Lcom/android/car/VmsPublisherService$PacketFailureKey;
.super Ljava/lang/Object;
.source "VmsPublisherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/VmsPublisherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PacketFailureKey"
.end annotation


# instance fields
.field mPublisher:Ljava/lang/String;

.field mSubscriber:Ljava/lang/String;

.field mVmsLayer:Landroid/car/vms/VmsLayer;

.field final synthetic this$0:Lcom/android/car/VmsPublisherService;


# direct methods
.method constructor <init>(Lcom/android/car/VmsPublisherService;Landroid/car/vms/VmsLayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "vmsLayer"    # Landroid/car/vms/VmsLayer;
    .param p3, "publisher"    # Ljava/lang/String;
    .param p4, "subscriber"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->this$0:Lcom/android/car/VmsPublisherService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mVmsLayer:Landroid/car/vms/VmsLayer;

    .line 94
    iput-object p3, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mPublisher:Ljava/lang/String;

    .line 95
    iput-object p4, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mSubscriber:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 100
    instance-of v0, p1, Lcom/android/car/VmsPublisherService$PacketFailureKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 101
    return v1

    .line 104
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/car/VmsPublisherService$PacketFailureKey;

    .line 105
    .local v0, "otherKey":Lcom/android/car/VmsPublisherService$PacketFailureKey;
    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mVmsLayer:Landroid/car/vms/VmsLayer;

    iget-object v3, v0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mVmsLayer:Landroid/car/vms/VmsLayer;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mPublisher:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mPublisher:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mSubscriber:Ljava/lang/String;

    iget-object v3, v0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mSubscriber:Ljava/lang/String;

    .line 106
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 105
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 111
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mVmsLayer:Landroid/car/vms/VmsLayer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mPublisher:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/VmsPublisherService$PacketFailureKey;->mSubscriber:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
