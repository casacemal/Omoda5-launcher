.class final Lcom/android/car/CarServiceUtils$SyncRunnable;
.super Ljava/lang/Object;
.source "CarServiceUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarServiceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SyncRunnable"
.end annotation


# instance fields
.field private volatile mComplete:Z

.field private final mTarget:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "target"    # Ljava/lang/Runnable;

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mComplete:Z

    .line 119
    iput-object p1, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    .line 120
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mTarget:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 125
    monitor-enter p0

    .line 126
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mComplete:Z

    .line 127
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 128
    monitor-exit p0

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForComplete()V
    .locals 1

    .line 132
    monitor-enter p0

    .line 133
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarServiceUtils$SyncRunnable;->mComplete:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 135
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :goto_1
    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_1

    .line 139
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
