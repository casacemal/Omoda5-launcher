.class Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarHvacClient.java"

# interfaces
.implements Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarHvacClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyPropertyEventCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;


# direct methods
.method private constructor <init>(Lcom/chery/caradapter/carapi/client/CarHvacClient;)V
    .locals 0

    .line 949
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chery/caradapter/carapi/client/CarHvacClient;Lcom/chery/caradapter/carapi/client/CarHvacClient$1;)V
    .locals 0

    .line 949
    invoke-direct {p0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;-><init>(Lcom/chery/caradapter/carapi/client/CarHvacClient;)V

    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 2

    .line 953
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401036

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 1082
    :pswitch_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21601038

    .line 1083
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1082
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1083
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1078
    :pswitch_1
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21601037

    .line 1079
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    .line 1078
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1079
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1074
    :pswitch_2
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140101f

    .line 1075
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1074
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1075
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1067
    :pswitch_3
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140101e

    .line 1068
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1067
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1068
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1063
    :pswitch_4
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140101d

    .line 1064
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1063
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1064
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 995
    :pswitch_5
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140101c

    .line 996
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 995
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 996
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 991
    :pswitch_6
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140101b

    .line 992
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 991
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 992
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 955
    :pswitch_7
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140101a

    .line 956
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 955
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 956
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 999
    :pswitch_8
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401019

    .line 1000
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 999
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1000
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1059
    :pswitch_9
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401018

    .line 1060
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1059
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1060
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1055
    :pswitch_a
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401017

    .line 1056
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1055
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1056
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1051
    :pswitch_b
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401016

    .line 1052
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1051
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1052
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1047
    :pswitch_c
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401015

    .line 1048
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1047
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1048
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1035
    :pswitch_d
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401014

    .line 1036
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1035
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1036
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1031
    :pswitch_e
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401013

    .line 1032
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1031
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1032
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1027
    :pswitch_f
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401012

    .line 1028
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1027
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1028
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1023
    :pswitch_10
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401011

    .line 1024
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1023
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1024
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1019
    :pswitch_11
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401010

    .line 1020
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1019
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1020
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1015
    :pswitch_12
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140100f

    .line 1016
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1015
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1016
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1011
    :pswitch_13
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140100e

    .line 1012
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1011
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1012
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1007
    :pswitch_14
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140100d

    .line 1008
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1007
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1008
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1043
    :pswitch_15
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140100c

    .line 1044
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1043
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1044
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1039
    :pswitch_16
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140100b

    .line 1040
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1039
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1040
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1003
    :pswitch_17
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x2140100a

    .line 1004
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1003
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1004
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 987
    :pswitch_18
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401009

    .line 988
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 987
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 988
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 983
    :pswitch_19
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401008

    .line 984
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 983
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 984
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 979
    :pswitch_1a
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401007

    .line 980
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 979
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 980
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 975
    :pswitch_1b
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401006

    .line 976
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 975
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 976
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 971
    :pswitch_1c
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401005

    .line 972
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 971
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 972
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 967
    :pswitch_1d
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401004

    .line 968
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 967
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 968
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 963
    :pswitch_1e
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401003

    .line 964
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 963
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 964
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 959
    :pswitch_1f
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    const v0, 0x21401002

    .line 960
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 959
    invoke-virtual {p0, v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 960
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1086
    :cond_0
    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$ProxyPropertyEventCallback;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;

    move-result-object p0

    .line 1087
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1086
    invoke-virtual {p0, v1, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 1087
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x21401002
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
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
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x21601037
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onErrorEvent(II)V
    .locals 0

    return-void
.end method
