.class Lcom/chery/media/model/business/VideoBusiness$2;
.super Ljava/lang/Object;
.source "VideoBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chery/media/model/business/VideoBusiness;
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

    .line 201
    iput-object p1, p0, Lcom/chery/media/model/business/VideoBusiness$2;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 204
    iget-object p0, p0, Lcom/chery/media/model/business/VideoBusiness$2;->this$0:Lcom/chery/media/model/business/VideoBusiness;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/chery/media/model/business/VideoBusiness;->access$100(Lcom/chery/media/model/business/VideoBusiness;Z)V

    return-void
.end method
