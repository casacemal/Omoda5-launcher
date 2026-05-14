.class Landroid/car/vms/VmsSubscriberManager$1;
.super Landroid/car/vms/IVmsSubscriberClient$Stub;
.source "VmsSubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/vms/VmsSubscriberManager;-><init>(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/vms/VmsSubscriberManager;


# direct methods
.method constructor <init>(Landroid/car/vms/VmsSubscriberManager;)V
    .locals 0

    .line 80
    iput-object p1, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-direct {p0}, Landroid/car/vms/IVmsSubscriberClient$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onLayersAvailabilityChanged$1$VmsSubscriberManager$1(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 0

    .line 109
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-static {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->access$200(Landroid/car/vms/VmsSubscriberManager;Landroid/car/vms/VmsAvailableLayers;)V

    return-void
.end method

.method public synthetic lambda$onVmsMessageReceived$0$VmsSubscriberManager$1(Landroid/car/vms/VmsLayer;[B)V
    .locals 0

    .line 93
    iget-object p0, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-static {p0, p1, p2}, Landroid/car/vms/VmsSubscriberManager;->access$300(Landroid/car/vms/VmsSubscriberManager;Landroid/car/vms/VmsLayer;[B)V

    return-void
.end method

.method public onLayersAvailabilityChanged(Landroid/car/vms/VmsAvailableLayers;)V
    .locals 2

    .line 100
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-static {v0}, Landroid/car/vms/VmsSubscriberManager;->access$000(Landroid/car/vms/VmsSubscriberManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-static {v1}, Landroid/car/vms/VmsSubscriberManager;->access$100(Landroid/car/vms/VmsSubscriberManager;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 102
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string p0, "VmsSubscriberManager"

    const-string p1, "Executor is unset in onLayersAvailabilityChanged"

    .line 104
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 107
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 108
    new-instance v0, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;

    invoke-direct {v0, p0, p1}, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$YFkXlCwCneVvMYfeu4olB3-8X0o;-><init>(Landroid/car/vms/VmsSubscriberManager$1;Landroid/car/vms/VmsAvailableLayers;)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 102
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onVmsMessageReceived(Landroid/car/vms/VmsLayer;[B)V
    .locals 2

    .line 84
    iget-object v0, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-static {v0}, Landroid/car/vms/VmsSubscriberManager;->access$000(Landroid/car/vms/VmsSubscriberManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Landroid/car/vms/VmsSubscriberManager$1;->this$0:Landroid/car/vms/VmsSubscriberManager;

    invoke-static {v1}, Landroid/car/vms/VmsSubscriberManager;->access$100(Landroid/car/vms/VmsSubscriberManager;)Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 86
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const-string p0, "VmsSubscriberManager"

    const-string p1, "Executor is unset in onVmsMessageReceived"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 91
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 92
    new-instance v0, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$afqRUqICTW_Bv-9KKLr-b1VHpUA;

    invoke-direct {v0, p0, p1, p2}, Landroid/car/vms/-$$Lambda$VmsSubscriberManager$1$afqRUqICTW_Bv-9KKLr-b1VHpUA;-><init>(Landroid/car/vms/VmsSubscriberManager$1;Landroid/car/vms/VmsLayer;[B)V

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p0

    .line 86
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
