.class public Lcom/android/car/CarLocationService;
.super Landroid/content/BroadcastReceiver;
.source "CarLocationService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;
.implements Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;


# static fields
.field private static final DBG:Z = true

.field private static final FILENAME:Ljava/lang/String; = "location_cache.json"

.field private static final GRANULARITY_ONE_DAY_MS:J = 0x5265c00L

.field private static final MAX_LOCATION_INJECTION_ATTEMPTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "CarLocationService"

.field private static final TTL_THIRTY_DAYS_MS:J = 0x9a7ec800L


# instance fields
.field private mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

.field private mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

.field private final mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private final mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

.field private mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

.field private final mLocationManagerProxyLock:Ljava/lang/Object;

.field private final mLock:Ljava/lang/Object;

.field private mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

.field private mTaskCount:I

.field private final mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 342
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/car/userlib/CarUserManagerHelper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "carUserManagerHelper"    # Landroid/car/userlib/CarUserManagerHelper;

    .line 150
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarLocationService;->mLocationManagerProxyLock:Ljava/lang/Object;

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    .line 92
    new-instance v0, Lcom/android/car/CarLocationService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarLocationService$1;-><init>(Lcom/android/car/CarLocationService;)V

    iput-object v0, p0, Lcom/android/car/CarLocationService;->mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 134
    new-instance v0, Lcom/android/car/CarLocationService$2;

    invoke-direct {v0, p0}, Lcom/android/car/CarLocationService$2;-><init>(Lcom/android/car/CarLocationService;)V

    iput-object v0, p0, Lcom/android/car/CarLocationService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    .line 151
    const-string v0, "constructed"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 152
    iput-object p1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Lcom/android/car/CarLocationService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    .line 154
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 61
    invoke-static {p0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/car/CarLocationService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 61
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mLocationManagerProxyLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/car/CarLocationService;Landroid/car/ILocationManagerProxy;)Landroid/car/ILocationManagerProxy;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarLocationService;
    .param p1, "x1"    # Landroid/car/ILocationManagerProxy;

    .line 61
    iput-object p1, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/car/CarLocationService;)Landroid/car/userlib/CarUserManagerHelper;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 61
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/car/CarLocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 61
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->loadLocation()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/car/CarLocationService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 61
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/car/CarLocationService;)Lcom/android/car/CarDrivingStateService;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 61
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/car/CarLocationService;)Landroid/car/drivingstate/ICarDrivingStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarLocationService;

    .line 61
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    return-object v0
.end method

