.class Lcom/chery/media/model/business/DabBusiness$24;
.super Landroid/os/Handler;
.source "DabBusiness.java"


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

    .line 1956
    iput-object p1, p0, Lcom/chery/media/model/business/DabBusiness$24;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1959
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1965
    :cond_0
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$24;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$1500(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->dismiss()V

    goto :goto_0

    .line 1961
    :cond_1
    iget-object v0, p0, Lcom/chery/media/model/business/DabBusiness$24;->this$0:Lcom/chery/media/model/business/DabBusiness;

    new-instance v2, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    iget-object v3, p0, Lcom/chery/media/model/business/DabBusiness$24;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {v3}, Lcom/chery/media/model/business/DabBusiness;->access$300(Lcom/chery/media/model/business/DabBusiness;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/chery/media/model/business/DabBusiness$24;->this$0:Lcom/chery/media/model/business/DabBusiness;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v4, p1}, Lcom/chery/media/model/business/DabBusiness;->access$3100(Lcom/chery/media/model/business/DabBusiness;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1, v1}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static {v0, v2}, Lcom/chery/media/model/business/DabBusiness;->access$1502(Lcom/chery/media/model/business/DabBusiness;Lcom/chery/media/view/dialog/Dialog_DABAnnounce;)Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    .line 1962
    iget-object p0, p0, Lcom/chery/media/model/business/DabBusiness$24;->this$0:Lcom/chery/media/model/business/DabBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/DabBusiness;->access$1500(Lcom/chery/media/model/business/DabBusiness;)Lcom/chery/media/view/dialog/Dialog_DABAnnounce;

    move-result-object p0

    invoke-virtual {p0}, Lcom/chery/media/view/dialog/Dialog_DABAnnounce;->show()V

    :goto_0
    return-void
.end method
