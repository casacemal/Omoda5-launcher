.class Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarDriveClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarDriveClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarDriveClient;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarDriveClient;Lcom/chery/caradapter/carapi/client/CarDriveClient$1;)V
    .locals 0

    .line 789
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarDriveClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 7

    .line 793
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21403041

    const/4 v2, 0x1

    const/4 v3, 0x2

    const-string v4, "onChangeEvent: app receive call back: %s : %d"

    const/4 v5, 0x0

    if-eq v0, v1, :cond_2

    const v1, 0x21403049

    if-eq v0, v1, :cond_1

    const v1, 0x21403055

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 927
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5102(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 928
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403039

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 929
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 928
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 929
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 930
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 921
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5002(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 922
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403038

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 923
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 922
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 923
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 924
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 915
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4902(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 916
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403037

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 917
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4900(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 916
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 917
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 918
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4900(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 909
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4802(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 910
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140301b

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 911
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 910
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 912
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 903
    :pswitch_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4702(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 904
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140301a

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 905
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 904
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 905
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 906
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 897
    :pswitch_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4602(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 898
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403019

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 899
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4600(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 898
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 899
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 900
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4600(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 891
    :pswitch_6
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4502(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 892
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403018

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 893
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4500(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 892
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 893
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 894
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4500(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 885
    :pswitch_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4402(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 886
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403017

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 887
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 886
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 887
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 888
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 879
    :pswitch_8
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4302(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 880
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403016

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 881
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 880
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 881
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 882
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 873
    :pswitch_9
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4202(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 874
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403015

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 875
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 874
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 875
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 876
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 867
    :pswitch_a
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4102(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 868
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403014

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 869
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 868
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 869
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 870
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 861
    :pswitch_b
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4002(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 862
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403013

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 863
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 862
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 863
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 864
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$4000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 855
    :pswitch_c
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3902(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 856
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403012

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 857
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3900(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 856
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 858
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3900(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 849
    :pswitch_d
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3802(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 850
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403011

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 851
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 850
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 851
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 852
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 843
    :pswitch_e
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3702(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 844
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403010

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 845
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 844
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 845
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 846
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 837
    :pswitch_f
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3602(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 838
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140300f

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 839
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 838
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 839
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 840
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 831
    :pswitch_10
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3502(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 832
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140300e

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 833
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3500(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 832
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 833
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 834
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3500(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 825
    :pswitch_11
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3402(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 826
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140300d

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 827
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 826
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 827
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 828
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 819
    :pswitch_12
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3302(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 820
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140300c

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 821
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 820
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 821
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 822
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 813
    :pswitch_13
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3202(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 814
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140300b

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 815
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 814
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 815
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 816
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 807
    :pswitch_14
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3102(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 808
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x2140300a

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 809
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 808
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 809
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 810
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3100(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    :pswitch_15
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3002(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 802
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403009

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 803
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 802
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 803
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 804
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$3000(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 795
    :pswitch_16
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2702(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 796
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    const v1, 0x21403008

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 797
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 796
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 797
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 798
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5402(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 946
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 947
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 946
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 947
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 948
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5400(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 939
    :cond_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5302(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 940
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 941
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 940
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 941
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 942
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5300(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 933
    :cond_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v0, v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5202(Lcom/chery/caradapter/carapi/client/CarDriveClient;I)I

    .line 934
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {v0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarDriveClient;)Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;

    move-result-object v0

    iget-object v6, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    .line 935
    invoke-static {v6}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result v6

    .line 934
    invoke-virtual {v0, v1, v6, v5}, Lcom/chery/caradapter/carapi/client/CarDriveClient$CarHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 935
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 936
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$2900()Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result p1

    invoke-static {p1}, Landroid/car/YFVehiclePropertyIds;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarDriveClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarDriveClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarDriveClient;->access$5200(Lcom/chery/caradapter/carapi/client/CarDriveClient;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21403008
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21403037
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
