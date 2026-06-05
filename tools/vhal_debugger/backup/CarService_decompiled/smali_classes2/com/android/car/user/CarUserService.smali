.class public Lcom/android/car/user/CarUserService;
.super Landroid/content/BroadcastReceiver;
.source "CarUserService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/user/CarUserService$UserCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarUserService"


# instance fields
.field private final mAm:Landroid/app/IActivityManager;

.field private final mBackgroundUsersRestartedHere:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mBackgroundUsersToRestart:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private final mMaxRunningUsers:I

.field private final mUser0UnlockTasks:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mUser0Unlocked:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/car/user/CarUserService$UserCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/car/userlib/CarUserManagerHelper;Landroid/app/IActivityManager;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carUserManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;
    .param p3, "am"    # Landroid/app/IActivityManager;
    .param p4, "maxRunningUsers"    # I

    .line 91
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 57
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/user/CarUserService;->mUser0UnlockTasks:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersRestartedHere:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/car/user/CarUserService;->mUserCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 92
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    const-string v1, "constructed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iput-object p1, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    .line 96
    iput-object p2, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 97
    iput-object p3, p0, Lcom/android/car/user/CarUserService;->mAm:Landroid/app/IActivityManager;

    .line 98
    iput p4, p0, Lcom/android/car/user/CarUserService;->mMaxRunningUsers:I

    .line 99
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/car/user/CarUserService;->mUserManager:Landroid/os/UserManager;

    .line 100
    return-void
.end method

.method private setSystemUserRestrictions()V
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getSystemUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string v2, "no_modify_accounts"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/car/userlib/CarUserManagerHelper;->setUserRestriction(Landroid/content/pm/UserInfo;Ljava/lang/String;Z)V

    .line 360
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    .line 361
    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 362
    .local v0, "locationManager":Landroid/location/LocationManager;
    nop

    .line 363
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 362
    invoke-virtual {v0, v1, v2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 364
    return-void
.end method

.method private updateDefaultUserRestriction()V
    .locals 3

    .line 142
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android.car.DEFAULT_USER_RESTRICTIONS_SET"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/android/car/user/CarUserService;->setSystemUserRestrictions()V

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->initDefaultGuestRestrictions()V

    .line 149
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    :cond_1
    return-void
.end method


# virtual methods
.method public addUserCallback(Lcom/android/car/user/CarUserService$UserCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/car/user/CarUserService$UserCallback;

    .line 179
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mUserCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 180
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 123
    const-string v0, "CarUserService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/user/CarUserService;->mUser0Unlocked:Z

    .line 129
    .local v1, "user0Unlocked":Z
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 130
    .local v2, "backgroundUsersToRestart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersRestartedHere:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 132
    .local v3, "backgroundUsersRestarted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User0Unlocked: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "maxRunningUsers:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/car/user/CarUserService;->mMaxRunningUsers:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackgroundUsersToRestart:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "BackgroundUsersRestarted:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 137
    return-void

    .line 132
    .end local v1    # "user0Unlocked":Z
    .end local v2    # "backgroundUsersToRestart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3    # "backgroundUsersRestarted":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected getBackgroundUsersToRestart()Ljava/util/ArrayList;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 348
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 349
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 350
    .local v1, "backgroundUsersToRestart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v0

    .line 351
    return-object v1

    .line 350
    .end local v1    # "backgroundUsersToRestart":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 2

    .line 104
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 156
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 162
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 163
    .local v0, "currentUser":I
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 164
    if-lez v0, :cond_2

    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 165
    invoke-virtual {v1, v0}, Landroid/car/userlib/CarUserManagerHelper;->isPersistentUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 166
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1, v0}, Landroid/car/userlib/CarUserManagerHelper;->setLastActiveUser(I)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1, v0}, Landroid/car/userlib/CarUserManagerHelper;->isPersistentUser(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 170
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1, v0}, Landroid/car/userlib/CarUserManagerHelper;->setLastActiveUser(I)V

    .line 175
    .end local v0    # "currentUser":I
    :cond_2
    :goto_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .line 321
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mUserCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/user/CarUserService$UserCallback;

    .line 322
    .local v1, "callback":Lcom/android/car/user/CarUserService$UserCallback;
    invoke-interface {v1, p1}, Lcom/android/car/user/CarUserService$UserCallback;->onSwitchUser(I)V

    .line 323
    .end local v1    # "callback":Lcom/android/car/user/CarUserService$UserCallback;
    goto :goto_0

    .line 324
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 115
    const-string v0, "CarUserService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 119
    return-void
.end method

