.class final Lcom/android/car/CarStorageMonitoringService$Configuration;
.super Ljava/lang/Object;
.source "CarStorageMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarStorageMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Configuration"
.end annotation


# instance fields
.field final acceptableBytesWrittenPerSample:J

.field final acceptableFsyncCallsPerSample:I

.field final acceptableHoursPerOnePercentFlashWear:I

.field final activityHandlerForFlashWearChanges:Ljava/lang/String;

.field final intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

.field final ioStatsNumSamplesToStore:I

.field final ioStatsRefreshRateMs:I

.field final maxExcessiveIoSamplesInWindow:I

.field final uptimeIntervalBetweenUptimeDataWriteMs:J


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 604
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const v0, 0x7f0a000a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsNumSamplesToStore:I

    .line 606
    nop

    .line 607
    const v0, 0x7f0a0004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableBytesWrittenPerSample:J

    .line 608
    nop

    .line 609
    const v0, 0x7f0a0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableFsyncCallsPerSample:I

    .line 610
    nop

    .line 611
    const v0, 0x7f0a000c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->maxExcessiveIoSamplesInWindow:I

    .line 612
    nop

    .line 614
    const v0, 0x7f0a0015

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x36ee80

    mul-int/2addr v0, v1

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->uptimeIntervalBetweenUptimeDataWriteMs:J

    .line 615
    nop

    .line 616
    const v0, 0x7f0a0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableHoursPerOnePercentFlashWear:I

    .line 617
    nop

    .line 618
    const v0, 0x7f0a000b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsRefreshRateMs:I

    .line 619
    nop

    .line 620
    const v0, 0x7f0f002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->activityHandlerForFlashWearChanges:Ljava/lang/String;

    .line 621
    nop

    .line 622
    const v0, 0x7f0f016f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

    .line 623
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 627
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableBytesWrittenPerSample:J

    .line 637
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableFsyncCallsPerSample:I

    .line 638
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableHoursPerOnePercentFlashWear:I

    .line 639
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->activityHandlerForFlashWearChanges:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsNumSamplesToStore:I

    .line 642
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsRefreshRateMs:I

    .line 643
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->maxExcessiveIoSamplesInWindow:I

    .line 644
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->uptimeIntervalBetweenUptimeDataWriteMs:J

    .line 645
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 627
    const-string v1, "acceptableBytesWrittenPerSample = %d, acceptableFsyncCallsPerSample = %d, acceptableHoursPerOnePercentFlashWear = %d, activityHandlerForFlashWearChanges = %s, intentReceiverForUnacceptableIoMetrics = %s, ioStatsNumSamplesToStore = %d, ioStatsRefreshRateMs = %d, maxExcessiveIoSamplesInWindow = %d, uptimeIntervalBetweenUptimeDataWriteMs = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
