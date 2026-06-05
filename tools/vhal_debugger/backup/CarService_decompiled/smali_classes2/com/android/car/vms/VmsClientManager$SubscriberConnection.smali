.class Lcom/android/car/vms/VmsClientManager$SubscriberConnection;
.super Ljava/lang/Object;
.source "VmsClientManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/vms/VmsClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SubscriberConnection"
.end annotation


# instance fields
.field private final mClient:Landroid/car/vms/IVmsSubscriberClient;

.field private final mPackageName:Ljava/lang/String;

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/car/vms/VmsClientManager;


# direct methods
.method constructor <init>(Lcom/android/car/vms/VmsClientManager;Landroid/car/vms/IVmsSubscriberClient;Ljava/lang/String;I)V
    .locals 0
    .param p2, "subscriberClient"    # Landroid/car/vms/IVmsSubscriberClient;
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "userId"    # I

    .line 567
    iput-object p1, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 568
    iput-object p2, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mClient:Landroid/car/vms/IVmsSubscriberClient;

    .line 569
    iput-object p3, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mPackageName:Ljava/lang/String;

    .line 570
    iput p4, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mUserId:I

    .line 571
    return-void
.end method

.method static synthetic access$1000(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 561
    iget v0, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mUserId:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 561
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/car/vms/VmsClientManager$SubscriberConnection;)Landroid/car/vms/IVmsSubscriberClient;
    .locals 1
    .param p0, "x0"    # Lcom/android/car/vms/VmsClientManager$SubscriberConnection;

    .line 561
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mClient:Landroid/car/vms/IVmsSubscriberClient;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 0

    .line 576
    invoke-virtual {p0}, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->terminate()V

    .line 577
    return-void
.end method

.method terminate()V
    .locals 3

    .line 586
    iget-object v0, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v0}, Lcom/android/car/vms/VmsClientManager;->access$000(Lcom/android/car/vms/VmsClientManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 587
    :try_start_0
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v1}, Lcom/android/car/vms/VmsClientManager;->access$1900(Lcom/android/car/vms/VmsClientManager;)Lcom/android/car/vms/VmsBrokerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-virtual {v1, v2}, Lcom/android/car/vms/VmsBrokerService;->removeDeadSubscriber(Landroid/car/vms/IVmsSubscriberClient;)V

    .line 588
    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mClient:Landroid/car/vms/IVmsSubscriberClient;

    invoke-interface {v1}, Landroid/car/vms/IVmsSubscriberClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 590
    .local v1, "subscriberBinder":Landroid/os/IBinder;
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 593
    goto :goto_0

    .line 591
    :catch_0
    move-exception v2

    .line 594
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->this$0:Lcom/android/car/vms/VmsClientManager;

    invoke-static {v2}, Lcom/android/car/vms/VmsClientManager;->access$500(Lcom/android/car/vms/VmsClientManager;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    nop

    .end local v1    # "subscriberBinder":Landroid/os/IBinder;
    monitor-exit v0

    .line 596
    return-void

    .line 595
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 581
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/car/vms/VmsClientManager$SubscriberConnection;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
