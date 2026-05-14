.class Lcom/chery/media/model/business/VideoBusiness$8;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Lcom/chery/setting/BrightnessAIDLTool$BrightnessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/VideoBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/VideoBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/VideoBusiness;)V
    .locals 0

    .line 536
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$8;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBrightnessChanged(I)V
    .locals 4

    .line 544
    invoke-static {}, Lcom/chery/media/model/business/VideoBusiness;->access$300()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "brightness onChange %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/avn/tools/log/PFLog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$8;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p0, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$1800(Lcom/chery/media/model/business/VideoBusiness;I)V

    return-void
.end method

.method public onConnected()V
    .locals 1

    .line 539
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$8;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {}, Lcom/chery/setting/BrightnessAIDLTool;->getInstance()Lcom/chery/setting/BrightnessAIDLTool;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chery/setting/BrightnessAIDLTool;->getBrightness()I

    move-result v0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/VideoBusiness;->access$1800(Lcom/chery/media/model/business/VideoBusiness;I)V

    return-void
.end method
