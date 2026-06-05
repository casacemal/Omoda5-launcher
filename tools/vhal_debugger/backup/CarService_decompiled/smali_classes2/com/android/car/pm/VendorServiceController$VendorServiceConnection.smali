.class Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
.super Ljava/lang/Object;
.source "VendorServiceController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/pm/VendorServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VendorServiceConnection"
.end annotation


# static fields
.field private static final FAILURE_COUNTER_RESET_TIMEOUT:I = 0x493e0

.field private static final MAX_RECENT_FAILURES:I = 0x5

.field private static final MSG_FAILURE_COUNTER_RESET:I = 0x1

.field private static final MSG_REBIND:I = 0x0

.field private static final REBIND_DELAY_MS:I = 0x3e8


# instance fields
.field private mBound:Z

.field private final mContext:Landroid/content/Context;

.field private final mFailureHandler:Landroid/os/Handler;

.field private final mHandler:Landroid/os/Handler;

.field private mRecentFailures:I

.field private mStarted:Z

.field private mStopRequested:Z

.field private final mUser:Landroid/os/UserHandle;

.field private final mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/car/userlib/CarUserManagerHelper;Lcom/android/car/pm/VendorServiceInfo;Landroid/os/UserHandle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "userManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;
    .param p4, "vendorServiceInfo"    # Lcom/android/car/pm/VendorServiceInfo;
    .param p5, "user"    # Landroid/os/UserHandle;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mRecentFailures:I

    .line 261
    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    .line 262
    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    .line 263
    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStopRequested:Z

    .line 274
    iput-object p1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mContext:Landroid/content/Context;

    .line 275
    iput-object p2, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mHandler:Landroid/os/Handler;

    .line 276
    iput-object p3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 277
    iput-object p4, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    .line 278
    iput-object p5, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    .line 280
    new-instance v0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection$1;-><init>(Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mFailureHandler:Landroid/os/Handler;

    .line 286
    return-void
.end method

.method static synthetic access$300(Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;)Landroid/os/UserHandle;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;

    .line 253
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;
    .param p1, "x1"    # Landroid/os/Message;

    .line 253
    invoke-direct {p0, p1}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->handleFailureMessage(Landroid/os/Message;)V

    return-void
.end method

.method private handleFailureMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 373
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const-string v2, "CAR.PACKAGE"

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected message received in failure handler: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 387
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mRecentFailures:I

    .line 388
    goto :goto_0

    .line 375
    :cond_1
    iget v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mRecentFailures:I

    const/4 v3, 0x5

    if-ge v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    if-nez v0, :cond_2

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempting to rebind to the service "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    .line 377
    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mRecentFailures:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mRecentFailures:I

    .line 379
    invoke-virtual {p0}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->startOrBindService()Z

    goto :goto_0

    .line 381
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exceeded maximum number of attempts to rebindto the service "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    .line 382
    invoke-virtual {v1}, Lcom/android/car/pm/VendorServiceInfo;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    nop

    .line 393
    :goto_0
    return-void
.end method

.method private scheduleResetFailureCounter()V
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mFailureHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mFailureHandler:Landroid/os/Handler;

    .line 368
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 367
    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 370
    return-void
.end method

.method private tryToRebind()V
    .locals 4

    .line 350
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStopRequested:Z

    if-eqz v0, :cond_0

    .line 351
    return-void

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v0}, Landroid/car/userlib/CarUserManagerHelper;->getCurrentForegroundUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    .line 355
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 360
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No need to rebind anymore as the user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is no longer in foreground."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 356
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mFailureHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    .line 357
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    .line 356
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 358
    invoke-direct {p0}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->scheduleResetFailureCounter()V

    .line 363
    :goto_1
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 345
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    .line 346
    invoke-direct {p0}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->tryToRebind()V

    .line 347
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 325
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStopRequested:Z

    if-eqz v0, :cond_0

    .line 330
    invoke-virtual {p0}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->stopOrUnbindService()V

    .line 332
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 336
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected, name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PACKAGE"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-direct {p0}, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->tryToRebind()V

    .line 341
    return-void
.end method

.method startOrBindService()Z
    .locals 9

    .line 289
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    const/4 v1, 0x1

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 294
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startOrBindService "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    invoke-virtual {v2}, Lcom/android/car/pm/VendorServiceInfo;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", as user: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", bind: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    .line 295
    invoke-virtual {v2}, Lcom/android/car/pm/VendorServiceInfo;->shouldBeBound()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", stack:  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 296
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 294
    const-string v2, "CAR.PACKAGE"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStopRequested:Z

    .line 300
    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    invoke-virtual {v2}, Lcom/android/car/pm/VendorServiceInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 301
    .local v2, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->shouldBeBound()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    move-object v4, v2

    move-object v5, p0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/Handler;Landroid/os/UserHandle;)Z

    move-result v0

    return v0

    .line 303
    :cond_1
    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    invoke-virtual {v3}, Lcom/android/car/pm/VendorServiceInfo;->shouldBeStartedInForeground()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 304
    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    .line 305
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    return v0

    .line 307
    :cond_3
    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v3

    if-eqz v3, :cond_4

    move v0, v1

    :cond_4
    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    .line 308
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    return v0

    .line 290
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_0
    return v1
.end method

.method stopOrUnbindService()V
    .locals 4

    .line 313
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStopRequested:Z

    .line 314
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mVendorServiceInfo:Lcom/android/car/pm/VendorServiceInfo;

    invoke-virtual {v2}, Lcom/android/car/pm/VendorServiceInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    iget-object v3, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 316
    iput-boolean v1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mStarted:Z

    goto :goto_0

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 319
    iput-boolean v1, p0, Lcom/android/car/pm/VendorServiceController$VendorServiceConnection;->mBound:Z

    .line 321
    :cond_1
    :goto_0
    return-void
.end method
