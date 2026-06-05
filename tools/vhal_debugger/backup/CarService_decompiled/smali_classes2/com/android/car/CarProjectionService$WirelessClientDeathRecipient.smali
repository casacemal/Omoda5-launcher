.class Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;
.super Ljava/lang/Object;
.source "CarProjectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WirelessClientDeathRecipient"
.end annotation


# instance fields
.field final mClient:Lcom/android/car/CarProjectionService$WirelessClient;

.field final mServiceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/car/CarProjectionService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;Lcom/android/car/CarProjectionService$WirelessClient;)V
    .locals 1
    .param p1, "service"    # Lcom/android/car/CarProjectionService;
    .param p2, "client"    # Lcom/android/car/CarProjectionService$WirelessClient;

    .line 1025
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1026
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;->mServiceRef:Ljava/lang/ref/WeakReference;

    .line 1027
    iput-object p2, p0, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;->mClient:Lcom/android/car/CarProjectionService$WirelessClient;

    .line 1028
    iget-object v0, p0, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;->mClient:Lcom/android/car/CarProjectionService$WirelessClient;

    iput-object p0, v0, Lcom/android/car/CarProjectionService$WirelessClient;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 1029
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1033
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wireless client "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;->mClient:Lcom/android/car/CarProjectionService$WirelessClient;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " died."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    iget-object v0, p0, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;->mServiceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/car/CarProjectionService;

    .line 1035
    .local v0, "service":Lcom/android/car/CarProjectionService;
    if-nez v0, :cond_0

    return-void

    .line 1037
    :cond_0
    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1038
    :try_start_0
    iget-object v2, p0, Lcom/android/car/CarProjectionService$WirelessClientDeathRecipient;->mClient:Lcom/android/car/CarProjectionService$WirelessClient;

    iget-object v2, v2, Lcom/android/car/CarProjectionService$WirelessClient;->token:Landroid/os/IBinder;

    invoke-static {v0, v2}, Lcom/android/car/CarProjectionService;->access$1800(Lcom/android/car/CarProjectionService;Landroid/os/IBinder;)Z

    .line 1039
    monitor-exit v1

    .line 1040
    return-void

    .line 1039
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
