.class public Lcom/android/car/CarUxRestrictionsManagerService;
.super Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
.source "CarUxRestrictionsManagerService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    }
.end annotation


# static fields
.field static final CONFIG_FILENAME_PRODUCTION:Ljava/lang/String; = "ux_restrictions_prod_config.json"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final CONFIG_FILENAME_STAGED:Ljava/lang/String; = "ux_restrictions_staged_config.json"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DBG:Z = false

.field private static final DEFAULT_PORT:B = 0x0t

.field private static final MAX_TRANSITION_LOG_SIZE:I = 0x14

.field private static final PROPERTY_UPDATE_RATE:I = 0x5

.field private static final SPEED_NOT_AVAILABLE:F = -1.0f

.field private static final TAG:Ljava/lang/String; = "CarUxR"


# instance fields
.field private final mCarPropertyService:Lcom/android/car/CarPropertyService;

.field private mCarUxRestrictionsConfigurations:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentMovingSpeed:F

.field private mCurrentUxRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Landroid/car/drivingstate/CarUxRestrictions;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultDisplayPhysicalPort:B

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mDrivingStateService:Lcom/android/car/CarDrivingStateService;

.field private final mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

.field private final mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

.field private final mPhysicalPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final mPortLookup:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private mRegFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private mRestrictionMode:I

.field private final mTransitionLogs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/car/Utils$TransitionLog;",
            ">;"
        }
    .end annotation
.end field

