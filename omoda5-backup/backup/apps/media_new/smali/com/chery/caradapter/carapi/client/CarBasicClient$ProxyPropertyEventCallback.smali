.class Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarBasicClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarBasicClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarBasicClient;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarBasicClient;Lcom/chery/caradapter/carapi/client/CarBasicClient$1;)V
    .locals 0

    .line 736
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarBasicClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7

    .line 740
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const-string v1, "onChangeEvent: app receive call back: %s : %d"

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 790
    :sswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$902(Lcom/chery/caradapter/carapi/client/CarBasicClient;F)F

    .line 791
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v1, 0x21602023

    invoke-virtual {v0, v1, v4, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 792
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 793
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "onChangeEvent: app receive call back: %s : %f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 891
    :sswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$5002(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 892
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140306d

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 893
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$5000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 892
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 894
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$5000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 868
    :sswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4802(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 869
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403045

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 870
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 869
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 870
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 871
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 862
    :sswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4702(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 863
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403044

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 864
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 863
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 864
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 865
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :sswitch_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4602(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 857
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403043

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 858
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 857
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 859
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 850
    :sswitch_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4502(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 851
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403042    # 6.5116E-19f

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 852
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4500(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 851
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 852
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 853
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4500(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 832
    :sswitch_6
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4202(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 833
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140303c

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 834
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4200(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 833
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 834
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 835
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4200(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 772
    :sswitch_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3302(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 773
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403036

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 774
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3300(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 773
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 774
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 775
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3300(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 808
    :sswitch_8
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3802(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 809
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403035

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 810
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 809
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 810
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 811
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3800(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 802
    :sswitch_9
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3702(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 803
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140302c

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 804
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 803
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 804
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 805
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 778
    :sswitch_a
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3402(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 779
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403007

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 780
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3400(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 779
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 780
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 781
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3400(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 766
    :sswitch_b
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3202(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 767
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403006

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 768
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3200(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 767
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 768
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 769
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3200(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    :sswitch_c
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3102(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 761
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403005

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 762
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3100(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 761
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 762
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 763
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3100(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 754
    :sswitch_d
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3002(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 755
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403003

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 756
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 755
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 756
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 757
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 748
    :sswitch_e
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2902(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 749
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403002

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 750
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 749
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 750
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 751
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 742
    :sswitch_f
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2602(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 743
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21403001

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 744
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 743
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 744
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 745
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 886
    :sswitch_10
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object p0

    const v0, 0x21402048

    .line 887
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 886
    invoke-virtual {p0, v0, v5, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 887
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 888
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v3

    invoke-static {v3}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    aput-object p1, v0, v2

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 880
    :sswitch_11
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4902(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 881
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140203e

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 882
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 881
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 882
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 883
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 826
    :sswitch_12
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4102(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 827
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140203d

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 828
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4100(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 827
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 828
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 829
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4100(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 820
    :sswitch_13
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4002(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 821
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140203c

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 822
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 821
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 822
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 823
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4000(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 814
    :sswitch_14
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3902(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 815
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x2140203b

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 816
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 815
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 816
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 817
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3900(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 796
    :sswitch_15
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3602(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 797
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21402024

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 798
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 797
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 798
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 799
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 844
    :sswitch_16
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4402(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 845
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21402018

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 846
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4400(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 845
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 846
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 847
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4400(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 838
    :sswitch_17
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4302(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 839
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21402016

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 840
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4300(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 839
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 840
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 841
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$4300(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 784
    :sswitch_18
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v0, v5}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3502(Lcom/chery/caradapter/carapi/client/CarBasicClient;I)I

    .line 785
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object v0

    const v5, 0x21402000

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    .line 786
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3500(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result v6

    .line 785
    invoke-virtual {v0, v5, v6, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 786
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 787
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2800()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v4

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$3500(Lcom/chery/caradapter/carapi/client/CarBasicClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v2

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 874
    :sswitch_19
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$1802(Lcom/chery/caradapter/carapi/client/CarBasicClient;Ljava/lang/String;)Ljava/lang/String;

    .line 875
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarBasicClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarBasicClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarBasicClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarBasicClient;)Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;

    move-result-object p0

    const p1, 0x21103034

    invoke-virtual {p0, p1, v4, v4}, Lcom/chery/caradapter/carapi/client/CarBasicClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 876
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x21103034 -> :sswitch_19
        0x21402000 -> :sswitch_18
        0x21402016 -> :sswitch_17
        0x21402018 -> :sswitch_16
        0x21402024 -> :sswitch_15
        0x2140203b -> :sswitch_14
        0x2140203c -> :sswitch_13
        0x2140203d -> :sswitch_12
        0x2140203e -> :sswitch_11
        0x21402048 -> :sswitch_10
        0x21403001 -> :sswitch_f
        0x21403002 -> :sswitch_e
        0x21403003 -> :sswitch_d
        0x21403005 -> :sswitch_c
        0x21403006 -> :sswitch_b
        0x21403007 -> :sswitch_a
        0x2140302c -> :sswitch_9
        0x21403035 -> :sswitch_8
        0x21403036 -> :sswitch_7
        0x2140303c -> :sswitch_6
        0x21403042 -> :sswitch_5
        0x21403043 -> :sswitch_4
        0x21403044 -> :sswitch_3
        0x21403045 -> :sswitch_2
        0x2140306d -> :sswitch_1
        0x21602023 -> :sswitch_0
    .end sparse-switch
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
