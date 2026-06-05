.class Lcom/android/car/trust/CarTrustAgentBleManager$3;
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

    .line 677
    iput-object p1, p0, Lcom/android/car/trust/CarTrustAgentBleManager$3;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-direct {p0}, Landroid/bluetooth/le/AdvertiseCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartFailure(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .line 688
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to advertise, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarTrustBLEManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartFailure(I)V

    .line 690
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 691
    return-void

    .line 693
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 694
    const-string v0, "Start unlock advertising fail, retry to advertising.."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    :cond_1
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$3;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->setupUnlockBleServer()V

    .line 697
    iget-object v0, p0, Lcom/android/car/trust/CarTrustAgentBleManager$3;->this$0:Lcom/android/car/trust/CarTrustAgentBleManager;

    invoke-virtual {v0}, Lcom/android/car/trust/CarTrustAgentBleManager;->startUnlockAdvertising()V

    .line 698
    return-void
.end method

.method public onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2
    .param p1, "settingsInEffect"    # Landroid/bluetooth/le/AdvertiseSettings;

    .line 680
    invoke-super {p0, p1}, Landroid/bluetooth/le/AdvertiseCallback;->onStartSuccess(Landroid/bluetooth/le/AdvertiseSettings;)V

    .line 681
    const-string v0, "CarTrustBLEManager"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 682
    const-string v1, "Unlock Advertising onStartSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    :cond_0
    return-void
.end method
