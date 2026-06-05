.class public Lcom/android/car/hal/VmsHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "VmsHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/VmsHalService$MessageQueue;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final HAL_PROPERTY_ID:I = 0x11e00c00

.field private static final NUM_INTEGERS_IN_VMS_LAYER:I = 0x3

.field private static final TAG:Ljava/lang/String; = "VmsHalService"

.field private static final UNKNOWN_CLIENT_ID:I = -0x1


# instance fields
.field private mAvailableLayersSequence:I

.field private mClientManager:Lcom/android/car/vms/VmsClientManager;

.field private final mClientMetricsProperty:I

.field private final mCoreId:I

.field private volatile mIsSupported:Z

.field private final mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

.field private final mPublisherClient:Landroid/car/vms/IVmsPublisherClient$Stub;

.field private mPublisherService:Landroid/car/vms/IVmsPublisherService;

.field private mPublisherToken:Landroid/os/IBinder;

.field private final mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

.field private mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

.field private mSubscriptionStateSequence:I

.field private final mVehicleHal:Lcom/android/car/hal/VehicleHal;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/car/hal/VehicleHal;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicleHal"    # Lcom/android/car/hal/VehicleHal;

    .line 202
    sget-object v0, Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;->INSTANCE:Lcom/android/car/hal/-$$Lambda$-xfp9icEnUYvJbxkgTT4aGLVw-8;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/car/hal/VmsHalService;-><init>(Landroid/content/Context;Lcom/android/car/hal/VehicleHal;Ljava/util/function/Supplier;)V

    .line 203
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/car/hal/VehicleHal;Ljava/util/function/Supplier;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "vehicleHal"    # Lcom/android/car/hal/VehicleHal;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/car/hal/VehicleHal;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 206
    .local p3, "getCoreId":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriptionStateSequence:I

    .line 98
    iput v0, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayersSequence:I

    .line 100
    new-instance v0, Lcom/android/car/hal/VmsHalService$1;

    invoke-direct {v0, p0}, Lcom/android/car/hal/VmsHalService$1;-><init>(Lcom/android/car/hal/VmsHalService;)V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherClient:Landroid/car/vms/IVmsPublisherClient$Stub;

    .line 125
    new-instance v0, Lcom/android/car/hal/VmsHalService$2;

    invoke-direct {v0, p0}, Lcom/android/car/hal/VmsHalService$2;-><init>(Lcom/android/car/hal/VmsHalService;)V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    .line 207
    iput-object p2, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    .line 208
    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    rem-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/android/car/hal/VmsHalService;->mCoreId:I

    .line 209
    new-instance v0, Lcom/android/car/hal/VmsHalService$MessageQueue;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/hal/VmsHalService$MessageQueue;-><init>(Lcom/android/car/hal/VmsHalService;Lcom/android/car/hal/VmsHalService$1;)V

    iput-object v0, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    .line 210
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->getClientMetricsProperty(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/android/car/hal/VmsHalService;->mClientMetricsProperty:I

    .line 211
    return-void
.end method

.method static synthetic access$002(Lcom/android/car/hal/VmsHalService;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 79
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService;->mPublisherToken:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/car/hal/VmsHalService;Landroid/car/vms/IVmsPublisherService;)Landroid/car/vms/IVmsPublisherService;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;
    .param p1, "x1"    # Landroid/car/vms/IVmsPublisherService;

    .line 79
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService;->mPublisherService:Landroid/car/vms/IVmsPublisherService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/car/hal/VmsHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;

    .line 79
    iget v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriptionStateSequence:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/car/hal/VmsHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriptionStateSequence:I

    return p1
.end method

.method static synthetic access$300(ILandroid/car/vms/VmsSubscriptionState;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/car/vms/VmsSubscriptionState;

    .line 79
    invoke-static {p0, p1}, Lcom/android/car/hal/VmsHalService;->createSubscriptionStateMessage(ILandroid/car/vms/VmsSubscriptionState;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/hal/VmsHalService;)Lcom/android/car/hal/VmsHalService$MessageQueue;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;

    .line 79
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    return-object v0
.end method

.method static synthetic access$500(Landroid/car/vms/VmsLayer;[B)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p0, "x0"    # Landroid/car/vms/VmsLayer;
    .param p1, "x1"    # [B

    .line 79
    invoke-static {p0, p1}, Lcom/android/car/hal/VmsHalService;->createDataMessage(Landroid/car/vms/VmsLayer;[B)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/car/hal/VmsHalService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;

    .line 79
    iget v0, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayersSequence:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/car/hal/VmsHalService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;
    .param p1, "x1"    # I

    .line 79
    iput p1, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayersSequence:I

    return p1
.end method

.method static synthetic access$700(ILandroid/car/vms/VmsAvailableLayers;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 1
    .param p0, "x0"    # I
    .param p1, "x1"    # Landroid/car/vms/VmsAvailableLayers;

    .line 79
    invoke-static {p0, p1}, Lcom/android/car/hal/VmsHalService;->createAvailableLayersMessage(ILandroid/car/vms/VmsAvailableLayers;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/hal/VmsHalService;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/hal/VmsHalService;
    .param p1, "x1"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    return-void
.end method

.method private static appendAssociatedLayer(Ljava/util/List;Landroid/car/vms/VmsAssociatedLayer;)V
    .locals 1
    .param p1, "layer"    # Landroid/car/vms/VmsAssociatedLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/vms/VmsAssociatedLayer;",
            ")V"
        }
    .end annotation

    .line 882
    .local p0, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/car/vms/VmsAssociatedLayer;->getVmsLayer()Landroid/car/vms/VmsLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/vms/VmsLayer;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 883
    invoke-virtual {p1}, Landroid/car/vms/VmsAssociatedLayer;->getVmsLayer()Landroid/car/vms/VmsLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/vms/VmsLayer;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    invoke-virtual {p1}, Landroid/car/vms/VmsAssociatedLayer;->getVmsLayer()Landroid/car/vms/VmsLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/vms/VmsLayer;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 885
    invoke-virtual {p1}, Landroid/car/vms/VmsAssociatedLayer;->getPublisherIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 886
    invoke-virtual {p1}, Landroid/car/vms/VmsAssociatedLayer;->getPublisherIds()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 887
    return-void
.end method

.method private static appendBytes(Ljava/util/ArrayList;[B)V
    .locals 4
    .param p1, "src"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[B)V"
        }
    .end annotation

    .line 890
    .local p0, "dst":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Byte;>;"
    array-length v0, p1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 891
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    .line 892
    .local v2, "b":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 891
    .end local v2    # "b":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 894
    :cond_0
    return-void
.end method

.method private static appendLayer(Ljava/util/List;Landroid/car/vms/VmsLayer;)V
    .locals 1
    .param p1, "layer"    # Landroid/car/vms/VmsLayer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/car/vms/VmsLayer;",
            ")V"
        }
    .end annotation

    .line 861
    .local p0, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/car/vms/VmsLayer;->getType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 862
    invoke-virtual {p1}, Landroid/car/vms/VmsLayer;->getSubtype()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {p1}, Landroid/car/vms/VmsLayer;->getVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 864
    return-void
.end method

.method private static createAvailableLayersMessage(ILandroid/car/vms/VmsAvailableLayers;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 4
    .param p0, "messageType"    # I
    .param p1, "availableLayers"    # Landroid/car/vms/VmsAvailableLayers;

    .line 817
    invoke-static {p0}, Lcom/android/car/hal/VmsHalService;->createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 818
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 821
    .local v1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/car/vms/VmsAvailableLayers;->getSequence()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 824
    invoke-virtual {p1}, Landroid/car/vms/VmsAvailableLayers;->getAssociatedLayers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 827
    invoke-virtual {p1}, Landroid/car/vms/VmsAvailableLayers;->getAssociatedLayers()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/vms/VmsAssociatedLayer;

    .line 828
    .local v3, "layer":Landroid/car/vms/VmsAssociatedLayer;
    invoke-static {v1, v3}, Lcom/android/car/hal/VmsHalService;->appendAssociatedLayer(Ljava/util/List;Landroid/car/vms/VmsAssociatedLayer;)V

    .line 829
    .end local v3    # "layer":Landroid/car/vms/VmsAssociatedLayer;
    goto :goto_0

    .line 830
    :cond_0
    return-object v0
.end method

.method private static createDataMessage(Landroid/car/vms/VmsLayer;[B)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 3
    .param p0, "layer"    # Landroid/car/vms/VmsLayer;
    .param p1, "payload"    # [B

    .line 742
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService;->createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 743
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {v1, p0}, Lcom/android/car/hal/VmsHalService;->appendLayer(Ljava/util/List;Landroid/car/vms/VmsLayer;)V

    .line 744
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 748
    .local v1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 751
    iget-object v2, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v2, p1}, Lcom/android/car/hal/VmsHalService;->appendBytes(Ljava/util/ArrayList;[B)V

    .line 752
    return-object v0
.end method

.method private static createStartSessionMessage(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 3
    .param p0, "coreId"    # I
    .param p1, "clientId"    # I

    .line 713
    const/16 v0, 0x11

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService;->createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 714
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 717
    .local v1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 720
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 722
    return-object v0
.end method

.method private static createSubscriptionStateMessage(ILandroid/car/vms/VmsSubscriptionState;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 6
    .param p0, "messageType"    # I
    .param p1, "subscriptionState"    # Landroid/car/vms/VmsSubscriptionState;

    .line 774
    invoke-static {p0}, Lcom/android/car/hal/VmsHalService;->createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 775
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 778
    .local v1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getSequenceNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 780
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getLayers()Ljava/util/Set;

    move-result-object v2

    .line 781
    .local v2, "layers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    invoke-virtual {p1}, Landroid/car/vms/VmsSubscriptionState;->getAssociatedLayers()Ljava/util/Set;

    move-result-object v3

    .line 784
    .local v3, "associatedLayers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsAssociatedLayer;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 786
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 789
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/vms/VmsLayer;

    .line 790
    .local v5, "layer":Landroid/car/vms/VmsLayer;
    invoke-static {v1, v5}, Lcom/android/car/hal/VmsHalService;->appendLayer(Ljava/util/List;Landroid/car/vms/VmsLayer;)V

    .line 791
    .end local v5    # "layer":Landroid/car/vms/VmsLayer;
    goto :goto_0

    .line 794
    :cond_0
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/vms/VmsAssociatedLayer;

    .line 795
    .local v5, "layer":Landroid/car/vms/VmsAssociatedLayer;
    invoke-static {v1, v5}, Lcom/android/car/hal/VmsHalService;->appendAssociatedLayer(Ljava/util/List;Landroid/car/vms/VmsAssociatedLayer;)V

    .line 796
    .end local v5    # "layer":Landroid/car/vms/VmsAssociatedLayer;
    goto :goto_1

    .line 797
    :cond_1
    return-object v0
.end method

.method private static createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 3
    .param p0, "messageType"    # I

    .line 840
    new-instance v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    invoke-direct {v0}, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;-><init>()V

    .line 841
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    const v1, 0x11e00c00

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 842
    const/4 v1, 0x0

    iput v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 843
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
    return-object v0
.end method

.method private static getClientMetricsProperty(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 214
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 216
    .local v0, "propId":I
    const-string v1, "VmsHalService"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 217
    const-string v3, "Metrics collection disabled"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return v2

    .line 220
    :cond_0
    const/high16 v3, -0x10000000

    and-int/2addr v3, v0

    const/high16 v4, 0x20000000

    const/4 v5, 0x1

    if-eq v3, v4, :cond_1

    .line 221
    new-array v3, v5, [Ljava/lang/Object;

    .line 222
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 221
    const-string v4, "Metrics collection disabled, non-vendor property: 0x%x"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    return v2

    .line 226
    :cond_1
    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "Metrics collection property: 0x%x"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    return v0
.end method

.method private handleAvailabilityRequestEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 664
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    .line 666
    invoke-interface {v0}, Landroid/car/vms/IVmsSubscriberService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v0

    .line 665
    const/16 v1, 0x8

    invoke-static {v1, v0}, Lcom/android/car/hal/VmsHalService;->createAvailableLayersMessage(ILandroid/car/vms/VmsAvailableLayers;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 664
    invoke-direct {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 667
    return-void
.end method

.method private handleDataEvent(Ljava/util/List;[B)V
    .locals 4
    .param p2, "payload"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;[B)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 466
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromMessage(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 467
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parsePublisherIdFromMessage(Ljava/util/List;)I

    move-result v1

    .line 472
    .local v1, "publisherId":I
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mPublisherService:Landroid/car/vms/IVmsPublisherService;

    iget-object v3, p0, Lcom/android/car/hal/VmsHalService;->mPublisherToken:Landroid/os/IBinder;

    invoke-interface {v2, v3, v0, v1, p2}, Landroid/car/vms/IVmsPublisherService;->publish(Landroid/os/IBinder;Landroid/car/vms/VmsLayer;I[B)V

    .line 473
    return-void
.end method

.method private handleOfferingEvent(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 622
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 623
    .local v0, "publisherId":I
    nop

    .line 624
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 631
    .local v1, "numLayerDependencies":I
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 632
    .local v2, "offeredLayers":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayerDependency;>;"
    const/4 v3, 0x3

    .line 633
    .local v3, "idx":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_2

    .line 634
    invoke-static {p1, v3}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerAtIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;

    move-result-object v5

    .line 635
    .local v5, "offeredLayer":Landroid/car/vms/VmsLayer;
    add-int/lit8 v3, v3, 0x3

    .line 637
    add-int/lit8 v6, v3, 0x1

    .end local v3    # "idx":I
    .local v6, "idx":I
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 638
    .local v3, "numDependenciesForLayer":I
    if-nez v3, :cond_0

    .line 639
    new-instance v7, Landroid/car/vms/VmsLayerDependency;

    invoke-direct {v7, v5}, Landroid/car/vms/VmsLayerDependency;-><init>(Landroid/car/vms/VmsLayer;)V

    invoke-interface {v2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_2

    .line 641
    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 643
    .local v7, "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    if-ge v8, v3, :cond_1

    .line 644
    invoke-static {p1, v6}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerAtIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;

    move-result-object v9

    .line 645
    .local v9, "dependantLayer":Landroid/car/vms/VmsLayer;
    add-int/lit8 v6, v6, 0x3

    .line 646
    invoke-interface {v7, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 643
    .end local v9    # "dependantLayer":Landroid/car/vms/VmsLayer;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 648
    .end local v8    # "j":I
    :cond_1
    new-instance v8, Landroid/car/vms/VmsLayerDependency;

    invoke-direct {v8, v5, v7}, Landroid/car/vms/VmsLayerDependency;-><init>(Landroid/car/vms/VmsLayer;Ljava/util/Set;)V

    invoke-interface {v2, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move v3, v6

    .line 633
    .end local v5    # "offeredLayer":Landroid/car/vms/VmsLayer;
    .end local v6    # "idx":I
    .end local v7    # "dependencies":Ljava/util/Set;, "Ljava/util/Set<Landroid/car/vms/VmsLayer;>;"
    .local v3, "idx":I
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 652
    .end local v4    # "i":I
    :cond_2
    new-instance v4, Landroid/car/vms/VmsLayersOffering;

    invoke-direct {v4, v2, v0}, Landroid/car/vms/VmsLayersOffering;-><init>(Ljava/util/Set;I)V

    .line 653
    .local v4, "offering":Landroid/car/vms/VmsLayersOffering;
    invoke-static {}, Landroid/car/vms/VmsOperationRecorder;->get()Landroid/car/vms/VmsOperationRecorder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/car/vms/VmsOperationRecorder;->setHalPublisherLayersOffering(Landroid/car/vms/VmsLayersOffering;)V

    .line 654
    iget-object v5, p0, Lcom/android/car/hal/VmsHalService;->mPublisherService:Landroid/car/vms/IVmsPublisherService;

    iget-object v6, p0, Lcom/android/car/hal/VmsHalService;->mPublisherToken:Landroid/os/IBinder;

    invoke-interface {v5, v6, v4}, Landroid/car/vms/IVmsPublisherService;->setLayersOffering(Landroid/os/IBinder;Landroid/car/vms/VmsLayersOffering;)V

    .line 655
    return-void
.end method

.method private handlePublisherIdRequest([B)V
    .locals 3
    .param p1, "payload"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 565
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService;->createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 567
    .local v0, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v1, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v1, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mPublisherService:Landroid/car/vms/IVmsPublisherService;

    invoke-interface {v2, p1}, Landroid/car/vms/IVmsPublisherService;->getPublisherId([B)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 569
    invoke-direct {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 570
    return-void
.end method

.method private handlePublisherInfoRequest(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 589
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 591
    .local v0, "publisherId":I
    nop

    .line 592
    const/16 v1, 0x10

    invoke-static {v1}, Lcom/android/car/hal/VmsHalService;->createVmsMessage(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 594
    .local v1, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    invoke-interface {v3, v0}, Landroid/car/vms/IVmsSubscriberService;->getPublisherInfo(I)[B

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/car/hal/VmsHalService;->appendBytes(Ljava/util/ArrayList;[B)V

    .line 596
    invoke-direct {p0, v1}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 597
    return-void
.end method

.method private handleStartSessionEvent(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 412
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 413
    .local v0, "coreId":I
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 414
    .local v1, "clientId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting new session with coreId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " client: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VmsHalService"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget v2, p0, Lcom/android/car/hal/VmsHalService;->mCoreId:I

    const-string v4, "Client manager not registered"

    if-eq v0, v2, :cond_1

    .line 417
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    if-eqz v2, :cond_0

    .line 418
    invoke-virtual {v2}, Lcom/android/car/vms/VmsClientManager;->onHalDisconnected()V

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :goto_0
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    invoke-virtual {v2}, Lcom/android/car/hal/VmsHalService$MessageQueue;->clear()V

    .line 425
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriptionStateSequence:I

    .line 426
    iput v2, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayersSequence:I

    .line 429
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    const/16 v5, 0x11

    iget v6, p0, Lcom/android/car/hal/VmsHalService;->mCoreId:I

    .line 430
    invoke-static {v6, v1}, Lcom/android/car/hal/VmsHalService;->createStartSessionMessage(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v6

    .line 429
    invoke-virtual {v2, v5, v6}, Lcom/android/car/hal/VmsHalService$MessageQueue;->enqueue(ILjava/lang/Object;)V

    .line 434
    :cond_1
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    if-eqz v2, :cond_2

    .line 435
    iget-object v4, p0, Lcom/android/car/hal/VmsHalService;->mPublisherClient:Landroid/car/vms/IVmsPublisherClient$Stub;

    iget-object v5, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    invoke-virtual {v2, v4, v5}, Lcom/android/car/vms/VmsClientManager;->onHalConnected(Landroid/car/vms/IVmsPublisherClient;Landroid/car/vms/IVmsSubscriberClient;)V

    goto :goto_1

    .line 437
    :cond_2
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :goto_1
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    if-eqz v2, :cond_3

    .line 443
    :try_start_0
    iget-object v4, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    .line 444
    invoke-interface {v2}, Landroid/car/vms/IVmsSubscriberService;->getAvailableLayers()Landroid/car/vms/VmsAvailableLayers;

    move-result-object v2

    .line 443
    invoke-virtual {v4, v2}, Landroid/car/vms/IVmsSubscriberClient$Stub;->onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 445
    :catch_0
    move-exception v2

    .line 446
    .local v2, "e":Landroid/os/RemoteException;
    const-string v4, "While publishing layer availability"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 447
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_2
    goto :goto_3

    .line 449
    :cond_3
    const-string v2, "Subscriber connect callback not registered"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_3
    return-void
.end method

.method private handleSubscribeEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 485
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromMessage(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 487
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    invoke-interface {v1, v2, v0}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 488
    return-void
.end method

.method private handleSubscribeToPublisherEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 502
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromMessage(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 503
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parsePublisherIdFromMessage(Ljava/util/List;)I

    move-result v1

    .line 509
    .local v1, "publisherId":I
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v3, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    invoke-interface {v2, v3, v0, v1}, Landroid/car/vms/IVmsSubscriberService;->addVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 510
    return-void
.end method

.method private handleSubscriptionsRequestEvent()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 676
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mPublisherService:Landroid/car/vms/IVmsPublisherService;

    .line 678
    invoke-interface {v0}, Landroid/car/vms/IVmsPublisherService;->getSubscriptions()Landroid/car/vms/VmsSubscriptionState;

    move-result-object v0

    .line 677
    const/16 v1, 0xa

    invoke-static {v1, v0}, Lcom/android/car/hal/VmsHalService;->createSubscriptionStateMessage(ILandroid/car/vms/VmsSubscriptionState;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0

    .line 676
    invoke-direct {p0, v0}, Lcom/android/car/hal/VmsHalService;->setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    .line 679
    return-void
.end method

.method private handleUnsubscribeEvent(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 522
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromMessage(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 524
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    invoke-interface {v1, v2, v0}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriber(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;)V

    .line 525
    return-void
.end method

.method private handleUnsubscribeFromPublisherEvent(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 539
    .local p1, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerFromMessage(Ljava/util/List;)Landroid/car/vms/VmsLayer;

    move-result-object v0

    .line 540
    .local v0, "vmsLayer":Landroid/car/vms/VmsLayer;
    invoke-static {p1}, Lcom/android/car/hal/VmsHalService;->parsePublisherIdFromMessage(Ljava/util/List;)I

    move-result v1

    .line 545
    .local v1, "publisherId":I
    iget-object v2, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    iget-object v3, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    invoke-interface {v2, v3, v0, v1}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberToPublisher(Landroid/car/vms/IVmsSubscriberClient;Landroid/car/vms/VmsLayer;I)V

    .line 546
    return-void
.end method

.method private static parsePublisherIdFromMessage(Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 907
    .local p0, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static parseVmsLayerAtIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Landroid/car/vms/VmsLayer;"
        }
    .end annotation

    .line 902
    .local p0, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v0, p1, 0x3

    invoke-interface {p0, p1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 903
    .local v0, "layerValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Landroid/car/vms/VmsLayer;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Landroid/car/vms/VmsLayer;-><init>(III)V

    return-object v1
.end method

.method private static parseVmsLayerFromMessage(Ljava/util/List;)Landroid/car/vms/VmsLayer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/vms/VmsLayer;"
        }
    .end annotation

    .line 897
    .local p0, "message":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/car/hal/VmsHalService;->parseVmsLayerAtIndex(Ljava/util/List;I)Landroid/car/vms/VmsLayer;

    move-result-object v0

    return-object v0
.end method

.method private setPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 5
    .param p1, "vehicleProp"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 682
    iget-object v0, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v0, v0, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 685
    .local v0, "messageType":I
    iget-boolean v1, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    if-nez v1, :cond_0

    .line 686
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HAL unsupported while attempting to send "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 686
    const-string v2, "VmsHalService"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return-void

    .line 692
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/VehicleHal;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    nop

    .line 699
    return-void

    .line 693
    :catch_0
    move-exception v1

    .line 694
    .local v1, "e":Lcom/android/car/hal/PropertyTimeoutException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set, property not ready 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x11e00c00

    .line 695
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 694
    const-string v3, "CAR.PROPERTY"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance v2, Landroid/os/RemoteException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Timeout while sending "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 697
    invoke-static {v0}, Landroid/hardware/automotive/vehicle/V2_0/VmsMessageType;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 303
    const-string v0, "*VMS HAL*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsProperty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    if-eqz v1, :cond_0

    const-string v1, "supported"

    goto :goto_0

    :cond_0
    const-string v1, "unsupported"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsPublisherService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mPublisherService:Landroid/car/vms/IVmsPublisherService;

    const-string v2, "unregistered"

    if-eqz v1, :cond_1

    const-string v1, "registered "

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 306
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSubscriptionStateSequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriptionStateSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsSubscriberService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    if-eqz v1, :cond_2

    const-string v2, "registered"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 310
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAvailableLayersSequence: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayersSequence:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public dumpMetrics(Ljava/io/FileDescriptor;)V
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;

    .line 321
    iget v0, p0, Lcom/android/car/hal/VmsHalService;->mClientMetricsProperty:I

    const-string v1, "VmsHalService"

    if-nez v0, :cond_0

    .line 322
    const-string v0, "Metrics collection is disabled"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void

    .line 326
    :cond_0
    const/4 v2, 0x0

    .line 328
    .local v2, "vehicleProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_start_0
    iget-object v3, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v3, v0}, Lcom/android/car/hal/VehicleHal;->get(I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v0
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 331
    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Lcom/android/car/hal/PropertyTimeoutException;
    const-string v3, "Timeout while reading metrics from client"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    .end local v0    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    if-nez v2, :cond_1

    .line 334
    return-void

    .line 337
    :cond_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 339
    .local v0, "fout":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v3, v3, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 340
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 343
    goto :goto_1

    .line 341
    :catch_1
    move-exception v3

    .line 342
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "Error writing metrics to output stream"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    invoke-static {v0}, Lcom/android/car/hal/VmsHalService$MessageQueue;->access$1000(Lcom/android/car/hal/VmsHalService$MessageQueue;)Landroid/os/Handler;

    move-result-object v0

    return-object v0
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 355
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 356
    .local v1, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    iget-object v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v2, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->int32Values:Ljava/util/ArrayList;

    .line 357
    .local v2, "vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 361
    .local v3, "messageType":I
    const/16 v4, 0xc

    const-string v5, "VmsHalService"

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0xf

    if-eq v3, v4, :cond_1

    const/16 v4, 0x11

    if-eq v3, v4, :cond_0

    packed-switch v3, :pswitch_data_0

    .line 395
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected message type: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 389
    :pswitch_0
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->handleSubscriptionsRequestEvent()V

    .line 390
    goto :goto_1

    .line 386
    :pswitch_1
    invoke-direct {p0}, Lcom/android/car/hal/VmsHalService;->handleAvailabilityRequestEvent()V

    .line 387
    goto :goto_1

    .line 375
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleUnsubscribeFromPublisherEvent(Ljava/util/List;)V

    .line 376
    goto :goto_1

    .line 369
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleUnsubscribeEvent(Ljava/util/List;)V

    .line 370
    goto :goto_1

    .line 372
    :pswitch_4
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleSubscribeToPublisherEvent(Ljava/util/List;)V

    .line 373
    goto :goto_1

    .line 366
    :pswitch_5
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleSubscribeEvent(Ljava/util/List;)V

    .line 367
    goto :goto_1

    .line 392
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleStartSessionEvent(Ljava/util/List;)V

    .line 393
    goto :goto_1

    .line 381
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handlePublisherInfoRequest(Ljava/util/List;)V

    .line 383
    :pswitch_6
    invoke-direct {p0, v2}, Lcom/android/car/hal/VmsHalService;->handleOfferingEvent(Ljava/util/List;)V

    .line 384
    goto :goto_1

    .line 397
    :catch_0
    move-exception v4

    goto :goto_2

    .line 378
    :cond_2
    iget-object v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/car/hal/VmsHalService;->handlePublisherIdRequest([B)V

    .line 379
    goto :goto_1

    .line 363
    :cond_3
    iget-object v4, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->value:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;

    iget-object v4, v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue$RawValue;->bytes:Ljava/util/ArrayList;

    invoke-static {v4}, Lcom/android/car/CarServiceUtils;->toByteArray(Ljava/util/List;)[B

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/android/car/hal/VmsHalService;->handleDataEvent(Ljava/util/List;[B)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    nop

    .line 399
    :goto_1
    goto :goto_3

    .line 398
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "While handling: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 400
    .end local v1    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "messageType":I
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_3
    goto/16 :goto_0

    .line 401
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init()V
    .locals 4

    .line 266
    iget-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    const-string v1, "VmsHalService"

    if-eqz v0, :cond_0

    .line 267
    const-string v0, "Initializing VmsHalService VHAL property"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    const v1, 0x11e00c00

    invoke-virtual {v0, p0, v1}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 274
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    invoke-virtual {v0}, Lcom/android/car/hal/VmsHalService$MessageQueue;->init()V

    .line 275
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    const/16 v1, 0x11

    iget v2, p0, Lcom/android/car/hal/VmsHalService;->mCoreId:I

    const/4 v3, -0x1

    .line 276
    invoke-static {v2, v3}, Lcom/android/car/hal/VmsHalService;->createStartSessionMessage(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2

    .line 275
    invoke-virtual {v0, v1, v2}, Lcom/android/car/hal/VmsHalService$MessageQueue;->enqueue(ILjava/lang/Object;)V

    .line 277
    return-void

    .line 270
    :cond_0
    const-string v0, "VmsHalService VHAL property not supported"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-void
.end method

.method public release()V
    .locals 3

    .line 281
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mMessageQueue:Lcom/android/car/hal/VmsHalService$MessageQueue;

    invoke-virtual {v0}, Lcom/android/car/hal/VmsHalService$MessageQueue;->release()V

    .line 282
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriptionStateSequence:I

    .line 283
    iput v0, p0, Lcom/android/car/hal/VmsHalService;->mAvailableLayersSequence:I

    .line 285
    iget-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    if-eqz v0, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    const v1, 0x11e00c00

    invoke-virtual {v0, p0, v1}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 292
    iget-object v0, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    if-eqz v0, :cond_0

    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberClient:Landroid/car/vms/IVmsSubscriberClient$Stub;

    invoke-interface {v0, v1}, Landroid/car/vms/IVmsSubscriberService;->removeVmsSubscriberToNotifications(Landroid/car/vms/IVmsSubscriberClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    goto :goto_0

    .line 295
    :catch_0
    move-exception v0

    .line 296
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VmsHalService"

    const-string v2, "While removing subscriber callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 299
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    return-void
.end method

.method public setClientManager(Lcom/android/car/vms/VmsClientManager;)V
    .locals 0
    .param p1, "clientManager"    # Lcom/android/car/vms/VmsClientManager;

    .line 242
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService;->mClientManager:Lcom/android/car/vms/VmsClientManager;

    .line 243
    return-void
.end method

.method public setVmsSubscriberService(Landroid/car/vms/IVmsSubscriberService;)V
    .locals 0
    .param p1, "service"    # Landroid/car/vms/IVmsSubscriberService;

    .line 249
    iput-object p1, p0, Lcom/android/car/hal/VmsHalService;->mSubscriberService:Landroid/car/vms/IVmsSubscriberService;

    .line 250
    return-void
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;)",
            "Ljava/util/Collection<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .line 255
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 256
    .local v1, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget v2, v1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    const v3, 0x11e00c00

    if-ne v2, v3, :cond_0

    .line 257
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/hal/VmsHalService;->mIsSupported:Z

    .line 258
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 260
    .end local v1    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    :cond_0
    goto :goto_0

    .line 261
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
