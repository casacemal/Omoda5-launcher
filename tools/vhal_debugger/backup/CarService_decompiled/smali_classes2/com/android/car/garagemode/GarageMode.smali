.class Lcom/android/car/garagemode/GarageMode;
.super Ljava/lang/Object;
.source "GarageMode.java"


# static fields
.field public static final ACTION_GARAGE_MODE_OFF:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_OFF"

.field public static final ACTION_GARAGE_MODE_ON:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_ON"

.field static final JOB_SNAPSHOT_INITIAL_UPDATE_MS:J = 0x2710L

.field static final JOB_SNAPSHOT_UPDATE_FREQUENCY_MS:J = 0x3e8L

.field private static final LOG:Lcom/android/car/garagemode/Logger;

.field static final USER_STOP_CHECK_INTERVAL:J = 0x2710L


# instance fields
.field private final mController:Lcom/android/car/garagemode/Controller;

.field private mFuture:Ljava/util/concurrent/CompletableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mGarageModeActive:Z

.field private mHandler:Landroid/os/Handler;

.field private mJobScheduler:Landroid/app/job/JobScheduler;

.field private mPendingJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRunnable:Ljava/lang/Runnable;

.field private mStartedBackgroundUsers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mStopUserCheckRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/car/garagemode/Logger;

    const-string v1, "GarageMode"

    invoke-direct {v0, v1}, Lcom/android/car/garagemode/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    return-void
.end method

