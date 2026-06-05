.class Lcom/android/car/CarProjectionService$2;
.super Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;
.source "CarProjectionService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/CarProjectionService;->startLocalOnlyApLocked()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/CarProjectionService;


# direct methods
.method constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/CarProjectionService;

    .line 633
    iput-object p1, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(I)V
    .locals 3
    .param p1, "localonlyHostspotFailureReason"    # I

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Local-only hotspot failed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v0, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 657
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarProjectionService;->access$1002(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 658
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 660
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 671
    const/4 v0, 0x2

    .local v0, "reason":I
    goto :goto_0

    .line 665
    .end local v0    # "reason":I
    :cond_0
    const/4 v0, 0x4

    .line 666
    .restart local v0    # "reason":I
    goto :goto_0

    .line 668
    .end local v0    # "reason":I
    :cond_1
    const/4 v0, 0x3

    .line 669
    .restart local v0    # "reason":I
    goto :goto_0

    .line 662
    .end local v0    # "reason":I
    :cond_2
    const/4 v0, 0x1

    .line 663
    .restart local v0    # "reason":I
    nop

    .line 674
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v1, v0}, Lcom/android/car/CarProjectionService;->access$1300(Lcom/android/car/CarProjectionService;I)V

    .line 675
    return-void

    .line 658
    .end local v0    # "reason":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V
    .locals 2
    .param p1, "reservation"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 636
    const-string v0, "CAR.PROJECTION"

    const-string v1, "Local-only hotspot started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    iget-object v0, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 638
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v1, p1}, Lcom/android/car/CarProjectionService;->access$1002(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 639
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 640
    iget-object v0, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarProjectionService;->access$1100(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiConfiguration;)V

    .line 641
    return-void

    .line 639
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStopped()V
    .locals 3

    .line 645
    const-string v0, "CAR.PROJECTION"

    const-string v1, "Local-only hotspot stopped."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v0, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$000(Lcom/android/car/CarProjectionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 647
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/car/CarProjectionService;->access$1002(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    .line 648
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 649
    iget-object v0, p0, Lcom/android/car/CarProjectionService$2;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$1200(Lcom/android/car/CarProjectionService;)V

    .line 650
    return-void

    .line 648
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
