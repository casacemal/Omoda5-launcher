.class public final synthetic Lcom/android/car/-$$Lambda$CarStorageMonitoringService$ZJRgUrXgNv6rcjMAtNH60oxt-XM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$ZJRgUrXgNv6rcjMAtNH60oxt-XM;->f$0:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lcom/android/car/-$$Lambda$CarStorageMonitoringService$ZJRgUrXgNv6rcjMAtNH60oxt-XM;->f$0:J

    check-cast p1, Landroid/car/storagemonitoring/UidIoRecord;

    invoke-static {v0, v1, p1}, Lcom/android/car/CarStorageMonitoringService;->lambda$doInitServiceIfNeeded$5(JLandroid/car/storagemonitoring/UidIoRecord;)Landroid/car/storagemonitoring/IoStatsEntry;

    move-result-object p1

    return-object p1
.end method
