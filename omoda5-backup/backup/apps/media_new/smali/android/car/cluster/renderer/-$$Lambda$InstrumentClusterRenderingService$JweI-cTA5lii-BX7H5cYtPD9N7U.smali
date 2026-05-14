.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/function/Supplier;

.field public final synthetic f$2:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;->f$1:Ljava/util/function/Supplier;

    iput-object p3, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;->f$2:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;->f$1:Ljava/util/function/Supplier;

    iget-object p0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$JweI-cTA5lii-BX7H5cYtPD9N7U;->f$2:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->lambda$runAndWaitResult$0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/function/Supplier;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method
