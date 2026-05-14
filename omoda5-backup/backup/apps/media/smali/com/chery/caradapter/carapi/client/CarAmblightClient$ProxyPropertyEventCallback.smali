.class Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarAmblightClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarAmblightClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarAmblightClient;Lcom/chery/caradapter/carapi/client/CarAmblightClient$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7

    .line 266
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: app receive call back:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21403040

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "onChangeEvent: app receive call back: %s : %d"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 288
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1202(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I

    .line 289
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    move-result-object v0

    const v1, 0x2140302b

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 290
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result v6

    .line 289
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 291
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 282
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1102(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I

    .line 283
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    move-result-object v0

    const v1, 0x2140302a

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 284
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result v6

    .line 283
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 285
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 276
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1002(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I

    .line 277
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    move-result-object v0

    const v1, 0x21403029

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 278
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result v6

    .line 277
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 279
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$802(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I

    .line 271
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    move-result-object v0

    const v1, 0x21403028

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 272
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$800(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result v6

    .line 271
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 272
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 273
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$800(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v6}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1302(Lcom/chery/caradapter/carapi/client/CarAmblightClient;I)I

    .line 295
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;

    move-result-object v0

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    .line 296
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result v6

    .line 295
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarAmblightClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 296
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 297
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAmblightClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAmblightClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAmblightClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarAmblightClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21403028
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
