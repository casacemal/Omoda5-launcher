.class public Lcom/android/car/BluetoothProfileInhibitManager;
.super Ljava/lang/Object;
.source "BluetoothProfileInhibitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;,
        Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final RESTORED_PROFILE_INHIBIT_TOKEN:Landroid/os/Binder;

.field private static final RESTORE_BACKOFF_MILLIS:J = 0x3e8L

.field private static final SETTINGS_DELIMITER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "BluetoothProfileInhibitManager"


# instance fields
.field private final mAlreadyDisabledProfiles:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mProfileInhibits:Lcom/android/car/SetMultimap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/SetMultimap<",
            "Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;",
            "Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mRestoredInhibits:Ljava/util/HashSet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    const-string v0, "BluetoothProfileInhibitManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/car/BluetoothProfileInhibitManager;->DBG:Z

    .line 50
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/car/BluetoothProfileInhibitManager;->RESTORED_PROFILE_INHIBIT_TOKEN:Landroid/os/Binder;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/car/ICarBluetoothUserService;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "bluetoothUserProxies"    # Landroid/car/ICarBluetoothUserService;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/car/SetMultimap;

    invoke-direct {v0}, Lcom/android/car/SetMultimap;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mRestoredInhibits:Ljava/util/HashSet;

    .line 66
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mAlreadyDisabledProfiles:Ljava/util/HashSet;

    .line 69
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mHandler:Landroid/os/Handler;

    .line 228
    iput-object p1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mContext:Landroid/content/Context;

    .line 229
    iput p2, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    .line 230
    iput-object p3, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/BluetoothProfileInhibitManager;Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileInhibitManager;
    .param p1, "x1"    # Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileInhibitManager;->removeInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/car/BluetoothProfileInhibitManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/BluetoothProfileInhibitManager;
    .param p1, "x1"    # Ljava/lang/String;

    .line 46
    invoke-direct {p0, p1}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized addInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z
    .locals 8
    .param p1, "record"    # Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    monitor-enter p0

    .line 347
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getParams()Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    move-result-object v0

    .line 348
    .local v0, "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->isProxyAvailable(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 349
    monitor-exit p0

    return v2

    .line 352
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v1, v0}, Lcom/android/car/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    .line 353
    .local v1, "previousRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;>;"
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/android/car/BluetoothProfileInhibitManager;->findInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;Landroid/os/IBinder;)Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 354
    const-string v3, "BluetoothProfileInhibitManager"

    const-string v4, "Inhibit request already registered - skipping duplicate"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    monitor-exit p0

    return v2

    .line 359
    .end local p0    # "this":Lcom/android/car/BluetoothProfileInhibitManager;
    :cond_1
    :try_start_2
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v3, p1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 363
    nop

    .line 365
    :try_start_3
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    .line 366
    .local v3, "isNewlyAdded":Z
    iget-object v4, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v4, v0, p1}, Lcom/android/car/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 368
    if-eqz v3, :cond_3

    .line 370
    :try_start_4
    iget-object v4, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 372
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 373
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    .line 371
    invoke-interface {v4, v5, v6}, Landroid/car/ICarBluetoothUserService;->getProfilePriority(ILandroid/bluetooth/BluetoothDevice;)I

    move-result v4

    .line 374
    .local v4, "priority":I
    if-nez v4, :cond_2

    .line 377
    iget-object v5, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mAlreadyDisabledProfiles:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 379
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " already disabled for device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " - suppressing re-enable"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-direct {p0, v5}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 383
    :cond_2
    iget-object v5, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 384
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 385
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 383
    invoke-interface {v5, v6, v7, v2}, Landroid/car/ICarBluetoothUserService;->setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 387
    iget-object v5, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 388
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 389
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    .line 387
    invoke-interface {v5, v6, v7}, Landroid/car/ICarBluetoothUserService;->bluetoothDisconnectFromProfile(ILandroid/bluetooth/BluetoothDevice;)Z

    .line 390
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Disabled profile "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " for device "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 390
    invoke-direct {p0, v5}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 399
    .end local v4    # "priority":I
    :goto_0
    goto :goto_1

    .line 394
    :catch_0
    move-exception v4

    .line 395
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string v5, "BluetoothProfileInhibitManager"

    const-string v6, "Could not disable profile"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getToken()Landroid/os/IBinder;

    move-result-object v5

    invoke-interface {v5, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 397
    iget-object v5, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v5, v0, p1}, Lcom/android/car/SetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 398
    monitor-exit p0

    return v2

    .line 402
    .end local v4    # "e":Landroid/os/RemoteException;
    :cond_3
    :goto_1
    :try_start_6
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->commit()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 403
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 360
    .end local v3    # "isNewlyAdded":Z
    :catch_1
    move-exception v3

    .line 361
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_7
    const-string v4, "BluetoothProfileInhibitManager"

    const-string v5, "Could not link to death on inhibit token (already dead?)"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 362
    monitor-exit p0

    return v2

    .line 346
    .end local v0    # "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .end local v1    # "previousRecords":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;>;"
    .end local v3    # "e":Landroid/os/RemoteException;
    .end local p1    # "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private commit()V
    .locals 5

    .line 264
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v1}, Lcom/android/car/SetMultimap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 267
    .local v0, "inhibitedProfiles":Ljava/util/Set;, "Ljava/util/Set<Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;>;"
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mAlreadyDisabledProfiles:Ljava/util/HashSet;

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 268
    nop

    .line 270
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;->INSTANCE:Lcom/android/car/-$$Lambda$Q29oLPm5KBswrQNOk8EGYlo7bz4;

    .line 271
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 272
    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 274
    .local v1, "savedDisconnects":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mContext:Landroid/content/Context;

    .line 275
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    .line 274
    const-string v4, "android.car.BLUETOOTH_PROFILES_INHIBITED"

    invoke-static {v2, v4, v1, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Committed key: android.car.BLUETOOTH_PROFILES_INHIBITED, value: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method private findInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;Landroid/os/IBinder;)Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    .locals 2
    .param p1, "params"    # Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .param p2, "token"    # Landroid/os/IBinder;

    .line 414
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v0, p1}, Lcom/android/car/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 415
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$rBHUcTWwdCYXr5CoJJSNYyW4ESY;

    invoke-direct {v1, p2}, Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$rBHUcTWwdCYXr5CoJJSNYyW4ESY;-><init>(Landroid/os/IBinder;)V

    .line 416
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 417
    invoke-interface {v0}, Ljava/util/stream/Stream;->findAny()Ljava/util/Optional;

    move-result-object v0

    .line 418
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    .line 414
    return-object v0
