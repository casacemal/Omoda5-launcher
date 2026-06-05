.class public Lcom/android/car/storagemonitoring/IoStatsTracker;
.super Ljava/lang/Object;
.source "IoStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;
    }
.end annotation


# instance fields
.field private mCurrentSample:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSampleWindowMs:J

.field private final mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

.field private mTotal:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;JLcom/android/car/systeminterface/SystemStateInterface;)V
    .locals 2
    .param p2, "sampleWindowMs"    # J
    .param p4, "systemStateInterface"    # Lcom/android/car/systeminterface/SystemStateInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;J",
            "Lcom/android/car/systeminterface/SystemStateInterface;",
            ")V"
        }
    .end annotation

    .line 47
    .local p1, "initialValue":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/IoStatsEntry;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mTotal:Landroid/util/SparseArray;

    .line 49
    new-instance v0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$dM-lQcPLyMC4Tz_tgo9QUrwd-Yg;

    invoke-direct {v0, p0}, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$dM-lQcPLyMC4Tz_tgo9QUrwd-Yg;-><init>(Lcom/android/car/storagemonitoring/IoStatsTracker;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 50
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mTotal:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mCurrentSample:Landroid/util/SparseArray;

    .line 51
    iput-wide p2, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mSampleWindowMs:J

    .line 52
    iput-object p4, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    .line 53
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/storagemonitoring/IoStatsTracker;)Lcom/android/car/systeminterface/SystemStateInterface;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/storagemonitoring/IoStatsTracker;

    .line 27
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mSystemStateInterface:Lcom/android/car/systeminterface/SystemStateInterface;

    return-object v0
.end method

.method static synthetic lambda$update$1(ILcom/android/car/procfsinspector/ProcessInfo;)Z
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pi"    # Lcom/android/car/procfsinspector/ProcessInfo;

    .line 83
    iget v0, p1, Lcom/android/car/procfsinspector/ProcessInfo;->uid:I

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public declared-synchronized getCurrentSample()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mCurrentSample:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/storagemonitoring/IoStatsTracker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTotal()Landroid/util/SparseArray;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mTotal:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/storagemonitoring/IoStatsTracker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public synthetic lambda$new$0$IoStatsTracker(Landroid/car/storagemonitoring/IoStatsEntry;)V
    .locals 2
    .param p1, "uidIoStats"    # Landroid/car/storagemonitoring/IoStatsEntry;

    .line 49
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mTotal:Landroid/util/SparseArray;

    iget v1, p1, Landroid/car/storagemonitoring/IoStatsEntry;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-void
.end method

