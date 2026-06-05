.class final Lcom/android/car/CarInputService$KeyPressTimer;
.super Ljava/lang/Object;
.source "CarInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KeyPressTimer"
.end annotation


# instance fields
.field private final mCallback:Ljava/lang/Runnable;

.field private mDown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLongPress:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mLongPressDelaySupplier:Ljava/util/function/IntSupplier;

.field private final mLongPressRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/util/function/IntSupplier;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "longPressDelaySupplier"    # Ljava/util/function/IntSupplier;
    .param p3, "longPressRunnable"    # Ljava/lang/Runnable;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/android/car/-$$Lambda$CarInputService$KeyPressTimer$RxS3zZd0nzAQkCrwfSaxcRP5l2k;

    invoke-direct {v0, p0}, Lcom/android/car/-$$Lambda$CarInputService$KeyPressTimer$RxS3zZd0nzAQkCrwfSaxcRP5l2k;-><init>(Lcom/android/car/CarInputService$KeyPressTimer;)V

    iput-object v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mCallback:Ljava/lang/Runnable;

    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    .line 82
    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPress:Z

    .line 87
    iput-object p1, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mHandler:Landroid/os/Handler;

    .line 88
    iput-object p3, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPressRunnable:Ljava/lang/Runnable;

    .line 89
    iput-object p2, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPressDelaySupplier:Ljava/util/function/IntSupplier;

    .line 90
    return-void
.end method

.method public static synthetic lambda$RxS3zZd0nzAQkCrwfSaxcRP5l2k(Lcom/android/car/CarInputService$KeyPressTimer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/CarInputService$KeyPressTimer;->onTimerExpired()V

    return-void
.end method

.method private onTimerExpired()V
    .locals 1

    .line 112
    monitor-enter p0

    .line 114
    :try_start_0
    iget-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    if-nez v0, :cond_0

    .line 115
    monitor-exit p0

    return-void

    .line 117
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPress:Z

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPressRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    return-void

    .line 118
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized keyDown()V
    .locals 4

    monitor-enter p0

    .line 94
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPress:Z

    .line 96
    iget-object v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mCallback:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPressDelaySupplier:Ljava/util/function/IntSupplier;

    invoke-interface {v2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    monitor-exit p0

    return-void

    .line 93
    .end local p0    # "this":Lcom/android/car/CarInputService$KeyPressTimer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized keyUp()Z
    .locals 2

    monitor-enter p0

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mDown:Z

    .line 108
    iget-boolean v0, p0, Lcom/android/car/CarInputService$KeyPressTimer;->mLongPress:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 105
    .end local p0    # "this":Lcom/android/car/CarInputService$KeyPressTimer;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
