.class Lcom/android/car/AppFocusService$OwnershipClientInfo;
.super Lcom/android/car/BinderInterfaceContainer$BinderInterface;
.source "AppFocusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AppFocusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OwnershipClientInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
        "Landroid/car/IAppFocusOwnershipCallback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOwnedAppTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mPid:I

.field private final mUid:I


# direct methods
.method private constructor <init>(Lcom/android/car/AppFocusService$OwnershipClientHolder;Landroid/car/IAppFocusOwnershipCallback;II)V
    .locals 1
    .param p1, "holder"    # Lcom/android/car/AppFocusService$OwnershipClientHolder;
    .param p2, "binder"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/android/car/BinderInterfaceContainer$BinderInterface;-><init>(Lcom/android/car/BinderInterfaceContainer;Landroid/os/IInterface;)V

    .line 392
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mOwnedAppTypes:Ljava/util/Set;

    .line 397
    iput p3, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mUid:I

    .line 398
    iput p4, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mPid:I

    .line 399
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/AppFocusService$OwnershipClientHolder;Landroid/car/IAppFocusOwnershipCallback;IILcom/android/car/AppFocusService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/AppFocusService$OwnershipClientHolder;
    .param p2, "x1"    # Landroid/car/IAppFocusOwnershipCallback;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # Lcom/android/car/AppFocusService$1;

    .line 388
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/car/AppFocusService$OwnershipClientInfo;-><init>(Lcom/android/car/AppFocusService$OwnershipClientHolder;Landroid/car/IAppFocusOwnershipCallback;II)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/AppFocusService$OwnershipClientInfo;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 388
    invoke-direct {p0, p1}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->addOwnedAppType(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/car/AppFocusService$OwnershipClientInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 388
    iget v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mUid:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/car/AppFocusService$OwnershipClientInfo;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 388
    iget v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mPid:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/car/AppFocusService$OwnershipClientInfo;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;

    .line 388
    invoke-direct {p0}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->getOwnedAppTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/car/AppFocusService$OwnershipClientInfo;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$OwnershipClientInfo;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 388
    invoke-direct {p0, p1}, Lcom/android/car/AppFocusService$OwnershipClientInfo;->removeOwnedAppType(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method private declared-synchronized addOwnedAppType(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "appType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 412
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mOwnedAppTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    .end local p1    # "appType":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getOwnedAppTypes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 405
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mOwnedAppTypes:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeOwnedAppType(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "appType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 419
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mOwnedAppTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/AppFocusService$OwnershipClientInfo;
    .end local p1    # "appType":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method getPid()I
    .locals 1

    .line 427
    iget v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mPid:I

    return v0
.end method

.method getUid()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mUid:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 432
    monitor-enter p0

    .line 433
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",owned="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/AppFocusService$OwnershipClientInfo;->mOwnedAppTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 435
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
