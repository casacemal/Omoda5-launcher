.class Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;
.super Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;
.source "CarPlayNativeCarPlayClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;


# direct methods
.method constructor <init>(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-direct {p0}, Lcom/yfve/t19c/projection/carplay/service/cpclient/ICarPlaySessionListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onControl(I[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onDuckAudio(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onFinalize(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 259
    sget-object p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string p2, "onFinalize is called."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 261
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 262
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 264
    :try_start_0
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v1, "onFinalize onSessionStsUpdate is called."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 265
    invoke-virtual {p2, v0, v1, v1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 269
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_0
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$102(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Z)Z

    .line 273
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p0, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$202(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Z)Z

    return-void
.end method

.method public onInitialize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 254
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v0, "onInitialize is called."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onModesChanged(IIZZI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 306
    sget-object p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onModesChanged:mDeviceName="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p4}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$300(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$100(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 308
    iget-object p2, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    const/4 p3, 0x1

    invoke-static {p2, p3}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$102(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Z)Z

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    .line 310
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    :try_start_0
    const-string p4, "iPhone for Apple CarPlay is reconnected"

    .line 312
    iget-object p5, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p5}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$300(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p3, p4, p5}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onNotifyLauncherPop(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 316
    sget-object p4, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPrepareCpSession(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onRequestUI([B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestUI is called:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 335
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 336
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    const/4 v0, 0x1

    .line 338
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onSetVideoFocus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 342
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSetEnhancedSiriParams(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 349
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string p1, "onSetEnhancedSiriParams"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStarted(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 278
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted::btMac is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    sget-object v0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted::deviceName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {v0}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$000(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 281
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;

    .line 284
    :try_start_0
    sget-object v2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string v3, "onStarted onSessionStsUpdate is called."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .line 285
    invoke-virtual {v1, v2, p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayListener;->onSessionStsUpdate(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 289
    sget-object v2, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    invoke-static {p1, p2}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$302(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Ljava/lang/String;)Ljava/lang/String;

    .line 293
    iget-object p0, p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient$1;->this$0:Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->access$202(Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;Z)Z

    return-void
.end method

.method public onSuggestUI(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 360
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    const-string p1, "onSuggestUI"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onUnduckAudio(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public onVideoChange(Z)V
    .locals 2

    .line 355
    sget-object p0, Lcom/yfve/t19c/projection/carplay/proxy/CarPlayNativeCarPlayClient;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
