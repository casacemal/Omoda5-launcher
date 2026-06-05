.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field private final synthetic f$0:Lcom/android/car/CarStorageMonitoringService;

.field private final synthetic f$1:Landroid/car/storagemonitoring/IoStats;


# direct methods
.method public synthetic constructor <init>(Lcom/android/car/CarStorageMonitoringService;Landroid/car/storagemonitoring/IoStats;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;->f$0:Lcom/android/car/CarStorageMonitoringService;

    iput-object p2, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;->f$1:Landroid/car/storagemonitoring/IoStats;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;->f$0:Lcom/android/car/CarStorageMonitoringService;

    iget-object v1, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$BB7XOuHptu3JcCtYJXf2rOLPkCU;->f$1:Landroid/car/storagemonitoring/IoStats;

    invoke-virtual {v0, v1, p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$dispatchNewIoEvent$2$CarStorageMonitoringService(Landroid/car/storagemonitoring/IoStats;I)V

    return-void
.end method
