.class public final Landroid/car/storagemonitoring/CarStorageMonitoringManager;
.super Ljava/lang/Object;
.source "CarStorageMonitoringManager.java"

# interfaces
.implements Landroid/car/CarManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;,
        Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;
    }
.end annotation


# static fields
.field public static final INTENT_EXCESSIVE_IO:Ljava/lang/String; = "android.car.storagemonitoring.EXCESSIVE_IO"

.field private static final MSG_IO_STATS_EVENT:I = 0x0

.field public static final PRE_EOL_INFO_NORMAL:I = 0x1

.field public static final PRE_EOL_INFO_UNKNOWN:I = 0x0

.field public static final PRE_EOL_INFO_URGENT:I = 0x3

.field public static final PRE_EOL_INFO_WARNING:I = 0x2

.field public static final SHUTDOWN_COST_INFO_MISSING:J = -0x1L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMessageHandler:Lcom/android/car/internal/SingleMessageHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/car/internal/SingleMessageHandler<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    const-class v0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/os/Handler;)V
    .locals 1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    .line 81
    invoke-static {p1}, Landroid/car/storagemonitoring/ICarStorageMonitoring$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/storagemonitoring/ICarStorageMonitoring;

    move-result-object p1

    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    .line 82
    new-instance p1, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$1;-><init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;Landroid/os/Handler;I)V

    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mMessageHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-void
.end method

.method static synthetic access$000(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Lcom/android/car/internal/SingleMessageHandler;
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mMessageHandler:Lcom/android/car/internal/SingleMessageHandler;

    return-object p0
.end method

.method static synthetic access$100(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Ljava/util/Set;
    .locals 0

    .line 40
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    return-object p0
.end method


# virtual methods
.method public getAggregateIoStats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    .line 217
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getAggregateIoStats()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 219
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getBootIoStats()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStatsEntry;",
            ">;"
        }
    .end annotation

    .line 170
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getBootIoStats()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 172
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getIoStatsDeltas()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/IoStats;",
            ">;"
        }
    .end annotation

    .line 237
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getIoStatsDeltas()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 239
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getPreEolIndicatorStatus()I
    .locals 0

    .line 113
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getPreEolIndicatorStatus()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 115
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getShutdownDiskWriteAmount()J
    .locals 2

    .line 200
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getShutdownDiskWriteAmount()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 202
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getWearEstimate()Landroid/car/storagemonitoring/WearEstimate;
    .locals 0

    .line 131
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getWearEstimate()Landroid/car/storagemonitoring/WearEstimate;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public getWearEstimateHistory()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/storagemonitoring/WearEstimateChange;",
            ">;"
        }
    .end annotation

    .line 151
    :try_start_0
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    invoke-interface {p0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->getWearEstimateHistory()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 153
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onCarDisconnected()V
    .locals 1

    .line 97
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    .line 98
    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    return-void
.end method

.method public registerListener(Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;)V
    .locals 2

    .line 254
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    if-nez v0, :cond_0

    .line 256
    new-instance v0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    invoke-direct {v0, p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;-><init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)V

    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    .line 258
    :cond_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    iget-object v1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    invoke-interface {v0, v1}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->registerListener(Landroid/car/storagemonitoring/IIoStatsListener;)V

    .line 260
    :cond_1
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 262
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public unregisterListener(Landroid/car/storagemonitoring/CarStorageMonitoringManager$IoStatsListener;)V
    .locals 1

    .line 272
    :try_start_0
    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 275
    :cond_0
    iget-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 276
    iget-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mService:Landroid/car/storagemonitoring/ICarStorageMonitoring;

    iget-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;

    invoke-interface {p1, v0}, Landroid/car/storagemonitoring/ICarStorageMonitoring;->unregisterListener(Landroid/car/storagemonitoring/IIoStatsListener;)V

    const/4 p1, 0x0

    .line 277
    iput-object p1, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->mListenerToService:Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