.field private mUxRChangeBroadcastEnabled:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mUxRClients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 508
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/CarDrivingStateService;Lcom/android/car/CarPropertyService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "drvService"    # Lcom/android/car/CarDrivingStateService;
    .param p3, "propertyService"    # Lcom/android/car/CarPropertyService;

    .line 150
    invoke-direct {p0}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;-><init>()V

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPhysicalPorts:Ljava/util/List;

    .line 132
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPortLookup:Ljava/util/Map;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRestrictionMode:I

    .line 140
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRChangeBroadcastEnabled:Z

    .line 143
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    .line 652
    new-instance v0, Lcom/android/car/CarUxRestrictionsManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarUxRestrictionsManagerService$1;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;)V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    .line 695
    new-instance v0, Lcom/android/car/CarUxRestrictionsManagerService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarUxRestrictionsManagerService$2;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;)V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    .line 151
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    .line 152
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 153
    iput-object p2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 154
    iput-object p3, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    .line 155
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 104
    invoke-static {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/CarUxRestrictionsManagerService;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService;

    .line 104
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p1, "x1"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 104
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDrivingStateEvent(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/car/CarUxRestrictionsManagerService;F)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService;
    .param p1, "x1"    # F

    .line 104
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleSpeedChange(F)V

    return-void
.end method

.method private addTransitionLog(Landroid/car/drivingstate/CarUxRestrictions;Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 9
    .param p1, "oldRestrictions"    # Landroid/car/drivingstate/CarUxRestrictions;
    .param p2, "newRestrictions"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 971
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 974
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 975
    .local v0, "extra":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "DO -> "

    goto :goto_0

    :cond_1
    const-string v1, "No DO -> "

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 976
    invoke-virtual {p2}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "DO"

    goto :goto_1

    :cond_2
    const-string v1, "No DO"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 978
    new-instance v1, Lcom/android/car/Utils$TransitionLog;

    .line 979
    invoke-virtual {p1}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v4

    invoke-virtual {p2}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v5

    .line 980
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v3, "CarUxR"

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/car/Utils$TransitionLog;-><init>(Ljava/lang/String;IIJLjava/lang/String;)V

    .line 981
    .local v1, "tLog":Lcom/android/car/Utils$TransitionLog;
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 982
    return-void
.end method

.method private addTransitionLog(Ljava/lang/String;IIJLjava/lang/String;)V
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "from"    # I
    .param p3, "to"    # I
    .param p4, "timestamp"    # J
    .param p6, "extra"    # Ljava/lang/String;

    .line 961
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    .line 962
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    .line 965
    :cond_0
    new-instance v0, Lcom/android/car/Utils$TransitionLog;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/car/Utils$TransitionLog;-><init>(Ljava/lang/String;IIJLjava/lang/String;)V

    .line 966
    .local v0, "tLog":Lcom/android/car/Utils$TransitionLog;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 967
    return-void
.end method

.method private convertToMap(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Byte;",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 838
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    invoke-virtual {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->validateConfigs(Ljava/util/List;)V

    .line 840
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 841
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 842
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 843
    .local v1, "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getPhysicalPort()Ljava/lang/Byte;

    move-result-object v2

    if-nez v2, :cond_0

    .line 844
    iget-byte v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    goto :goto_0

    .line 845
    :cond_0
    invoke-virtual {v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getPhysicalPort()Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    :goto_0
    nop

    .line 846
    .local v2, "port":B
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 847
    .end local v1    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .end local v2    # "port":B
    goto :goto_2

    .line 848
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 849
    .local v2, "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    invoke-virtual {v2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getPhysicalPort()Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 850
    .end local v2    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    goto :goto_1

    .line 852
    :cond_2
    :goto_2
    return-object v0
.end method

.method private createFullyRestrictedRestrictions()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 5

    .line 940
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 943
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x1

    const/16 v4, 0x1ff

    invoke-direct {v0, v3, v4, v1, v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .line 940
    return-object v0
.end method

.method private createUnrestrictedRestrictions()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 4

    .line 934
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictions$Builder;

    .line 935
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/car/drivingstate/CarUxRestrictions$Builder;-><init>(ZIJ)V

    .line 936
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictions$Builder;->build()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0

    .line 934
    return-object v0
.end method

.method private findUxRestrictionsClient(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    .locals 4
    .param p1, "listener"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    .line 366
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 367
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 368
    .local v2, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    invoke-virtual {v2, v0}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->isHoldingBinder(Landroid/os/IBinder;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 369
    return-object v2

    .line 371
    .end local v2    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    :cond_0
    goto :goto_0

    .line 372
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCurrentSpeed()Ljava/lang/Float;
    .locals 3

    .line 304
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    const v1, 0x11600207

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/car/CarPropertyService;->getProperty(II)Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 306
    .local v0, "value":Landroid/car/hardware/CarPropertyValue;
    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    return-object v1

    .line 309
    :cond_0
    const/high16 v1, -0x40800000    # -1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    return-object v1
.end method

.method private getDefaultDisplayPhysicalPort()B
    .locals 5

    .line 799
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 800
    .local v0, "defaultDisplay":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v2

    check-cast v2, Landroid/view/DisplayAddress$Physical;

    .line 802
    .local v2, "address":Landroid/view/DisplayAddress$Physical;
    if-nez v2, :cond_0

    .line 803
    const-string v3, "CarUxR"

    const-string v4, "Default display does not have physical display port."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v1

    .line 806
    :cond_0
    invoke-virtual {v2}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v1

    return v1
.end method

.method private getFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;

    .line 242
    const-class v0, Lcom/android/car/systeminterface/SystemInterface;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/systeminterface/SystemInterface;

    .line 243
    .local v0, "systemInterface":Lcom/android/car/systeminterface/SystemInterface;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->getSystemCarDir()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method private getPhysicalPort(Landroid/view/Display;)B
    .locals 4
    .param p1, "display"    # Landroid/view/Display;

    .line 915
    invoke-virtual {p1}, Landroid/view/Display;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 917
    iget-byte v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    return v0

    .line 920
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v0

    .line 921
    .local v0, "address":Landroid/view/DisplayAddress;
    const-string v1, "Display "

    const-string v2, "CarUxR"

    if-nez v0, :cond_1

    .line 922
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not a virtual display but has null DisplayAddress."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 924
    iget-byte v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    return v1

    .line 925
    :cond_1
    instance-of v3, v0, Landroid/view/DisplayAddress$Physical;

    if-nez v3, :cond_2

    .line 926
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " has non-physical address: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    iget-byte v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    return v1

    .line 929
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v1

    return v1
.end method

.method private getPhysicalPort(I)Ljava/lang/Byte;
    .locals 5
    .param p1, "displayId"    # I

    .line 902
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPortLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 904
    .local v0, "display":Landroid/view/Display;
    if-nez v0, :cond_0

    .line 905
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve display for id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarUxR"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    const/4 v1, 0x0

    return-object v1

    .line 908
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getPhysicalPort(Landroid/view/Display;)B

    move-result v1

    .line 909
    .local v1, "port":B
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPortLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "port":B
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPortLookup:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    return-object v0
.end method

.method private declared-synchronized handleDispatchUxRestrictions(IF)V
    .locals 12
    .param p1, "currentDrivingState"    # I
    .param p2, "speed"    # F

    monitor-enter p0

    .line 732
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarUxRestrictionsConfigurations:Ljava/util/Map;

    const-string v1, "mCarUxRestrictionsConfigurations must be initialized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    const-string v1, "mCurrentUxRestrictions must be initialized"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 737
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRChangeBroadcastEnabled:Z

    if-nez v0, :cond_0

    .line 738
    const-string v0, "CarUxR"

    const-string v1, "Not dispatching UX Restriction due to setting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 739
    monitor-exit p0

    return-void

    .line 742
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 743
    .local v0, "newUxRestrictions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Landroid/car/drivingstate/CarUxRestrictions;>;"
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPhysicalPorts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    .line 744
    .local v2, "port":B
    iget-object v3, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarUxRestrictionsConfigurations:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 745
    .local v3, "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    if-nez v3, :cond_1

    .line 746
    goto :goto_0

    .line 749
    :cond_1
    iget v4, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRestrictionMode:I

    invoke-virtual {v3, p1, p2, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getUxRestrictions(IFI)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v4

    .line 751
    .local v4, "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    const-string v5, "Display port 0x%02x\tDO old->new: %b -> %b"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    .line 752
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v7, v9

    iget-object v8, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    .line 753
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v8}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 754
    invoke-virtual {v4}, Landroid/car/drivingstate/CarUxRestrictions;->isRequiresDistractionOptimization()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v11, 0x2

    aput-object v8, v7, v11

    .line 751
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 755
    const-string v5, "Display port 0x%02x\tUxR old->new: 0x%x -> 0x%x"

    new-array v6, v6, [Ljava/lang/Object;

    .line 756
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v9

    iget-object v7, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    .line 757
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v7}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v10

    .line 758
    invoke-virtual {v4}, Landroid/car/drivingstate/CarUxRestrictions;->getActiveRestrictions()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    .line 755
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 759
    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 760
    nop

    .end local v2    # "port":B
    .end local v3    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .end local v4    # "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    goto/16 :goto_0

    .line 763
    :cond_2
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 764
    .local v1, "displayToDispatch":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 765
    .local v3, "port":B
    iget-object v4, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 767
    const-string v4, "CarUxR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized port:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    goto :goto_1

    .line 770
    :cond_3
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/drivingstate/CarUxRestrictions;

    .line 771
    .restart local v4    # "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    iget-object v5, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v5, v4}, Landroid/car/drivingstate/CarUxRestrictions;->isSameRestrictions(Landroid/car/drivingstate/CarUxRestrictions;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 772
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    .end local v3    # "port":B
    .end local v4    # "uxRestrictions":Landroid/car/drivingstate/CarUxRestrictions;
    :cond_4
    goto :goto_1

    .line 775
    :cond_5
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_6

    .line 776
    monitor-exit p0

    return-void

    .line 779
    .restart local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_6
    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 780
    .restart local v3    # "port":B
    iget-object v4, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    .line 781
    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/drivingstate/CarUxRestrictions;

    .line 780
    invoke-direct {p0, v4, v5}, Lcom/android/car/CarUxRestrictionsManagerService;->addTransitionLog(Landroid/car/drivingstate/CarUxRestrictions;Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 782
    .end local v3    # "port":B
    goto :goto_2

    .line 784
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_7
    const-string v2, "dispatching to clients"

    invoke-static {v2}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 785
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 786
    .local v3, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    invoke-static {v3}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->access$500(Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/car/CarUxRestrictionsManagerService;->getPhysicalPort(I)Ljava/lang/Byte;

    move-result-object v4

    .line 787
    .local v4, "clientDisplayPort":Ljava/lang/Byte;
    if-nez v4, :cond_8

    .line 788
    iget-byte v5, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    move-object v4, v5

    .line 790
    :cond_8
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 791
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/drivingstate/CarUxRestrictions;

    invoke-virtual {v3, v5}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->dispatchEventToClients(Landroid/car/drivingstate/CarUxRestrictions;)V

    .line 793
    .end local v3    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    .end local v4    # "clientDisplayPort":Ljava/lang/Byte;
    :cond_9
    goto :goto_3

    .line 795
    :cond_a
    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 796
    monitor-exit p0

    return-void

    .line 731
    .end local v0    # "newUxRestrictions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Byte;Landroid/car/drivingstate/CarUxRestrictions;>;"
    .end local v1    # "displayToDispatch":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    .end local p1    # "currentDrivingState":I
    .end local p2    # "speed":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleDrivingStateEvent(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/car/drivingstate/CarDrivingStateEvent;

    monitor-enter p0

    .line 667
    if-nez p1, :cond_0

    .line 668
    monitor-exit p0

    return-void

    .line 670
    :cond_0
    :try_start_0
    iget v0, p1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 671
    .local v0, "drivingState":I
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentSpeed()Ljava/lang/Float;

    move-result-object v1

    .line 673
    .local v1, "speed":Ljava/lang/Float;
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/high16 v3, -0x40800000    # -1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 674
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    goto :goto_1

    .line 675
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_1
    if-eqz v0, :cond_3

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 685
    :cond_2
    const-string v2, "CarUxR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected:  Speed null when driving state is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 686
    monitor-exit p0

    return-void

    .line 679
    :cond_3
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Speed null when driving state is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 680
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    .line 688
    :goto_1
    iget v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    invoke-direct {p0, v0, v2}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 689
    monitor-exit p0

    return-void

    .line 666
    .end local v0    # "drivingState":I
    .end local v1    # "speed":Ljava/lang/Float;
    .end local p1    # "event":Landroid/car/drivingstate/CarDrivingStateEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized handleSpeedChange(F)V
    .locals 2
    .param p1, "newSpeed"    # F

    monitor-enter p0

    .line 711
    :try_start_0
    iget v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 713
    monitor-exit p0

    return-void

    .line 715
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iget v0, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 716
    .local v0, "currentDrivingState":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 718
    monitor-exit p0

    return-void

    .line 720
    :cond_1
    :try_start_2
    iput p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentMovingSpeed:F

    .line 721
    invoke-direct {p0, v0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 722
    monitor-exit p0

    return-void

    .line 710
    .end local v0    # "currentDrivingState":I
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "newSpeed":F
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initPhysicalPort()V
    .locals 10

    .line 810
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    aget-object v4, v0, v3

    .line 811
    .local v4, "display":Landroid/view/Display;
    invoke-virtual {v4}, Landroid/view/Display;->getType()I

    move-result v5

    const/4 v6, 0x5

    if-ne v5, v6, :cond_0

    .line 812
    goto/16 :goto_1

    .line 815
    :cond_0
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    const/4 v6, 0x4

    const-string v7, "CarUxR"

    if-nez v5, :cond_2

    invoke-virtual {v4}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    if-nez v5, :cond_2

    .line 818
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 819
    const-string v5, "Default display does not have display address. Using default."

    invoke-static {v7, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_1
    iget-object v5, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPhysicalPorts:Ljava/util/List;

    iget-byte v6, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 822
    :cond_2
    invoke-virtual {v4}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    instance-of v5, v5, Landroid/view/DisplayAddress$Physical;

    if-eqz v5, :cond_4

    .line 823
    invoke-virtual {v4}, Landroid/view/Display;->getAddress()Landroid/view/DisplayAddress;

    move-result-object v5

    check-cast v5, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v5}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v5

    .line 824
    .local v5, "port":B
    invoke-static {v7, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 825
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 826
    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v2

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    .line 825
    const-string v8, "Display %d uses port %d"

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    :cond_3
    iget-object v6, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPhysicalPorts:Ljava/util/List;

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    .end local v5    # "port":B
    goto :goto_1

    .line 830
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "At init non-virtual display has a non-physical display address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    .end local v4    # "display":Landroid/view/Display;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 834
    :cond_5
    return-void
.end method

.method private initializeUxRestrictions()V
    .locals 5

    .line 283
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 284
    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    .line 288
    .local v0, "currentDrivingStateEvent":Landroid/car/drivingstate/CarDrivingStateEvent;
    if-eqz v0, :cond_2

    iget v1, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 292
    :cond_0
    iget v1, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 293
    .local v1, "currentDrivingState":I
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentSpeed()Ljava/lang/Float;

    move-result-object v2

    .line 294
    .local v2, "currentSpeed":Ljava/lang/Float;
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_1

    .line 295
    return-void

    .line 300
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V

    .line 301
    return-void

    .line 290
    .end local v1    # "currentDrivingState":I
    .end local v2    # "currentSpeed":Ljava/lang/Float;
    :cond_2
    :goto_0
    return-void
.end method

.method private isDebugBuild()Z
    .locals 1

    .line 572
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_1

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 0
    .param p0, "msg"    # Ljava/lang/String;

    .line 988
    return-void
.end method

.method private persistConfig(Ljava/util/List;Ljava/lang/String;)Z
    .locals 9
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 492
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    const-string v0, "CarUxR"

    invoke-direct {p0, p2}, Lcom/android/car/CarUxRestrictionsManagerService;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 493
    .local v1, "file":Ljava/io/File;
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 496
    .local v2, "stagedFile":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 500
    .local v4, "fos":Ljava/io/FileOutputStream;
    nop

    .line 501
    :try_start_1
    new-instance v5, Landroid/util/JsonWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .local v5, "jsonWriter":Landroid/util/JsonWriter;
    const/4 v6, 0x0

    .line 503
    :try_start_2
    invoke-virtual {v5}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 504
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 505
    .local v8, "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    invoke-virtual {v8, v5}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeJson(Landroid/util/JsonWriter;)V

    .line 506
    .end local v8    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {v5}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 508
    :try_start_3
    invoke-static {v6, v5}, Lcom/android/car/CarUxRestrictionsManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 512
    .end local v5    # "jsonWriter":Landroid/util/JsonWriter;
    nop

    .line 513
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 514
    const/4 v0, 0x1

    return v0

    .line 501
    .restart local v5    # "jsonWriter":Landroid/util/JsonWriter;
    :catchall_0
    move-exception v6

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stagedFile":Landroid/util/AtomicFile;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "jsonWriter":Landroid/util/JsonWriter;
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    .end local p2    # "filename":Ljava/lang/String;
    :try_start_4
    throw v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 508
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stagedFile":Landroid/util/AtomicFile;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v5    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .restart local p1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    .restart local p2    # "filename":Ljava/lang/String;
    :catchall_1
    move-exception v7

    :try_start_5
    invoke-static {v6, v5}, Lcom/android/car/CarUxRestrictionsManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stagedFile":Landroid/util/AtomicFile;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    .end local p2    # "filename":Ljava/lang/String;
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v5    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stagedFile":Landroid/util/AtomicFile;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .restart local p1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    .restart local p2    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 509
    .local v5, "e":Ljava/io/IOException;
    const-string v6, "Could not persist config"

    invoke-static {v0, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 510
    invoke-virtual {v2, v4}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 511
    return v3

    .line 497
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v4

    .line 498
    .local v4, "e":Ljava/io/IOException;
    const-string v5, "Could not open file to persist config"

    invoke-static {v0, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    return v3
.end method

.method private promoteStagedConfig()V
    .locals 6

    .line 262
    const-string v0, "ux_restrictions_staged_config.json"

    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 264
    .local v0, "stagedConfig":Ljava/nio/file/Path;
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 265
    invoke-virtual {v1}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v1

    .line 267
    .local v1, "currentDrivingStateEvent":Landroid/car/drivingstate/CarDrivingStateEvent;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/LinkOption;

    .line 269
    invoke-static {v0, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 271
    const-string v3, "ux_restrictions_prod_config.json"

    invoke-direct {p0, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    .line 273
    .local v3, "prod":Ljava/nio/file/Path;
    :try_start_0
    const-string v4, "Attempting to promote stage config"

    invoke-static {v4}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 274
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/nio/file/CopyOption;

    sget-object v5, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v5, v4, v2

    invoke-static {v0, v3, v4}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 277
    goto :goto_0

    .line 275
    :catch_0
    move-exception v2

    .line 276
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "CarUxR"

    const-string v5, "Could not promote state config"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 279
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "prod":Ljava/nio/file/Path;
    :cond_0
    :goto_0
    return-void
.end method

.method private readPersistedConfig(Ljava/io/File;)Ljava/util/List;
    .locals 7
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 519
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const-string v1, "CarUxR"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not find config file: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-object v2

    .line 524
    :cond_0
    new-instance v0, Landroid/util/AtomicFile;

    invoke-direct {v0, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 525
    .local v0, "configFile":Landroid/util/AtomicFile;
    :try_start_0
    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 526
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v5

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 525
    .local v3, "reader":Landroid/util/JsonReader;
    nop

    .line 527
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 528
    .local v4, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    invoke-virtual {v3}, Landroid/util/JsonReader;->beginArray()V

    .line 529
    :goto_0
    invoke-virtual {v3}, Landroid/util/JsonReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 530
    invoke-static {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->readJson(Landroid/util/JsonReader;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 532
    :cond_1
    invoke-virtual {v3}, Landroid/util/JsonReader;->endArray()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 533
    nop

    .line 534
    :try_start_2
    invoke-static {v2, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 533
    return-object v4

    .line 525
    .end local v4    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    :catchall_0
    move-exception v4

    .end local v0    # "configFile":Landroid/util/AtomicFile;
    .end local v3    # "reader":Landroid/util/JsonReader;
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "file":Ljava/io/File;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 534
    .restart local v0    # "configFile":Landroid/util/AtomicFile;
    .restart local v3    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .restart local p1    # "file":Ljava/io/File;
    :catchall_1
    move-exception v5

    :try_start_4
    invoke-static {v4, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "configFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "file":Ljava/io/File;
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .end local v3    # "reader":Landroid/util/JsonReader;
    .restart local v0    # "configFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .restart local p1    # "file":Ljava/io/File;
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not read persisted config file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 537
    .end local v3    # "e":Ljava/io/IOException;
    return-object v2
.end method

.method private readXmlConfig()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 249
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const v1, 0x7f120003

    invoke-static {v0, v1}, Lcom/android/car/CarUxRestrictionsConfigurationXmlParser;->parse(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CarUxR"

    const-string v2, "Could not read config from XML resource"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 254
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method createDefaultConfig(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 4
    .param p1, "port"    # B

    .line 947
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;-><init>()V

    .line 948
    invoke-virtual {v0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setPhysicalPort(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v0

    .line 949
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(IZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v0

    .line 951
    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(IZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v0

    .line 953
    const/16 v1, 0x1ff

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v2, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(IZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v0

    .line 955
    const/4 v3, -0x1

    invoke-virtual {v0, v3, v2, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->setUxRestrictions(IZI)Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;

    move-result-object v0

    .line 957
    invoke-virtual {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder;->build()Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object v0

    .line 947
    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 629
    const-string v0, "*CarUxRestrictionsManagerService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 631
    .local v1, "port":B
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/drivingstate/CarUxRestrictions;

    .line 632
    .local v2, "restrictions":Landroid/car/drivingstate/CarUxRestrictions;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v2}, Landroid/car/drivingstate/CarUxRestrictions;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "Port: 0x%02X UXR: %s\n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 633
    .end local v1    # "port":B
    .end local v2    # "restrictions":Landroid/car/drivingstate/CarUxRestrictions;
    goto :goto_0

    .line 634
    :cond_0
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUxRChangeBroadcastEnabled? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRChangeBroadcastEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    :cond_1
    const-string v0, "UX Restriction configurations:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarUxRestrictionsConfigurations:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 640
    .local v1, "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    invoke-virtual {v1, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->dump(Ljava/io/PrintWriter;)V

    .line 641
    .end local v1    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    goto :goto_1

    .line 642
    :cond_2
    const-string v0, "UX Restriction change log:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mTransitionLogs:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/Utils$TransitionLog;

    .line 644
    .local v1, "tlog":Lcom/android/car/Utils$TransitionLog;
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 645
    .end local v1    # "tlog":Lcom/android/car/Utils$TransitionLog;
    goto :goto_2

    .line 646
    :cond_3
    return-void
.end method

.method public getConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarUxRestrictionsConfigurations:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public declared-synchronized getCurrentUxRestrictions()Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    monitor-enter p0

    .line 420
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 6
    .param p1, "displayId"    # I

    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->getPhysicalPort(I)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictions;

    .line 406
    .local v0, "restrictions":Landroid/car/drivingstate/CarUxRestrictions;
    if-nez v0, :cond_0

    .line 407
    const-string v1, "CarUxR"

    const-string v2, "Restrictions are null for displayId:%d. Returning full restrictions."

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 409
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 407
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->createFullyRestrictedRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 412
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    monitor-exit p0

    return-object v0

    .line 404
    .end local v0    # "restrictions":Landroid/car/drivingstate/CarUxRestrictions;
    .end local p1    # "displayId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getRestrictionMode()I
    .locals 2

    monitor-enter p0

    .line 481
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    iget v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRestrictionMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 480
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStagedConfigs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    .line 436
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 438
    const-string v0, "ux_restrictions_staged_config.json"

    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 439
    .local v0, "stagedConfig":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    const-string v1, "Attempting to read staged config"

    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->readPersistedConfig(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 443
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public declared-synchronized init()V
    .locals 5

    monitor-enter p0

    .line 159
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getDefaultDisplayPhysicalPort()B

    move-result v0

    iput-byte v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDefaultDisplayPhysicalPort:B

    .line 161
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->initPhysicalPort()V

    .line 166
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    .line 167
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPhysicalPorts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    .line 168
    .local v1, "port":B
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCurrentUxRestrictions:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->createUnrestrictedRestrictions()Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    nop

    .end local v1    # "port":B
    goto :goto_0

    .line 173
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    invoke-virtual {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->loadConfig()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->convertToMap(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarUxRestrictionsConfigurations:Ljava/util/Map;

    .line 176
    invoke-static {}, Lcom/android/car/CarServiceThreadPool;->get()Lcom/android/car/CarServiceThreadPool;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$CarUxRestrictionsManagerService$_C9pK3YyNLOnJCbTExYMcuqY0qw;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$CarUxRestrictionsManagerService$_C9pK3YyNLOnJCbTExYMcuqY0qw;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/car/CarServiceThreadPool;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRegFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$init$0$CarUxRestrictionsManagerService()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarDrivingStateService;->registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mCarPropertyService:Lcom/android/car/CarPropertyService;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarPropertyEventListener:Landroid/car/hardware/property/ICarPropertyEventListener;

    const v2, 0x11600207

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/car/CarPropertyService;->registerListener(IFLandroid/car/hardware/property/ICarPropertyEventListener;)V

    .line 184
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->initializeUxRestrictions()V

    .line 185
    return-void
.end method

.method declared-synchronized loadConfig()Ljava/util/List;
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 211
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->promoteStagedConfig()V

    .line 215
    const-string v0, "ux_restrictions_prod_config.json"

    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 216
    .local v0, "prodConfig":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    const-string v1, "Attempting to read production config"

    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 218
    invoke-direct {p0, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->readPersistedConfig(Ljava/io/File;)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    .local v1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    if-eqz v1, :cond_0

    .line 220
    monitor-exit p0

    return-object v1

    .line 225
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    :try_start_1
    const-string v1, "Attempting to read config from XML resource"

    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 226
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->readXmlConfig()Ljava/util/List;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .restart local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    if-eqz v1, :cond_1

    .line 228
    monitor-exit p0

    return-object v1

    .line 232
    .restart local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_1
    :try_start_2
    const-string v2, "CarUxR"

    const-string v3, "Creating default config"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 235
    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mPhysicalPorts:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    .line 236
    .local v3, "port":B
    invoke-virtual {p0, v3}, Lcom/android/car/CarUxRestrictionsManagerService;->createDefaultConfig(B)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 237
    nop

    .end local v3    # "port":B
    goto :goto_0

    .line 238
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_2
    monitor-exit p0

    return-object v1

    .line 210
    .end local v0    # "prodConfig":Ljava/io/File;
    .end local v1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    .locals 5
    .param p1, "listener"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    .param p2, "displayId"    # I

    monitor-enter p0

    .line 337
    if-eqz p1, :cond_1

    .line 343
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->findUxRestrictionsClient(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    move-result-object v0

    .line 344
    .local v0, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    if-nez v0, :cond_0

    .line 345
    new-instance v1, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;-><init>(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    .line 347
    :try_start_1
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    goto :goto_0

    .line 348
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :catch_0
    move-exception v1

    .line 349
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "CarUxR"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot link death recipient to binder "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 353
    :cond_0
    monitor-exit p0

    return-void

    .line 336
    .end local v0    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    .end local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    .end local p2    # "displayId":I
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 338
    .restart local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    .restart local p2    # "displayId":I
    :cond_1
    :try_start_3
    const-string v0, "CarUxR"

    const-string v1, "registerUxRestrictionsChangeListener(): listener null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 336
    .end local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    .end local p2    # "displayId":I
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized release()V
    .locals 4

    monitor-enter p0

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 315
    .local v1, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->access$000(Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;)Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 316
    nop

    .end local v1    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    goto :goto_0

    .line 317
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 319
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRegFuture:Ljava/util/concurrent/Future;

    const-string v1, "CarUxRestrictions"

    invoke-static {v0, v1}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 321
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarDrivingStateService;->unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 323
    monitor-exit p0

    return-void

    .line 313
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized saveUxRestrictionsConfigurationForNextBoot(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;)Z"
        }
    .end annotation

    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    monitor-enter p0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->validateConfigs(Ljava/util/List;)V

    .line 430
    const-string v0, "ux_restrictions_staged_config.json"

    invoke-direct {p0, p1, v0}, Lcom/android/car/CarUxRestrictionsManagerService;->persistConfig(Ljava/util/List;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 425
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setRestrictionMode(I)Z
    .locals 9
    .param p1, "mode"    # I

    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_UX_RESTRICTIONS_CONFIGURATION"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 464
    iget v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRestrictionMode:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 465
    monitor-exit p0

    return v1

    .line 468
    :cond_0
    :try_start_1
    const-string v3, "CarUxR"

    iget v4, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRestrictionMode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-string v8, "Restriction mode"

    move-object v2, p0

    move v5, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/car/CarUxRestrictionsManagerService;->addTransitionLog(Ljava/lang/String;IIJLjava/lang/String;)V

    .line 470
    iput p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mRestrictionMode:I

    .line 471
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set restriction mode to: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/car/drivingstate/CarUxRestrictionsManager;->modeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsManagerService;->logd(Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 474
    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iget v0, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentSpeed()Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 473
    invoke-direct {p0, v0, v2}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 475
    monitor-exit p0

    return v1

    .line 461
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    .end local p1    # "mode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUxRChangeBroadcastEnabled(Z)V
    .locals 4
    .param p1, "enable"    # Z

    monitor-enter p0

    .line 547
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->isDebugBuild()Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    const-string v0, "CarUxR"

    const-string v1, "Cannot set UX restriction change broadcast."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    monitor-exit p0

    return-void

    .line 552
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkSignatures(II)I

    move-result v0

    if-nez v0, :cond_2

    .line 558
    if-eqz p1, :cond_1

    .line 560
    iput-boolean p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRChangeBroadcastEnabled:Z

    .line 561
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mDrivingStateService:Lcom/android/car/CarDrivingStateService;

    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    iget v0, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 562
    invoke-direct {p0}, Lcom/android/car/CarUxRestrictionsManagerService;->getCurrentSpeed()Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 561
    invoke-direct {p0, v0, v1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V

    goto :goto_0

    .line 566
    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/car/CarUxRestrictionsManagerService;->handleDispatchUxRestrictions(IF)V

    .line 567
    iput-boolean p1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRChangeBroadcastEnabled:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :goto_0
    monitor-exit p0

    return-void

    .line 554
    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mContext:Landroid/content/Context;

    .line 555
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " does not have the right signature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 546
    .end local p1    # "enable":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    monitor-enter p0

    .line 383
    if-eqz p1, :cond_1

    .line 388
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/car/CarUxRestrictionsManagerService;->findUxRestrictionsClient(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;)Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    move-result-object v0

    .line 389
    .local v0, "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    if-nez v0, :cond_0

    .line 390
    const-string v1, "CarUxR"

    const-string v2, "unregisterUxRestrictionsChangeListener(): listener was not previously registered"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    monitor-exit p0

    return-void

    .line 394
    .end local p0    # "this":Lcom/android/car/CarUxRestrictionsManagerService;
    :cond_0
    :try_start_1
    invoke-interface {p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 395
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService;->mUxRClients:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 382
    .end local v0    # "client":Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
    .end local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 384
    .restart local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    :cond_1
    :try_start_2
    const-string v0, "CarUxR"

    const-string v1, "unregisterUxRestrictionsChangeListener(): listener null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 382
    .end local p1    # "listener":Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    :goto_0
    monitor-exit p0

    throw p1
.end method

.method validateConfigs(Ljava/util/List;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 863
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/car/drivingstate/CarUxRestrictionsConfiguration;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    .line 867
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 868
    return-void

    .line 871
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 872
    .local v0, "first":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 873
    .local v1, "existingPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 874
    .local v3, "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    invoke-virtual {v3, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 882
    invoke-virtual {v3}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->getPhysicalPort()Ljava/lang/Byte;

    move-result-object v4

    .line 883
    .local v4, "port":Ljava/lang/Byte;
    if-eqz v4, :cond_2

    .line 888
    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 892
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 893
    .end local v3    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .end local v4    # "port":Ljava/lang/Byte;
    goto :goto_0

    .line 889
    .restart local v3    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .restart local v4    # "port":Ljava/lang/Byte;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Multiple configurations for port "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 885
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v5, "Input contains multiple configurations; each must set physical port."

    invoke-direct {v2, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 878
    .end local v4    # "port":Ljava/lang/Byte;
    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Configurations should have the same restrictions parameters."

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 894
    .end local v3    # "config":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    :cond_4
    return-void

    .line 864
    .end local v0    # "first":Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .end local v1    # "existingPorts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Byte;>;"
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty configuration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
