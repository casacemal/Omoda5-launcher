.class public final Landroid/car/CarBugreportManager;
.super Ljava/lang/Object;
.source "CarBugreportManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;,
        Landroid/car/CarBugreportManager$CarBugreportManagerCallback;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mService:Landroid/car/ICarBugreportService;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    invoke-static {p1}, Landroid/car/ICarBugreportService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarBugreportService;

    move-result-object p1

    iput-object p1, p0, Landroid/car/CarBugreportManager;->mService:Landroid/car/ICarBugreportService;

    .line 158
    new-instance p1, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/car/CarBugreportManager;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method

.method public requestBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/CarBugreportManager$CarBugreportManagerCallback;)V
    .locals 2

    .line 183
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :try_start_0
    new-instance v0, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;

    iget-object v1, p0, Landroid/car/CarBugreportManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p3, v1}, Landroid/car/CarBugreportManager$CarBugreportManagerCallbackWrapper;-><init>(Landroid/car/CarBugreportManager$CarBugreportManagerCallback;Landroid/os/Handler;)V

    .line 189
    iget-object p0, p0, Landroid/car/CarBugreportManager;->mService:Landroid/car/ICarBugreportService;

    invoke-interface {p0, p1, p2, v0}, Landroid/car/ICarBugreportService;->requestBugreport(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/car/ICarBugreportCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 191
    :try_start_1
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 194
    invoke-static {p2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method
