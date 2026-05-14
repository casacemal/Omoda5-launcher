.class Lcom/chery/media/model/business/VrMediaBusiness$1;
.super Ljava/lang/Object;
.source "VrMediaBusiness.java"

# interfaces
.implements Lcom/chery/libvr/manager/funtionmanager/VrMediaManager$MediaTool;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VrMediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VrMediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VrMediaBusiness;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/chery/media/model/business/VrMediaBusiness$1;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/chery/media/model/business/VrMediaBusiness$1;->this$0:Lcom/chery/media/model/business/VrMediaBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/VrMediaBusiness;->access$100(Lcom/chery/media/model/business/VrMediaBusiness;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/VrMediaBusiness$1$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/chery/media/model/business/VrMediaBusiness$1$1;-><init>(Lcom/chery/media/model/business/VrMediaBusiness$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method
