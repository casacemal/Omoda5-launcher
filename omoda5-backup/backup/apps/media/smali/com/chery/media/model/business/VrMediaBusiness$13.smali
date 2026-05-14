.class Lcom/chery/media/model/business/VrMediaBusiness$13;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/LocalMusicBusiness$HandleDeleteResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness;->handleRemoveCollectResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$key:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 877
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    iput-object p2, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->val$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->val$id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeleteResult(Lcom/chery/media/model/business/MediaDef$LocalMusicInfo;I)V
    .locals 3

    .line 880
    invoke-static {}, Lcom/chery/media/model/business/VrMediaBusiness;->access$800()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDeleteResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance p1, Lcom/chery/libvr/bean/action/ActionCommon;

    invoke-direct {p1}, Lcom/chery/libvr/bean/action/ActionCommon;-><init>()V

    const-string v0, "ALL"

    .line 883
    invoke-virtual {p1, v0}, Lcom/chery/libvr/bean/action/ActionCommon;->setUser(Ljava/lang/String;)V

    .line 885
    new-instance v0, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;

    invoke-direct {v0}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;-><init>()V

    .line 886
    iget-object v1, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setAction(Ljava/lang/String;)V

    if-nez p2, :cond_0

    const-string p2, "1"

    .line 888
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    const-string v2, "-1"

    if-ne p2, v1, :cond_1

    .line 891
    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    const-string p2, "0"

    .line 894
    invoke-virtual {v0, p2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 897
    :cond_2
    invoke-virtual {v0, v2}, Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;->setValue(Ljava/lang/String;)V

    .line 899
    :goto_0
    invoke-virtual {p1, v0}, Lcom/chery/libvr/bean/action/ActionCommon;->setSemantic(Lcom/chery/libvr/bean/action/ActionCommon$SemanticBean;)V

    .line 901
    iget-object p2, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->val$key:Ljava/lang/String;

    invoke-static {p1}, Lcom/avn/tools/json/JsonUtil;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/chery/media/model/business/VrMediaBusiness$13;->val$id:Ljava/lang/String;

    invoke-static {p2, v0, p1, p0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$900(Lcom/chery/media/model/business/VrMediaBusiness;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
