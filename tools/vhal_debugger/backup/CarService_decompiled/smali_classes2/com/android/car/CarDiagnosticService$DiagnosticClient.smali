.class Lcom/android/car/CarDiagnosticService$DiagnosticClient;
.super Ljava/lang/Object;
.source "CarDiagnosticService.java"

# interfaces
.implements Lcom/android/car/Listeners$IListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DiagnosticClient"
.end annotation


# instance fields
.field private volatile mActive:Z

.field private final mActiveDiagnostics:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

.field final synthetic this$0:Lcom/android/car/CarDiagnosticService;


# direct methods
.method constructor <init>(Lcom/android/car/CarDiagnosticService;Landroid/car/diagnostic/ICarDiagnosticEventListener;)V
    .locals 0
    .param p2, "listener"    # Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 509
    iput-object p1, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->this$0:Lcom/android/car/CarDiagnosticService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActiveDiagnostics:Ljava/util/Set;

    .line 507
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActive:Z

    .line 510
    iput-object p2, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 511
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarDiagnosticService$DiagnosticClient;)Landroid/car/diagnostic/ICarDiagnosticEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    .line 500
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    return-object v0
.end method


# virtual methods
.method addDiagnostic(I)V
    .locals 2
    .param p1, "frameType"    # I

    .line 525
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActiveDiagnostics:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public binderDied()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    invoke-interface {v0}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 548
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->this$0:Lcom/android/car/CarDiagnosticService;

    invoke-static {v0, p0}, Lcom/android/car/CarDiagnosticService;->access$000(Lcom/android/car/CarDiagnosticService;Lcom/android/car/CarDiagnosticService$DiagnosticClient;)V

    .line 549
    return-void
.end method

.method dispatchDiagnosticUpdate(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;)V"
        }
    .end annotation

    .line 552
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Landroid/car/diagnostic/CarDiagnosticEvent;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActive:Z

    if-eqz v0, :cond_0

    .line 554
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    invoke-interface {v0, p1}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->onDiagnosticEvents(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    .line 559
    :cond_0
    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 515
    instance-of v0, p1, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 516
    invoke-interface {v0}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/car/CarDiagnosticService$DiagnosticClient;

    iget-object v1, v1, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    .line 517
    invoke-interface {v1}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 515
    :goto_0
    return v0
.end method

.method getDiagnosticArray()[I
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActiveDiagnostics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/car/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method getICarDiagnosticEventListener()Landroid/car/diagnostic/ICarDiagnosticEventListener;
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    return-object v0
.end method

.method getNumberOfActiveDiagnostic()I
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActiveDiagnostics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method

.method isHoldingListenerBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "listenerBinder"    # Landroid/os/IBinder;

    .line 521
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    invoke-interface {v0}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public release()V
    .locals 2

    .line 563
    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActive:Z

    if-eqz v0, :cond_0

    .line 564
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mListener:Landroid/car/diagnostic/ICarDiagnosticEventListener;

    invoke-interface {v0}, Landroid/car/diagnostic/ICarDiagnosticEventListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 565
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActiveDiagnostics:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 566
    iput-boolean v1, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActive:Z

    .line 568
    :cond_0
    return-void
.end method

.method removeDiagnostic(I)V
    .locals 2
    .param p1, "frameType"    # I

    .line 529
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$DiagnosticClient;->mActiveDiagnostics:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 530
    return-void
.end method
