.class public Lcom/android/car/CarPropertyService;
.super Landroid/car/hardware/property/ICarProperty$Stub;
.source "CarPropertyService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Lcom/android/car/hal/PropertyHalService$PropertyHalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarPropertyService$Client;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "Property.service"


# instance fields
.field private final mClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarPropertyService$Client;",
            ">;"
        }
    .end annotation
.end field

.field private mConfigs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/CarPropertyConfig<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHal:Lcom/android/car/hal/PropertyHalService;

.field private mListenerIsSet:Z

.field private final mLock:Ljava/lang/Object;

.field private final mPropIdClientMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/android/car/CarPropertyService$Client;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/car/hal/PropertyHalService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hal"    # Lcom/android/car/hal/PropertyHalService;

    .line 63
    invoke-direct {p0}, Landroid/car/hardware/property/ICarProperty$Stub;-><init>()V

    .line 56
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    .line 65
    const-string v0, "Property.service"

    const-string v1, "CarPropertyService started!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-object p2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    .line 68
    iput-object p1, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarPropertyService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;

    .line 51
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/CarPropertyService;ILandroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarPropertyService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/IBinder;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/car/CarPropertyService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    return-void
.end method

.method private unregisterListenerBinderLocked(ILandroid/os/IBinder;)V
    .locals 7
    .param p1, "propId"    # I
    .param p2, "listenerBinder"    # Landroid/os/IBinder;

    .line 259
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarPropertyService$Client;

    .line 260
    .local v0, "client":Lcom/android/car/CarPropertyService$Client;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 261
    .local v1, "propertyClients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Property.service"

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListener: propId is not in config list:0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    return-void

    .line 266
    :cond_0
    if-eqz v0, :cond_6

    if-nez v1, :cond_1

    goto :goto_2

    .line 269
    :cond_1
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 270
    invoke-virtual {v0, p1}, Lcom/android/car/CarPropertyService$Client;->removeProperty(I)V

    goto :goto_0

    .line 272
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unregisterListenerBinderLocked: Listener was not registered for propId=0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 278
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2, p1}, Lcom/android/car/hal/PropertyHalService;->unsubscribeProperty(I)V

    .line 279
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 282
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 283
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    goto :goto_3

    .line 287
    :cond_3
    const/4 v2, 0x0

    .line 288
    .local v2, "maxRate":F
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarPropertyService$Client;

    .line 289
    .local v4, "c":Lcom/android/car/CarPropertyService$Client;
    invoke-virtual {v4, p1}, Lcom/android/car/CarPropertyService$Client;->getRate(I)F

    move-result v5

    .line 290
    .local v5, "rate":F
    cmpl-float v6, v5, v2

    if-lez v6, :cond_4

    .line 291
    move v2, v5

    .line 293
    .end local v4    # "c":Lcom/android/car/CarPropertyService$Client;
    .end local v5    # "rate":F
    :cond_4
    goto :goto_1

    .line 295
    :cond_5
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v3, p1, v2}, Lcom/android/car/hal/PropertyHalService;->subscribeProperty(IF)V

    goto :goto_3

    .line 267
    .end local v2    # "maxRate":F
    :cond_6
    :goto_2
    const-string v2, "unregisterListenerBinderLocked: Listener was not previously registered."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_7
    :goto_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 161
    return-void
.end method

.method public getProperty(II)Landroid/car/hardware/CarPropertyValue;
    .locals 2
    .param p1, "prop"    # I
    .param p2, "zone"    # I

    .line 320
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProperty: propId is not in config list:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v0, 0x0

    return-object v0

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 326
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1, p2}, Lcom/android/car/hal/PropertyHalService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    return-object v0
.end method

.method public getPropertyList()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/CarPropertyConfig;",
            ">;"
        }
    .end annotation

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 306
    .local v0, "returnList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/CarPropertyConfig;>;"
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    .line 307
    .local v2, "c":Landroid/car/hardware/CarPropertyConfig;
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getPropertyId()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/car/ICarImpl;->hasPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    .end local v2    # "c":Landroid/car/hardware/CarPropertyConfig;
    :cond_0
    goto :goto_0

    .line 313
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPropertyList returns "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " configs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Property.service"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-object v0
.end method

.method public getReadPermission(I)Ljava/lang/String;
    .locals 2
    .param p1, "propId"    # I

    .line 331
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReadPermission: propId is not in config list:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/4 v0, 0x0

    return-object v0

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWritePermission(I)Ljava/lang/String;
    .locals 2
    .param p1, "propId"    # I

    .line 341
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWritePermission: propId is not in config list:0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const/4 v0, 0x0

    return-object v0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0, p1}, Lcom/android/car/hal/PropertyHalService;->getWritePermission(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v0}, Lcom/android/car/hal/PropertyHalService;->getPropertyList()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cache CarPropertyConfigs "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    return-void
