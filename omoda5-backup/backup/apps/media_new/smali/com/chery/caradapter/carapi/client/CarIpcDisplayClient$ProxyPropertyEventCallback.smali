.class Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarIpcDisplayClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$1;)V
    .locals 0

    .line 291
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 5

    .line 295
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: app receive call back:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 295
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2170302d

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 302
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeEvent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/avn/tools/string/StringUtils;->toString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    array-length v0, p1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    const/4 v0, 0x0

    .line 304
    aget-byte v2, p1, v0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    aget-byte v4, p1, v2

    if-ne v4, v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    invoke-static {v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$900(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;)Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    invoke-static {v2}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$900(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;)Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->removeMessages(I)V

    .line 308
    :cond_1
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;->access$900(Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient;)Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;

    move-result-object p0

    aget-byte p1, p1, v3

    invoke-virtual {p0, v1, p1, v0}, Lcom/chery/caradapter/carapi/client/CarIpcDisplayClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 309
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