.end method

.method private isProxyAvailable(I)Z
    .locals 3
    .param p1, "profile"    # I

    .line 556
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    invoke-interface {v0, p1}, Landroid/car/ICarBluetoothUserService;->isBluetoothConnectionProxyAvailable(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 557
    :catch_0
    move-exception v0

    .line 558
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car BT Service Remote Exception. Proxy for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not available."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->loge(Ljava/lang/String;)V

    .line 561
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$-g2MroqeuYU4pbjS-jgC9o9urXE(Lcom/android/car/BluetoothProfileInhibitManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->removeRestoredProfileInhibits()V

    return-void
.end method

.method static synthetic lambda$findInhibitRecord$0(Landroid/os/IBinder;Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z
    .locals 1
    .param p0, "token"    # Landroid/os/IBinder;
    .param p1, "r"    # Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    .line 416
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private load()V
    .locals 9

    .line 237
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mContext:Landroid/content/Context;

    .line 238
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    .line 237
    const-string v2, "android.car.BLUETOOTH_PROFILES_INHIBITED"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "savedBluetoothConnection":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    return-void

    .line 244
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restoring profile inhibits: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 246
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 248
    .local v4, "paramsStr":Ljava/lang/String;
    :try_start_0
    invoke-static {v4}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->decode(Ljava/lang/String;)Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    move-result-object v5

    .line 249
    .local v5, "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    new-instance v6, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    sget-object v7, Lcom/android/car/BluetoothProfileInhibitManager;->RESTORED_PROFILE_INHIBIT_TOKEN:Landroid/os/Binder;

    invoke-direct {v6, p0, v5, v7}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;-><init>(Lcom/android/car/BluetoothProfileInhibitManager;Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;Landroid/os/IBinder;)V

    .line 250
    .local v6, "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    iget-object v7, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v7, v5, v6}, Lcom/android/car/SetMultimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 251
    iget-object v7, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mRestoredInhibits:Ljava/util/HashSet;

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 252
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restored profile inhibits for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    .end local v5    # "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .end local v6    # "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    goto :goto_1

    .line 253
    :catch_0
    move-exception v5

    .line 255
    .local v5, "e":Ljava/lang/IllegalArgumentException;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad format for saved profile inhibit: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/car/BluetoothProfileInhibitManager;->loge(Ljava/lang/String;)V

    .line 246
    .end local v4    # "paramsStr":Ljava/lang/String;
    .end local v5    # "e":Ljava/lang/IllegalArgumentException;
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 585
    sget-boolean v0, Lcom/android/car/BluetoothProfileInhibitManager;->DBG:Z

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothProfileInhibitManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    :cond_0
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothProfileInhibitManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[User: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothProfileInhibitManager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    return-void
.end method

.method private declared-synchronized releaseAllInhibitsBeforeUnbind()V
    .locals 4

    monitor-enter p0

    .line 524
    :try_start_0
    const-string v0, "Unbinding CarBluetoothUserService - releasing all profile inhibits"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 525
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v0}, Lcom/android/car/SetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    .line 526
    .local v1, "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    iget-object v2, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v2, v1}, Lcom/android/car/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    .line 527
    .local v3, "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    invoke-virtual {v3}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->removeSelf()Z

    .line 528
    nop

    .end local v3    # "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    goto :goto_1

    .line 529
    .end local v1    # "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .end local p0    # "this":Lcom/android/car/BluetoothProfileInhibitManager;
    :cond_0
    goto :goto_0

    .line 533
    :cond_1
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->commit()V

    .line 536
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v0}, Lcom/android/car/SetMultimap;->clear()V

    .line 541
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mAlreadyDisabledProfiles:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 545
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/car/BluetoothProfileInhibitManager;->RESTORED_PROFILE_INHIBIT_TOKEN:Landroid/os/Binder;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mRestoredInhibits:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    monitor-exit p0

    return-void

    .line 523
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized removeInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z
    .locals 4
    .param p1, "record"    # Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    monitor-enter p0

    .line 425
    :try_start_0
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getParams()Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    move-result-object v0

    .line 426
    .local v0, "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->isProxyAvailable(I)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 427
    monitor-exit p0

    return v2

    .line 429
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v1, v0, p1}, Lcom/android/car/SetMultimap;->containsEntry(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-nez v1, :cond_1

    .line 430
    const-string v1, "BluetoothProfileInhibitManager"

    const-string v2, "Record already removed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    monitor-exit p0

    return v3

    .line 438
    .end local p0    # "this":Lcom/android/car/BluetoothProfileInhibitManager;
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v1, v0}, Lcom/android/car/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 439
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->restoreProfilePriority(Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;)Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_2

    .line 440
    monitor-exit p0

    return v2

    .line 444
    :cond_2
    :try_start_3
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->getToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v1, p1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 445
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v1, v0, p1}, Lcom/android/car/SetMultimap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 447
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->commit()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 448
    monitor-exit p0

    return v3

    .line 424
    .end local v0    # "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    .end local p1    # "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized removeRestoredProfileInhibits()V
    .locals 5

    monitor-enter p0

    .line 508
    :try_start_0
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->tryRemoveRestoredProfileInhibits()V

    .line 510
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mRestoredInhibits:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    const-string v0, "Could not remove all restored profile inhibits - trying again in 1000ms"

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 513
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$-g2MroqeuYU4pbjS-jgC9o9urXE;

    invoke-direct {v1, p0}, Lcom/android/car/-$$Lambda$BluetoothProfileInhibitManager$-g2MroqeuYU4pbjS-jgC9o9urXE;-><init>(Lcom/android/car/BluetoothProfileInhibitManager;)V

    sget-object v2, Lcom/android/car/BluetoothProfileInhibitManager;->RESTORED_PROFILE_INHIBIT_TOKEN:Landroid/os/Binder;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    .end local p0    # "this":Lcom/android/car/BluetoothProfileInhibitManager;
    :cond_0
    monitor-exit p0

    return-void

    .line 507
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private restoreProfilePriority(Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;)Z
    .locals 7
    .param p1, "params"    # Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    .line 455
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->isProxyAvailable(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 456
    return v1

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mAlreadyDisabledProfiles:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const-string v3, " for device "

    if-eqz v0, :cond_1

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not restoring profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - was manually disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 462
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 465
    return v2

    .line 469
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 470
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 471
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    const/16 v6, 0x64

    .line 469
    invoke-interface {v0, v4, v5, v6}, Landroid/car/ICarBluetoothUserService;->setProfilePriority(ILandroid/bluetooth/BluetoothDevice;I)V

    .line 473
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mBluetoothUserProxies:Landroid/car/ICarBluetoothUserService;

    .line 474
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 475
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    .line 473
    invoke-interface {v0, v4, v5}, Landroid/car/ICarBluetoothUserService;->bluetoothConnectToProfile(ILandroid/bluetooth/BluetoothDevice;)Z

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restored profile "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getProfile()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    invoke-virtual {p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    return v2

    .line 479
    :catch_0
    move-exception v0

    .line 480
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not enable profile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/car/BluetoothProfileInhibitManager;->loge(Ljava/lang/String;)V

    .line 481
    return v1
.end method

.method private tryRemoveRestoredProfileInhibits()V
    .locals 4

    .line 492
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 494
    .local v0, "successfullyRemoved":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;>;"
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mRestoredInhibits:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    .line 495
    .local v2, "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    invoke-direct {p0, v2}, Lcom/android/car/BluetoothProfileInhibitManager;->removeInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 496
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v2    # "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    :cond_0
    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mRestoredInhibits:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    .line 501
    return-void
.end method


# virtual methods
.method public declared-synchronized dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "writer"    # Ljava/io/PrintWriter;
    .param p2, "indent"    # Ljava/lang/String;

    monitor-enter p0

    .line 568
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BluetoothProfileInhibitManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tUser: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 576
    :try_start_1
    iget-object v0, p0, Lcom/android/car/BluetoothProfileInhibitManager;->mProfileInhibits:Lcom/android/car/SetMultimap;

    invoke-virtual {v0}, Lcom/android/car/SetMultimap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 577
    .local v0, "inhibits":Ljava/lang/String;
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 578
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\tInhibited profiles: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 579
    monitor-exit p0

    return-void

    .line 577
    .end local v0    # "inhibits":Ljava/lang/String;
    .end local p0    # "this":Lcom/android/car/BluetoothProfileInhibitManager;
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 567
    .end local p1    # "writer":Ljava/io/PrintWriter;
    .end local p2    # "indent":Ljava/lang/String;
    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release profile inhibit: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 326
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 329
    new-instance v0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 331
    .local v0, "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    monitor-enter p0

    .line 332
    :try_start_0
    invoke-direct {p0, v0, p3}, Lcom/android/car/BluetoothProfileInhibitManager;->findInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;Landroid/os/IBinder;)Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    move-result-object v1

    .line 333
    .local v1, "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 335
    if-nez v1, :cond_0

    .line 336
    const-string v2, "BluetoothProfileInhibitManager"

    const-string v3, "Record not found"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const/4 v2, 0x0

    return v2

    .line 340
    :cond_0
    invoke-virtual {v1}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;->removeSelf()Z

    move-result v2

    return v2

    .line 333
    .end local v1    # "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method requestProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request profile inhibit: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 308
    invoke-direct {p0, v0}, Lcom/android/car/BluetoothProfileInhibitManager;->logd(Ljava/lang/String;)V

    .line 310
    new-instance v0, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;-><init>(Ljava/lang/Integer;Landroid/bluetooth/BluetoothDevice;)V

    .line 311
    .local v0, "params":Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;
    new-instance v1, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;

    invoke-direct {v1, p0, v0, p3}, Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;-><init>(Lcom/android/car/BluetoothProfileInhibitManager;Lcom/android/car/BluetoothProfileInhibitManager$BluetoothConnection;Landroid/os/IBinder;)V

    .line 312
    .local v1, "record":Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;
    invoke-direct {p0, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->addInhibitRecord(Lcom/android/car/BluetoothProfileInhibitManager$InhibitRecord;)Z

    move-result v2

    return v2
.end method

.method public start()V
    .locals 0

    .line 286
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->load()V

    .line 287
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->removeRestoredProfileInhibits()V

    .line 288
    return-void
.end method

.method public stop()V
    .locals 0

    .line 294
    invoke-direct {p0}, Lcom/android/car/BluetoothProfileInhibitManager;->releaseAllInhibitsBeforeUnbind()V

    .line 295
    return-void
.end method
