.class Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;
.super Ljava/lang/Object;
.source "CarUxRestrictionsManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarUxRestrictionsManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UxRestrictionsClient"
.end annotation


# instance fields
.field private final listener:Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

.field private final listenerBinder:Landroid/os/IBinder;

.field private final mDisplayId:I

.field final synthetic this$0:Lcom/android/car/CarUxRestrictionsManagerService;


# direct methods
.method constructor <init>(Lcom/android/car/CarUxRestrictionsManagerService;Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    .locals 0
    .param p2, "l"    # Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;
    .param p3, "displayId"    # I

    .line 585
    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 586
    iput-object p2, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listener:Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    .line 587
    invoke-interface {p2}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    .line 588
    iput p3, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->mDisplayId:I

    .line 589
    return-void
.end method

.method static synthetic access$000(Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 580
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;

    .line 580
    iget v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->mDisplayId:I

    return v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 593
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/car/CarUxRestrictionsManagerService;->access$100(Ljava/lang/String;)V

    .line 594
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 595
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    monitor-enter v0

    .line 596
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->this$0:Lcom/android/car/CarUxRestrictionsManagerService;

    invoke-static {v1}, Lcom/android/car/CarUxRestrictionsManagerService;->access$200(Lcom/android/car/CarUxRestrictionsManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 597
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispatchEventToClients(Landroid/car/drivingstate/CarUxRestrictions;)V
    .locals 3
    .param p1, "event"    # Landroid/car/drivingstate/CarUxRestrictions;

    .line 616
    if-nez p1, :cond_0

    .line 617
    return-void

    .line 620
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listener:Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;

    invoke-interface {v0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;->onUxRestrictionsChanged(Landroid/car/drivingstate/CarUxRestrictions;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarUxR"

    const-string v2, "Dispatch to listener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 624
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method public isHoldingBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 607
    iget-object v0, p0, Lcom/android/car/CarUxRestrictionsManagerService$UxRestrictionsClient;->listenerBinder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
