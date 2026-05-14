.class Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;
.super Landroid/os/Handler;
.source "CarHvacClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/caradapter/carapi/client/CarHvacClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HavcHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;


# direct methods
.method public constructor <init>(Lcom/chery/caradapter/carapi/client/CarHvacClient;Landroid/os/Looper;)V
    .locals 0

    .line 703
    iput-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    .line 704
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 709
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x21401036

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    .line 930
    :pswitch_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3402(Lcom/chery/caradapter/carapi/client/CarHvacClient;F)F

    .line 931
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mT1ePassengerTemp:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 932
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 933
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onT1ePassengerTemp(F)V

    goto/16 :goto_0

    .line 923
    :pswitch_1
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3302(Lcom/chery/caradapter/carapi/client/CarHvacClient;F)F

    .line 924
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mT1eDriverTemp:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 926
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)F

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onT1eDriverTemp(F)V

    goto/16 :goto_0

    .line 916
    :pswitch_2
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3202(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 917
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mBeepSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 919
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onBeepSts(I)V

    goto/16 :goto_0

    .line 909
    :pswitch_3
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 910
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mFGHeatSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 912
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onFGHeatSts(I)V

    goto/16 :goto_0

    .line 902
    :pswitch_4
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3002(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 903
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mTemperatureUnit:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 905
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onTemperatureUnitSts(I)V

    goto/16 :goto_0

    .line 781
    :pswitch_5
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1302(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 782
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mTemperatureRightF:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 784
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onTemperatureRightF(I)V

    goto/16 :goto_0

    .line 774
    :pswitch_6
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1202(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 775
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mTemperatureLeftF:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 777
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onTemperatureLeftF(I)V

    goto/16 :goto_0

    .line 711
    :pswitch_7
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 712
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mDisplay:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 714
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onDisplayActive(I)V

    goto/16 :goto_0

    .line 788
    :pswitch_8
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1402(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 789
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mElecClimateTemp:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 791
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onElecClimateTemp(I)V

    goto/16 :goto_0

    .line 895
    :pswitch_9
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2902(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 896
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mSeatVentPassenger:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 898
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onSeatVentPassenger(I)V

    goto/16 :goto_0

    .line 888
    :pswitch_a
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2802(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 889
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mSeatVentDriver:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 891
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onSeatVentDriver(I)V

    goto/16 :goto_0

    .line 881
    :pswitch_b
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2702(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 882
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mSeatHeatPassenger:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 884
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onSeatHeatPassenger(I)V

    goto/16 :goto_0

    .line 874
    :pswitch_c
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2602(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 875
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mSeatHeatDriver:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 876
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 877
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onSeatHeatDriver(I)V

    goto/16 :goto_0

    .line 853
    :pswitch_d
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2302(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 854
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mRefreshFunctionSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 855
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 856
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onRefreshFunctionSts(I)V

    goto/16 :goto_0

    .line 845
    :pswitch_e
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2202(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 846
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mFragranceWelcomeModeSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    .line 847
    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 846
    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 849
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2200(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onFragranceWelcomeModeSts(I)V

    goto/16 :goto_0

    .line 838
    :pswitch_f
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 839
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mPm25AutoRunSetSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 841
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onPm25AutoRunSetSts(I)V

    goto/16 :goto_0

    .line 831
    :pswitch_10
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2002(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 832
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mAutoDefrostOnSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 834
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onAutoDefrostOnSts(I)V

    goto/16 :goto_0

    .line 824
    :pswitch_11
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1902(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 825
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mAcModeCustomSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 827
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onAcModeCustomSts(I)V

    goto/16 :goto_0

    .line 817
    :pswitch_12
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1802(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 818
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mBlowAdvanceOnSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 820
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onBlowAdvanceOnSts(I)V

    goto/16 :goto_0

    .line 810
    :pswitch_13
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1702(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 811
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mBlowDelayOffSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 813
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onBlowDelayOffSts(I)V

    goto/16 :goto_0

    .line 802
    :pswitch_14
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1602(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 803
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mFrontDeforestMaxSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    .line 804
    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 806
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onFrontDeforestMaxDisplaySts(I)V

    goto/16 :goto_0

    .line 867
    :pswitch_15
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 868
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mSelfTestResult:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 870
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onSelfTestResult(I)V

    goto/16 :goto_0

    .line 860
    :pswitch_16
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2402(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 861
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mSelfTestActive:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 863
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$2400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onSelfTestActive(I)V

    goto/16 :goto_0

    .line 795
    :pswitch_17
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 796
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mZoneSelectionSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 798
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onZoneSelectionDisplaySts(I)V

    goto/16 :goto_0

    .line 767
    :pswitch_18
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1102(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 768
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mTemperatureRightC:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 770
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1100(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onTemperatureRightC(I)V

    goto/16 :goto_0

    .line 760
    :pswitch_19
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1002(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 761
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mTemperatureLeftC:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 763
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$1000(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onTemperatureLeftC(I)V

    goto/16 :goto_0

    .line 753
    :pswitch_1a
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$902(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 754
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mAutoSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 756
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$900(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onAutoDisplaySts(I)V

    goto/16 :goto_0

    .line 746
    :pswitch_1b
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$802(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 747
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mModeAdjustSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 749
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$800(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onModeAdjustDisplaySts(I)V

    goto/16 :goto_0

    .line 739
    :pswitch_1c
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$702(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 740
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mBlowSpeedLevelSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 742
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$700(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onBlowSpeedLevelDisplaySts(I)V

    goto/16 :goto_0

    .line 732
    :pswitch_1d
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$602(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 733
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mCirculationModeSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 735
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$600(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onCirculationModeDisplaySts(I)V

    goto/16 :goto_0

    .line 725
    :pswitch_1e
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 726
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mCompressorSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 728
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onAcRequestDisplaySts(I)V

    goto/16 :goto_0

    .line 718
    :pswitch_1f
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$402(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 719
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mClmOn:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 721
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$400(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onWorkingSts(I)V

    goto :goto_0

    .line 937
    :cond_0
    iget-object v0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3502(Lcom/chery/caradapter/carapi/client/CarHvacClient;I)I

    .line 938
    invoke-static {}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage:    mT1eBlowSpeedLevelSts:  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {v1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 940
    iget-object p1, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p1}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$300(Lcom/chery/caradapter/carapi/client/CarHvacClient;)Lcom/chery/caradapter/carapi/interfaces/IHvacListener;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/caradapter/carapi/client/CarHvacClient$HavcHandler;->this$0:Lcom/chery/caradapter/carapi/client/CarHvacClient;

    invoke-static {p0}, Lcom/chery/caradapter/carapi/client/CarHvacClient;->access$3500(Lcom/chery/caradapter/carapi/client/CarHvacClient;)I

    move-result p0

    invoke-interface {p1, p0}, Lcom/chery/caradapter/carapi/interfaces/IHvacListener;->onT1eBlowSpeedLevelDisplaySts(I)V

    :cond_1
    :goto_0
    return-void

    nop

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
