.class Lcom/chery/media/model/business/MediaBusiness$3$3;
.super Ljava/lang/Object;
.source "MediaBusiness.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chery/media/model/business/MediaBusiness$3;->onGroupMuteChanged(III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/chery/media/model/business/MediaBusiness$3;

.field final synthetic val$mute:Z


# direct methods
.method constructor <init>(Lcom/chery/media/model/business/MediaBusiness$3;Z)V
    .locals 0

    .line 230
    iput-object p1, p0, Lcom/chery/media/model/business/MediaBusiness$3$3;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    iput-boolean p2, p0, Lcom/chery/media/model/business/MediaBusiness$3$3;->val$mute:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/chery/media/model/business/MediaBusiness$3$3;->this$1:Lcom/chery/media/model/business/MediaBusiness$3;

    iget-object v0, v0, Lcom/chery/media/model/business/MediaBusiness$3;->this$0:Lcom/chery/media/model/business/MediaBusiness;

    iget-boolean p0, p0, Lcom/chery/media/model/business/MediaBusiness$3$3;->val$mute:Z

    invoke-static {v0, p0}, Lcom/chery/media/model/business/MediaBusiness;->access$500(Lcom/chery/media/model/business/MediaBusiness;Z)V

    return-void
.end method
