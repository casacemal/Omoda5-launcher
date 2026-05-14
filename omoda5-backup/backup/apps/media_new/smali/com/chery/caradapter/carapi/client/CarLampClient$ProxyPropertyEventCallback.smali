.class Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarLampClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarLampClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarLampClient;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarLampClient;Lcom/chery/caradapter/carapi/client/CarLampClient$1;)V
    .locals 0

    .line 215
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarLampClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7

    .line 219
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "onChangeEvent: app receive call back: %s : %d"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 233
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$902(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I

    .line 234
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$600(Lcom/chery/caradapter/carapi/client/CarLampClient;)Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    move-result-object v0

    const v5, 0x21403027

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    .line 235
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$900(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result v6

    .line 234
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 236
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$900(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 227
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$802(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I

    .line 228
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$600(Lcom/chery/caradapter/carapi/client/CarLampClient;)Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    move-result-object v0

    const v5, 0x21403026

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    .line 229
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$800(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result v6

    .line 228
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 229
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 230
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$800(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 239
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$1002(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I

    .line 240
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$600(Lcom/chery/caradapter/carapi/client/CarLampClient;)Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    move-result-object v0

    const v5, 0x21403025

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    .line 241
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result v6

    .line 240
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 221
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$502(Lcom/chery/caradapter/carapi/client/CarLampClient;I)I

    .line 222
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$600(Lcom/chery/caradapter/carapi/client/CarLampClient;)Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;

    move-result-object v0

    const v5, 0x21403024

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    .line 223
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$500(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result v6

    .line 222
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarLampClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 223
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 224
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$700()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarLampClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarLampClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarLampClient;->access$500(Lcom/chery/caradapter/carapi/client/CarLampClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21403024
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