.end method

.method public onPropertyChange(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/hardware/property/CarPropertyEvent;",
            ">;)V"
        }
    .end annotation

    .line 364
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 367
    .local v0, "eventsToDispatch":Ljava/util/Map;, "Ljava/util/Map<Landroid/os/IBinder;Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "Property.service"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/property/CarPropertyEvent;

    .line 368
    .local v2, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-virtual {v2}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v4

    invoke-virtual {v4}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v4

    .line 369
    .local v4, "propId":I
    iget-object v5, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 370
    .local v5, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    if-nez v5, :cond_0

    .line 371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPropertyChange: no listener registered for propId=0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 371
    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    goto :goto_0

    .line 376
    :cond_0
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/car/CarPropertyService$Client;

    .line 377
    .local v6, "c":Lcom/android/car/CarPropertyService$Client;
    invoke-virtual {v6}, Lcom/android/car/CarPropertyService$Client;->getListenerBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 378
    .local v7, "listenerBinder":Landroid/os/IBinder;
    nop

    .line 379
    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 380
    .local v8, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    if-nez v8, :cond_1

    .line 382
    new-instance v9, Landroid/util/Pair;

    invoke-virtual {v6}, Lcom/android/car/CarPropertyService$Client;->getListener()Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object v10

    new-instance v11, Ljava/util/LinkedList;

    invoke-direct {v11}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v9, v10, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v8, v9

    .line 383
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_1
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    .end local v6    # "c":Lcom/android/car/CarPropertyService$Client;
    .end local v7    # "listenerBinder":Landroid/os/IBinder;
    .end local v8    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    goto :goto_1

    .line 387
    .end local v2    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    .end local v4    # "propId":I
    .end local v5    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    :cond_2
    goto :goto_0

    .line 389
    :cond_3
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 391
    .local v2, "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    :try_start_0
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Landroid/car/hardware/property/ICarPropertyEventListener;

    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/util/List;

    invoke-interface {v4, v5}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    goto :goto_3

    .line 392
    :catch_0
    move-exception v4

    .line 395
    .local v4, "ex":Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onEvent calling failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    .end local v2    # "p":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/car/hardware/property/ICarPropertyEventListener;Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;>;"
    .end local v4    # "ex":Landroid/os/RemoteException;
    :goto_3
    goto :goto_2

    .line 398
    :cond_4
    return-void
.end method

.method public onPropertySetError(II)V
    .locals 8
    .param p1, "property"    # I
    .param p2, "area"    # I

    .line 402
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 403
    .local v0, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    const-string v1, "Property.service"

    if-eqz v0, :cond_1

    .line 404
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 405
    .local v2, "eventList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    invoke-static {p1, p2}, Landroid/car/hardware/property/CarPropertyEvent;->createErrorEvent(II)Landroid/car/hardware/property/CarPropertyEvent;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/car/CarPropertyService$Client;

    .line 408
    .local v4, "c":Lcom/android/car/CarPropertyService$Client;
    :try_start_0
    invoke-virtual {v4}, Lcom/android/car/CarPropertyService$Client;->getListener()Landroid/car/hardware/property/ICarPropertyEventListener;

    move-result-object v5

    invoke-interface {v5, v2}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 413
    goto :goto_1

    .line 409
    :catch_0
    move-exception v5

    .line 412
    .local v5, "ex":Landroid/os/RemoteException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onEvent calling failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v4    # "c":Lcom/android/car/CarPropertyService$Client;
    .end local v5    # "ex":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 415
    .end local v2    # "eventList":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :cond_0
    goto :goto_2

    .line 416
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPropertySetError called with no listener registered for propId=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 416
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    :goto_2
    return-void
.end method

