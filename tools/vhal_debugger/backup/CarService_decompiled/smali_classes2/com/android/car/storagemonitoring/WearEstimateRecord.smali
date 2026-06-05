.class public Lcom/android/car/storagemonitoring/WearEstimateRecord;
.super Ljava/lang/Object;
.source "WearEstimateRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/storagemonitoring/WearEstimateRecord$Builder;
    }
.end annotation


# instance fields
.field private final mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

.field private final mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

.field private final mTotalCarServiceUptime:J

.field private final mUnixTimestamp:Ljava/time/Instant;


# direct methods
.method public constructor <init>(Landroid/car/storagemonitoring/WearEstimate;Landroid/car/storagemonitoring/WearEstimate;JLjava/time/Instant;)V
    .locals 1
    .param p1, "oldWearEstimate"    # Landroid/car/storagemonitoring/WearEstimate;
    .param p2, "newWearEstimate"    # Landroid/car/storagemonitoring/WearEstimate;
    .param p3, "totalCarServiceUptime"    # J
    .param p5, "unixTimestamp"    # Ljava/time/Instant;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 47
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/storagemonitoring/WearEstimate;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 48
    iput-wide p3, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    .line 49
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/time/Instant;

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    .line 50
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate;

    const-string v1, "oldWearEstimate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/car/storagemonitoring/WearEstimate;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 54
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate;

    const-string v1, "newWearEstimate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/car/storagemonitoring/WearEstimate;-><init>(Lorg/json/JSONObject;)V

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    .line 55
    const-string v0, "totalCarServiceUptime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    .line 56
    const-string v0, "unixTimestamp"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    .line 58
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 92
    instance-of v0, p1, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 93
    move-object v0, p1

    check-cast v0, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    .line 94
    .local v0, "wer":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    iget-object v2, v0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object v3, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v2, v3}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    return v1

    .line 95
    :cond_0
    iget-object v2, v0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object v3, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v2, v3}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    return v1

    .line 96
    :cond_1
    iget-wide v2, v0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    iget-wide v4, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 97
    :cond_2
    iget-object v2, v0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    iget-object v3, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    invoke-virtual {v2, v3}, Ljava/time/Instant;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 98
    :cond_3
    const/4 v1, 0x1

    return v1

    .line 100
    .end local v0    # "wer":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    :cond_4
    return v1
.end method

.method public getNewWearEstimate()Landroid/car/storagemonitoring/WearEstimate;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    return-object v0
.end method

.method public getOldWearEstimate()Landroid/car/storagemonitoring/WearEstimate;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    return-object v0
.end method

.method public getTotalCarServiceUptime()J
    .locals 2

    .line 78
    iget-wide v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    return-wide v0
.end method

.method public getUnixTimestamp()Ljava/time/Instant;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 120
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 120
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isSameAs(Landroid/car/storagemonitoring/WearEstimateChange;)Z
    .locals 6
    .param p1, "wearEstimateChange"    # Landroid/car/storagemonitoring/WearEstimateChange;

    .line 113
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object v1, p1, Landroid/car/storagemonitoring/WearEstimateChange;->oldEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v0, v1}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object v2, p1, Landroid/car/storagemonitoring/WearEstimateChange;->newEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v0, v2}, Landroid/car/storagemonitoring/WearEstimate;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 115
    :cond_1
    iget-wide v2, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    iget-wide v4, p1, Landroid/car/storagemonitoring/WearEstimateChange;->uptimeAtChange:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 126
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    .line 131
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 126
    const-string v1, "WearEstimateRecord {mOldWearEstimate = %s, mNewWearEstimate = %s, mTotalCarServiceUptime = %d, mUnixTimestamp = %s}"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toWearEstimateChange(Z)Landroid/car/storagemonitoring/WearEstimateChange;
    .locals 8
    .param p1, "isAcceptableDegradation"    # Z

    .line 86
    new-instance v7, Landroid/car/storagemonitoring/WearEstimateChange;

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-object v2, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    iget-wide v3, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    iget-object v5, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    move-object v0, v7

    move v6, p1

    invoke-direct/range {v0 .. v6}, Landroid/car/storagemonitoring/WearEstimateChange;-><init>(Landroid/car/storagemonitoring/WearEstimate;Landroid/car/storagemonitoring/WearEstimate;JLjava/time/Instant;Z)V

    return-object v7
.end method

.method writeToJson(Landroid/util/JsonWriter;)V
    .locals 3
    .param p1, "jsonWriter"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 62
    const-string v0, "oldWearEstimate"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mOldWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v0, p1}, Landroid/car/storagemonitoring/WearEstimate;->writeToJson(Landroid/util/JsonWriter;)V

    .line 63
    const-string v0, "newWearEstimate"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mNewWearEstimate:Landroid/car/storagemonitoring/WearEstimate;

    invoke-virtual {v0, p1}, Landroid/car/storagemonitoring/WearEstimate;->writeToJson(Landroid/util/JsonWriter;)V

    .line 64
    const-string v0, "totalCarServiceUptime"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mTotalCarServiceUptime:J

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 65
    const-string v0, "unixTimestamp"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/storagemonitoring/WearEstimateRecord;->mUnixTimestamp:Ljava/time/Instant;

    invoke-virtual {v1}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 66
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 67
    return-void
.end method
