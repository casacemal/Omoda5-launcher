.class final Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;
.super Landroid/car/storagemonitoring/IIoStatsListener$Stub;
.source "CarStorageMonitoringManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/storagemonitoring/CarStorageMonitoringManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/storagemonitoring/CarStorageMonitoringManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/car/storagemonitoring/IIoStatsListener$Stub;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSnapshot(Landroid/car/storagemonitoring/IoStats;)V
    .locals 0

    .line 61
    iget-object p0, p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager$ListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    if-eqz p0, :cond_0

    .line 63
    invoke-static {p0}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;->access$000(Landroid/car/storagemonitoring/CarStorageMonitoringManager;)Lcom/android/car/internal/SingleMessageHandler;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/car/internal/SingleMessageHandler;->sendEvents(Ljava/util/List;)V

    :cond_0
    return-void
.end method
