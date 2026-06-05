.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$pCAdAR4fOJdGCeOYd7DWFDmMrYw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarStorageMonitoringService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarStorageMonitoringService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$pCAdAR4fOJdGCeOYd7DWFDmMrYw;->f$0:Lcom/android/car/CarStorageMonitoringService;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$pCAdAR4fOJdGCeOYd7DWFDmMrYw;->f$0:Lcom/android/car/CarStorageMonitoringService;

    check-cast p1, Landroid/car/storagemonitoring/IoStats;

    invoke-virtual {v0, p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$needsExcessiveIoBroadcast$1$CarStorageMonitoringService(Landroid/car/storagemonitoring/IoStats;)Z

    move-result p1

    return p1
.end method
