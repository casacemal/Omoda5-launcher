.class Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;
.super Ljava/lang/Object;
.source "CarTrustAgentEnrollmentService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/trust/CarTrustAgentEnrollmentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BleStateChangeClient"
.end annotation


# instance fields
.field private final mListener:Landroid/car/trust/ICarTrustAgentBleCallback;

.field private final mListenerBinder:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/car/trust/CarTrustAgentEnrollmentService;


# direct methods
.method constructor <init>(Lcom/android/car/trust/CarTrustAgentEnrollmentService;Landroid/car/trust/ICarTrustAgentBleCallback;)V
    .locals 0
    .param p2, "listener"    # Landroid/car/trust/ICarTrustAgentBleCallback;

    .line 1072
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->this$0:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput-object p2, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListener:Landroid/car/trust/ICarTrustAgentBleCallback;

    .line 1074
    invoke-interface {p2}, Landroid/car/trust/ICarTrustAgentBleCallback;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListenerBinder:Landroid/os/IBinder;

    .line 1075
    return-void
.end method

.method static synthetic access$100(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/os/IBinder;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 1068
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListenerBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;)Landroid/car/trust/ICarTrustAgentBleCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;

    .line 1068
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListener:Landroid/car/trust/ICarTrustAgentBleCallback;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    .line 1079
    const-string v0, "CarTrustAgentEnroll"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1080
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binder died "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListenerBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustAgentEnroll"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    :cond_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListenerBinder:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1083
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->this$0:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    monitor-enter v0

    .line 1084
    :try_start_0
    iget-object v1, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->this$0:Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    invoke-static {v1}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->access$500(Lcom/android/car/trust/CarTrustAgentEnrollmentService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1085
    monitor-exit v0

    .line 1086
    return-void

    .line 1085
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isHoldingBinder(Landroid/os/IBinder;)Z
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 1095
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListenerBinder:Landroid/os/IBinder;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onEnrollmentAdvertisementStarted()V
    .locals 3

    .line 1100
    :try_start_0
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentEnrollmentService$BleStateChangeClient;->mListener:Landroid/car/trust/ICarTrustAgentBleCallback;

    invoke-interface {v0}, Landroid/car/trust/ICarTrustAgentBleCallback;->onEnrollmentAdvertisingStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1103
    goto :goto_0

    .line 1101
    :catch_0
    move-exception v0

    .line 1102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "CarTrustAgentEnroll"

    const-string v2, "onEnrollmentAdvertisementStarted() failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1104
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method