.method public removeUserCallback(Lcom/android/car/user/CarUserService$UserCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/car/user/CarUserService$UserCallback;

    .line 184
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mUserCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 185
    return-void
.end method

.method public runOnUser0Unlock(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 332
    const/4 v0, 0x0

    .line 333
    .local v0, "runNow":Z
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 334
    :try_start_0
    iget-boolean v2, p0, Lcom/android/car/user/CarUserService;->mUser0Unlocked:Z

    if-eqz v2, :cond_0

    .line 335
    const/4 v0, 0x1

    goto :goto_0

    .line 337
    :cond_0
    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mUser0UnlockTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    if-eqz v0, :cond_1

    .line 341
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 343
    :cond_1
    return-void

    .line 339
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setUserLockStatus(IZ)V
    .locals 7
    .param p1, "userHandle"    # I
    .param p2, "unlocked"    # Z

    .line 193
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mUserCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/user/CarUserService$UserCallback;

    .line 194
    .local v1, "callback":Lcom/android/car/user/CarUserService$UserCallback;
    invoke-interface {v1, p1, p2}, Lcom/android/car/user/CarUserService$UserCallback;->onUserLockChanged(IZ)V

    .line 195
    .end local v1    # "callback":Lcom/android/car/user/CarUserService$UserCallback;
    goto :goto_0

    .line 196
    :cond_0
    if-nez p2, :cond_1

    .line 197
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    .line 200
    .local v0, "tasks":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Runnable;>;"
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 201
    if-nez p1, :cond_2

    .line 202
    :try_start_0
    iget-boolean v2, p0, Lcom/android/car/user/CarUserService;->mUser0Unlocked:Z

    if-nez v2, :cond_4

    .line 203
    invoke-direct {p0}, Lcom/android/car/user/CarUserService;->updateDefaultUserRestriction()V

    .line 204
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mUser0UnlockTasks:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v0, v2

    .line 205
    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mUser0UnlockTasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 206
    iput-boolean p2, p0, Lcom/android/car/user/CarUserService;->mUser0Unlocked:Z

    goto :goto_1

    .line 209
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 210
    .local v2, "user":Ljava/lang/Integer;
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v3, p1}, Landroid/car/userlib/CarUserManagerHelper;->isPersistentUser(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 212
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v3}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v3

    if-ne p1, v3, :cond_3

    .line 213
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 214
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget v4, p0, Lcom/android/car/user/CarUserService;->mMaxRunningUsers:I

    add-int/lit8 v4, v4, -0x1

    if-le v3, v4, :cond_4

    .line 218
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    .line 219
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 218
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 220
    .local v3, "userToDrop":I
    const-string v4, "CarUserService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "New user unlocked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", dropping least recently user from restart list:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 227
    .end local v2    # "user":Ljava/lang/Integer;
    .end local v3    # "userToDrop":I
    :cond_4
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User0 unlocked, run queued tasks:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarUserService"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    .line 231
    .local v2, "r":Ljava/lang/Runnable;
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 232
    .end local v2    # "r":Ljava/lang/Runnable;
    goto :goto_2

    .line 234
    :cond_5
    return-void

    .line 227
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public startAllBackgroundUsers()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 243
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 244
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersRestartedHere:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 245
    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersRestartedHere:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 246
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    .line 248
    .local v2, "startedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 249
    .local v3, "user":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v5}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 250
    goto :goto_0

    .line 253
    :cond_0
    :try_start_1
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 254
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 256
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    :cond_1
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v6, v6, v6}, Landroid/app/IActivityManager;->unlockUser(I[B[BLandroid/os/IProgressListener;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 258
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 260
    :cond_2
    const-string v4, "CarUserService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Background user started but cannot be unlocked:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 263
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 269
    :cond_3
    :goto_1
    goto :goto_2

    .line 267
    :catch_0
    move-exception v4

    .line 270
    .end local v3    # "user":Ljava/lang/Integer;
    :goto_2
    goto :goto_0

    .line 272
    :cond_4
    iget-object v3, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 273
    :try_start_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersToRestart:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 275
    .local v5, "user":Ljava/lang/Integer;
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 276
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 278
    .end local v5    # "user":Ljava/lang/Integer;
    :cond_5
    goto :goto_3

    .line 279
    :cond_6
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersRestartedHere:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 280
    nop

    .end local v0    # "usersToRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    monitor-exit v3

    .line 281
    return-object v2

    .line 280
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 246
    .end local v1    # "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "startedUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public stopBackgroundUser(I)Z
    .locals 6
    .param p1, "userId"    # I

    .line 289
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 290
    return v0

    .line 292
    :cond_0
    iget-object v1, p0, Lcom/android/car/user/CarUserService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 293
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopBackgroundUser, already a fg user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CarUserService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    return v0

    .line 297
    :cond_1
    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/car/user/CarUserService;->mAm:Landroid/app/IActivityManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3}, Landroid/app/IActivityManager;->stopUser(IZLandroid/app/IStopUserCallback;)I

    move-result v2

    .line 298
    .local v2, "r":I
    if-nez v2, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/car/user/CarUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 301
    .local v3, "user":Ljava/lang/Integer;
    iget-object v4, p0, Lcom/android/car/user/CarUserService;->mBackgroundUsersRestartedHere:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 302
    nop

    .end local v3    # "user":Ljava/lang/Integer;
    monitor-exit v0

    .line 311
    .end local v2    # "r":I
    goto :goto_0

    .line 302
    .restart local v2    # "r":I
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/android/car/user/CarUserService;
    .end local p1    # "userId":I
    :try_start_2
    throw v3

    .line 303
    .restart local p0    # "this":Lcom/android/car/user/CarUserService;
    .restart local p1    # "userId":I
    :cond_2
    const/4 v3, -0x2

    if-ne v2, v3, :cond_3

    .line 304
    return v0

    .line 306
    :cond_3
    const-string v3, "CarUserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stopBackgroundUser failed, user:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " err:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 307
    return v0

    .line 309
    .end local v2    # "r":I
    :catch_0
    move-exception v0

    .line 312
    :goto_0
    return v1
.end method
