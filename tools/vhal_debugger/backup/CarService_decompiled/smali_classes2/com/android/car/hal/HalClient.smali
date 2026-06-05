.class Lcom/android/car/hal/HalClient;
.super Ljava/lang/Object;
.source "HalClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/HalClient$VehicleCallback;,
        Lcom/android/car/hal/HalClient$CallbackHandler;,
        Lcom/android/car/hal/HalClient$PropertySetError;,
        Lcom/android/car/hal/HalClient$ValueResult;,
        Lcom/android/car/hal/HalClient$ObjectWrapper;,
        Lcom/android/car/hal/HalClient$RetriableCallback;
    }
.end annotation


# static fields
.field private static final SLEEP_BETWEEN_RETRIABLE_INVOKES_MS:I = 0x32

.field private static final WAIT_CAP_FOR_RETRIABLE_RESULT_MS:I = 0x7d0


# instance fields
.field private final mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

.field private final mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;


# direct methods
.method constructor <init>(Landroid/hardware/automotive/vehicle/V2_0/IVehicle;Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V
    .locals 2
    .param p1, "vehicle"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicle;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "callback"    # Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    .line 64
    new-instance v0, Lcom/android/car/hal/HalClient$CallbackHandler;

    invoke-direct {v0, p2, p3}, Lcom/android/car/hal/HalClient$CallbackHandler;-><init>(Landroid/os/Looper;Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;)V

    .line 65
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/android/car/hal/HalClient$VehicleCallback;

    invoke-direct {v1, v0}, Lcom/android/car/hal/HalClient$VehicleCallback;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/car/hal/HalClient;->mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    .line 66
    return-void
.end method

.method private internalGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Lcom/android/car/hal/HalClient$ValueResult;
    .locals 4
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 136
    new-instance v0, Lcom/android/car/hal/HalClient$ValueResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/hal/HalClient$ValueResult;-><init>(Lcom/android/car/hal/HalClient$1;)V

    .line 138
    .local v0, "result":Lcom/android/car/hal/HalClient$ValueResult;
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    new-instance v2, Lcom/android/car/hal/-$$Lambda$HalClient$Tk2P2ZkQluWkrdwxcsV2ZCxY2h8;

    invoke-direct {v2, v0}, Lcom/android/car/hal/-$$Lambda$HalClient$Tk2P2ZkQluWkrdwxcsV2ZCxY2h8;-><init>(Lcom/android/car/hal/HalClient$ValueResult;)V

    invoke-interface {v1, p1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->get(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Landroid/hardware/automotive/vehicle/V2_0/IVehicle$getCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "CAR.HAL"

    const-string v3, "Failed to get value from vehicle HAL"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v2, 0x1

    iput v2, v0, Lcom/android/car/hal/HalClient$ValueResult;->status:I

    .line 148
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    return-object v0
.end method

.method private static invokeRetriable(Lcom/android/car/hal/HalClient$RetriableCallback;JJ)I
    .locals 6
    .param p0, "callback"    # Lcom/android/car/hal/HalClient$RetriableCallback;
    .param p1, "timeoutMs"    # J
    .param p3, "sleepMs"    # J

    .line 157
    invoke-interface {p0}, Lcom/android/car/hal/HalClient$RetriableCallback;->action()I

    move-result v0

    .line 158
    .local v0, "status":I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 159
    .local v1, "startTime":J
    :goto_0
    const/4 v3, 0x1

    if-ne v3, v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v3, v3, p1

    if-gez v3, :cond_0

    .line 161
    :try_start_0
    invoke-static {p3, p4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    nop

    .line 167
    invoke-interface {p0}, Lcom/android/car/hal/HalClient$RetriableCallback;->action()I

    move-result v0

    goto :goto_0

    .line 162
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/InterruptedException;
    const-string v4, "CAR.HAL"

    const-string v5, "Thread was interrupted while waiting for vehicle HAL."

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 169
    .end local v3    # "e":Ljava/lang/InterruptedException;
    :cond_0
    return v0
.end method

.method static synthetic lambda$internalGet$2(Lcom/android/car/hal/HalClient$ValueResult;ILandroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 0
    .param p0, "result"    # Lcom/android/car/hal/HalClient$ValueResult;
    .param p1, "status"    # I
    .param p2, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 140
    iput p1, p0, Lcom/android/car/hal/HalClient$ValueResult;->status:I

    .line 141
    iput-object p2, p0, Lcom/android/car/hal/HalClient$ValueResult;->propValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 142
    return-void
.end method


# virtual methods
.method getAllPropConfigs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    invoke-interface {v0}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->getAllPropConfigs()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .locals 10
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/android/car/hal/HalClient$ObjectWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/car/hal/HalClient$ObjectWrapper;-><init>(Lcom/android/car/hal/HalClient$1;)V

    .line 109
    .local v0, "valueWrapper":Lcom/android/car/hal/HalClient$ObjectWrapper;, "Lcom/android/car/hal/HalClient$ObjectWrapper<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    new-instance v1, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/car/hal/-$$Lambda$HalClient$4tULf787eBeMd7TnWMQdfv1PDA4;-><init>(Lcom/android/car/hal/HalClient;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/HalClient$ObjectWrapper;)V

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x32

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/car/hal/HalClient;->invokeRetriable(Lcom/android/car/hal/HalClient$RetriableCallback;JJ)I

    move-result v1

    .line 115
    .local v1, "status":I
    iget v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 116
    .local v2, "propId":I
    iget v3, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    .line 117
    .local v3, "areaId":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x2

    if-eq v6, v1, :cond_2

    .line 122
    if-eq v5, v1, :cond_1

    .line 126
    if-nez v1, :cond_0

    iget-object v7, v0, Lcom/android/car/hal/HalClient$ObjectWrapper;->object:Ljava/lang/Object;

    if-eqz v7, :cond_0

    .line 132
    iget-object v4, v0, Lcom/android/car/hal/HalClient$ObjectWrapper;->object:Ljava/lang/Object;

    check-cast v4, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    return-object v4

    .line 127
    :cond_0
    new-instance v7, Ljava/lang/IllegalStateException;

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    .line 129
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v6

    .line 128
    const-string v4, "Failed to get property: 0x%x, areaId: 0x%x, code: %d"

    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 123
    :cond_1
    new-instance v4, Lcom/android/car/hal/PropertyTimeoutException;

    invoke-direct {v4, v2}, Lcom/android/car/hal/PropertyTimeoutException;-><init>(I)V

    throw v4

    .line 118
    :cond_2
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-array v6, v6, [Ljava/lang/Object;

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v5

    const-string v4, "Failed to get value for: 0x%x, areaId: 0x%x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v7, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method public synthetic lambda$getValue$1$HalClient(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;Lcom/android/car/hal/HalClient$ObjectWrapper;)I
    .locals 2
    .param p1, "requestedPropValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .param p2, "valueWrapper"    # Lcom/android/car/hal/HalClient$ObjectWrapper;

    .line 110
    invoke-direct {p0, p1}, Lcom/android/car/hal/HalClient;->internalGet(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)Lcom/android/car/hal/HalClient$ValueResult;

    move-result-object v0

    .line 111
    .local v0, "res":Lcom/android/car/hal/HalClient$ValueResult;
    iget-object v1, v0, Lcom/android/car/hal/HalClient$ValueResult;->propValue:Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    iput-object v1, p2, Lcom/android/car/hal/HalClient$ObjectWrapper;->object:Ljava/lang/Object;

    .line 112
    iget v1, v0, Lcom/android/car/hal/HalClient$ValueResult;->status:I

    return v1
.end method

.method public synthetic lambda$setValue$0$HalClient(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I
    .locals 3
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    invoke-interface {v0, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CAR.HAL"

    const-string v2, "Failed to set value"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 86
    const/4 v1, 0x1

    return v1
.end method

.method public setValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    .locals 7
    .param p1, "propValue"    # Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/car/hal/PropertyTimeoutException;
        }
    .end annotation

    .line 81
    new-instance v0, Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;

    invoke-direct {v0, p0, p1}, Lcom/android/car/hal/-$$Lambda$HalClient$ISrOz3scOegDP8QDVNtMY9DvoPQ;-><init>(Lcom/android/car/hal/HalClient;Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V

    const-wide/16 v1, 0x7d0

    const-wide/16 v3, 0x32

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/car/hal/HalClient;->invokeRetriable(Lcom/android/car/hal/HalClient$RetriableCallback;JJ)I

    move-result v0

    .line 90
    .local v0, "status":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq v3, v0, :cond_2

    .line 96
    if-eq v2, v0, :cond_1

    .line 100
    if-nez v0, :cond_0

    .line 105
    return-void

    .line 101
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 103
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v3

    .line 102
    const-string v1, "Failed to set property: 0x%x, areaId: 0x%x, code: %d"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 97
    :cond_1
    new-instance v1, Lcom/android/car/hal/PropertyTimeoutException;

    iget v2, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {v1, v2}, Lcom/android/car/hal/PropertyTimeoutException;-><init>(I)V

    throw v1

    .line 91
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-array v3, v3, [Ljava/lang/Object;

    iget v5, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    .line 93
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v1

    iget v1, p1, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->areaId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v2

    .line 92
    const-string v1, "Failed to set value for: 0x%x, areaId: 0x%x"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public varargs subscribe([Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;)V
    .locals 4
    .param p1, "options"    # [Landroid/hardware/automotive/vehicle/V2_0/SubscribeOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, v1, v2}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->subscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;Ljava/util/ArrayList;)I

    .line 74
    return-void
.end method

.method public unsubscribe(I)V
    .locals 2
    .param p1, "prop"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/car/hal/HalClient;->mVehicle:Landroid/hardware/automotive/vehicle/V2_0/IVehicle;

    iget-object v1, p0, Lcom/android/car/hal/HalClient;->mInternalCallback:Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;

    invoke-interface {v0, v1, p1}, Landroid/hardware/automotive/vehicle/V2_0/IVehicle;->unsubscribe(Landroid/hardware/automotive/vehicle/V2_0/IVehicleCallback;I)I

    .line 78
    return-void
.end method
