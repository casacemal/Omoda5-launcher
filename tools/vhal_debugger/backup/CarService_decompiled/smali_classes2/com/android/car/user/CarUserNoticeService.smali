.class public final Lcom/android/car/user/CarUserNoticeService;
.super Ljava/lang/Object;
.source "CarUserNoticeService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final KEYGUARD_POLLING_INTERVAL_MS:J = 0x64L


# instance fields
.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDisplayBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mIUserNotice:Landroid/car/user/IUserNotice$Stub;

.field private mKeyguardPollingCounter:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mKeyguardPollingRunnable:Ljava/lang/Runnable;

.field private final mLock:Ljava/lang/Object;

.field private final mMainHandler:Landroid/os/Handler;

.field private final mPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

.field private mServiceBound:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mServiceIntent:Landroid/content/Intent;

.field private mUiService:Landroid/car/user/IUserNoticeUI;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUiServiceConnection:Landroid/content/ServiceConnection;

.field private mUiShown:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUserCallback:Lcom/android/car/user/CarUserService$UserCallback;

.field private mUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 203
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mMainHandler:Landroid/os/Handler;

    .line 83
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    .line 92
    iput-boolean v0, p0, Lcom/android/car/user/CarUserNoticeService;->mUiShown:Z

    .line 95
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    .line 105
    new-instance v0, Lcom/android/car/user/CarUserNoticeService$1;

    invoke-direct {v0, p0}, Lcom/android/car/user/CarUserNoticeService$1;-><init>(Lcom/android/car/user/CarUserNoticeService;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mUserCallback:Lcom/android/car/user/CarUserService$UserCallback;

    .line 124
    new-instance v0, Lcom/android/car/user/CarUserNoticeService$2;

    invoke-direct {v0, p0}, Lcom/android/car/user/CarUserNoticeService$2;-><init>(Lcom/android/car/user/CarUserNoticeService;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    .line 136
    new-instance v0, Lcom/android/car/user/CarUserNoticeService$3;

    invoke-direct {v0, p0}, Lcom/android/car/user/CarUserNoticeService$3;-><init>(Lcom/android/car/user/CarUserNoticeService;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mDisplayBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 158
    new-instance v0, Lcom/android/car/user/CarUserNoticeService$4;

    invoke-direct {v0, p0}, Lcom/android/car/user/CarUserNoticeService$4;-><init>(Lcom/android/car/user/CarUserNoticeService;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mIUserNotice:Landroid/car/user/IUserNotice$Stub;

    .line 165
    new-instance v0, Lcom/android/car/user/CarUserNoticeService$5;

    invoke-direct {v0, p0}, Lcom/android/car/user/CarUserNoticeService$5;-><init>(Lcom/android/car/user/CarUserNoticeService;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mUiServiceConnection:Landroid/content/ServiceConnection;

    .line 196
    new-instance v0, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$OBhlqwteKkRlzDnONYIaDTB34cc;

    invoke-direct {v0, p0}, Lcom/android/car/user/-$$Lambda$CarUserNoticeService$OBhlqwteKkRlzDnONYIaDTB34cc;-><init>(Lcom/android/car/user/CarUserNoticeService;)V

    iput-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingRunnable:Ljava/lang/Runnable;

    .line 204
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 205
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0f010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 206
    .local v1, "componentName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    .line 209
    iput-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    .line 210
    return-void

    .line 212
    :cond_0
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    .line 213
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    .line 214
    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 215
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/user/CarUserNoticeService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 69
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/car/user/CarUserNoticeService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;
    .param p1, "x1"    # Z

    .line 69
    invoke-direct {p0, p1}, Lcom/android/car/user/CarUserNoticeService;->stopUi(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/car/user/CarUserNoticeService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 69
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/car/user/CarUserNoticeService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;
    .param p1, "x1"    # I

    .line 69
    iput p1, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/car/user/CarUserNoticeService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 69
    invoke-direct {p0}, Lcom/android/car/user/CarUserNoticeService;->startNoticeUiIfNecessary()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/user/CarUserNoticeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 69
    invoke-direct {p0}, Lcom/android/car/user/CarUserNoticeService;->isDisplayOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/car/user/CarUserNoticeService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 69
    iget-boolean v0, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/car/user/CarUserNoticeService;)Landroid/car/user/IUserNotice$Stub;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;

    .line 69
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mIUserNotice:Landroid/car/user/IUserNotice$Stub;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/car/user/CarUserNoticeService;Landroid/car/user/IUserNoticeUI;)Landroid/car/user/IUserNoticeUI;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/user/CarUserNoticeService;
    .param p1, "x1"    # Landroid/car/user/IUserNoticeUI;

    .line 69
    iput-object p1, p0, Lcom/android/car/user/CarUserNoticeService;->mUiService:Landroid/car/user/IUserNoticeUI;

    return-object p1
.end method

.method private checkKeyguardLockedWithPolling()Z
    .locals 6

    .line 218
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 220
    .local v0, "wm":Landroid/view/IWindowManager;
    const/4 v1, 0x1

    .line 221
    .local v1, "locked":Z
    if-eqz v0, :cond_0

    .line 223
    :try_start_0
    invoke-interface {v0}, Landroid/view/IWindowManager;->isKeyguardLocked()Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 226
    goto :goto_0

    .line 224
    :catch_0
    move-exception v2

    .line 225
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "CAR.USER"

    const-string v4, "system server crashed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 228
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 229
    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mMainHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 231
    :cond_1
    return v1
.end method

.method private grantSystemAlertWindowPermission(I)Z
    .locals 7
    .param p1, "userId"    # I

    .line 249
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 250
    .local v0, "appOpsManager":Landroid/app/AppOpsManager;
    const/4 v1, 0x0

    const-string v2, "CAR.USER"

    if-nez v0, :cond_0

    .line 251
    const-string v3, "AppOpsManager not ready yet"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return v1

    .line 254
    :cond_0
    iget-object v3, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "packageName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, p1}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .local v4, "packageUid":I
    nop

    .line 263
    const/16 v5, 0x18

    invoke-virtual {v0, v5, v4, v3, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Granted SYSTEM_ALERT_WINDOW permission to package:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " package uid:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/4 v1, 0x1

    return v1

    .line 258
    .end local v4    # "packageUid":I
    :catch_0
    move-exception v4

    .line 259
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Target package for config_userNoticeUiService not found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " userId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    return v1
.end method

.method private isDisplayOn()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 242
    .local v0, "pm":Landroid/os/PowerManager;
    if-nez v0, :cond_0

    .line 243
    const/4 v1, 0x0

    return v1

    .line 245
    :cond_0
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    return v1
.end method

.method private isNoticeScreenEnabledInSetting(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 235
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "android.car.ENABLE_INITIAL_NOTICE_SCREEN_TO_USER"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private startNoticeUiIfNecessary()V
    .locals 6

    .line 272
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-boolean v1, p0, Lcom/android/car/user/CarUserNoticeService;->mUiShown:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 276
    :cond_0
    iget v1, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    .line 277
    .local v1, "userId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 278
    const/16 v0, -0x2710

    if-ne v1, v0, :cond_1

    .line 279
    return-void

    .line 282
    :cond_1
    if-nez v1, :cond_2

    .line 283
    return-void

    .line 285
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/car/user/CarUserNoticeService;->isNoticeScreenEnabledInSetting(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 286
    return-void

    .line 288
    :cond_3
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-eq v1, v0, :cond_4

    .line 290
    return-void

    .line 294
    :cond_4
    invoke-direct {p0}, Lcom/android/car/user/CarUserNoticeService;->isDisplayOn()Z

    move-result v0

    if-nez v0, :cond_5

    .line 295
    return-void

    .line 298
    :cond_5
    invoke-direct {p0}, Lcom/android/car/user/CarUserNoticeService;->checkKeyguardLockedWithPolling()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 299
    return-void

    .line 301
    :cond_6
    invoke-direct {p0, v1}, Lcom/android/car/user/CarUserNoticeService;->grantSystemAlertWindowPermission(I)Z

    move-result v0

    if-nez v0, :cond_7

    .line 302
    return-void

    .line 304
    :cond_7
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/car/user/CarUserNoticeService;->mUiServiceConnection:Landroid/content/ServiceConnection;

    .line 305
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    .line 304
    const/4 v5, 0x1

    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 306
    .local v0, "bound":Z
    if-eqz v0, :cond_8

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bound UserNoticeUI Service Service:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.USER"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 309
    :try_start_1
    iput-boolean v5, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    .line 310
    iput-boolean v5, p0, Lcom/android/car/user/CarUserNoticeService;->mUiShown:Z

    .line 311
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 313
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot bind to UserNoticeUI Service Service"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "CAR.USER"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :goto_0
    return-void

    .line 274
    .end local v0    # "bound":Z
    .end local v1    # "userId":I
    :cond_9
    :goto_1
    :try_start_2
    monitor-exit v0

    return-void

    .line 277
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private stopUi(Z)V
    .locals 3
    .param p1, "clearUiShown"    # Z

    .line 318
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 320
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mUiService:Landroid/car/user/IUserNoticeUI;

    .line 322
    iget-boolean v1, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    .line 323
    .local v1, "serviceBound":Z
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    .line 324
    if-eqz p1, :cond_0

    .line 325
    iput-boolean v2, p0, Lcom/android/car/user/CarUserNoticeService;->mUiShown:Z

    .line 327
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    if-eqz v1, :cond_1

    .line 329
    const-string v0, "CAR.USER"

    const-string v2, "Unbound UserNoticeUI Service"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mUiServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 332
    :cond_1
    return-void

    .line 327
    .end local v1    # "serviceBound":Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 380
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_0
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    .line 382
    const-string v1, "*CarUserNoticeService* disabled"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    monitor-exit v0

    return-void

    .line 385
    :cond_0
    iget v1, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    const/16 v2, -0x2710

    if-ne v1, v2, :cond_1

    .line 386
    const-string v1, "*CarUserNoticeService* User not started yet."

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    monitor-exit v0

    return-void

    .line 389
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*CarUserNoticeService* mServiceIntent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUserId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mUiShown:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/user/CarUserNoticeService;->mUiShown:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mServiceBound:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mKeyguardPollingCounter:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingCounter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " Setting enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    .line 394
    invoke-direct {p0, v2}, Lcom/android/car/user/CarUserNoticeService;->isNoticeScreenEnabledInSetting(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 389
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 395
    monitor-exit v0

    .line 396
    return-void

    .line 395
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init()V
    .locals 5

    .line 336
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 338
    return-void

    .line 342
    :cond_0
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 344
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 345
    .local v1, "carPowerManager":Landroid/car/hardware/power/CarPowerManager;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mPowerStateListener:Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;

    invoke-virtual {v1, v0}, Landroid/car/hardware/power/CarPowerManager;->setListener(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListener;)V
    :try_end_1
    .catch Landroid/car/CarNotConnectedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 351
    nop

    .line 352
    const-class v0, Lcom/android/car/user/CarUserService;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/user/CarUserService;

    .line 353
    .local v0, "userService":Lcom/android/car/user/CarUserService;
    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mUserCallback:Lcom/android/car/user/CarUserService$UserCallback;

    invoke-virtual {v0, v2}, Lcom/android/car/user/CarUserService;->addUserCallback(Lcom/android/car/user/CarUserService$UserCallback;)V

    .line 354
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 355
    .local v2, "intentFilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 356
    const-string v3, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 357
    iget-object v3, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/user/CarUserNoticeService;->mDisplayBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 358
    return-void

    .line 348
    .end local v0    # "userService":Lcom/android/car/user/CarUserService;
    .end local v2    # "intentFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v0

    .line 350
    .local v0, "e":Landroid/car/CarNotConnectedException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "CarNotConnectedException from CarPowerManager"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 345
    .end local v0    # "e":Landroid/car/CarNotConnectedException;
    .end local v1    # "carPowerManager":Landroid/car/hardware/power/CarPowerManager;
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$CarUserNoticeService()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget v1, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/car/user/CarUserNoticeService;->mKeyguardPollingCounter:I

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 200
    invoke-direct {p0}, Lcom/android/car/user/CarUserNoticeService;->startNoticeUiIfNecessary()V

    .line 201
    return-void

    .line 199
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public release()V
    .locals 4

    .line 362
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mServiceIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    .line 364
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/car/user/CarUserNoticeService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mDisplayBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 367
    const-class v0, Lcom/android/car/user/CarUserService;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/user/CarUserService;

    .line 368
    .local v0, "userService":Lcom/android/car/user/CarUserService;
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mUserCallback:Lcom/android/car/user/CarUserService$UserCallback;

    invoke-virtual {v0, v1}, Lcom/android/car/user/CarUserService;->removeUserCallback(Lcom/android/car/user/CarUserService$UserCallback;)V

    .line 370
    iget-object v1, p0, Lcom/android/car/user/CarUserNoticeService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 371
    :try_start_0
    iget-object v2, p0, Lcom/android/car/user/CarUserNoticeService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 372
    .local v2, "carPowerManager":Landroid/car/hardware/power/CarPowerManager;
    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/car/user/CarUserNoticeService;->mUserId:I

    .line 373
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    invoke-virtual {v2}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V

    .line 375
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/car/user/CarUserNoticeService;->stopUi(Z)V

    .line 376
    return-void

    .line 373
    .end local v2    # "carPowerManager":Landroid/car/hardware/power/CarPowerManager;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
