.class public final Landroid/car/media/CarMediaManager;
.super Ljava/lang/Object;
.source "CarMediaManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/media/CarMediaManager$MediaSourceChangedListener;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/car/media/CarMediaManager$MediaSourceChangedListener;",
            "Landroid/car/media/ICarMediaSourceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/car/media/ICarMedia;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    .line 44
    invoke-static {p1}, Landroid/car/media/ICarMedia$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/media/ICarMedia;

    move-result-object p1

    iput-object p1, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    return-void
.end method


# virtual methods
.method public declared-synchronized getMediaSource()Landroid/content/ComponentName;
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {v0}, Landroid/car/media/ICarMedia;->getMediaSource()Landroid/content/ComponentName;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 70
    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onCarDisconnected()V
    .locals 0

    monitor-enter p0

    .line 127
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerMediaSourceListener(Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V
    .locals 2

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Landroid/car/media/CarMediaManager$1;

    invoke-direct {v0, p0, p1}, Landroid/car/media/CarMediaManager$1;-><init>(Landroid/car/media/CarMediaManager;Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V

    .line 102
    iget-object v1, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {p1, v0}, Landroid/car/media/ICarMedia;->registerMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 105
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMediaSource(Landroid/content/ComponentName;)V
    .locals 1

    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {v0, p1}, Landroid/car/media/ICarMedia;->setMediaSource(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 84
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unregisterMediaSourceListener(Landroid/car/media/CarMediaManager$MediaSourceChangedListener;)V
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/media/ICarMediaSourceListener;

    .line 118
    iget-object v0, p0, Landroid/car/media/CarMediaManager;->mService:Landroid/car/media/ICarMedia;

    invoke-interface {v0, p1}, Landroid/car/media/ICarMedia;->unregisterMediaSourceListener(Landroid/car/media/ICarMediaSourceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 120
    :try_start_1
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method
