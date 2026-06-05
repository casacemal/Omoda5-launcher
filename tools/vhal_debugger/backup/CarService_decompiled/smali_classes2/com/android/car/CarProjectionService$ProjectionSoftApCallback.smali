.class Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;
.super Ljava/lang/Object;
.source "CarProjectionService.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarProjectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProjectionSoftApCallback"
.end annotation


# instance fields
.field private mCurrentStateCall:Z

.field final synthetic this$0:Lcom/android/car/CarProjectionService;


# direct methods
.method private constructor <init>(Lcom/android/car/CarProjectionService;)V
    .locals 0

    .line 943
    iput-object p1, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->this$0:Lcom/android/car/CarProjectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 944
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->mCurrentStateCall:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/car/CarProjectionService;Lcom/android/car/CarProjectionService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/car/CarProjectionService;
    .param p2, "x1"    # Lcom/android/car/CarProjectionService$1;

    .line 943
    invoke-direct {p0, p1}, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;-><init>(Lcom/android/car/CarProjectionService;)V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 2
    .param p1, "numClients"    # I

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionSoftApCallback, onNumClientsChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    return-void
.end method

.method public onStateChanged(II)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "softApFailureReason"    # I

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProjectionSoftApCallback, onStateChanged, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failed reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", currentStateCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->mCurrentStateCall:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAR.PROJECTION"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    iget-boolean v0, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->mCurrentStateCall:Z

    if-eqz v0, :cond_0

    .line 955
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->mCurrentStateCall:Z

    .line 956
    return-void

    .line 959
    :cond_0
    const/16 v0, 0xb

    if-eq p1, v0, :cond_4

    const/16 v0, 0xd

    if-eq p1, v0, :cond_3

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    goto :goto_1

    .line 969
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WIFI_AP_STATE_FAILED, reason: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    .line 976
    const/4 v0, 0x2

    .local v0, "reason":I
    goto :goto_0

    .line 973
    .end local v0    # "reason":I
    :cond_2
    const/4 v0, 0x1

    .line 974
    .restart local v0    # "reason":I
    nop

    .line 978
    :goto_0
    iget-object v1, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v1, v0}, Lcom/android/car/CarProjectionService;->access$1300(Lcom/android/car/CarProjectionService;I)V

    .line 979
    goto :goto_1

    .line 961
    .end local v0    # "reason":I
    :cond_3
    iget-object v0, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$1700(Lcom/android/car/CarProjectionService;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/car/CarProjectionService;->access$1100(Lcom/android/car/CarProjectionService;Landroid/net/wifi/WifiConfiguration;)V

    .line 962
    goto :goto_1

    .line 965
    :cond_4
    iget-object v0, p0, Lcom/android/car/CarProjectionService$ProjectionSoftApCallback;->this$0:Lcom/android/car/CarProjectionService;

    invoke-static {v0}, Lcom/android/car/CarProjectionService;->access$1200(Lcom/android/car/CarProjectionService;)V

    .line 966
    nop

    .line 982
    :goto_1
    return-void
.end method
