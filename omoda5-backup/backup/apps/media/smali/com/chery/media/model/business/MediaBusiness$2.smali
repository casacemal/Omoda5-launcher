.class Lcom/chery/media/model/business/MediaBusiness$2;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Lcom/chery/caradapter/carapi/interfaces/IPowerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/chery/media/model/business/MediaBusiness;


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$2;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(I)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness$2;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    invoke-static {v0}, Lcom/chery/media/model/business/MediaBusiness;->access$200(Lcom/chery/media/model/business/MediaBusiness;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chery/media/model/business/MediaBusiness$2$1;

    invoke-direct {v1, p0, p1}, Lcom/chery/media/model/business/MediaBusiness$2$1;-><init>(Lcom/chery/media/model/business/MediaBusiness$2;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
