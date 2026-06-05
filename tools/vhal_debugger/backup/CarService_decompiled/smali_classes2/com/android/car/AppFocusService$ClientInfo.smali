.class Lcom/android/car/AppFocusService$ClientInfo;
.super Lcom/android/car/BinderInterfaceContainer$BinderInterface;
.source "AppFocusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/AppFocusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/BinderInterfaceContainer$BinderInterface<",
        "Landroid/car/IAppFocusListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAppTypes:Ljava/util/Set;
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
.method private constructor <init>(Lcom/android/car/AppFocusService$ClientHolder;Landroid/car/IAppFocusListener;III)V
    .locals 2
    .param p1, "holder"    # Lcom/android/car/AppFocusService$ClientHolder;
    .param p2, "binder"    # Landroid/car/IAppFocusListener;
    .param p3, "uid"    # I
    .param p4, "pid"    # I
    .param p5, "appType"    # I

    .line 361
    invoke-direct {p0, p1, p2}, Lcom/android/car/BinderInterfaceContainer$BinderInterface;-><init>(Lcom/android/car/BinderInterfaceContainer;Landroid/os/IInterface;)V

    .line 357
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/AppFocusService$ClientInfo;->mAppTypes:Ljava/util/Set;

    .line 362
    iput p3, p0, Lcom/android/car/AppFocusService$ClientInfo;->mUid:I

    .line 363
    iput p4, p0, Lcom/android/car/AppFocusService$ClientInfo;->mPid:I

    .line 364
    iget-object v0, p0, Lcom/android/car/AppFocusService$ClientInfo;->mAppTypes:Ljava/util/Set;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/AppFocusService$ClientHolder;Landroid/car/IAppFocusListener;IIILcom/android/car/AppFocusService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/AppFocusService$ClientHolder;
    .param p2, "x1"    # Landroid/car/IAppFocusListener;
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # Lcom/android/car/AppFocusService$1;

    .line 353
    invoke-direct/range {p0 .. p5}, Lcom/android/car/AppFocusService$ClientInfo;-><init>(Lcom/android/car/AppFocusService$ClientHolder;Landroid/car/IAppFocusListener;III)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/AppFocusService$ClientInfo;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$ClientInfo;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 353
    invoke-direct {p0, p1}, Lcom/android/car/AppFocusService$ClientInfo;->addAppType(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/car/AppFocusService$ClientInfo;Ljava/lang/Integer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$ClientInfo;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 353
    invoke-direct {p0, p1}, Lcom/android/car/AppFocusService$ClientInfo;->removeAppType(Ljava/lang/Integer;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/car/AppFocusService$ClientInfo;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/AppFocusService$ClientInfo;

    .line 353
    invoke-direct {p0}, Lcom/android/car/AppFocusService$ClientInfo;->getAppTypes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized addAppType(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "appType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$ClientInfo;->mAppTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/AppFocusService$ClientInfo;
    .end local p1    # "appType":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized getAppTypes()Ljava/util/Set;
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

    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$ClientInfo;->mAppTypes:Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/AppFocusService$ClientInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeAppType(Ljava/lang/Integer;)Z
    .locals 1
    .param p1, "appType"    # Ljava/lang/Integer;

    monitor-enter p0

    .line 376
    :try_start_0
    iget-object v0, p0, Lcom/android/car/AppFocusService$ClientInfo;->mAppTypes:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p0    # "this":Lcom/android/car/AppFocusService$ClientInfo;
    .end local p1    # "appType":Ljava/lang/Integer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 381
    monitor-enter p0

    .line 382
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientInfo{mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/AppFocusService$ClientInfo;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/AppFocusService$ClientInfo;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",appTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/AppFocusService$ClientInfo;->mAppTypes:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
