.class Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarIntelligentKeyClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$1;)V
    .locals 0

    .line 190
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7

    .line 195
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const-string v3, "onChangeEvent: app receive call back: %s : %d"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 209
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$802(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)I

    .line 210
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$500(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

    move-result-object v0

    const v5, 0x21403023

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    .line 211
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$800(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I

    move-result v6

    .line 210
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 212
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$800(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 203
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$702(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)I

    .line 204
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$500(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

    move-result-object v0

    const v5, 0x21403022

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    .line 205
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$700(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I

    move-result v6

    .line 204
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 206
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$700(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$402(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;I)I

    .line 198
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$500(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;

    move-result-object v0

    const v5, 0x21403021

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    .line 199
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$400(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I

    move-result v6

    .line 198
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 200
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;->access$400(Lcom/chery/caradapter/carapi/client/CarIntelligentKeyClient;)I

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
    .packed-switch 0x21403021
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
