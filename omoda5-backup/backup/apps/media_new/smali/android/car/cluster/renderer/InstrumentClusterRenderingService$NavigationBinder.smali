.class Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;
.super Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;
.source "InstrumentClusterRenderingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/cluster/renderer/InstrumentClusterRenderingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavigationBinder"
.end annotation


# instance fields
.field private final mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

.field final synthetic this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;


# direct methods
.method constructor <init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Landroid/car/cluster/renderer/NavigationRenderer;)V
    .locals 0

    .line 426
    iput-object p1, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-direct {p0}, Landroid/car/cluster/renderer/IInstrumentClusterNavigation$Stub;-><init>()V

    .line 427
    iput-object p2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    return-void
.end method

.method private assertContextOwnership()V
    .locals 6

    .line 451
    invoke-static {}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->getCallingUid()I

    move-result v0

    .line 452
    invoke-static {}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->getCallingPid()I

    move-result v1

    .line 454
    iget-object v2, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v2}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$100(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 455
    :try_start_0
    iget-object v3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v3}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$200(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v3

    iget v3, v3, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mUid:I

    if-ne v3, v0, :cond_0

    iget-object v3, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v3}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$200(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object v3

    iget v3, v3, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;->mPid:I

    if-ne v3, v1, :cond_0

    .line 459
    monitor-exit v2

    return-void

    .line 456
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Client {uid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", pid: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "} is not an owner of APP_FOCUS_TYPE_NAVIGATION "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    .line 457
    invoke-static {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$200(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/car/cluster/renderer/InstrumentClusterRenderingService$ContextOwner;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :catchall_0
    move-exception p0

    .line 459
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public getInstrumentClusterInfo()Landroid/car/navigation/CarNavigationInstrumentCluster;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 446
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$500(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V

    .line 447
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    new-instance v1, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$t81kYp25Quio7Jmj-_MKQt6a6bM;

    invoke-direct {v1, p0}, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$t81kYp25Quio7Jmj-_MKQt6a6bM;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;)V

    invoke-static {v0, v1}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$600(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/navigation/CarNavigationInstrumentCluster;

    return-object p0
.end method

.method public synthetic lambda$getInstrumentClusterInfo$1$InstrumentClusterRenderingService$NavigationBinder()Landroid/car/navigation/CarNavigationInstrumentCluster;
    .locals 0

    .line 447
    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    invoke-virtual {p0}, Landroid/car/cluster/renderer/NavigationRenderer;->getNavigationProperties()Landroid/car/navigation/CarNavigationInstrumentCluster;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$onNavigationStateChanged$0$InstrumentClusterRenderingService$NavigationBinder(Landroid/os/Bundle;)V
    .locals 2

    .line 436
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 438
    invoke-virtual {v0, v1, p1}, Landroid/car/cluster/renderer/NavigationRenderer;->onEvent(ILandroid/os/Bundle;)V

    .line 439
    iget-object p0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->mNavigationRenderer:Landroid/car/cluster/renderer/NavigationRenderer;

    invoke-virtual {p0, p1}, Landroid/car/cluster/renderer/NavigationRenderer;->onNavigationStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onNavigationStateChanged(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 433
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$500(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)V

    .line 434
    invoke-direct {p0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->assertContextOwnership()V

    .line 435
    iget-object v0, p0, Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;->this$0:Landroid/car/cluster/renderer/InstrumentClusterRenderingService;

    invoke-static {v0}, Landroid/car/cluster/renderer/InstrumentClusterRenderingService;->access$300(Landroid/car/cluster/renderer/InstrumentClusterRenderingService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;

    invoke-direct {v1, p0, p1}, Landroid/car/cluster/renderer/-$$Lambda$InstrumentClusterRenderingService$NavigationBinder$AouD2VCy5QEXfLjDn2L7OgfQzow;-><init>(Landroid/car/cluster/renderer/InstrumentClusterRenderingService$NavigationBinder;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