.method constructor <init>(Lcom/android/car/garagemode/Controller;)V
    .locals 1
    .param p1, "controller"    # Lcom/android/car/garagemode/Controller;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mPendingJobs:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/android/car/garagemode/GarageMode$1;

    invoke-direct {v0, p0}, Lcom/android/car/garagemode/GarageMode$1;-><init>(Lcom/android/car/garagemode/GarageMode;)V

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mRunnable:Ljava/lang/Runnable;

    .line 82
    new-instance v0, Lcom/android/car/garagemode/GarageMode$2;

    invoke-direct {v0, p0}, Lcom/android/car/garagemode/GarageMode$2;-><init>(Lcom/android/car/garagemode/GarageMode;)V

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mStopUserCheckRunnable:Ljava/lang/Runnable;

    .line 120
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mStartedBackgroundUsers:Landroid/util/ArraySet;

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/garagemode/GarageMode;->mGarageModeActive:Z

    .line 124
    iput-object p1, p0, Lcom/android/car/garagemode/GarageMode;->mController:Lcom/android/car/garagemode/Controller;

    .line 125
    invoke-virtual {p1}, Lcom/android/car/garagemode/Controller;->getJobSchedulerService()Landroid/app/job/JobScheduler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mJobScheduler:Landroid/app/job/JobScheduler;

    .line 126
    invoke-virtual {p1}, Lcom/android/car/garagemode/Controller;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mHandler:Landroid/os/Handler;

    .line 127
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/garagemode/GarageMode;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/garagemode/GarageMode;

    .line 41
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->numberOfJobsRunning()I

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/car/garagemode/Logger;
    .locals 1

    .line 41
    sget-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/car/garagemode/GarageMode;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/garagemode/GarageMode;

    .line 41
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/garagemode/GarageMode;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/garagemode/GarageMode;

    .line 41
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/garagemode/GarageMode;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/garagemode/GarageMode;

    .line 41
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mStartedBackgroundUsers:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/garagemode/GarageMode;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/garagemode/GarageMode;

    .line 41
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mStopUserCheckRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private broadcastSignalToJobSchedulerTo(Z)V
    .locals 2
    .param p1, "enableGarageMode"    # Z

    .line 212
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v0, "i":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 214
    const-string v1, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 216
    :cond_0
    const-string v1, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    :goto_0
    const/high16 v1, 0x48000000    # 131072.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 219
    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v1, v0}, Lcom/android/car/garagemode/Controller;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method private cleanupGarageMode()V
    .locals 2

    .line 176
    sget-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "Cleaning up GarageMode"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 177
    monitor-enter p0

    .line 178
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/garagemode/GarageMode;->mGarageModeActive:Z

    .line 179
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->stopMonitoringThread()V

    .line 181
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 182
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->startBackgroundUserStopping()V

    .line 183
    return-void

    .line 179
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private declared-synchronized numberOfJobsRunning()I
    .locals 7

    monitor-enter p0

    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v0}, Landroid/app/job/JobScheduler;->getStartedJobs()Ljava/util/List;

    move-result-object v0

    .line 232
    .local v0, "startedJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    const/4 v1, 0x0

    .line 233
    .local v1, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 234
    .local v2, "currentPendingJobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/car/garagemode/GarageMode;->mJobScheduler:Landroid/app/job/JobScheduler;

    invoke-virtual {v3}, Landroid/app/job/JobScheduler;->getAllJobSnapshots()Ljava/util/List;

    move-result-object v3

    .line 235
    .local v3, "allJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobSnapshot;>;"
    if-eqz v3, :cond_2

    .line 236
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/job/JobSnapshot;

    .line 237
    .local v5, "snap":Landroid/app/job/JobSnapshot;
    invoke-virtual {v5}, Landroid/app/job/JobSnapshot;->getJobInfo()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 238
    invoke-virtual {v5}, Landroid/app/job/JobSnapshot;->getJobInfo()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 239
    invoke-virtual {v5}, Landroid/app/job/JobSnapshot;->getJobInfo()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    add-int/lit8 v1, v1, 0x1

    .line 242
    .end local v5    # "snap":Landroid/app/job/JobSnapshot;
    .end local p0    # "this":Lcom/android/car/garagemode/GarageMode;
    :cond_0
    goto :goto_0

    .line 243
    :cond_1
    if-lez v1, :cond_2

    .line 246
    iput-object v2, p0, Lcom/android/car/garagemode/GarageMode;->mPendingJobs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    :cond_2
    monitor-exit p0

    return v1

    .line 230
    .end local v0    # "startedJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobInfo;>;"
    .end local v1    # "count":I
    .end local v2    # "currentPendingJobs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "allJobs":Ljava/util/List;, "Ljava/util/List<Landroid/app/job/JobSnapshot;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startBackgroundUserStopping()V
    .locals 4

    .line 186
    monitor-enter p0

    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mStartedBackgroundUsers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mStopUserCheckRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 190
    :cond_0
    monitor-exit p0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private declared-synchronized startMonitoringThread()V
    .locals 4

    monitor-enter p0

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 222
    .end local p0    # "this":Lcom/android/car/garagemode/GarageMode;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopMonitoringThread()V
    .locals 2

    monitor-enter p0

    .line 227
    :try_start_0
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 226
    .end local p0    # "this":Lcom/android/car/garagemode/GarageMode;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateFuture(Ljava/util/concurrent/CompletableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    monitor-enter p0

    .line 195
    :try_start_0
    iput-object p1, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 196
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    .line 198
    new-instance v1, Lcom/android/car/garagemode/-$$Lambda$GarageMode$EJDPPpU8PkORJG5W6FKZ0KO7wbQ;

    invoke-direct {v1, p0}, Lcom/android/car/garagemode/-$$Lambda$GarageMode$EJDPPpU8PkORJG5W6FKZ0KO7wbQ;-><init>(Lcom/android/car/garagemode/GarageMode;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;

    .line 209
    :cond_0
    return-void

    .line 196
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method declared-synchronized cancel()V
    .locals 2

    monitor-enter p0

    .line 154
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/garagemode/GarageMode;->broadcastSignalToJobSchedulerTo(Z)V

    .line 155
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->cancel(Z)Z

    .line 158
    .end local p0    # "this":Lcom/android/car/garagemode/GarageMode;
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 159
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->startBackgroundUserStopping()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method enterGarageMode(Ljava/util/concurrent/CompletableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p1, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    sget-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "Entering GarageMode"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    .line 139
    monitor-enter p0

    .line 140
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/car/garagemode/GarageMode;->mGarageModeActive:Z

    .line 141
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 142
    invoke-direct {p0, p1}, Lcom/android/car/garagemode/GarageMode;->updateFuture(Ljava/util/concurrent/CompletableFuture;)V

    .line 143
    invoke-direct {p0, v0}, Lcom/android/car/garagemode/GarageMode;->broadcastSignalToJobSchedulerTo(Z)V

    .line 144
    invoke-static {}, Lcom/android/car/CarStatsLog;->logGarageModeStart()V

    .line 145
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->startMonitoringThread()V

    .line 146
    const-class v0, Lcom/android/car/user/CarUserService;

    .line 147
    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/user/CarUserService;

    invoke-virtual {v0}, Lcom/android/car/user/CarUserService;->startAllBackgroundUsers()Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    .local v0, "startedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-enter p0

    .line 149
    :try_start_1
    iget-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mStartedBackgroundUsers:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 150
    monitor-exit p0

    .line 151
    return-void

    .line 150
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 141
    .end local v0    # "startedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method declared-synchronized finish()V
    .locals 2

    monitor-enter p0

    .line 163
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/car/garagemode/GarageMode;->broadcastSignalToJobSchedulerTo(Z)V

    .line 164
    invoke-static {}, Lcom/android/car/CarStatsLog;->logGarageModeStop()V

    .line 165
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mController:Lcom/android/car/garagemode/Controller;

    invoke-virtual {v0}, Lcom/android/car/garagemode/Controller;->scheduleNextWakeup()V

    .line 166
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 167
    :try_start_1
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 170
    :cond_0
    :goto_0
    :try_start_3
    iput-object v1, p0, Lcom/android/car/garagemode/GarageMode;->mFuture:Ljava/util/concurrent/CompletableFuture;

    .line 171
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 172
    :try_start_4
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->startBackgroundUserStopping()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 173
    monitor-exit p0

    return-void

    .line 171
    .end local p0    # "this":Lcom/android/car/garagemode/GarageMode;
    :catchall_1
    move-exception v0

    :goto_1
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 162
    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isGarageModeActive()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/android/car/garagemode/GarageMode;->mGarageModeActive:Z

    return v0
.end method

.method public synthetic lambda$updateFuture$0$GarageMode(Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/Void;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .line 199
    if-nez p2, :cond_0

    .line 200
    sget-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "GarageMode completed normally"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    instance-of v0, p2, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    .line 202
    sget-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "GarageMode was canceled"

    invoke-virtual {v0, v1}, Lcom/android/car/garagemode/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    sget-object v0, Lcom/android/car/garagemode/GarageMode;->LOG:Lcom/android/car/garagemode/Logger;

    const-string v1, "GarageMode ended due to exception: "

    invoke-virtual {v0, v1, p2}, Lcom/android/car/garagemode/Logger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/android/car/garagemode/GarageMode;->cleanupGarageMode()V

    .line 207
    return-void
.end method

.method declared-synchronized pendingJobs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 134
    :try_start_0
    iget-object v0, p0, Lcom/android/car/garagemode/GarageMode;->mPendingJobs:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .end local p0    # "this":Lcom/android/car/garagemode/GarageMode;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