.method public synthetic lambda$update$2$IoStatsTracker(Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/car/storagemonitoring/UidIoRecord;)V
    .locals 9
    .param p1, "processTable"    # Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;
    .param p2, "newSample"    # Landroid/util/SparseArray;
    .param p3, "newTotal"    # Landroid/util/SparseArray;
    .param p4, "newRecord"    # Landroid/car/storagemonitoring/UidIoRecord;

    .line 68
    iget v0, p4, Landroid/car/storagemonitoring/UidIoRecord;->uid:I

    .line 69
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mTotal:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/storagemonitoring/IoStatsEntry;

    .line 71
    .local v1, "oldRecord":Landroid/car/storagemonitoring/IoStatsEntry;
    const/4 v2, 0x0

    .line 73
    .local v2, "newStats":Landroid/car/storagemonitoring/IoStatsEntry;
    if-nez v1, :cond_0

    .line 76
    new-instance v3, Landroid/car/storagemonitoring/IoStatsEntry;

    iget-wide v4, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mSampleWindowMs:J

    invoke-direct {v3, p4, v4, v5}, Landroid/car/storagemonitoring/IoStatsEntry;-><init>(Landroid/car/storagemonitoring/UidIoRecord;J)V

    move-object v2, v3

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {v1, p4}, Landroid/car/storagemonitoring/IoStatsEntry;->representsSameMetrics(Landroid/car/storagemonitoring/UidIoRecord;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 83
    invoke-virtual {p1}, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$ffetSYj-ja44vra_OEt-ULDMGQE;

    invoke-direct {v4, v0}, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$ffetSYj-ja44vra_OEt-ULDMGQE;-><init>(I)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    new-instance v3, Landroid/car/storagemonitoring/IoStatsEntry;

    invoke-virtual {p4, v1}, Landroid/car/storagemonitoring/UidIoRecord;->delta(Landroid/car/storagemonitoring/IoStatsEntry;)Landroid/car/storagemonitoring/UidIoRecord;

    move-result-object v4

    iget-wide v5, v1, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    iget-wide v7, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mSampleWindowMs:J

    add-long/2addr v5, v7

    invoke-direct {v3, v4, v5, v6}, Landroid/car/storagemonitoring/IoStatsEntry;-><init>(Landroid/car/storagemonitoring/UidIoRecord;J)V

    move-object v2, v3

    goto :goto_0

    .line 92
    :cond_1
    new-instance v3, Landroid/car/storagemonitoring/IoStatsEntry;

    invoke-virtual {p4, v1}, Landroid/car/storagemonitoring/UidIoRecord;->delta(Landroid/car/storagemonitoring/IoStatsEntry;)Landroid/car/storagemonitoring/UidIoRecord;

    move-result-object v4

    iget-wide v5, v1, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    iget-wide v7, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mSampleWindowMs:J

    add-long/2addr v5, v7

    invoke-direct {v3, v4, v5, v6}, Landroid/car/storagemonitoring/IoStatsEntry;-><init>(Landroid/car/storagemonitoring/UidIoRecord;J)V

    move-object v2, v3

    .line 97
    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 98
    invoke-virtual {p2, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    new-instance v3, Landroid/car/storagemonitoring/IoStatsEntry;

    iget-wide v4, v2, Landroid/car/storagemonitoring/IoStatsEntry;->runtimeMillis:J

    invoke-direct {v3, p4, v4, v5}, Landroid/car/storagemonitoring/IoStatsEntry;-><init>(Landroid/car/storagemonitoring/UidIoRecord;J)V

    invoke-virtual {p3, v0, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {p3, v0, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 104
    :goto_1
    return-void
.end method

.method public declared-synchronized update(Landroid/util/SparseArray;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/car/storagemonitoring/UidIoRecord;",
            ">;)V"
        }
    .end annotation

    .local p1, "newMetrics":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/UidIoRecord;>;"
    monitor-enter p0

    .line 56
    :try_start_0
    new-instance v0, Lcom/android/car/storagemonitoring/IoStatsTracker$1;

    invoke-direct {v0, p0}, Lcom/android/car/storagemonitoring/IoStatsTracker$1;-><init>(Lcom/android/car/storagemonitoring/IoStatsTracker;)V

    .line 63
    .local v0, "processTable":Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;, "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<Ljava/util/List<Lcom/android/car/procfsinspector/ProcessInfo;>;>;"
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 64
    .local v1, "newSample":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/IoStatsEntry;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 67
    .local v2, "newTotal":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/IoStatsEntry;>;"
    invoke-static {p1}, Lcom/android/car/SparseArrayStream;->valueStream(Landroid/util/SparseArray;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;-><init>(Lcom/android/car/storagemonitoring/IoStatsTracker;Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 107
    iput-object v1, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mCurrentSample:Landroid/util/SparseArray;

    .line 108
    iput-object v2, p0, Lcom/android/car/storagemonitoring/IoStatsTracker;->mTotal:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    monitor-exit p0

    return-void

    .line 55
    .end local v0    # "processTable":Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;, "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<Ljava/util/List<Lcom/android/car/procfsinspector/ProcessInfo;>;>;"
    .end local v1    # "newSample":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/IoStatsEntry;>;"
    .end local v2    # "newTotal":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/IoStatsEntry;>;"
    .end local p0    # "this":Lcom/android/car/storagemonitoring/IoStatsTracker;
    .end local p1    # "newMetrics":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/car/storagemonitoring/UidIoRecord;>;"
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
