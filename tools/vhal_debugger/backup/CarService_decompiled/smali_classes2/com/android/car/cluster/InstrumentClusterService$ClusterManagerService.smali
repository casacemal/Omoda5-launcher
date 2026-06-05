.class Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;
.super Landroid/car/cluster/IInstrumentClusterManagerService$Stub;
.source "InstrumentClusterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/cluster/InstrumentClusterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClusterManagerService"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/cluster/InstrumentClusterService;


# direct methods
.method private constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;->this$0:Lcom/android/car/cluster/InstrumentClusterService;

    invoke-direct {p0}, Landroid/car/cluster/IInstrumentClusterManagerService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/cluster/InstrumentClusterService;Lcom/android/car/cluster/InstrumentClusterService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/cluster/InstrumentClusterService;
    .param p2, "x1"    # Lcom/android/car/cluster/InstrumentClusterService$1;

    .line 304
    invoke-direct {p0, p1}, Lcom/android/car/cluster/InstrumentClusterService$ClusterManagerService;-><init>(Lcom/android/car/cluster/InstrumentClusterService;)V

    return-void
.end method


# virtual methods
.method public registerCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 314
    return-void
.end method

.method public startClusterActivity(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 308
    return-void
.end method

.method public unregisterCallback(Landroid/car/cluster/IInstrumentClusterManagerCallback;)V
    .locals 0
    .param p1, "callback"    # Landroid/car/cluster/IInstrumentClusterManagerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 320
    return-void
.end method
