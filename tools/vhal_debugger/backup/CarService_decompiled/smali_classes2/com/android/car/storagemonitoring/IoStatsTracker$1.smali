.class Lcom/android/car/storagemonitoring/IoStatsTracker$1;
.super Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;
.source "IoStatsTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/storagemonitoring/IoStatsTracker;->update(Landroid/util/SparseArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy<",
        "Ljava/util/List<",
        "Lcom/android/car/procfsinspector/ProcessInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/storagemonitoring/IoStatsTracker;


# direct methods
.method constructor <init>(Lcom/android/car/storagemonitoring/IoStatsTracker;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/car/storagemonitoring/IoStatsTracker;

    .line 56
    iput-object p1, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$1;->this$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/car/storagemonitoring/IoStatsTracker$Lazy;-><init>(Lcom/android/car/storagemonitoring/IoStatsTracker;Lcom/android/car/storagemonitoring/IoStatsTracker$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic supply()Ljava/lang/Object;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/android/car/storagemonitoring/IoStatsTracker$1;->supply()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected supply()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/car/procfsinspector/ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/android/car/storagemonitoring/IoStatsTracker$1;->this$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    invoke-static {v0}, Lcom/android/car/storagemonitoring/IoStatsTracker;->access$100(Lcom/android/car/storagemonitoring/IoStatsTracker;)Lcom/android/car/systeminterface/SystemStateInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/car/systeminterface/SystemStateInterface;->getRunningProcesses()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
