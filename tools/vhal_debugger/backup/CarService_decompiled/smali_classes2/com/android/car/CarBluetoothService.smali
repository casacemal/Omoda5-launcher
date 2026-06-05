.class public Lcom/android/car/CarBluetoothService;
.super Landroid/car/ICarBluetooth$Stub;
.source "CarBluetoothService.java"

# interfaces
.implements Lcom/android/car/CarServiceBase;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "CarBluetoothService"

.field private static final sManagedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

.field private mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

.field private mCarUserService:Landroid/car/ICarUserService;

.field private final mContext:Landroid/content/Context;

.field private mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

.field private mProfileDeviceManagers:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/car/BluetoothProfileDeviceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseDefaultPolicy:Z

.field private mUserId:I

.field private final mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

.field private final mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 54
    const/4 v0, 0x3

    const-string v1, "CarBluetoothService"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    sput-boolean v1, Lcom/android/car/CarBluetoothService;->DBG:Z

    .line 58
    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Integer;

    .line 59
    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 60
    const/16 v3, 0x11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 61
    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    .line 62
    const/16 v3, 0x12

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x4

    aput-object v0, v2, v1

    .line 58
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/car/CarBluetoothService;->sManagedProfiles:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/car/PerUserCarServiceHelper;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSwitchService"    # Lcom/android/car/PerUserCarServiceHelper;

    .line 115
    invoke-direct {p0}, Landroid/car/ICarBluetooth$Stub;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    .line 75
    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 82
    new-instance v0, Lcom/android/car/CarBluetoothService$1;

    invoke-direct {v0, p0}, Lcom/android/car/CarBluetoothService$1;-><init>(Lcom/android/car/CarBluetoothService;)V

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    .line 117
    iput-object p1, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    .line 118
    iput-object p2, p0, Lcom/android/car/CarBluetoothService;->mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    .line 119
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f04000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/car/CarBluetoothService;->mUseDefaultPolicy:Z

    .line 121
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .line 52
    invoke-static {p0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/car/CarBluetoothService;Landroid/car/ICarUserService;)Landroid/car/ICarUserService;
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothService;
    .param p1, "x1"    # Landroid/car/ICarUserService;

    .line 52
    iput-object p1, p0, Lcom/android/car/CarBluetoothService;->mCarUserService:Landroid/car/ICarUserService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/car/CarBluetoothService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothService;

    .line 52
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->initializeUser()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/car/CarBluetoothService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/car/CarBluetoothService;

    .line 52
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->destroyUser()V

    return-void
.end method

