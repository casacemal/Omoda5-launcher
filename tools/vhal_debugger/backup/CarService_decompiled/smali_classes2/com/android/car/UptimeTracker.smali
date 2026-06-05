.class public Lcom/android/car/UptimeTracker;
.super Ljava/lang/Object;
.source "UptimeTracker.java"


# static fields
.field private static DEFAULT_SNAPSHOT_INTERVAL_MS:J = 0x0L

.field public static final MINIMUM_SNAPSHOT_INTERVAL_MS:J = 0x36ee80L


# instance fields
.field private mHistoricalUptime:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mLastRealTimeSnapshot:J

.field private final mLock:Ljava/lang/Object;

.field private mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

.field private mUptimeFile:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-wide/32 v0, 0x112a880

    sput-wide v0, Lcom/android/car/UptimeTracker;->DEFAULT_SNAPSHOT_INTERVAL_MS:J

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .line 94
    sget-wide v0, Lcom/android/car/UptimeTracker;->DEFAULT_SNAPSHOT_INTERVAL_MS:J

    invoke-direct {p0, p1, v0, v1}, Lcom/android/car/UptimeTracker;-><init>(Ljava/io/File;J)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/io/File;J)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "snapshotInterval"    # J

    .line 98
    new-instance v0, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;

    invoke-direct {v0}, Lcom/android/car/systeminterface/TimeInterface$DefaultImpl;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/UptimeTracker;-><init>(Ljava/io/File;JLcom/android/car/systeminterface/TimeInterface;)V

    .line 99
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/android/car/systeminterface/SystemInterface;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "snapshotInterval"    # J
    .param p4, "systemInterface"    # Lcom/android/car/systeminterface/SystemInterface;

    .line 102
    invoke-virtual {p4}, Lcom/android/car/systeminterface/SystemInterface;->getTimeInterface()Lcom/android/car/systeminterface/TimeInterface;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/car/UptimeTracker;-><init>(Ljava/io/File;JLcom/android/car/systeminterface/TimeInterface;)V

    .line 103
    return-void
.end method

.method constructor <init>(Ljava/io/File;JLcom/android/car/systeminterface/TimeInterface;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "snapshotInterval"    # J
    .param p4, "timeInterface"    # Lcom/android/car/systeminterface/TimeInterface;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/UptimeTracker;->mLock:Ljava/lang/Object;

    .line 111
    const-wide/32 v0, 0x36ee80

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    .line 112
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    iput-object v0, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    .line 113
    iput-object p4, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    .line 114
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/car/systeminterface/TimeInterface;->getUptime(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/car/UptimeTracker;->mLastRealTimeSnapshot:J

    .line 115
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/UptimeTracker;->mHistoricalUptime:Ljava/util/Optional;

    .line 117
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    new-instance v1, Lcom/android/car/-$$Lambda$UptimeTracker$xu1OYBk8ZWIueCktLcjt2G8ZNhc;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$UptimeTracker$xu1OYBk8ZWIueCktLcjt2G8ZNhc;-><init>(Lcom/android/car/UptimeTracker;)V

    invoke-interface {v0, v1, p2, p3}, Lcom/android/car/systeminterface/TimeInterface;->scheduleAction(Ljava/lang/Runnable;J)V

    .line 118
    return-void
.end method

.method private flushSnapshot()V
    .locals 6

    .line 169
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    if-nez v1, :cond_0

    .line 171
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 174
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/car/UptimeTracker;->getTotalUptime()J

    move-result-wide v1

    .line 175
    .local v1, "newUptime":J
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v3

    iput-object v3, p0, Lcom/android/car/UptimeTracker;->mHistoricalUptime:Ljava/util/Optional;

    .line 176
    iget-object v3, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/android/car/systeminterface/TimeInterface;->getUptime(Z)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/car/UptimeTracker;->mLastRealTimeSnapshot:J

    .line 179
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 180
    .local v3, "writer":Landroid/util/JsonWriter;
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 181
    const-string v4, "uptime"

    invoke-virtual {v3, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 182
    invoke-virtual {v3, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 183
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 184
    invoke-virtual {v3}, Landroid/util/JsonWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 187
    .end local v1    # "newUptime":J
    .end local v3    # "writer":Landroid/util/JsonWriter;
    goto :goto_0

    .line 185
    :catch_0
    move-exception v1

    .line 186
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string v2, "CAR.SERVICE"

    const-string v3, "unable to write historical uptime data"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 188
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private getHistoricalUptimeLocked()J
    .locals 4

    .line 148
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mHistoricalUptime:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    :try_start_0
    new-instance v0, Landroid/util/JsonReader;

    new-instance v1, Ljava/io/FileReader;

    iget-object v2, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 151
    .local v0, "reader":Landroid/util/JsonReader;
    invoke-virtual {v0}, Landroid/util/JsonReader;->beginObject()V

    .line 152
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "uptime"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {v0}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/UptimeTracker;->mHistoricalUptime:Ljava/util/Optional;

    .line 158
    invoke-virtual {v0}, Landroid/util/JsonReader;->endObject()V

    .line 159
    invoke-virtual {v0}, Landroid/util/JsonReader;->close()V

    .line 163
    .end local v0    # "reader":Landroid/util/JsonReader;
    goto :goto_0

    .line 153
    .restart local v0    # "reader":Landroid/util/JsonReader;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is not in a valid format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Lcom/android/car/UptimeTracker;
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .end local v0    # "reader":Landroid/util/JsonReader;
    .restart local p0    # "this":Lcom/android/car/UptimeTracker;
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CAR.SERVICE"

    const-string v2, "unable to read historical uptime data"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/UptimeTracker;->mHistoricalUptime:Ljava/util/Optional;

    .line 165
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mHistoricalUptime:Ljava/util/Optional;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic lambda$xu1OYBk8ZWIueCktLcjt2G8ZNhc(Lcom/android/car/UptimeTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/UptimeTracker;->flushSnapshot()V

    return-void
.end method


# virtual methods
.method getTotalUptime()J
    .locals 7

    .line 137
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    if-nez v1, :cond_0

    .line 139
    const-wide/16 v1, 0x0

    monitor-exit v0

    return-wide v1

    .line 141
    :cond_0
    invoke-direct {p0}, Lcom/android/car/UptimeTracker;->getHistoricalUptimeLocked()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    const/4 v4, 0x0

    .line 142
    invoke-interface {v3, v4}, Lcom/android/car/systeminterface/TimeInterface;->getUptime(Z)J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/car/UptimeTracker;->mLastRealTimeSnapshot:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    monitor-exit v0

    .line 141
    return-wide v1

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method onDestroy()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/android/car/UptimeTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    invoke-interface {v1}, Lcom/android/car/systeminterface/TimeInterface;->cancelAllActions()V

    .line 125
    :cond_0
    invoke-direct {p0}, Lcom/android/car/UptimeTracker;->flushSnapshot()V

    .line 126
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/car/UptimeTracker;->mTimeInterface:Lcom/android/car/systeminterface/TimeInterface;

    .line 127
    iput-object v1, p0, Lcom/android/car/UptimeTracker;->mUptimeFile:Ljava/io/File;

    .line 128
    monitor-exit v0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
