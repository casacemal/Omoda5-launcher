.class Landroid/car/Car$3;
.super Ljava/lang/Object;
.source "Car.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/Car;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/Car;


# direct methods
.method constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 716
    iput-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 719
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$200(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 720
    :try_start_0
    invoke-static {p2}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "CAR.L"

    const-string p1, "null binder service"

    .line 722
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 723
    monitor-exit v0

    return-void

    .line 725
    :cond_0
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    invoke-interface {v2}, Landroid/car/ICar;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1}, Landroid/car/ICar;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 727
    monitor-exit v0

    return-void

    .line 729
    :cond_1
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/car/Car;->access$402(Landroid/car/Car;I)I

    .line 730
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2, v1}, Landroid/car/Car;->access$302(Landroid/car/Car;Landroid/car/ICar;)Landroid/car/ICar;

    .line 731
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 733
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    .line 735
    :cond_2
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 736
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 731
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 742
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$200(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 743
    :try_start_0
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$400(Landroid/car/Car;)I

    move-result v1

    if-nez v1, :cond_0

    .line 745
    monitor-exit v0

    return-void

    .line 747
    :cond_0
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$700(Landroid/car/Car;)V

    .line 748
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 749
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 750
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    .line 752
    :cond_1
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 753
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 748
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
