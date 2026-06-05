.class public final Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
.super Ljava/lang/Object;
.source "WearEstimateRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/storagemonitoring/WearEstimateRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

.field private mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

.field private mTotalCarServiceUptime:J

.field private mUnixTimestamp:Ljava/time/Instant;


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 136
    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 137
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mTotalCarServiceUptime:J

    .line 138
    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mUnixTimestamp:Ljava/time/Instant;

    .line 140
    return-void
.end method

.method public static newBuilder()Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
    .locals 1

    .line 143
    new-instance v0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;

    invoke-direct {v0}, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public atTimestamp(Ljava/time/Instant;)Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
    .locals 1
    .param p1, "now"    # Ljava/time/Instant;

    .line 165
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mUnixTimestamp:Ljava/time/Instant;

    .line 166
    return-object p0
.end method

.method public atUptime(J)Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
    .locals 2
    .param p1, "uptime"    # J

    .line 157
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 160
    iput-wide p1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mTotalCarServiceUptime:J

    .line 161
    return-object p0

    .line 158
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "uptime must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lcom/android/car/storagemonitoring/WearEstimateRecord;
    .locals 7

    .line 170
    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    if-eqz v2, :cond_0

    iget-wide v3, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mTotalCarServiceUptime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_0

    iget-object v5, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mUnixTimestamp:Ljava/time/Instant;

    if-eqz v5, :cond_0

    .line 174
    new-instance v6, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/car/storagemonitoring/WearEstimateRecord;-><init>(Landroid/car/storagemonitoring/WearEstimate;Landroid/car/storagemonitoring/WearEstimate;JLjava/time/Instant;)V

    return-object v6

    .line 172
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "malformed builder state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public fromWearEstimate(Landroid/car/storagemonitoring/WearEstimate;)Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
    .locals 1
    .param p1, "wearEstimate"    # Landroid/car/storagemonitoring/WearEstimate;

    .line 147
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 148
    return-object p0
.end method

.method public toWearEstimate(Landroid/car/storagemonitoring/WearEstimate;)Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
    .locals 1
    .param p1, "wearEstimate"    # Landroid/car/storagemonitoring/WearEstimate;

    .line 152
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 153
    return-object p0
.end method