.method private declared-synchronized createBluetoothDeviceConnectionPolicy()V
    .locals 2

    monitor-enter p0

    .line 294
    :try_start_0
    const-string v0, "Creating device connection policy"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 295
    iget v0, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 296
    const-string v0, "No foreground user, cannot create device connection policy"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    monitor-exit p0

    return-void

    .line 299
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    invoke-static {v0, v1, p0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->create(Landroid/content/Context;ILcom/android/car/CarBluetoothService;)Lcom/android/car/BluetoothDeviceConnectionPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 301
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    if-nez v0, :cond_1

    .line 302
    const-string v0, "Failed to create default Bluetooth device connection policy."

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    monitor-exit p0

    return-void

    .line 305
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->init()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 306
    monitor-exit p0

    return-void

    .line 293
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createBluetoothProfileDeviceManagers()V
    .locals 5

    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 229
    iget v0, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 230
    const-string v0, "No foreground user, cannot create profile device managers"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 233
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    :try_start_1
    sget-object v0, Lcom/android/car/CarBluetoothService;->sManagedProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 234
    .local v1, "profileId":I
    iget-object v2, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    iget-object v4, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-static {v2, v3, v4, v1}, Lcom/android/car/BluetoothProfileDeviceManager;->create(Landroid/content/Context;ILandroid/car/ICarBluetoothUserService;I)Lcom/android/car/BluetoothProfileDeviceManager;

    move-result-object v2

    .line 236
    .local v2, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    if-nez v2, :cond_1

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to create profile device manager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 237
    invoke-static {v3}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 239
    goto :goto_0

    .line 241
    :cond_1
    iget-object v3, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 242
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Created profile device manager for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 243
    .end local v1    # "profileId":I
    .end local v2    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    goto :goto_0

    .line 245
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 246
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 247
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 248
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 249
    .restart local v2    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    invoke-virtual {v2}, Lcom/android/car/BluetoothProfileDeviceManager;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    .end local v1    # "key":I
    .end local v2    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    .end local v0    # "i":I
    :cond_3
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createBluetoothProfileInhibitManager()V
    .locals 4

    monitor-enter p0

    .line 270
    :try_start_0
    const-string v0, "Creating inhibit manager"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 271
    iget v0, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 272
    const-string v0, "No foreground user, cannot create profile inhibit manager"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    monitor-exit p0

    return-void

    .line 275
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/car/BluetoothProfileInhibitManager;

    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    iget-object v3, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/car/BluetoothProfileInhibitManager;-><init>(Landroid/content/Context;ILandroid/car/ICarBluetoothUserService;)V

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    .line 277
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 278
    monitor-exit p0

    return-void

    .line 269
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized createBluetoothUserService()V
    .locals 4

    monitor-enter p0

    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarUserService:Landroid/car/ICarUserService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 198
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarUserService:Landroid/car/ICarUserService;

    invoke-interface {v0}, Landroid/car/ICarUserService;->getBluetoothUserService()Landroid/car/ICarBluetoothUserService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    .line 199
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-interface {v0}, Landroid/car/ICarBluetoothUserService;->setupBluetoothConnectionProxies()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    goto :goto_0

    .line 200
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "CarBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Service Exception on ServiceConnection Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 201
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    nop

    .end local v0    # "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 205
    :cond_0
    const-string v0, "PerUserCarService not connected. Cannot get bluetooth user proxy objects"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    :goto_0
    monitor-exit p0

    return-void

    .line 195
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized destroyBluetoothDeviceConnectionPolicy()V
    .locals 1

    monitor-enter p0

    .line 312
    :try_start_0
    const-string v0, "Destroying device connection policy"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    invoke-virtual {v0}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->release()V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 317
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    monitor-exit p0

    return-void

    .line 311
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized destroyBluetoothProfileDeviceManagers()V
    .locals 3

    monitor-enter p0

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 259
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 260
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 261
    .local v2, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    invoke-virtual {v2}, Lcom/android/car/BluetoothProfileDeviceManager;->stop()V

    .line 257
    .end local v1    # "key":I
    .end local v2    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v0    # "i":I
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 256
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized destroyBluetoothProfileInhibitManager()V
    .locals 1

    monitor-enter p0

    .line 284
    :try_start_0
    const-string v0, "Destroying inhibit manager"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 285
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 286
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileInhibitManager;->stop()V

    .line 287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    monitor-exit p0

    return-void

    .line 283
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized destroyBluetoothUserService()V
    .locals 4

    monitor-enter p0

    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 216
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    invoke-interface {v0}, Landroid/car/ICarBluetoothUserService;->closeBluetoothConnectionProxies()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 220
    goto :goto_0

    .line 217
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "CarBluetoothService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Service Exception on ServiceConnection Callback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    monitor-exit p0

    return-void

    .line 213
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized destroyUser()V
    .locals 2

    monitor-enter p0

    .line 181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Destroying user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->destroyBluetoothDeviceConnectionPolicy()V

    .line 183
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->destroyBluetoothProfileInhibitManager()V

    .line 184
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->destroyBluetoothProfileDeviceManagers()V

    .line 185
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->destroyBluetoothUserService()V

    .line 186
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/car/CarBluetoothService;->mUserId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit p0

    return-void

    .line 180
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private enforceBluetoothAdminPermission()V
    .locals 2

    .line 439
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 440
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 442
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 445
    const-string v0, "CarBluetoothService"

    const-string v1, "CarBluetoothPrioritySettings does not have a Context"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_1
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "requires permission android.permission.BLUETOOTH_ADMIN"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getManagedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 153
    sget-object v0, Lcom/android/car/CarBluetoothService;->sManagedProfiles:Ljava/util/List;

    return-object v0
.end method

.method private declared-synchronized initializeUser()V
    .locals 2

    monitor-enter p0

    .line 162
    :try_start_0
    const-string v0, "Initializing new user"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    .line 164
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->createBluetoothUserService()V

    .line 165
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->createBluetoothProfileDeviceManagers()V

    .line 166
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->createBluetoothProfileInhibitManager()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    .line 170
    iget-boolean v0, p0, Lcom/android/car/CarBluetoothService;->mUseDefaultPolicy:Z

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->createBluetoothDeviceConnectionPolicy()V

    .line 173
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Switched to user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    monitor-exit p0

    return-void

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static logd(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 485
    sget-boolean v0, Lcom/android/car/CarBluetoothService;->DBG:Z

    if-eqz v0, :cond_0

    .line 486
    const-string v0, "CarBluetoothService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    return-void
.end method


# virtual methods
.method public connectDevices()V
    .locals 3

    .line 333
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 334
    const-string v0, "Connect devices for each profile"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 335
    monitor-enter p0

    .line 336
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 337
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 338
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 339
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 340
    .local v2, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    invoke-virtual {v2}, Lcom/android/car/BluetoothProfileDeviceManager;->beginAutoConnecting()V

    .line 336
    .end local v1    # "key":I
    .end local v2    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    .end local v0    # "i":I
    :cond_0
    monitor-exit p0

    .line 343
    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "writer"    # Ljava/io/PrintWriter;

    monitor-enter p0

    .line 456
    :try_start_0
    const-string v0, "*CarBluetoothService*"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tUser ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/CarBluetoothService;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tUser Proxies: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mCarBluetoothUserService:Landroid/car/ICarBluetoothUserService;

    if-eqz v1, :cond_0

    const-string v1, "Yes"

    goto :goto_0

    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :cond_0
    const-string v1, "No"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 463
    .local v1, "key":I
    iget-object v2, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 464
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 465
    .local v2, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    const-string v3, "\t"

    invoke-virtual {v2, p1, v3}, Lcom/android/car/BluetoothProfileDeviceManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 461
    .end local v1    # "key":I
    .end local v2    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 469
    .end local v0    # "i":I
    :cond_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    const-string v1, "\t"

    invoke-virtual {v0, p1, v1}, Lcom/android/car/BluetoothProfileInhibitManager;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_2

    .line 470
    :cond_2
    const-string v0, "\tBluetoothProfileInhibitManager: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 473
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\tUsing default policy? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarBluetoothService;->mUseDefaultPolicy:Z

    if-eqz v1, :cond_3

    const-string v1, "Yes"

    goto :goto_3

    :cond_3
    const-string v1, "No"

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    if-nez v0, :cond_4

    .line 475
    const-string v0, "\tBluetoothDeviceConnectionPolicy: null"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    const-string v1, "\t"

    invoke-virtual {v0, p1, v1}, Lcom/android/car/BluetoothDeviceConnectionPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :goto_4
    monitor-exit p0

    return-void

    .line 455
    .end local p1    # "writer":Ljava/io/PrintWriter;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDeviceConnectionPriority(ILandroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 371
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 372
    monitor-enter p0

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 374
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 375
    .local v0, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    if-eqz v0, :cond_0

    .line 376
    invoke-virtual {v0, p2}, Lcom/android/car/BluetoothProfileDeviceManager;->getDeviceConnectionPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    monitor-exit p0

    return v1

    .line 378
    .end local v0    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    :cond_0
    monitor-exit p0

    .line 379
    const/4 v0, -0x1

    return v0

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getProfileDevicePriorityList(I)Ljava/util/List;
    .locals 2
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 353
    monitor-enter p0

    .line 354
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 355
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 356
    .local v0, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {v0}, Lcom/android/car/BluetoothProfileDeviceManager;->getDeviceListSnapshot()Ljava/util/ArrayList;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 359
    .end local v0    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 359
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized init()V
    .locals 2

    monitor-enter p0

    .line 130
    :try_start_0
    const-string v0, "init()"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/android/car/PerUserCarServiceHelper;->registerServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    monitor-exit p0

    return-void

    .line 129
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isUsingDefaultConnectionPolicy()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mBluetoothDeviceConnectionPolicy:Lcom/android/car/BluetoothDeviceConnectionPolicy;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized release()V
    .locals 2

    monitor-enter p0

    .line 141
    :try_start_0
    const-string v0, "release()"

    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mUserServiceHelper:Lcom/android/car/PerUserCarServiceHelper;

    iget-object v1, p0, Lcom/android/car/CarBluetoothService;->mUserServiceCallback:Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;

    invoke-virtual {v0, v1}, Lcom/android/car/PerUserCarServiceHelper;->unregisterServiceCallback(Lcom/android/car/PerUserCarServiceHelper$ServiceCallback;)V

    .line 143
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->destroyUser()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/car/CarBluetoothService;->mCarUserService:Landroid/car/ICarUserService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit p0

    return-void

    .line 140
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized releaseProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 429
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release profile inhibit: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 432
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/BluetoothProfileInhibitManager;->releaseProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 428
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":I
    .end local p3    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized requestProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "profile"    # I
    .param p3, "token"    # Landroid/os/IBinder;

    monitor-enter p0

    .line 412
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request profile inhibit: profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/android/car/Utils;->getProfileName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 412
    invoke-static {v0}, Lcom/android/car/CarBluetoothService;->logd(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 415
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mInhibitManager:Lcom/android/car/BluetoothProfileInhibitManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/car/BluetoothProfileInhibitManager;->requestProfileInhibit(Landroid/bluetooth/BluetoothDevice;ILandroid/os/IBinder;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    .line 411
    .end local p0    # "this":Lcom/android/car/CarBluetoothService;
    .end local p1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local p2    # "profile":I
    .end local p3    # "token":Landroid/os/IBinder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDeviceConnectionPriority(ILandroid/bluetooth/BluetoothDevice;I)V
    .locals 1
    .param p1, "profile"    # I
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "priority"    # I

    .line 390
    invoke-direct {p0}, Lcom/android/car/CarBluetoothService;->enforceBluetoothAdminPermission()V

    .line 391
    monitor-enter p0

    .line 392
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarBluetoothService;->mProfileDeviceManagers:Landroid/util/SparseArray;

    .line 393
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/BluetoothProfileDeviceManager;

    .line 394
    .local v0, "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0, p2, p3}, Lcom/android/car/BluetoothProfileDeviceManager;->setDeviceConnectionPriority(Landroid/bluetooth/BluetoothDevice;I)V

    .line 397
    .end local v0    # "deviceManager":Lcom/android/car/BluetoothProfileDeviceManager;
    :cond_0
    monitor-exit p0

    .line 398
    return-void

    .line 397
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
