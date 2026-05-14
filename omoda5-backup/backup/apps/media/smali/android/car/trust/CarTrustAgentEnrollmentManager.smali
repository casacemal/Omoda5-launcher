.class public final Landroid/car/trust/CarTrustAgentEnrollmentManager;
.super Ljava/lang/Object;
.source "CarTrustAgentEnrollmentManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;,
        Landroid/car/trust/CarTrustAgentEnrollmentManager$TrustedDeviceEnrollmentError;
    }
.end annotation


# static fields
.field public static final ENROLLMENT_HANDSHAKE_FAILURE:I = 0x1

.field public static final ENROLLMENT_NOT_ALLOWED:I = 0x2

.field private static final KEY_ACTIVE:Ljava/lang/String; = "active"

.field private static final KEY_HANDLE:Ljava/lang/String; = "handle"

.field private static final MSG_ENROLL_ADVERTISING_FAILED:I = 0x1

.field private static final MSG_ENROLL_ADVERTISING_STARTED:I = 0x0

.field private static final MSG_ENROLL_AUTH_STRING_AVAILABLE:I = 0x5

.field private static final MSG_ENROLL_DEVICE_CONNECTED:I = 0x2

.field private static final MSG_ENROLL_DEVICE_DISCONNECTED:I = 0x3

.field private static final MSG_ENROLL_HANDSHAKE_FAILURE:I = 0x4

.field private static final MSG_ENROLL_TOKEN_ADDED:I = 0x6

.field private static final MSG_ENROLL_TOKEN_REMOVED:I = 0x8

.field private static final MSG_ENROLL_TOKEN_STATE_CHANGED:I = 0x7

.field private static final TAG:Ljava/lang/String; = "CarTrustEnrollMgr"


# instance fields
.field private mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

.field private final mContext:Landroid/content/Context;

.field private mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

.field private final mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

.field private final mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

.field private mListenerLock:Ljava/lang/Object;

.field private final mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

