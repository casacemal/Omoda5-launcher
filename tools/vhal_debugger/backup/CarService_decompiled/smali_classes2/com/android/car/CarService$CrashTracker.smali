.class Lcom/android/car/CarService$CrashTracker;
.super Ljava/lang/Object;
.source "CarService.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CrashTracker"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private final mCrashTimestamps:[J

.field private final mCrashTimestampsIndices:Lcom/android/internal/util/RingBufferIndices;

.field private final mMaxCrashCountLimit:I

.field private final mSlidingWindowMillis:I


# direct methods
.method constructor <init>(IILjava/lang/Runnable;)V
    .locals 2
    .param p1, "maxCrashCountLimit"    # I
    .param p2, "slidingWindowMillis"    # I
    .param p3, "callback"    # Ljava/lang/Runnable;

    .line 231
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    iput p1, p0, Lcom/android/car/CarService$CrashTracker;->mMaxCrashCountLimit:I

    .line 233
    iput p2, p0, Lcom/android/car/CarService$CrashTracker;->mSlidingWindowMillis:I

    .line 234
    iput-object p3, p0, Lcom/android/car/CarService$CrashTracker;->mCallback:Ljava/lang/Runnable;

    .line 236
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestamps:[J

    .line 237
    new-instance v0, Lcom/android/internal/util/RingBufferIndices;

    iget v1, p0, Lcom/android/car/CarService$CrashTracker;->mMaxCrashCountLimit:I

    invoke-direct {v0, v1}, Lcom/android/internal/util/RingBufferIndices;-><init>(I)V

    iput-object v0, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestampsIndices:Lcom/android/internal/util/RingBufferIndices;

    .line 238
    return-void
.end method


# virtual methods
.method crashDetected()V
    .locals 8

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 242
    .local v0, "lastCrash":J
    iget-object v2, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestamps:[J

    iget-object v3, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestampsIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v3}, Lcom/android/internal/util/RingBufferIndices;->add()I

    move-result v3

    aput-wide v0, v2, v3

    .line 244
    iget-object v2, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestampsIndices:Lcom/android/internal/util/RingBufferIndices;

    invoke-virtual {v2}, Lcom/android/internal/util/RingBufferIndices;->size()I

    move-result v2

    iget v3, p0, Lcom/android/car/CarService$CrashTracker;->mMaxCrashCountLimit:I

    if-ne v2, v3, :cond_0

    .line 245
    iget-object v2, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestamps:[J

    iget-object v3, p0, Lcom/android/car/CarService$CrashTracker;->mCrashTimestampsIndices:Lcom/android/internal/util/RingBufferIndices;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/util/RingBufferIndices;->indexOf(I)I

    move-result v3

    aget-wide v2, v2, v3

    .line 247
    .local v2, "firstCrash":J
    sub-long v4, v0, v2

    iget v6, p0, Lcom/android/car/CarService$CrashTracker;->mSlidingWindowMillis:I

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 248
    iget-object v4, p0, Lcom/android/car/CarService$CrashTracker;->mCallback:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 251
    .end local v2    # "firstCrash":J
    :cond_0
    return-void
.end method
