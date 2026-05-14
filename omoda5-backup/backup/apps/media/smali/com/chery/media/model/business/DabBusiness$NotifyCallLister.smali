.class Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;
.super Lsw/com/dabdrmradio/IDabCallBack$Stub;
.source "DabBusiness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/DabBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NotifyCallLister"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/DabBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p0}, Lsw/com/dabdrmradio/IDabCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyDabAnnouncementState(BB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1624
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabAnnouncementState, byOnOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", byType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 1625
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/DabBusiness;->access$1500(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1626
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$200(Lcom/chery/media/model/business/DabBusiness;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    if-ne p1, v0, :cond_1

    .line 1628
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x0

    .line 1629
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1630
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 1631
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$200(Lcom/chery/media/model/business/DabBusiness;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public notifyDabAnnouncementSwitch(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1610
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabAnnouncementSwitch, Switch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iput p1, v0, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    .line 1612
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$1200(Lcom/chery/media/model/business/DabBusiness;)V

    .line 1613
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$1300(Lcom/chery/media/model/business/DabBusiness;)V

    return-void
.end method

.method public notifyDabBandSelect(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1605
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDabBandSelect, select: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabChipPara(BB)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1637
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyDabChipPara, para_action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabCurrentDynamicLabel(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1599
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabCurrentDynamicLabel, dynamic_label: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1600
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$1100(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDabCurrentServiceInfor(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1569
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabCurrentServiceInfor, serviceinfor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1570
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->access$700(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDabCurrentServiceSignallevel(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1575
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDabCurrentServiceSignallevel, signalleve: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabDateTime(Lsw/com/dabdrmradio/DabEPGTime;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1678
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0, p1}, Lcom/chery/media/model/business/DabBusiness;->access$1902(Lcom/chery/media/model/business/DabBusiness;Lsw/com/dabdrmradio/DabEPGTime;)Lsw/com/dabdrmradio/DabEPGTime;

    .line 1679
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$2000(Lcom/chery/media/model/business/DabBusiness;)V

    .line 1680
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$2100(Lcom/chery/media/model/business/DabBusiness;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1681
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/chery/media/model/business/DabBusiness;->access$2102(Lcom/chery/media/model/business/DabBusiness;Z)Z

    .line 1683
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 1684
    :goto_0
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v2, v2, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1685
    iget-object v2, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v3, v2, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-virtual {v2, v3}, Lcom/chery/media/model/business/DabBusiness;->isProgramInvalid(Lcom/chery/media/model/business/DabProgramInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1686
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1689
    :cond_1
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDabDateTime, remove Invalid Program: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1690
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v0

    :goto_1
    if-ltz p1, :cond_2

    .line 1691
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 1693
    :cond_2
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$2200(Lcom/chery/media/model/business/DabBusiness;)V

    :cond_3
    return-void
.end method

.method public notifyDabEPGInfo(Ljava/lang/String;Lsw/com/dabdrmradio/DabEPGTime;Lsw/com/dabdrmradio/DabEPGTime;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lsw/com/dabdrmradio/DabEPGTime;",
            "Lsw/com/dabdrmradio/DabEPGTime;",
            "II",
            "Ljava/util/List<",
            "Lsw/com/dabdrmradio/DabEPGProgramInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1722
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "notifyDabEPGInfo, basic_info: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 1724
    :goto_0
    :try_start_0
    invoke-interface {p6}, Ljava/util/List;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 1725
    new-instance p3, Lcom/chery/media/model/business/DabProgramInfo;

    invoke-direct {p3}, Lcom/chery/media/model/business/DabProgramInfo;-><init>()V

    .line 1726
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p5, "ensemble_id"

    .line 1727
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    iput p5, p3, Lcom/chery/media/model/business/DabProgramInfo;->ensembleId:I

    const-string p5, "service_id"

    .line 1728
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    iput p5, p3, Lcom/chery/media/model/business/DabProgramInfo;->serviceId:I

    const-string p5, "sc_ids"

    .line 1729
    invoke-virtual {p4, p5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p4

    iput p4, p3, Lcom/chery/media/model/business/DabProgramInfo;->scIds:I

    .line 1730
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lsw/com/dabdrmradio/DabEPGProgramInfo;

    invoke-virtual {p4}, Lsw/com/dabdrmradio/DabEPGProgramInfo;->getEPGProgramName()Ljava/lang/String;

    move-result-object p4

    iput-object p4, p3, Lcom/chery/media/model/business/DabProgramInfo;->programName:Ljava/lang/String;

    .line 1731
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lsw/com/dabdrmradio/DabEPGProgramInfo;

    invoke-virtual {p4}, Lsw/com/dabdrmradio/DabEPGProgramInfo;->getEPGProgramStartTime()Lsw/com/dabdrmradio/DabEPGTime;

    move-result-object p4

    iput-object p4, p3, Lcom/chery/media/model/business/DabProgramInfo;->startTime:Lsw/com/dabdrmradio/DabEPGTime;

    .line 1732
    invoke-interface {p6, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lsw/com/dabdrmradio/DabEPGProgramInfo;

    invoke-virtual {p4}, Lsw/com/dabdrmradio/DabEPGProgramInfo;->getEPGProgramDuaration()I

    move-result p4

    iput p4, p3, Lcom/chery/media/model/business/DabProgramInfo;->duration:I

    .line 1733
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p4

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyDabEPGInfo, dabProgramInfo: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/chery/media/model/business/DabProgramInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p4, p5}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1734
    iget-object p4, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object p4, p4, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 1735
    iget-object p4, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object p4, p4, Lcom/chery/media/model/business/DabBusiness;->dabProgramInfoList:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    .line 1738
    :cond_1
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$2200(Lcom/chery/media/model/business/DabBusiness;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 1740
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public notifyDabErrorState(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1673
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDabErrorState, state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabFmRdsInfo(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1656
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDabFmRdsInfo, fm_rds_info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabFmRdsScan(B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1661
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDabFmRdsScan, scan_state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabImage(Lsw/com/dabdrmradio/DabImage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1618
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabImage, image: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$1400(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public notifyDabLinkingOption(B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1666
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabLinkingOption, option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1667
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$1700(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 1668
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    if-ne p1, v2, :cond_1

    move v1, v2

    :cond_1
    invoke-static {p0, v1}, Lcom/chery/media/model/business/DabBusiness;->access$1800(Lcom/chery/media/model/business/DabBusiness;Z)V

    return-void
.end method

.method public notifyDabLinkingServiceInfor(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1642
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDabLinkingServiceInfor, serviceinfor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabLogo(Ljava/lang/String;Lsw/com/dabdrmradio/DabImage;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1699
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabLogo, logo_info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object v0, v0, Lcom/chery/media/model/business/DabBusiness;->dabAllList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chery/media/model/business/DabInfo;

    .line 1702
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "ensemble_id"

    .line 1703
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "service_id"

    .line 1704
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "sc_ids"

    .line 1705
    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1706
    iget v5, v1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    if-ne v3, v5, :cond_0

    iget v3, v1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    const v5, 0xffff

    and-int/2addr v3, v5

    if-ne v4, v3, :cond_0

    iget v3, v1, Lcom/chery/media/model/business/DabInfo;->scIds:I

    and-int/lit8 v3, v3, 0xf

    if-ne v2, v3, :cond_0

    .line 1709
    iput-object p2, v1, Lcom/chery/media/model/business/DabInfo;->dabImage:Lsw/com/dabdrmradio/DabImage;

    .line 1710
    iget-object v1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v1}, Lcom/chery/media/model/business/DabBusiness;->access$2300(Lcom/chery/media/model/business/DabBusiness;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1715
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public notifyDabPlayState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1564
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyDabPlayState, dab_state: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyDabScanState(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1586
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabScanState, scan_state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",scan_percent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1588
    :goto_0
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$900(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$900(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/lifecycle/MutableLiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 1589
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/DabBusiness;->access$900(Lcom/chery/media/model/business/DabBusiness;)Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_1
    if-nez p1, :cond_2

    .line 1592
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$1000(Lcom/chery/media/model/business/DabBusiness;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 1593
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-virtual {p0, p2}, Lcom/chery/media/model/business/DabBusiness;->setPlayingState(Z)V

    :cond_2
    return-void
.end method

.method public notifyDabServiceList(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1580
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabServiceList, savelist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0, p1}, Lcom/chery/media/model/business/DabBusiness;->access$800(Lcom/chery/media/model/business/DabBusiness;Ljava/lang/String;)V

    return-void
.end method

.method public notifyDabVBERState(BBB)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1647
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDabVBERState, valid_flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", significant: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", exponent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iput p1, v0, Lcom/chery/media/model/business/DabBusiness;->berValidFlag:I

    .line 1649
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iput p2, p1, Lcom/chery/media/model/business/DabBusiness;->berSignificant:I

    .line 1650
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iput p3, p1, Lcom/chery/media/model/business/DabBusiness;->berExponent:I

    .line 1651
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$1600(Lcom/chery/media/model/business/DabBusiness;)V

    return-void
.end method