.method public registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 9
    .param p1, "propId"    # I
    .param p2, "rate"    # F
    .param p3, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener: propId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " rate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener:  propId is not in config list:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 174
    if-eqz p3, :cond_b

    .line 179
    invoke-interface {p3}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 181
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 183
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarPropertyService$Client;

    .line 184
    .local v2, "client":Lcom/android/car/CarPropertyService$Client;
    if-nez v2, :cond_1

    .line 185
    new-instance v3, Lcom/android/car/CarPropertyService$Client;

    invoke-direct {v3, p0, p3}, Lcom/android/car/CarPropertyService$Client;-><init>(Lcom/android/car/CarPropertyService;Landroid/car/hardware/property/ICarPropertyEventListener;)V

    move-object v2, v3

    .line 187
    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/android/car/CarPropertyService$Client;->addProperty(IF)V

    .line 189
    iget-object v3, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 190
    .local v3, "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    if-nez v3, :cond_2

    .line 191
    new-instance v4, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    move-object v3, v4

    .line 192
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_2
    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 195
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_3
    iget-boolean v4, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    if-nez v4, :cond_4

    .line 199
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v4, p0}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 202
    :cond_4
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v4, p1}, Lcom/android/car/hal/PropertyHalService;->getSampleRate(I)F

    move-result v4

    cmpl-float v4, p2, v4

    if-lez v4, :cond_5

    .line 203
    iget-object v4, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v4, p1, p2}, Lcom/android/car/hal/PropertyHalService;->subscribeProperty(IF)V

    .line 205
    .end local v2    # "client":Lcom/android/car/CarPropertyService$Client;
    .end local v3    # "clients":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarPropertyService$Client;>;"
    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 207
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 208
    .local v1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->isGlobalProperty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    .line 209
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2, p1, v3}, Lcom/android/car/hal/PropertyHalService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v2

    .line 211
    .local v2, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v2, :cond_6

    .line 212
    new-instance v4, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {v4, v3, v2}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    move-object v3, v4

    .line 214
    .local v3, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    .end local v2    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v3    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_6
    goto :goto_1

    .line 217
    :cond_7
    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/CarPropertyConfig;

    invoke-virtual {v2}, Landroid/car/hardware/CarPropertyConfig;->getAreaIds()[I

    move-result-object v2

    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_9

    aget v6, v2, v5

    .line 218
    .local v6, "areaId":I
    iget-object v7, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v7, p1, v6}, Lcom/android/car/hal/PropertyHalService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v7

    .line 219
    .local v7, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v7, :cond_8

    .line 220
    new-instance v8, Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {v8, v3, v7}, Landroid/car/hardware/property/CarPropertyEvent;-><init>(ILandroid/car/hardware/CarPropertyValue;)V

    .line 222
    .local v8, "event":Landroid/car/hardware/property/CarPropertyEvent;
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v6    # "areaId":I
    .end local v7    # "value":Landroid/car/hardware/CarPropertyValue;
    .end local v8    # "event":Landroid/car/hardware/property/CarPropertyEvent;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 227
    :cond_9
    :goto_1
    const v2, 0x21705001

    if-lt p1, v2, :cond_a

    const v2, 0x21705202

    if-gt p1, v2, :cond_a

    .line 229
    return-void

    .line 233
    :cond_a
    :try_start_1
    invoke-interface {p3, v1}, Landroid/car/hardware/property/ICarPropertyEventListener;->onEvent(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 238
    goto :goto_2

    .line 234
    :catch_0
    move-exception v2

    .line 237
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onEvent calling failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Property.service"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_2
    return-void

    .line 205
    .end local v1    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/hardware/property/CarPropertyEvent;>;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 175
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_b
    const-string v0, "Property.service"

    const-string v1, "registerListener: Listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public release()V
    .locals 2

    .line 150
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

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

    check-cast v1, Lcom/android/car/CarPropertyService$Client;

    .line 151
    .local v1, "c":Lcom/android/car/CarPropertyService$Client;
    invoke-virtual {v1}, Lcom/android/car/CarPropertyService$Client;->release()V

    .line 152
    .end local v1    # "c":Lcom/android/car/CarPropertyService$Client;
    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 154
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mPropIdClientMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 155
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/car/hal/PropertyHalService;->setListener(Lcom/android/car/hal/PropertyHalService$PropertyHalListener;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarPropertyService;->mListenerIsSet:Z

    .line 157
    return-void
.end method

.method public setProperty(Landroid/car/hardware/CarPropertyValue;)V
    .locals 3
    .param p1, "prop"    # Landroid/car/hardware/CarPropertyValue;

    .line 351
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 352
    .local v0, "propId":I
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mConfigs:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProperty:  propId is not in config list:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Property.service"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    return-void

    .line 357
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v2, v0}, Lcom/android/car/hal/PropertyHalService;->getWritePermission(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 358
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->setProperty(Landroid/car/hardware/CarPropertyValue;)V

    .line 359
    return-void
.end method

.method public unregisterListener(ILandroid/car/hardware/property/ICarPropertyEventListener;)V
    .locals 3
    .param p1, "propId"    # I
    .param p2, "listener"    # Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener propId=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Property.service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v0, p0, Lcom/android/car/CarPropertyService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mHal:Lcom/android/car/hal/PropertyHalService;

    invoke-virtual {v1, p1}, Lcom/android/car/hal/PropertyHalService;->getReadPermission(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    if-eqz p2, :cond_0

    .line 252
    invoke-interface {p2}, Landroid/car/hardware/property/ICarPropertyEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 253
    .local v0, "listenerBinder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarPropertyService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/android/car/CarPropertyService;->unregisterListenerBinderLocked(ILandroid/os/IBinder;)V

    .line 255
    monitor-exit v1

    .line 256
    return-void

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 248
    .end local v0    # "listenerBinder":Landroid/os/IBinder;
    :cond_0
    const-string v0, "Property.service"

    const-string v1, "unregisterListener: Listener is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
