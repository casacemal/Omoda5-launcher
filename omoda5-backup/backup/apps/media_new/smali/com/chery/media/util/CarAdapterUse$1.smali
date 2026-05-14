.class final Lcom/chery/media/util/CarAdapterUse$1;
.super Ljava/lang/Object;
.source "CarAdapterUse.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IBasicListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/CarAdapterUse;->getCarBasicClient()Lcom/chery/caradapter/carapi/client/CarBasicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoFoldSts(I)V
    .locals 0

    return-void
.end method

.method public onAutoLockSts(I)V
    .locals 0

    return-void
.end method

.method public onCWCChargingSts(I)V
    .locals 0

    return-void
.end method

.method public onCWCPhoneForgottenMsg(I)V
    .locals 0

    return-void
.end method

.method public onCWCPhoneForgottenSts(I)V
    .locals 0

    return-void
.end method

.method public onCWCWorkingSts(I)V
    .locals 0

    return-void
.end method

.method public onCtpKeyVoiceRemind(I)V
    .locals 0

    return-void
.end method

.method public onDMSSts(I)V
    .locals 0

    return-void
.end method

.method public onDayNightModeLight(I)V
    .locals 0

    return-void
.end method

.method public onICMBrightness(I)V
    .locals 0

    return-void
.end method

.method public onIcmTimeChanged(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onKeySts(I)V
    .locals 0

    return-void
.end method

.method public onLightDetectedSts(I)V
    .locals 0

    return-void
.end method

.method public onPLGMaxPosition(I)V
    .locals 0

    return-void
.end method

.method public onRemoteLockFeedbackSts(I)V
    .locals 0

    return-void
.end method

.method public onSSMStatus(I)V
    .locals 0

    return-void
.end method

.method public onScreenOverTemperature(I)V
    .locals 0

    return-void
.end method

.method public onSrfSts(I)V
    .locals 0

    return-void
.end method

.method public onTrunkSts(I)V
    .locals 0

    return-void
.end method

.method public onVehicleSpeed(F)V
    .locals 2

    .line 98
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CarBasicClient onVehicleSpeed var1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$100()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;

    .line 100
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IBasicListener;->onVehicleSpeed(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWindowSts(II)V
    .locals 0

    return-void
.end method