.method private asyncOperation(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "operation"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 466
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iget v1, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    if-ne v1, v2, :cond_0

    .line 469
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CarLocationServiceThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 470
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 471
    new-instance v1, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    .line 473
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/-$$Lambda$CarLocationService$sBU6c0p7WvrwH6Bwp6eWVlugVmA;

    invoke-direct {v1, p0, p1}, Lcom/android/car/-$$Lambda$CarLocationService$sBU6c0p7WvrwH6Bwp6eWVlugVmA;-><init>(Lcom/android/car/CarLocationService;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 488
    return-void

    .line 473
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private deleteCacheFile()V
    .locals 3

    .line 419
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->getLocationCacheFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    .line 420
    .local v0, "deleted":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deleted cache file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 421
    return-void
.end method

.method private getLocationCacheFile()Ljava/io/File;
    .locals 4

    .line 454
    const-class v0, Lcom/android/car/systeminterface/SystemInterface;

    invoke-static {v0}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/systeminterface/SystemInterface;

    .line 455
    .local v0, "systemInterface":Lcom/android/car/systeminterface/SystemInterface;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Lcom/android/car/systeminterface/SystemInterface;->getSystemCarDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "location_cache.json"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 456
    .local v1, "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 457
    return-object v1
.end method

.method private injectLocation(Landroid/location/Location;I)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "attemptCount"    # I

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "success":Z
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mLocationManagerProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    if-nez v2, :cond_0

    .line 431
    const-string v2, "Null location manager proxy."

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 434
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    invoke-interface {v2, p1}, Landroid/car/ILocationManagerProxy;->injectLocation(Landroid/location/Location;)Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v2

    .line 437
    goto :goto_0

    .line 435
    :catch_0
    move-exception v2

    .line 436
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CarLocationService"

    const-string v4, "RemoteException from ILocationManagerProxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 439
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Injected location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " on attempt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 442
    if-eqz v0, :cond_1

    .line 443
    return-void

    .line 444
    :cond_1
    const/16 v1, 0xa

    if-gt p2, v1, :cond_2

    .line 445
    new-instance v1, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/car/-$$Lambda$CarLocationService$_hxnlSBPJEEas1P4iAESb9_xKKU;-><init>(Lcom/android/car/CarLocationService;Landroid/location/Location;I)V

    mul-int/lit16 v2, p2, 0xc8

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 449
    :cond_2
    const-string v1, "No location injected."

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 451
    :goto_1
    return-void

    .line 439
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private isCurrentUserHeadlessSystemUser()Z
    .locals 2

    .line 276
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 277
    .local v0, "currentUserId":I
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarUserManagerHelper:Landroid/car/userlib/CarUserManagerHelper;

    invoke-virtual {v1}, Landroid/car/userlib/CarUserManagerHelper;->isHeadlessSystemUser()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private loadLocation()V
    .locals 7

    .line 355
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->readLocationFromCacheFile()Landroid/location/Location;

    move-result-object v0

    .line 356
    .local v0, "location":Landroid/location/Location;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read location from timestamp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 358
    .local v1, "currentTime":J
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v3

    const-wide v5, 0x9a7ec800L

    add-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-gez v3, :cond_0

    .line 359
    const-string v3, "Location expired."

    invoke-static {v3}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 360
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    goto :goto_0

    .line 362
    :cond_0
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v3

    .line 364
    .local v3, "elapsedTime":J
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 365
    invoke-virtual {v0}, Landroid/location/Location;->isComplete()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 366
    const/4 v5, 0x1

    invoke-direct {p0, v0, v5}, Lcom/android/car/CarLocationService;->injectLocation(Landroid/location/Location;I)V

    .line 369
    .end local v3    # "elapsedTime":J
    :cond_1
    :goto_0
    return-void
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 492
    const-string v0, "CarLocationService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    return-void
.end method

.method private readLocationFromCacheFile()Landroid/location/Location;
    .locals 9

    .line 372
    const-string v0, "CarLocationService"

    new-instance v1, Landroid/location/Location;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 373
    .local v1, "location":Landroid/location/Location;
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/car/CarLocationService;->getLocationCacheFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 374
    .local v3, "atomicFile":Landroid/util/AtomicFile;
    :try_start_0
    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    .local v4, "fis":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v5, Landroid/util/JsonReader;

    new-instance v6, Ljava/io/InputStreamReader;

    const-string v7, "UTF-8"

    invoke-direct {v6, v4, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v5, v6}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    .line 376
    .local v5, "reader":Landroid/util/JsonReader;
    invoke-virtual {v5}, Landroid/util/JsonReader;->beginObject()V

    .line 377
    :goto_0
    invoke-virtual {v5}, Landroid/util/JsonReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 378
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v6

    .line 379
    .local v6, "name":Ljava/lang/String;
    const-string v7, "provider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 380
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 381
    :cond_0
    const-string v7, "latitude"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 382
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/location/Location;->setLatitude(D)V

    goto/16 :goto_1

    .line 383
    :cond_1
    const-string v7, "longitude"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 384
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/location/Location;->setLongitude(D)V

    goto/16 :goto_1

    .line 385
    :cond_2
    const-string v7, "altitude"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 386
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/location/Location;->setAltitude(D)V

    goto/16 :goto_1

    .line 387
    :cond_3
    const-string v7, "speed"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 388
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setSpeed(F)V

    goto/16 :goto_1

    .line 389
    :cond_4
    const-string v7, "bearing"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 390
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setBearing(F)V

    goto :goto_1

    .line 391
    :cond_5
    const-string v7, "accuracy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 392
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setAccuracy(F)V

    goto :goto_1

    .line 393
    :cond_6
    const-string v7, "verticalAccuracy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 394
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setVerticalAccuracyMeters(F)V

    goto :goto_1

    .line 395
    :cond_7
    const-string v7, "speedAccuracy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 396
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setSpeedAccuracyMetersPerSecond(F)V

    goto :goto_1

    .line 397
    :cond_8
    const-string v7, "bearingAccuracy"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 398
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v7

    double-to-float v7, v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setBearingAccuracyDegrees(F)V

    goto :goto_1

    .line 399
    :cond_9
    const-string v7, "isFromMockProvider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 400
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v7

    invoke-virtual {v1, v7}, Landroid/location/Location;->setIsFromMockProvider(Z)V

    goto :goto_1

    .line 401
    :cond_a
    const-string v7, "captureTime"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 402
    invoke-virtual {v5}, Landroid/util/JsonReader;->nextLong()J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Landroid/location/Location;->setTime(J)V

    goto :goto_1

    .line 404
    :cond_b
    invoke-virtual {v5}, Landroid/util/JsonReader;->skipValue()V

    .line 406
    .end local v6    # "name":Ljava/lang/String;
    :goto_1
    goto/16 :goto_0

    .line 407
    :cond_c
    invoke-virtual {v5}, Landroid/util/JsonReader;->endObject()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 408
    .end local v5    # "reader":Landroid/util/JsonReader;
    if-eqz v4, :cond_e

    :try_start_2
    invoke-static {v2, v4}, Lcom/android/car/CarLocationService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 374
    :catchall_0
    move-exception v2

    .end local v1    # "location":Landroid/location/Location;
    .end local v3    # "atomicFile":Landroid/util/AtomicFile;
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "this":Lcom/android/car/CarLocationService;
    :try_start_3
    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 408
    .restart local v1    # "location":Landroid/location/Location;
    .restart local v3    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v4    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "this":Lcom/android/car/CarLocationService;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_d

    :try_start_4
    invoke-static {v2, v4}, Lcom/android/car/CarLocationService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v1    # "location":Landroid/location/Location;
    .end local v3    # "atomicFile":Landroid/util/AtomicFile;
    .end local p0    # "this":Lcom/android/car/CarLocationService;
    :cond_d
    throw v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    .line 412
    .end local v4    # "fis":Ljava/io/FileInputStream;
    .restart local v1    # "location":Landroid/location/Location;
    .restart local v3    # "atomicFile":Landroid/util/AtomicFile;
    .restart local p0    # "this":Lcom/android/car/CarLocationService;
    :catch_0
    move-exception v2

    .line 413
    .local v2, "e":Ljava/lang/RuntimeException;
    const-string v4, "Unexpected format"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 410
    .end local v2    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 411
    .local v2, "e":Ljava/io/IOException;
    const-string v4, "Unable to read from disk"

    invoke-static {v0, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 408
    :catch_2
    move-exception v2

    .line 409
    .local v2, "e":Ljava/io/FileNotFoundException;
    const-string v4, "Location cache file not found."

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_e
    :goto_2
    nop

    .line 415
    :goto_3
    return-object v1
.end method

.method private storeLocation()V
    .locals 10

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mLocationManagerProxyLock:Ljava/lang/Object;

    monitor-enter v1

    .line 286
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    if-nez v2, :cond_0

    .line 287
    const-string v2, "Null location manager proxy."

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 288
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    return-void

    .line 291
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    const-string v3, "gps"

    invoke-interface {v2, v3}, Landroid/car/ILocationManagerProxy;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v0, v2

    .line 295
    goto :goto_0

    .line 293
    :catch_0
    move-exception v2

    .line 294
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CarLocationService"

    const-string v4, "RemoteException from ILocationManagerProxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 296
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 297
    if-nez v0, :cond_1

    .line 298
    const-string v1, "Not storing null location"

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 300
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storing location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 301
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/car/CarLocationService;->getLocationCacheFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 302
    .local v1, "atomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 304
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_3
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    move-object v2, v3

    .line 305
    new-instance v3, Landroid/util/JsonWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    const-string v5, "UTF-8"

    invoke-direct {v4, v2, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .local v3, "jsonWriter":Landroid/util/JsonWriter;
    const/4 v4, 0x0

    .line 306
    :try_start_4
    invoke-virtual {v3}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 307
    const-string v5, "provider"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 308
    const-string v5, "latitude"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 309
    const-string v5, "longitude"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 310
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 311
    const-string v5, "altitude"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 313
    :cond_2
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 314
    const-string v5, "speed"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 316
    :cond_3
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 317
    const-string v5, "bearing"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 319
    :cond_4
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 320
    const-string v5, "accuracy"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 322
    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->hasVerticalAccuracy()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 323
    const-string v5, "verticalAccuracy"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 324
    invoke-virtual {v0}, Landroid/location/Location;->getVerticalAccuracyMeters()F

    move-result v6

    float-to-double v6, v6

    .line 323
    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 326
    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeedAccuracy()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 327
    const-string v5, "speedAccuracy"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 328
    invoke-virtual {v0}, Landroid/location/Location;->getSpeedAccuracyMetersPerSecond()F

    move-result v6

    float-to-double v6, v6

    .line 327
    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 330
    :cond_7
    invoke-virtual {v0}, Landroid/location/Location;->hasBearingAccuracy()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 331
    const-string v5, "bearingAccuracy"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    .line 332
    invoke-virtual {v0}, Landroid/location/Location;->getBearingAccuracyDegrees()F

    move-result v6

    float-to-double v6, v6

    .line 331
    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 334
    :cond_8
    invoke-virtual {v0}, Landroid/location/Location;->isFromMockProvider()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 335
    const-string v5, "isFromMockProvider"

    invoke-virtual {v3, v5}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    .line 337
    :cond_9
    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v5

    .line 339
    .local v5, "currentTime":J
    const-string v7, "captureTime"

    invoke-virtual {v3, v7}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v7

    const-wide/32 v8, 0x5265c00

    rem-long v8, v5, v8

    sub-long v8, v5, v8

    invoke-virtual {v7, v8, v9}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 341
    invoke-virtual {v3}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 342
    nop

    .end local v5    # "currentTime":J
    :try_start_5
    invoke-static {v4, v3}, Lcom/android/car/CarLocationService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 343
    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 347
    goto :goto_1

    .line 305
    .restart local v3    # "jsonWriter":Landroid/util/JsonWriter;
    :catchall_0
    move-exception v4

    .end local v0    # "location":Landroid/location/Location;
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .end local p0    # "this":Lcom/android/car/CarLocationService;
    :try_start_6
    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 342
    .restart local v0    # "location":Landroid/location/Location;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local p0    # "this":Lcom/android/car/CarLocationService;
    :catchall_1
    move-exception v5

    :try_start_7
    invoke-static {v4, v3}, Lcom/android/car/CarLocationService;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "location":Landroid/location/Location;
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local p0    # "this":Lcom/android/car/CarLocationService;
    throw v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 344
    .end local v3    # "jsonWriter":Landroid/util/JsonWriter;
    .restart local v0    # "location":Landroid/location/Location;
    .restart local v1    # "atomicFile":Landroid/util/AtomicFile;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local p0    # "this":Lcom/android/car/CarLocationService;
    :catch_1
    move-exception v3

    .line 345
    .local v3, "e":Ljava/io/IOException;
    const-string v4, "CarLocationService"

    const-string v5, "Unable to write to disk"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 346
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 349
    .end local v1    # "atomicFile":Landroid/util/AtomicFile;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .end local v3    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 296
    :catchall_2
    move-exception v2

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw v2
.end method


# virtual methods
.method asyncOperation(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "operation"    # Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 462
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;J)V

    .line 463
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 200
    const-string v0, "CarLocationService"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 201
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 202
    const-string v0, "MAX_LOCATION_INJECTION_ATTEMPTS: 10"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 203
    return-void
.end method

.method public init()V
    .locals 4

    .line 158
    const-string v0, "init"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 159
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 160
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.location.MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 162
    const-class v1, Lcom/android/car/CarDrivingStateService;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/CarDrivingStateService;

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    .line 163
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v1}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v1

    .line 165
    .local v1, "event":Landroid/car/drivingstate/CarDrivingStateEvent;
    if-eqz v1, :cond_0

    iget v2, v1, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 166
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v3, p0, Lcom/android/car/CarLocationService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/car/CarDrivingStateService;->registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    .line 172
    .end local v1    # "event":Landroid/car/drivingstate/CarDrivingStateEvent;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->createCarPowerManager(Landroid/content/Context;)Landroid/car/hardware/power/CarPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    .line 173
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v1, :cond_2

    .line 174
    invoke-virtual {v1, p0}, Landroid/car/hardware/power/CarPowerManager;->setListenerWithCompletion(Landroid/car/hardware/power/CarPowerManager$CarPowerStateListenerWithCompletion;)V

    .line 176
    :cond_2
    const-class v1, Lcom/android/car/PerUserCarServiceHelper;

    invoke-static {v1}, Lcom/android/car/CarLocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/PerUserCarServiceHelper;

    iput-object v1, p0, Lcom/android/car/CarLocationService;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    .line 177
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    if-eqz v1, :cond_3

    .line 178
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    invoke-virtual {v1, v2}, Lcom/android/car/PerUserCarServiceHelper;->registerServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V

    .line 180
    :cond_3
    return-void
.end method

.method public synthetic lambda$asyncOperation$2$CarLocationService(Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/Runnable;

    .line 476
    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 478
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 480
    :try_start_1
    iget v2, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    if-nez v2, :cond_0

    .line 481
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 482
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    .line 483
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 485
    :cond_0
    monitor-exit v1

    .line 486
    nop

    .line 487
    return-void

    .line 485
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 478
    :catchall_1
    move-exception v1

    iget-object v2, p0, Lcom/android/car/CarLocationService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 480
    :try_start_2
    iget v3, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lcom/android/car/CarLocationService;->mTaskCount:I

    if-nez v3, :cond_1

    .line 481
    iget-object v3, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->quit()V

    .line 482
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandler:Landroid/os/Handler;

    .line 483
    iput-object v0, p0, Lcom/android/car/CarLocationService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 485
    :cond_1
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public synthetic lambda$injectLocation$1$CarLocationService(Landroid/location/Location;I)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "attemptCount"    # I

    .line 446
    add-int/lit8 v0, p2, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/car/CarLocationService;->injectLocation(Landroid/location/Location;I)V

    .line 447
    return-void
.end method

.method public synthetic lambda$onStateChanged$0$CarLocationService(Ljava/util/concurrent/CompletableFuture;)V
    .locals 1
    .param p1, "future"    # Ljava/util/concurrent/CompletableFuture;

    .line 211
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->storeLocation()V

    .line 213
    if-eqz p1, :cond_0

    .line 214
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 216
    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 248
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->isCurrentUserHeadlessSystemUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "Current user is headless system user."

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 250
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mLocationManagerProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    if-nez v1, :cond_1

    .line 254
    const-string v1, "Null location manager."

    invoke-static {v1}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 255
    monitor-exit v0

    return-void

    .line 257
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 259
    .local v1, "action":Ljava/lang/String;
    :try_start_1
    const-string v2, "android.location.MODE_CHANGED"

    if-ne v1, v2, :cond_3

    .line 260
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mILocationManagerProxy:Landroid/car/ILocationManagerProxy;

    invoke-interface {v2}, Landroid/car/ILocationManagerProxy;->isLocationEnabled()Z

    move-result v2

    .line 261
    .local v2, "locationEnabled":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLocationEnabled(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 262
    if-nez v2, :cond_2

    .line 263
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    .line 265
    .end local v2    # "locationEnabled":Z
    :cond_2
    goto :goto_0

    .line 266
    :cond_3
    const-string v2, "Unexpected intent."

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :goto_0
    goto :goto_1

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CarLocationService"

    const-string v4, "RemoteException from ILocationManagerProxy"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 271
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    monitor-exit v0

    .line 272
    return-void

    .line 271
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onStateChanged(ILjava/util/concurrent/CompletableFuture;)V
    .locals 4
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 207
    .local p2, "future":Ljava/util/concurrent/CompletableFuture;, "Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 208
    const/4 v0, 0x3

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    new-instance v0, Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;

    invoke-direct {v0, p0, p2}, Lcom/android/car/-$$Lambda$CarLocationService$LTyswo2Q2YA9ZwNV60FLqVhM8VE;-><init>(Lcom/android/car/CarLocationService;Ljava/util/concurrent/CompletableFuture;)V

    invoke-virtual {p0, v0}, Lcom/android/car/CarLocationService;->asyncOperation(Ljava/lang/Runnable;)V

    .line 217
    goto :goto_2

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    if-eqz v0, :cond_3

    .line 220
    invoke-virtual {v0}, Lcom/android/car/CarDrivingStateService;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object v0

    .line 221
    .local v0, "event":Landroid/car/drivingstate/CarDrivingStateEvent;
    if-eqz v0, :cond_2

    iget v2, v0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    .line 223
    invoke-direct {p0}, Lcom/android/car/CarLocationService;->deleteCacheFile()V

    goto :goto_0

    .line 225
    :cond_2
    const-string v2, "Registering to receive driving state."

    invoke-static {v2}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 226
    iget-object v2, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    iget-object v3, p0, Lcom/android/car/CarLocationService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v2, v3}, Lcom/android/car/CarDrivingStateService;->registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    .line 230
    .end local v0    # "event":Landroid/car/drivingstate/CarDrivingStateEvent;
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 231
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 236
    :cond_4
    :goto_1
    if-eqz p2, :cond_5

    .line 237
    invoke-virtual {p2, v1}, Ljava/util/concurrent/CompletableFuture;->complete(Ljava/lang/Object;)Z

    .line 241
    :cond_5
    :goto_2
    return-void
.end method

.method public release()V
    .locals 2

    .line 184
    const-string v0, "release"

    invoke-static {v0}, Lcom/android/car/CarLocationService;->logd(Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mCarPowerManager:Landroid/car/hardware/power/CarPowerManager;

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Landroid/car/hardware/power/CarPowerManager;->clearListener()V

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mCarDrivingStateService:Lcom/android/car/CarDrivingStateService;

    if-eqz v0, :cond_1

    .line 189
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mICarDrivingStateChangeEventListener:Landroid/car/drivingstate/ICarDrivingStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/car/CarDrivingStateService;->unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mPerUserCarServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    if-eqz v0, :cond_2

    .line 193
    iget-object v1, p0, Lcom/android/car/CarLocationService;->mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/android/car/PerUserCarServiceHelper;->unregisterServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V

    .line 195
    :cond_2
    iget-object v0, p0, Lcom/android/car/CarLocationService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 196
    return-void
.end method
