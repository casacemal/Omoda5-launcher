.class Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarAvmClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarAvmClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarAvmClient;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarAvmClient;Lcom/chery/caradapter/carapi/client/CarAvmClient$1;)V
    .locals 0

    .line 185
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarAvmClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 9

    .line 189
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChangeEvent: app receive call back:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v2

    invoke-static {v2}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    const v3, 0x21402006

    const-string v4, "onChangeEvent: app receive call back: %s : %d"

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v3, :cond_5

    const v3, 0x21402011

    if-eq v0, v3, :cond_4

    const v3, 0x2140203f

    if-eq v0, v3, :cond_0

    goto/16 :goto_2

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v8}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1002(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)I

    .line 219
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-array v5, v5, [Ljava/lang/Object;

    .line 220
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v7

    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 221
    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v5, v6

    .line 219
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p1

    if-ne v6, p1, :cond_1

    goto :goto_0

    :cond_1
    move v6, v7

    :goto_0
    const/16 p1, 0x32

    if-eqz v6, :cond_2

    .line 224
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onManualGearPosition delay 500ms re-check "

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {p0, p1, v2, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$800(Lcom/chery/caradapter/carapi/client/CarAvmClient;ILjava/lang/Object;I)V

    goto/16 :goto_2

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 230
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onManualGearPosition cancel re-check "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->removeMessages(I)V

    .line 233
    :cond_3
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 234
    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p0

    .line 233
    invoke-virtual {p1, v3, p0, v7}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 234
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_2

    .line 239
    :cond_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1102(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)I

    .line 240
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 241
    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result v1

    .line 240
    invoke-virtual {v0, v3, v1, v7}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 242
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    .line 243
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v7

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 244
    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v6

    .line 242
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 197
    :cond_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v0, v8}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$702(Lcom/chery/caradapter/carapi/client/CarAvmClient;I)I

    .line 198
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    new-array v8, v5, [Ljava/lang/Object;

    .line 199
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v8, v7

    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 200
    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$700(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v8, v6

    .line 198
    invoke-static {v4, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$700(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p1

    if-ne v5, p1, :cond_6

    goto :goto_1

    :cond_6
    move v6, v7

    :goto_1
    const/16 p1, 0x33

    if-eqz v6, :cond_7

    .line 203
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v3, "onGearPosition delay 500ms re-check "

    invoke-static {v0, v3}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {p0, p1, v2, v1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$800(Lcom/chery/caradapter/carapi/client/CarAvmClient;ILjava/lang/Object;I)V

    goto :goto_2

    .line 208
    :cond_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 209
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onGearPosition cancel re-check "

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->removeMessages(I)V

    .line 212
    :cond_8
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$900(Lcom/chery/caradapter/carapi/client/CarAvmClient;)Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarAvmClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarAvmClient;

    .line 213
    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarAvmClient;->access$700(Lcom/chery/caradapter/carapi/client/CarAvmClient;)I

    move-result p0

    .line 212
    invoke-virtual {p1, v3, p0, v7}, Lcom/chery/caradapter/carapi/client/CarAvmClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 213
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_2
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
