.class Lcom/chery/media/model/business/RadioBusiness$7;
.super Landroid/hardware/radio/RadioTuner$Callback;
.source "RadioBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/RadioBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/RadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/RadioBusiness;)V
    .locals 0

    .line 828
    iput-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-direct {p0}, Landroid/hardware/radio/RadioTuner$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onParametersUpdated$0$RadioBusiness$7(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 894
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "area"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v0, "signalStrength"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v0, "tunerState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v0, "bandType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const-string v5, "\uff1a"

    const-string v6, "onParametersUpdated "

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    if-eq v0, v2, :cond_6

    if-eq v0, v1, :cond_1

    goto/16 :goto_a

    .line 931
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "0"

    .line 932
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 933
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1, v3}, Lcom/chery/media/model/business/RadioBusiness;->access$702(Lcom/chery/media/model/business/RadioBusiness;I)I

    goto :goto_2

    .line 935
    :cond_2
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1, v4}, Lcom/chery/media/model/business/RadioBusiness;->access$702(Lcom/chery/media/model/business/RadioBusiness;I)I

    .line 937
    :goto_2
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1, v4}, Lcom/chery/media/model/business/RadioBusiness;->access$2902(Lcom/chery/media/model/business/RadioBusiness;Z)Z

    .line 938
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$800(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$700(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 939
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$700(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->access$900(Lcom/chery/media/model/business/RadioBusiness;I)V

    .line 940
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2102(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 941
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2700(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 942
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$1100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;

    .line 943
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/RadioBusiness;->access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;->onStateChanged(I)V

    goto :goto_3

    .line 945
    :cond_3
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 946
    :cond_4
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1, v3}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 948
    :cond_5
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/RadioBusiness;->access$1600(Lcom/chery/media/model/business/RadioBusiness;)Landroid/hardware/radio/RadioTuner;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/radio/RadioTuner;->cancel()I

    goto/16 :goto_a

    .line 928
    :cond_6
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p0, p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2002(Lcom/chery/media/model/business/RadioBusiness;I)I

    goto/16 :goto_a

    .line 924
    :cond_7
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$1300(Lcom/chery/media/model/business/RadioBusiness;)Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/RadioBusiness;->access$2800(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_a

    .line 896
    :cond_8
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2102(Lcom/chery/media/model/business/RadioBusiness;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 898
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_d

    .line 899
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->isFmAudioFocus()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1}, Lcom/chery/media/model/business/RadioBusiness;->isAmAudioFocus()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_4

    .line 902
    :cond_9
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1, v4}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    goto :goto_5

    .line 900
    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1, v3}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    :goto_5
    move p1, v4

    .line 904
    :goto_6
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_c

    .line 905
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/RadioDef;

    iget p2, p2, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v0

    if-ne p2, v0, :cond_b

    .line 906
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v3, p2, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    .line 907
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/RadioDef;

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v0}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p2, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    goto :goto_7

    .line 909
    :cond_b
    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v4, p2, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    :goto_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 913
    :cond_c
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2300(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_8

    .line 916
    :cond_d
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1, v4}, Lcom/chery/media/model/business/RadioBusiness;->setPlayingState(Z)V

    .line 918
    :goto_8
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2700(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/RadioBusiness;->access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 919
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$1100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;

    .line 920
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/RadioBusiness;->access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {p2, v0}, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;->onStateChanged(I)V

    goto :goto_9

    :cond_e
    :goto_a
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6f3218f1 -> :sswitch_3
        -0x428b0ec9 -> :sswitch_2
        -0x179004f7 -> :sswitch_1
        0x2dd08d -> :sswitch_0
    .end sparse-switch
.end method

.method public onError(I)V
    .locals 1

    .line 831
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onError(I)V

    .line 832
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string v0, "onError"

    invoke-static {p0, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

    .line 834
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object p0

    const-string p1, "service is cancel!"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onParametersUpdated(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 892
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onParametersUpdated(Ljava/util/Map;)V

    .line 893
    new-instance v0, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$7$rNj2WjkEpgDvbHk0PkqI8Ry54dg;

    invoke-direct {v0, p0}, Lcom/chery/media/model/business/-$$Lambda$RadioBusiness$7$rNj2WjkEpgDvbHk0PkqI8Ry54dg;-><init>(Lcom/chery/media/model/business/RadioBusiness$7;)V

    invoke-interface {p1, v0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V
    .locals 5

    .line 841
    invoke-super {p0, p1}, Landroid/hardware/radio/RadioTuner$Callback;->onProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    .line 842
    invoke-static {}, Lcom/chery/media/model/business/RadioBusiness;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgramInfoChanged  :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getChannel()I

    move-result v1

    invoke-static {v0, v1}, Lcom/chery/media/model/business/RadioBusiness;->access$1802(Lcom/chery/media/model/business/RadioBusiness;I)I

    .line 844
    new-instance v0, Lcom/chery/media/model/business/RadioDef;

    invoke-direct {v0}, Lcom/chery/media/model/business/RadioDef;-><init>()V

    .line 845
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    .line 846
    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getPrimaryId()Landroid/hardware/radio/ProgramSelector$Identifier;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector$Identifier;->getValue()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 847
    iget v1, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    sget-object v2, Lcom/chery/media/model/business/RadioBusiness;->FREQ_DIVIDE_BAND:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput v1, v0, Lcom/chery/media/model/business/RadioDef;->band:I

    .line 848
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v1

    iput v1, v0, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    .line 849
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/radio/ProgramSelector;->getProgramType()I

    move-result v1

    if-ne v1, v4, :cond_1

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    .line 850
    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$800(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_1

    .line 851
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1, v3}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    goto :goto_1

    .line 852
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/radio/RadioManager$ProgramInfo;->getSelector()Landroid/hardware/radio/ProgramSelector;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/radio/ProgramSelector;->getProgramType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    .line 853
    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$800(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eq p1, v4, :cond_2

    .line 854
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {p1, v4}, Lcom/chery/media/model/business/RadioBusiness;->requestAudioFocus(I)Z

    .line 857
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$500(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$600(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 858
    :cond_3
    iput-boolean v4, v0, Lcom/chery/media/model/business/RadioDef;->isCollection:Z

    .line 861
    :cond_4
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$1900(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 862
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$1100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;

    .line 863
    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/RadioBusiness;->access$2000(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/chery/media/model/business/RadioBusiness$OnTunerInfoListener;->onChannelChanged(Lcom/chery/media/model/business/RadioDef;I)V

    goto :goto_2

    .line 866
    :cond_5
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2100(Lcom/chery/media/model/business/RadioBusiness;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_8

    move p1, v3

    .line 867
    :goto_3
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 868
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iget v1, v1, Lcom/chery/media/model/business/RadioDef;->frequencyKhz:I

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v2}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 869
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v4, v1, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    .line 870
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iget-object v2, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-virtual {v2}, Lcom/chery/media/model/business/RadioBusiness;->getPlayingState()Landroidx/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v1, Lcom/chery/media/model/business/RadioDef;->isPlaying:Z

    goto :goto_4

    .line 872
    :cond_6
    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/RadioDef;

    iput-boolean v3, v1, Lcom/chery/media/model/business/RadioDef;->isCurrentFreq:Z

    :goto_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 876
    :cond_7
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2300(Lcom/chery/media/model/business/RadioBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    iget-object v1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/RadioBusiness;->access$2200(Lcom/chery/media/model/business/RadioBusiness;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 879
    :cond_8
    iget p1, v0, Lcom/chery/media/model/business/RadioDef;->band:I

    if-ne p1, v4, :cond_9

    .line 880
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2400(Lcom/chery/media/model/business/RadioBusiness;)Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v0

    iput v0, p1, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->FmFrequency:I

    goto :goto_5

    .line 882
    :cond_9
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2400(Lcom/chery/media/model/business/RadioBusiness;)Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;

    move-result-object p1

    iget-object v0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/RadioBusiness;->access$1800(Lcom/chery/media/model/business/RadioBusiness;)I

    move-result v0

    iput v0, p1, Lcom/chery/media/model/business/RadioBusiness$FrequencySaved;->AmFrequency:I

    .line 884
    :goto_5
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/RadioBusiness;->access$2500(Lcom/chery/media/model/business/RadioBusiness;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 885
    iget-object p1, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p1, v4}, Lcom/chery/media/model/business/RadioBusiness;->access$2502(Lcom/chery/media/model/business/RadioBusiness;Z)Z

    .line 887
    :cond_a
    iget-object p0, p0, Lcom/chery/media/model/business/RadioBusiness$7;->this$0:Lcom/chery/media/model/business/RadioBusiness;

    invoke-static {p0, v3}, Lcom/chery/media/model/business/RadioBusiness;->access$2600(Lcom/chery/media/model/business/RadioBusiness;Z)V

    return-void
.end method
