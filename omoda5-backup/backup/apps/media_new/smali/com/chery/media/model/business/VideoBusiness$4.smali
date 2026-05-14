.class Lcom/chery/media/model/business/VideoBusiness$4;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Lcom/chery/media/model/business/StableMediaPlayer$OnSeekCompleteListener;


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

    .line 339
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$4;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(IJ)V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/chery/media/model/business/VideoBusiness$4;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {v0, p1, p2, p3}, Lcom/chery/media/model/business/VideoBusiness;->access$900(Lcom/chery/media/model/business/VideoBusiness;IJ)V

    .line 344
    iget-object p2, p0, Lcom/chery/media/model/business/VideoBusiness$4;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-static {p2, p1}, Lcom/chery/media/model/business/VideoBusiness;->access$200(Lcom/chery/media/model/business/VideoBusiness;I)Lcom/chery/media/model/business/VideoBusiness$PlayInfo;

    move-result-object p2

    iget p2, p2, Lcom/chery/media/model/business/VideoBusiness$PlayInfo;->fastPlayStatus:I

    if-nez p2, :cond_0

    .line 346
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$4;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/chery/media/model/business/VideoBusiness;->access$1100(Lcom/chery/media/model/business/VideoBusiness;IZ)V

    :cond_0
    return-void
.end method
