.class Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarAvmEngineClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$1;)V
    .locals 0

    .line 278
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 4

    .line 282
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    .line 283
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$1000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onChangeEvent: app receive call back:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-static {v0}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 295
    :pswitch_1
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    .line 296
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;)Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient$CarHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmEngineClient;->access$1000()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 298
    invoke-static {v0}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    .line 299
    invoke-static {p1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v0

    const-string p1, "onChangeEvent: app receive call back: %s : %s"

    .line 297
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2170c000
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
