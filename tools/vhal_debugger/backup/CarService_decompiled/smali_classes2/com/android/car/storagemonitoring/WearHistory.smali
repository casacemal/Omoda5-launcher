.class public Lcom/android/car/storagemonitoring/WearHistory;
.super Ljava/lang/Object;
.source "WearHistory.java"


# instance fields
.field private final mWearHistory:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/car/storagemonitoring/WearEstimateRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    .line 47
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    .line 50
    const-string v0, "wearHistory"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 51
    .local v0, "wearHistory":Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 52
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 53
    .local v2, "wearRecordJson":Lorg/json/JSONObject;
    new-instance v3, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    invoke-direct {v3, v2}, Lcom/android/car/storagemonitoring/WearEstimateRecord;-><init>(Lorg/json/JSONObject;)V

    .line 54
    .local v3, "wearRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    invoke-virtual {p0, v3}, Lcom/android/car/storagemonitoring/WearHistory;->add(Lcom/android/car/storagemonitoring/WearEstimateRecord;)Z

    .line 51
    .end local v2    # "wearRecordJson":Lorg/json/JSONObject;
    .end local v3    # "wearRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public static fromJson(Ljava/io/File;)Lcom/android/car/storagemonitoring/WearHistory;
    .locals 3
    .param p0, "in"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    new-instance v0, Lorg/json/JSONObject;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {v2}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 66
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/android/car/storagemonitoring/WearHistory;

    invoke-direct {v1, v0}, Lcom/android/car/storagemonitoring/WearHistory;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public static varargs fromRecords([Lcom/android/car/storagemonitoring/WearEstimateRecord;)Lcom/android/car/storagemonitoring/WearHistory;
    .locals 3
    .param p0, "records"    # [Lcom/android/car/storagemonitoring/WearEstimateRecord;

    .line 59
    new-instance v0, Lcom/android/car/storagemonitoring/WearHistory;

    invoke-direct {v0}, Lcom/android/car/storagemonitoring/WearHistory;-><init>()V

    .line 60
    .local v0, "wearHistory":Lcom/android/car/storagemonitoring/WearHistory;
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/car/storagemonitoring/-$$Lambda$M-BSctG_y9vsZKZt8FdeHK1Ka2k;

    invoke-direct {v2, v0}, Lcom/android/car/storagemonitoring/-$$Lambda$M-BSctG_y9vsZKZt8FdeHK1Ka2k;-><init>(Lcom/android/car/storagemonitoring/WearHistory;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 61
    return-object v0
.end method

.method static synthetic lambda$add$0(Lcom/android/car/storagemonitoring/WearEstimateRecord;Lcom/android/car/storagemonitoring/WearEstimateRecord;)I
    .locals 3
    .param p0, "o1"    # Lcom/android/car/storagemonitoring/WearEstimateRecord;
    .param p1, "o2"    # Lcom/android/car/storagemonitoring/WearEstimateRecord;

    .line 82
    invoke-virtual {p0}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->getTotalCarServiceUptime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 83
    invoke-virtual {p1}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->getTotalCarServiceUptime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$toString$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "t"    # Ljava/lang/String;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public add(Lcom/android/car/storagemonitoring/WearEstimateRecord;)Z
    .locals 2
    .param p1, "record"    # Lcom/android/car/storagemonitoring/WearEstimateRecord;

    .line 80
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    sget-object v1, Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;->INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$gK9yZsKFOWBVEaJui2rxuZPhDyc;

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 84
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 129
    instance-of v0, p1, Lcom/android/car/storagemonitoring/WearHistory;

    if-eqz v0, :cond_0

    .line 130
    move-object v0, p1

    check-cast v0, Lcom/android/car/storagemonitoring/WearHistory;

    .line 131
    .local v0, "wi":Lcom/android/car/storagemonitoring/WearHistory;
    iget-object v1, v0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    iget-object v2, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 133
    .end local v0    # "wi":Lcom/android/car/storagemonitoring/WearHistory;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(I)Lcom/android/car/storagemonitoring/WearEstimateRecord;
    .locals 1
    .param p1, "i"    # I

    .line 94
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    return-object v0
.end method

.method public getLast()Lcom/android/car/storagemonitoring/WearEstimateRecord;
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/car/storagemonitoring/WearHistory;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/car/storagemonitoring/WearHistory;->get(I)Lcom/android/car/storagemonitoring/WearEstimateRecord;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/car/storagemonitoring/-$$Lambda$cJV0L6PvLef8TIU_I2T_P68nX28;->INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$cJV0L6PvLef8TIU_I2T_P68nX28;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WearHistory[size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {p0}, Lcom/android/car/storagemonitoring/WearHistory;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$weKZIAU1qLUek10yWT8t3cGB2Bs;->INSTANCE:Lcom/android/car/storagemonitoring/-$$Lambda$WearHistory$weKZIAU1qLUek10yWT8t3cGB2Bs;

    .line 143
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public toWearEstimateChanges(J)Ljava/util/List;
    .locals 15
    .param p1, "acceptableHoursPerOnePercentFlashWear"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/WearEstimateChange;",
            ">;"
        }
    .end annotation

    .line 104
    move-object v0, p0

    const/16 v1, 0xa

    .line 105
    .local v1, "WEAR_PERCENTAGE_INCREMENT":I
    nop

    .line 106
    invoke-static/range {p1 .. p2}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xa

    mul-long/2addr v2, v4

    .line 107
    .local v2, "acceptableWearRate":J
    invoke-virtual {p0}, Lcom/android/car/storagemonitoring/WearHistory;->size()I

    move-result v4

    .line 109
    .local v4, "numRecords":I
    if-nez v4, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    return-object v5

    .line 111
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v5, "result":Ljava/util/List;, "Ljava/util/List<Landroid/car/storagemonitoring/WearEstimateChange;>;"
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/car/storagemonitoring/WearHistory;->get(I)Lcom/android/car/storagemonitoring/WearEstimateRecord;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->toWearEstimateChange(Z)Landroid/car/storagemonitoring/WearEstimateChange;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v7, 0x1

    .local v7, "i":I
    :goto_0
    if-ge v7, v4, :cond_2

    .line 115
    add-int/lit8 v9, v7, -0x1

    invoke-virtual {p0, v9}, Lcom/android/car/storagemonitoring/WearHistory;->get(I)Lcom/android/car/storagemonitoring/WearEstimateRecord;

    move-result-object v9

    .line 116
    .local v9, "previousRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    invoke-virtual {p0, v7}, Lcom/android/car/storagemonitoring/WearHistory;->get(I)Lcom/android/car/storagemonitoring/WearEstimateRecord;

    move-result-object v10

    .line 117
    .local v10, "currentRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    nop

    .line 118
    invoke-virtual {v10}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->getTotalCarServiceUptime()J

    move-result-wide v11

    .line 119
    invoke-virtual {v9}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->getTotalCarServiceUptime()J

    move-result-wide v13

    sub-long/2addr v11, v13

    .line 120
    .local v11, "timeForChange":J
    cmp-long v13, v11, v2

    if-ltz v13, :cond_1

    move v13, v8

    goto :goto_1

    :cond_1
    move v13, v6

    .line 121
    .local v13, "isAcceptableDegradation":Z
    :goto_1
    invoke-virtual {v10, v13}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->toWearEstimateChange(Z)Landroid/car/storagemonitoring/WearEstimateChange;

    move-result-object v14

    invoke-interface {v5, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .end local v9    # "previousRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    .end local v10    # "currentRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    .end local v11    # "timeForChange":J
    .end local v13    # "isAcceptableDegradation":Z
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 124
    .end local v7    # "i":I
    :cond_2
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    return-object v6
.end method

.method public writeToJson(Landroid/util/JsonWriter;)V
    .locals 2
    .param p1, "out"    # Landroid/util/JsonWriter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 71
    const-string v0, "wearHistory"

    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 72
    iget-object v0, p0, Lcom/android/car/storagemonitoring/WearHistory;->mWearHistory:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/storagemonitoring/WearEstimateRecord;

    .line 73
    .local v1, "wearRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    invoke-virtual {v1, p1}, Lcom/android/car/storagemonitoring/WearEstimateRecord;->writeToJson(Landroid/util/JsonWriter;)V

    .line 74
    .end local v1    # "wearRecord":Lcom/android/car/storagemonitoring/WearEstimateRecord;
    goto :goto_0

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 76
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 77
    return-void
.end method
