.class public final Landroid/car/drivingstate/CarDrivingStateManager;
.super Ljava/lang/Object;
.source "CarDrivingStateManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;,
        Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;,
        Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final MSG_HANDLE_DRIVING_STATE_CHANGE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarDrivingStateMgr"

.field private static final VDBG:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

.field private mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

.field private final mEventCallbackHandler:Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

.field private mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mContext:Landroid/content/Context;

    .line 59
    invoke-static {p1}, Landroid/car/drivingstate/ICarDrivingState$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/drivingstate/ICarDrivingState;

    move-result-object p1

    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    .line 60
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;-><init>(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mEventCallbackHandler:Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->handleDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method static synthetic access$100(Landroid/car/drivingstate/CarDrivingStateManager;Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager;->dispatchDrivingStateChangeToClient(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    return-void
.end method

.method private dispatchDrivingStateChangeToClient(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    monitor-enter p0

    .line 248
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

    .line 249
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 251
    invoke-interface {v0, p1}, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;->onDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 249
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private handleDrivingStateChanged(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    .locals 1

    .line 209
    iget-object p0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mEventCallbackHandler:Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;

    const/4 v0, 0x0

    .line 210
    invoke-virtual {p0, v0, p1}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 209
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarDrivingStateManager$EventCallbackHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getCurrentCarDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 152
    :try_start_0
    iget-object p0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    invoke-interface {p0}, Landroid/car/drivingstate/ICarDrivingState;->getCurrentDrivingState()Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 154
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public injectDrivingState(I)V
    .locals 3

    .line 170
    new-instance v0, Landroid/car/drivingstate/CarDrivingStateEvent;

    .line 171
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Landroid/car/drivingstate/CarDrivingStateEvent;-><init>(IJ)V

    .line 173
    :try_start_0
    iget-object p0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    invoke-interface {p0, v0}, Landroid/car/drivingstate/ICarDrivingState;->injectDrivingState(Landroid/car/drivingstate/CarDrivingStateEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 175
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 66
    :try_start_0
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    .line 67
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerListener(Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 100
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_0
    :try_start_1
    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    :try_start_2
    iget-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    if-nez p1, :cond_1

    .line 109
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    invoke-direct {p1, p0}, Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;-><init>(Landroid/car/drivingstate/CarDrivingStateManager;)V

    iput-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    .line 112
    :cond_1
    iget-object p1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    invoke-interface {p1, v0}, Landroid/car/drivingstate/ICarDrivingState;->registerDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 114
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 97
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Listener is null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterListener()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 130
    monitor-exit p0

    return-void

    .line 133
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrivingService:Landroid/car/drivingstate/ICarDrivingState;

    iget-object v1, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;

    invoke-interface {v0, v1}, Landroid/car/drivingstate/ICarDrivingState;->unregisterDrivingStateChangeListener(Landroid/car/drivingstate/ICarDrivingStateChangeListener;)V

    const/4 v0, 0x0

    .line 134
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mDrvStateEventListener:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateEventListener;

    .line 135
    iput-object v0, p0, Landroid/car/drivingstate/CarDrivingStateManager;->mListenerToService:Landroid/car/drivingstate/CarDrivingStateManager$CarDrivingStateChangeListenerToService;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 137
    :try_start_2
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
