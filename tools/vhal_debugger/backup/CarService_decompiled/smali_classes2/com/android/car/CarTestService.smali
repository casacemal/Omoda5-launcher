.class Lcom/android/car/CarTestService;
.super Landroid/car/test/ICarTest$Stub;
.source "CarTestService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/CarTestService$TokenDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mICarImpl:Lcom/android/car/ICarImpl;

.field private final mTokens:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/car/CarTestService$TokenDeathRecipient;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lcom/android/car/CarTestService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/car/CarTestService;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/car/ICarImpl;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carImpl"    # Lcom/android/car/ICarImpl;

    .line 44
    invoke-direct {p0}, Landroid/car/test/ICarTest$Stub;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lcom/android/car/CarTestService;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/android/car/CarTestService;->mICarImpl:Lcom/android/car/ICarImpl;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarTestService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarTestService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 35
    invoke-direct {p0, p1}, Lcom/android/car/CarTestService;->releaseToken(Landroid/os/IBinder;)V

    return-void
.end method

.method private declared-synchronized releaseToken(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 96
    :try_start_0
    sget-object v0, Lcom/android/car/CarTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "releaseToken, token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder$DeathRecipient;

    .line 98
    .local v0, "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    if-eqz v0, :cond_0

    .line 99
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 102
    .end local p0    # "this":Lcom/android/car/CarTestService;
    :cond_0
    iget-object v1, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 103
    iget-object v1, p0, Lcom/android/car/CarTestService;->mICarImpl:Lcom/android/car/ICarImpl;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/car/-$$Lambda$XJaTjjBdpEGkF6kNvjfmMa8z4jY;

    invoke-direct {v2, v1}, Lcom/android/car/-$$Lambda$XJaTjjBdpEGkF6kNvjfmMa8z4jY;-><init>(Lcom/android/car/ICarImpl;)V

    invoke-static {v2}, Lcom/android/car/CarServiceUtils;->runOnMain(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    :cond_1
    monitor-exit p0

    return-void

    .line 95
    .end local v0    # "deathRecipient":Landroid/os/IBinder$DeathRecipient;
    .end local p1    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 63
    const-string v0, "*CarTestService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mTokens:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public init()V
    .locals 0

    .line 53
    return-void
.end method

.method public release()V
    .locals 0

    .line 59
    return-void
.end method

.method public startCarService(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    sget-object v0, Lcom/android/car/CarTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startCarService, token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/android/car/CarTestService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_TEST_SERVICE"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1}, Lcom/android/car/CarTestService;->releaseToken(Landroid/os/IBinder;)V

    .line 93
    return-void
.end method

.method public stopCarService(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 69
    sget-object v0, Lcom/android/car/CarTestService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopCarService, token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Lcom/android/car/CarTestService;->mContext:Landroid/content/Context;

    const-string v1, "android.car.permission.CAR_TEST_SERVICE"

    invoke-static {v0, v1}, Lcom/android/car/ICarImpl;->assertPermission(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    sget-object v0, Lcom/android/car/CarTestService;->TAG:Ljava/lang/String;

    const-string v1, "Calling stopCarService twice with the same token."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    monitor-exit p0

    return-void

    .line 78
    :cond_0
    new-instance v0, Lcom/android/car/CarTestService$TokenDeathRecipient;

    invoke-direct {v0, p0, p1}, Lcom/android/car/CarTestService$TokenDeathRecipient;-><init>(Lcom/android/car/CarTestService;Landroid/os/IBinder;)V

    .line 79
    .local v0, "deathRecipient":Lcom/android/car/CarTestService$TokenDeathRecipient;
    iget-object v1, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 82
    iget-object v1, p0, Lcom/android/car/CarTestService;->mTokens:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/car/CarTestService;->mICarImpl:Lcom/android/car/ICarImpl;

    invoke-virtual {v1}, Lcom/android/car/ICarImpl;->release()V

    .line 85
    .end local v0    # "deathRecipient":Lcom/android/car/CarTestService$TokenDeathRecipient;
    :cond_1
    monitor-exit p0

    .line 86
    return-void

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
