.class Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;
.super Lcom/android/car/CarDiagnosticService$DiagnosticRecord;
.source "CarDiagnosticService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarDiagnosticService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FreezeFrameRecord"
.end annotation


# instance fields
.field mEvents:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/locks/ReentrantLock;)V
    .locals 1
    .param p1, "lock"    # Ljava/util/concurrent/locks/ReentrantLock;

    .line 633
    invoke-direct {p0, p1}, Lcom/android/car/CarDiagnosticService$DiagnosticRecord;-><init>(Ljava/util/concurrent/locks/ReentrantLock;)V

    .line 630
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    .line 634
    return-void
.end method


# virtual methods
.method clearEvents()V
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 646
    return-void
.end method

.method disableIfNeeded()Z
    .locals 2

    .line 638
    iget-boolean v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 639
    :cond_0
    iput-boolean v1, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEnabled:Z

    .line 640
    invoke-virtual {p0}, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->clearEvents()V

    .line 641
    const/4 v0, 0x1

    return v0
.end method

.method getEvent(J)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 2
    .param p1, "timestamp"    # J

    .line 659
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/diagnostic/CarDiagnosticEvent;

    return-object v0
.end method

.method getEvents()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Landroid/car/diagnostic/CarDiagnosticEvent;",
            ">;"
        }
    .end annotation

    .line 663
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method getFreezeFrameTimestamps()[J
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/android/car/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v0

    return-object v0
.end method

.method update(Landroid/car/diagnostic/CarDiagnosticEvent;)Landroid/car/diagnostic/CarDiagnosticEvent;
    .locals 3
    .param p1, "newEvent"    # Landroid/car/diagnostic/CarDiagnosticEvent;

    .line 650
    iget-object v0, p0, Lcom/android/car/CarDiagnosticService$FreezeFrameRecord;->mEvents:Ljava/util/HashMap;

    iget-wide v1, p1, Landroid/car/diagnostic/CarDiagnosticEvent;->timestamp:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    return-object p1
.end method
