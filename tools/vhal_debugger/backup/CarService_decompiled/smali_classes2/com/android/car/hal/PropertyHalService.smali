.class public Lcom/android/car/hal/PropertyHalService;
.super Lcom/android/car/hal/HalServiceBase;
.source "PropertyHalService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PropertyHalService"


# instance fields
.field private final mDbg:Z

.field private final mEventsToDispatch:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

.field private final mProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mRates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscribedPropIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mVehicleHal:Lcom/android/car/hal/VehicleHal;


# direct methods
.method public constructor <init>(Lcom/android/car/hal/VehicleHal;)V
    .locals 2
    .param p1, "vehicleHal"    # Lcom/android/car/hal/VehicleHal;

    .line 107
    invoke-direct {p0}, Lcom/android/car/hal/HalServiceBase;-><init>()V

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/hal/PropertyHalService;->mDbg:Z

    .line 51
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    .line 52
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    .line 54
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mRates:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    .line 108
    new-instance v0, Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-direct {v0}, Lcom/android/car/hal/PropertyHalServiceIds;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    .line 109
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    .line 110
    iput-object p1, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    .line 112
    const-string v0, "PropertyHalService"

    const-string v1, "started PropertyHalService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method private halToManagerPropId(I)I
    .locals 2
    .param p1, "halPropId"    # I

    .line 83
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    return p1

    .line 86
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private managerToHalPropId(I)I
    .locals 2
    .param p1, "propId"    # I

    .line 71
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    return p1

    .line 74
    :cond_0
    const/4 v0, -0x1

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 339
    const-string v0, "PropertyHalService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    const-string v0, "  Properties available:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 342
    .local v1, "prop":Landroid/car/hardware/CarPropertyConfig;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    .end local v1    # "prop":Landroid/car/hardware/CarPropertyConfig;
    goto :goto_0

    .line 344
    :cond_0
    return-void
.end method

.method public getProperty(II)Landroid/car/hardware/CarPropertyValue;
    .locals 5
    .param p1, "mgrPropId"    # I
    .param p2, "areaId"    # I

    .line 144
    invoke-direct {p0, p1}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 145
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 149
    const/4 v1, 0x0

    .line 151
    .local v1, "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2, v0, p2}, Lcom/android/car/hal/VehicleHal;->get(II)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    .line 154
    goto :goto_0

    .line 152
    :catch_0
    move-exception v2

    .line 153
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get, property not ready 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.PROPERTY"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 156
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :goto_0
    if-nez v1, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-static {v1, p1}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;I)Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    :goto_1
    return-object v2

    .line 146
    .end local v1    # "value":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getPropertyList()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation

    .line 132
    const-string v0, "PropertyHalService"

    const-string v1, "getPropertyList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    return-object v0
.end method

.method public getReadPermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "propId"    # I

    .line 173
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalServiceIds;->getReadPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSampleRate(I)F
    .locals 1
    .param p1, "propId"    # I

    .line 164
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/VehicleHal;->getSampleRate(I)F

    move-result v0

    return v0
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 1
    .param p1, "propId"    # I

    .line 182
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalServiceIds;->getWritePermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleHalEvents(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;",
            ">;)V"
        }
    .end annotation

    .line 301
    .local p1, "values":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;>;"
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 303
    .local v1, "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    if-eqz v1, :cond_3

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    .line 306
    .local v2, "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    if-nez v2, :cond_0

    .line 307
    goto :goto_0

    .line 309
    :cond_0
    iget v3, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-direct {p0, v3}, Lcom/android/car/hal/PropertyHalService;->halToManagerPropId(I)I

    move-result v3

    .line 310
    .local v3, "mgrPropId":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 311
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Property is not supported: 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;->prop:I

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PropertyHalService"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    goto :goto_0

    .line 314
    :cond_1
    invoke-static {v2, v3}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyValue(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;I)Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    .line 315
    .local v4, "propVal":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    new-instance v5, Landroid/car/hardware/property/CarPropertyEvent;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v4}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 317
    .local v5, "event":Landroid/car/hardware/property/CarPropertyEvent;
    nop

    .line 318
    iget-object v6, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v6, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 320
    .end local v2    # "v":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v3    # "mgrPropId":I
    .end local v4    # "propVal":Landroid/car/hardware/CarPropertyValue;, "Landroid/car/hardware/CarPropertyValue<*>;"
    .end local v5    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    goto :goto_0

    .line 321
    :cond_2
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-interface {v1, v0}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertyChange(Ljava/util/List;)V

    .line 322
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mEventsToDispatch:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 324
    :cond_3
    return-void

    .line 303
    .end local v1    # "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public handlePropertySetError(II)V
    .locals 2
    .param p1, "property"    # I
    .param p2, "area"    # I

    .line 329
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 330
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 331
    .local v1, "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    if-eqz v1, :cond_0

    .line 333
    invoke-interface {v1, p1, p2}, Lcom/android/car/hal/PropertyHalService$PropertyHalListener;->onPropertySetError(II)V

    .line 335
    :cond_0
    return-void

    .line 331
    .end local v1    # "listener":Lcom/android/car/hal/PropertyHalService$PropertyHalListener;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 2

    .line 255
    const-string v0, "PropertyHalService"

    const-string v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-void