.field private final mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    .line 91
    new-instance v0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-direct {v0, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V

    iput-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    .line 94
    new-instance v0, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-direct {v0, p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;)V

    iput-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    .line 118
    iput-object p2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {p1}, Landroid/car/trust/ICarTrustAgentEnrollment$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/trust/ICarTrustAgentEnrollment;

    move-result-object p1

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    .line 120
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;-><init>(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/trust/CarTrustAgentEnrollmentManager;)Landroid/os/Handler;
    .locals 0

    .line 70
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->getEventCallbackHandler()Landroid/os/Handler;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->dispatchBleCallback(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/trust/CarTrustAgentEnrollmentManager;Landroid/os/Message;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->dispatchEnrollmentCallback(Landroid/os/Message;)V

    return-void
.end method

.method private dispatchBleCallback(Landroid/os/Message;)V
    .locals 2

    .line 638
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 639
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

    .line 640
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    .line 644
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 655
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 652
    :cond_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V

    goto :goto_0

    .line 649
    :cond_3
    invoke-interface {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onEnrollmentAdvertisingFailed()V

    goto :goto_0

    .line 646
    :cond_4
    invoke-interface {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;->onEnrollmentAdvertisingStarted()V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 640
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private dispatchEnrollmentCallback(Landroid/os/Message;)V
    .locals 3

    .line 669
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 670
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

    .line 671
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    return-void

    .line 677
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 704
    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "handle"

    .line 708
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenRemoved(J)V

    goto :goto_0

    .line 696
    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "handle"

    .line 700
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "active"

    .line 701
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 700
    invoke-interface {p0, v0, v1, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenActiveStateChanged(JZ)V

    goto :goto_0

    .line 689
    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "handle"

    .line 693
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEscrowTokenAdded(J)V

    goto :goto_0

    .line 683
    :pswitch_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    .line 684
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_4

    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mAuthString:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 685
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p1, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mAuthString:Ljava/lang/String;

    invoke-interface {p0, v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    goto :goto_0

    .line 679
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;

    .line 680
    iget-object v0, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget p1, p1, Landroid/car/trust/CarTrustAgentEnrollmentManager$AuthInfo;->mErrorCode:I

    invoke-interface {p0, v0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;->onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 671
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEventCallbackHandler()Landroid/os/Handler;
    .locals 0

    .line 359
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEventCallbackHandler:Landroid/car/trust/CarTrustAgentEnrollmentManager$EventCallbackHandler;

    return-object p0
.end method

.method private registerBleCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;)V
    .locals 3

    .line 315
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 316
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 318
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->registerBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V

    .line 319
    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 324
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private registerEnrollmentCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;)V
    .locals 3

    .line 275
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_0

    .line 276
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 278
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->registerEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V

    .line 279
    iput-object p1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 281
    :try_start_2
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 284
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private unregisterBleCallback()V
    .locals 3

    .line 328
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 331
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToBleService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToBleService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->unregisterBleCallback(Landroid/car/trust/ICarTrustAgentBleCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 335
    :try_start_2
    iput-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mBleCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 337
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method private unregisterEnrollmentCallback()V
    .locals 3

    .line 288
    iget-object v0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 289
    :try_start_0
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 291
    :try_start_1
    iget-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    iget-object v2, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mListenerToEnrollmentService:Landroid/car/trust/CarTrustAgentEnrollmentManager$ListenerToEnrollmentService;

    invoke-interface {v1, v2}, Landroid/car/trust/ICarTrustAgentEnrollment;->unregisterEnrollmentCallback(Landroid/car/trust/ICarTrustAgentEnrollmentCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    .line 295
    :try_start_2
    iput-object v1, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentCallback:Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;

    goto :goto_0

    :catch_0
    move-exception p0

    .line 293
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 297
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method


# virtual methods
.method public enrollmentHandshakeAccepted(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 162
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->enrollmentHandshakeAccepted(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 164
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getEnrolledDeviceInfoForUser(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/car/trust/TrustedDeviceInfo;",
            ">;"
        }
    .end annotation

    .line 352
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->getEnrolledDeviceInfosForUser(I)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 354
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public isEscrowTokenActive(JI)Z
    .locals 0

    .line 195
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollment;->isEscrowTokenActive(JI)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 197
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 0

    monitor-enter p0

    .line 126
    monitor-exit p0

    return-void
.end method

.method public removeAllTrustedDevices(I)V
    .locals 0

    .line 224
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->removeAllTrustedDevices(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 226
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public removeEscrowToken(JI)V
    .locals 0

    .line 210
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1, p2, p3}, Landroid/car/trust/ICarTrustAgentEnrollment;->removeEscrowToken(JI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 212
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setBleCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;)V
    .locals 0

    if-nez p1, :cond_0

    .line 308
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->unregisterBleCallback()V

    goto :goto_0

    .line 310
    :cond_0
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->registerBleCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;)V

    :goto_0
    return-void
.end method

.method public setEnrollmentCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;)V
    .locals 0

    if-nez p1, :cond_0

    .line 268
    invoke-direct {p0}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->unregisterEnrollmentCallback()V

    goto :goto_0

    .line 270
    :cond_0
    invoke-direct {p0, p1}, Landroid/car/trust/CarTrustAgentEnrollmentManager;->registerEnrollmentCallback(Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;)V

    :goto_0
    return-void
.end method

.method public setTrustedDeviceEnrollmentEnabled(Z)V
    .locals 0

    .line 239
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->setTrustedDeviceEnrollmentEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 241
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public setTrustedDeviceUnlockEnabled(Z)V
    .locals 0

    .line 254
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0, p1}, Landroid/car/trust/ICarTrustAgentEnrollment;->setTrustedDeviceUnlockEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 256
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public startEnrollmentAdvertising()V
    .locals 0

    .line 135
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0}, Landroid/car/trust/ICarTrustAgentEnrollment;->startEnrollmentAdvertising()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 137
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public stopEnrollmentAdvertising()V
    .locals 0

    .line 147
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0}, Landroid/car/trust/ICarTrustAgentEnrollment;->stopEnrollmentAdvertising()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 149
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public terminateEnrollmentHandshake()V
    .locals 0

    .line 174
    :try_start_0
    iget-object p0, p0, Landroid/car/trust/CarTrustAgentEnrollmentManager;->mEnrollmentService:Landroid/car/trust/ICarTrustAgentEnrollment;

    invoke-interface {p0}, Landroid/car/trust/ICarTrustAgentEnrollment;->terminateEnrollmentHandshake()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
