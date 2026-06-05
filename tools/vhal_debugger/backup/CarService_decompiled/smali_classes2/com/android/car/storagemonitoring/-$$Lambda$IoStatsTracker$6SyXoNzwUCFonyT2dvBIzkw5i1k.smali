.class public final synthetic Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

.field private final synthetic f$1:Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;

.field private final synthetic f$2:Landroid/util/SparseArray;

.field private final synthetic f$3:Landroid/util/SparseArray;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/storagemonitoring/IoStatsTracker;Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    iput-object p2, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$1:Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;

    iput-object p3, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$2:Landroid/util/SparseArray;

    iput-object p4, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$3:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    iget-object v1, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$1:Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;

    iget-object v2, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$2:Landroid/util/SparseArray;

    iget-object v3, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$6SyXoNzwUCFonyT2dvBIzkw5i1k;->f$3:Landroid/util/SparseArray;

    check-cast p1, Landroid/car/storagemonitoring/UidIoRecord;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/car/storagemonitoring/IoStatsTracker;->lambda$update$2$IoStatsTracker(Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;Landroid/util/SparseArray;Landroid/util/SparseArray;Landroid/car/storagemonitoring/UidIoRecord;)V

    return-void
.end method
