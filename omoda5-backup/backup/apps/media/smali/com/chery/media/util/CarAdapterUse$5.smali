.class final Lcom/chery/media/util/CarAdapterUse$5;
.super Ljava/lang/Object;
.source "CarAdapterUse.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/util/CarAdapterUse;->getCarAvmEngineClient()Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvmVersion([B)V
    .locals 1

    .line 402
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 403
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onAvmVersion([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCalibrationStatus([B)V
    .locals 1

    .line 360
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 361
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onCalibrationStatus([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDataStorage([B)V
    .locals 1

    .line 388
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 389
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onDataStorage([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEngineerMode([B)V
    .locals 1

    .line 353
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 354
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onEngineerMode([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onEnterExitState([B)V
    .locals 2

    .line 345
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnterExitState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 347
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onEnterExitState([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLogSettings([B)V
    .locals 1

    .line 381
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 382
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onLogSettings([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSimulateOthers([B)V
    .locals 1

    .line 395
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 396
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onSimulateOthers([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewParams([B)V
    .locals 1

    .line 374
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 375
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onViewParams([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onViewStatus([B)V
    .locals 1

    .line 367
    invoke-static {}, Lcom/chery/media/util/CarAdapterUse;->access$700()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;

    .line 368
    invoke-interface {v0, p1}, Lcom/chery/caradapter/carapi/interfaces/IAvmEngineListener;->onViewStatus([B)V

    goto :goto_0

    :cond_0
    return-void
.end method
