.class Lcom/chery/media/model/business/DabBusiness$20;
.super Ljava/lang/Object;
.source "DabBusiness.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/DabBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/DabBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/DabBusiness;)V
    .locals 0

    .line 1537
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 8

    .line 1540
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p1

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p2}, Lsw/com/dabdrmradio/IAIDLDabService$Stub;->asInterface(Landroid/os/IBinder;)Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/chery/media/model/business/DabBusiness;->access$502(Lcom/chery/media/model/business/DabBusiness;Lsw/com/dabdrmradio/IAIDLDabService;)Lsw/com/dabdrmradio/IAIDLDabService;

    .line 1543
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$500(Lcom/chery/media/model/business/DabBusiness;)Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1545
    :try_start_0
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    new-instance p2, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;

    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p2, v0}, Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;-><init>(Lcom/chery/media/model/business/DabBusiness;)V

    invoke-static {p1, p2}, Lcom/chery/media/model/business/DabBusiness;->access$602(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;)Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;

    .line 1546
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$500(Lcom/chery/media/model/business/DabBusiness;)Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object p1

    iget-object p2, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p2}, Lcom/chery/media/model/business/DabBusiness;->access$600(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/model/business/DabBusiness$NotifyCallLister;

    move-result-object p2

    invoke-interface {p1, p2}, Lsw/com/dabdrmradio/IAIDLDabService;->registerCallBack(Lsw/com/dabdrmradio/IDabCallBack;)V

    .line 1547
    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p1}, Lcom/chery/media/model/business/DabBusiness;->access$500(Lcom/chery/media/model/business/DabBusiness;)Lsw/com/dabdrmradio/IAIDLDabService;

    move-result-object v0

    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget v1, p1, Lcom/chery/media/model/business/DabBusiness;->announcementSwitch:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object p1, p1, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v4, p1, Lcom/chery/media/model/business/DabInfo;->freq:I

    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object p1, p1, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v5, p1, Lcom/chery/media/model/business/DabInfo;->ensembleId:I

    iget-object p1, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object p1, p1, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v6, p1, Lcom/chery/media/model/business/DabInfo;->serviceId:I

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$20;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness;->curDabInfo:Lcom/chery/media/model/business/DabInfo;

    iget v7, p0, Lcom/chery/media/model/business/DabInfo;->componentId:I

    invoke-interface/range {v0 .. v7}, Lsw/com/dabdrmradio/IAIDLDabService;->nativeCmdDabInitAnnounceBandScanFreq(IBBIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1550
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 1557
    invoke-static {}, Lcom/chery/media/model/business/DabBusiness;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onServiceDisconnected"

    invoke-static {p0, p1}, Lcom/avn/tools/log/PFLog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