.end method

.method public release()V
    .locals 5

    .line 262
    const-string v0, "PropertyHalService"

    const-string v1, "release()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 266
    .local v2, "prop":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, p0, v4}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 267
    .end local v2    # "prop":Ljava/lang/Integer;
    goto :goto_0

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 269
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 270
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 272
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 273
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 274
    monitor-exit v1

    .line 275
    return-void

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 269
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 121
    iget-object v0, p0, Lcom/android/car/hal/PropertyHalService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iput-object p1, p0, Lcom/android/car/hal/PropertyHalService;->mListener:Lcom/android/car/hal/PropertyHalService$PropertyHalListener;

    .line 123
    monitor-exit v0

    .line 124
    return-void

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 190
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 191
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 195
    invoke-static {p1, v0}, Lcom/android/car/hal/CarPropertyUtils;->toVehiclePropValue(Landroid/car/hardware/CarPropertyValue;I)Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;

    move-result-object v1

    .line 197
    .local v1, "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2, v1}, Lcom/android/car/hal/VehicleHal;->set(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;)V
    :try_end_0
    .catch Lcom/android/car/hal/PropertyTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    nop

    .line 202
    return-void

    .line 198
    :catch_0
    move-exception v2

    .line 199
    .local v2, "e":Lcom/android/car/hal/PropertyTimeoutException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set, property not ready 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CAR.PROPERTY"

    invoke-static {v4, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 200
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 192
    .end local v1    # "halProp":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropValue;
    .end local v2    # "e":Lcom/android/car/hal/PropertyTimeoutException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public subscribeProperty(IF)V
    .locals 5
    .param p1, "propId"    # I
    .param p2, "rate"    # F

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "subscribeProperty propId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PropertyHalService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-direct {p0, p1}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 214
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/CarPropertyConfig;

    .line 220
    .local v1, "cfg":Landroid/car/hardware/CarPropertyConfig;
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMaxSampleRate()F

    move-result v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 221
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMaxSampleRate()F

    move-result p2

    move v2, p2

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMinSampleRate()F

    move-result v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_1

    .line 223
    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyConfig;->getMinSampleRate()F

    move-result p2

    move v2, p2

    goto :goto_0

    .line 222
    :cond_1
    move v2, p2

    .line 225
    .end local p2    # "rate":F
    .local v2, "rate":F
    :goto_0
    iget-object v3, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    monitor-enter v3

    .line 226
    :try_start_0
    iget-object p2, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 227
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object p2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {p2, p0, v0, v2}, Lcom/android/car/hal/VehicleHal;->subscribeProperty(Lcom/android/car/hal/HalServiceBase;IF)V

    .line 229
    return-void

    .line 227
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 215
    .end local v1    # "cfg":Landroid/car/hardware/CarPropertyConfig;
    .end local v2    # "rate":F
    .restart local p2    # "rate":F
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public takeSupportedProperties(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
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

    .line 280
    .local p1, "allProperties":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 282
    .local v0, "taken":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "PropertyHalService"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;

    .line 283
    .local v2, "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    iget-object v4, p0, Lcom/android/car/hal/PropertyHalService;->mPropIds:Lcom/android/car/hal/PropertyHalServiceIds;

    iget v5, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-virtual {v4, v5}, Lcom/android/car/hal/PropertyHalServiceIds;->isSupportedProperty(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 284
    iget v4, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v2, v4}, Lcom/android/car/hal/CarPropertyUtils;->toCarPropertyConfig(Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;I)Landroid/car/hardware/CarPropertyConfig;

    move-result-object v4

    .line 285
    .local v4, "config":Landroid/car/hardware/CarPropertyConfig;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    iget-object v5, p0, Lcom/android/car/hal/PropertyHalService;->mProps:Ljava/util/Map;

    iget v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "takeSupportedProperties: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;->prop:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    .end local v2    # "p":Landroid/hardware/automotive/vehicle/V2_0/VehiclePropConfig;
    .end local v4    # "config":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 293
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takeSupportedProperties() took "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " properties"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-object v0
.end method

.method public unsubscribeProperty(I)V
    .locals 4
    .param p1, "propId"    # I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unsubscribeProperty propId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PropertyHalService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0, p1}, Lcom/android/car/hal/PropertyHalService;->managerToHalPropId(I)I

    move-result v0

    .line 240
    .local v0, "halPropId":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    monitor-enter v1

    .line 245
    :try_start_0
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mSubscribedPropIds:Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 247
    iget-object v2, p0, Lcom/android/car/hal/PropertyHalService;->mVehicleHal:Lcom/android/car/hal/VehicleHal;

    invoke-virtual {v2, p0, v0}, Lcom/android/car/hal/VehicleHal;->unsubscribeProperty(Lcom/android/car/hal/HalServiceBase;I)V

    .line 249
    :cond_0
    monitor-exit v1

    .line 250
    return-void

    .line 249
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 241
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid property Id : 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
