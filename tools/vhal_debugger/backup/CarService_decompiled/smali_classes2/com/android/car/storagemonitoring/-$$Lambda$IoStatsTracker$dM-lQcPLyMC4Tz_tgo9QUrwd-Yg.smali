.class public final synthetic Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$dM-lQcPLyMC4Tz_tgo9QUrwd-Yg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/storagemonitoring/IoStatsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/storagemonitoring/IoStatsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$dM-lQcPLyMC4Tz_tgo9QUrwd-Yg;->f$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/car/storagemonitoring/-$$Lambda$IoStatsTracker$dM-lQcPLyMC4Tz_tgo9QUrwd-Yg;->f$0:Lcom/android/car/storagemonitoring/IoStatsTracker;

    check-cast p1, Landroid/car/storagemonitoring/IoStatsEntry;

    invoke-virtual {v0, p1}, Lcom/android/car/storagemonitoring/IoStatsTracker;->lambda$new$0$IoStatsTracker(Landroid/car/storagemonitoring/IoStatsEntry;)V

    return-void
.end method
