.class Lcom/android/car/trust/CarTrustAgentBleManager$2;
.super Landroid/bluetooth/le/AdvertiseCallback;
.source "CarTrustAgentBleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/trust/CarTrustAgentBleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/car/trust/CarTrustAgentBleManager;


# direct methods
.method constructor <init>(Lcom/android/car/trust/CarTrustAgentBleManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/car/trust/CarTrustAgentBleManager;

    .line 654
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentBleManager$2;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 668
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to advertise, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustBLEManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 671
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$2;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$700(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$2;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$700(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onEnrollmentAdvertiseStartFailure()V

    .line 674
    :cond_0
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "settingsInEffect"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 657
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 658
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$2;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$700(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$2;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-static {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->access$700(Lcom/android/car/trust/CarTrustAgentBleManager;)Lcom/android/car/trust/CarTrustAgentEnrollmentService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentEnrollmentService;->onEnrollmentAdvertiseStartSuccess()V

    .line 661
    :cond_0
    const/4 v0, 0x3

    const-string v1, "CarTrustBLEManager"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 662
    const-string v0, "Successfully started advertising service"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    return-void
.end method
