.class public final synthetic Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$t81kYp25Quio7Jmj-_MKQt6a6bM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;


# direct methods
.method public synthetic constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$t81kYp25Quio7Jmj-_MKQt6a6bM;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$t81kYp25Quio7Jmj-_MKQt6a6bM;->f$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;

    invoke-virtual {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->lambda$getInstrumentClusterInfo$1$InstrumentClusterRenderingService$NavigationBinder()Landroid/car/navigation/CarNavigationInstrumentCluster;

    move-result-object p0

    return-object p0
.end method
