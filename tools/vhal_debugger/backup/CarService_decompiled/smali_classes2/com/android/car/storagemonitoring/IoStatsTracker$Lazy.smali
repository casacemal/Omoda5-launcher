.class abstract Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;
.super Ljava/lang/Object;
.source "IoStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/storagemonitoring/IoStatsTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Lazy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mLazy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/car/storagemonitoring/IoStatsTracker;


# direct methods
.method private constructor <init>(Lcom/android/car/storagemonitoring/IoStatsTracker;)V
    .locals 0

    .line 28
    .local p0, "this":Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;, "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<TT;>;"
    iput-object p1, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->this$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->mLazy:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/storagemonitoring/IoStatsTracker;Lcom/android/car/storagemonitoring/IoStatsTracker$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/storagemonitoring/IoStatsTracker;
    .param p2, "x1"    # Lcom/android/car/storagemonitoring/IoStatsTracker$1;

    .line 28
    .local p0, "this":Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;, "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<TT;>;"
    invoke-direct {p0, p1}, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;-><init>(Lcom/android/car/storagemonitoring/IoStatsTracker;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .local p0, "this":Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;, "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<TT;>;"
    monitor-enter p0

    .line 34
    :try_start_0
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->mLazy:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->supply()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->mLazy:Ljava/util/Optional;

    .line 37
    .end local p0    # "this":Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;, "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<TT;>;"
    :cond_0
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;->mLazy:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract supply()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
