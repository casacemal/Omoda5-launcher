.class Lcom/chery/media/model/business/VrRadioBusiness$2;
.super Ljava/lang/Object;
.source "VrRadioBusiness.java"

# interfaces
.implements Lcom/chery/libvr/manager/funtionmanager/VrRadioManager$RadioTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/VrRadioBusiness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrRadioBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrRadioBusiness;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/chery/media/model/business/VrRadioBusiness$2;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/chery/media/model/business/VrRadioBusiness$2;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VrRadioBusiness;->access$100(Lcom/chery/media/model/business/VrRadioBusiness;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "key"

    .line 80
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "value"

    .line 81
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "id"

    .line 82
    invoke-virtual {v2, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 85
    iget-object p0, p0, Lcom/chery/media/model/business/VrRadioBusiness$2;->this$0:Lcom/chery/media/model/business/VrRadioBusiness;

    invoke-static {p0}, Lcom/chery/media/model/business/VrRadioBusiness;->access$100(Lcom/chery/media/model/business/VrRadioBusiness;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v1
.end method
